/* ************************************************************************** */
/** Descriptive File Name

  @Author
    Zhiyuan Wang

  @Modified on
    2018-05-22
 
  @File Name
    system.c

  @Summary
    system source file.

  @Description
    Define all the functions used in the system level.
 */
/* ************************************************************************** */

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */
/* TODO: Include other files here if needed. */
#include "../mcc_generated_files/mcc.h"
#include "system.h"
#include "slave_spi.h"
#include "timer.h"

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Global Data                                                       */
/* ************************************************************************** */

/*******************************************************************************
**   Function Definitions
*******************************************************************************/

/** 
  @Function
    void reset(void) 

  @Summary
    Reset the PIC32MX MCU.
 */
void reset(void)
{
    //Clear reset cause
    RCON = 0;

    __builtin_disable_interrupts();
    
    /* The following code illustrates a software Reset */
    // assume interrupts are disabled
    // assume the DMA controller is suspended
    // assume the device is locked
    /* perform a system unlock sequence */    
    
    // starting critical sequence
    SYSKEY = 0x00000000;  //write invalid key to force lock
    SYSKEY = 0xAA996655;  //write key1 to SYSKEY
    SYSKEY = 0x556699AA;  //write key2 to SYSKEY
    // OSCCON is now unlocked
    
    /* set SWRST bit to arm reset */
    RSWRSTbits.SWRST = 1;
        
    /* read RSWRST register to trigger reset */
    unsigned int dummy;
    dummy = RSWRST;
    
    /* prevent any unwanted code execution until reset occurs*/
    while(1);
}

/** 
  @Function
    void goSleep(void) 

  @Summary
    The PIC32MX MCU enters into sleep mode after it is invoked.
 */
void goSleep(void)
{
    //Go to sleep when wait is issued
    OSCCONbits.SLPEN = 1;
    
    //Issue wait command, then go to sleep
    asm("wait");
    
    //Resume here when waken-up by interrupt during sleep
    Nop();
}

/** 
  @Function
    void goIdle(void) 

  @Summary
    The PIC32MX MCU enters into idle mode after it is invoked.
 */
void goIdle(void)
{
    //Go to idle when wait is issued
    OSCCONbits.SLPEN = 0;
    
    //Issue wait command, then go to idle
    asm("wait");
    
    //Resume here when waken-up by interrupt during idle
    Nop();
}

/** 
  @Function
    void watchdogTimerEnable(void) 

  @Summary
    The Watchdog Timer in PIC32MX MCU is enabled by software.
 */
__inline void watchdogTimerEnable(void)
{
    WDTCONbits.ON = 1;
}

/** 
  @Function
    void watchdogTimerDisable(void) 

  @Summary
    The Watchdog Timer in PIC32MX MCU is disabled by software.
 */
__inline void watchdogTimerDisable(void)
{
    WDTCONbits.ON = 0;
}

/** 
  @Function
    void watchdogTimerClear(void) 

  @Summary
    The Watchdog Timer in PIC32MX MCU is cleared by software.
 */
__inline void watchdogTimerClear(void)
{
    WDTCONbits.WDTCLR = 1;
}

/* ************************************************************************** */
/** 
  @Function
    void systemRun(void)

  @Summary
    The NFC card reader system running function

  @Description
    This is the entry point for the card reader system.

  @Precondition
    The systemRun() is called in the main() function directly.

  @Parameters
    None

  @Returns
    None
 */
void systemRun(void)
{
//    watchdogTimerEnable();
    /* Initialize PIC32MX MCU 
     * SPI slave port with the main board
     * NFC reader library
     * 6 key entries
     */
    SYSTEM_Initialize();
    spi_slaveInit();
    nfc_Init();
    key_Init();
    // Assign the test key to key 0
    memcpy( key[0], TestKey, sizeof(key_t) );
    /* Start main loop */
    while(1)
    {
//        watchdogTimerClear();       
//        SPI_Slave_Simulation_Run();        
        //Do some things only when awake/asleep
        switch( runMode )
        {
            case runNormal:
            {
                /* Detect NFC card if required */
                nfc_findCards();
                // If finding card is done and no card is found, go to sleep mode
                if( (flagFindCardsDone == true) && (typeFound == TYPE_NONE) )
                {
                    // Stop the system timeout timer
                    Timer_Stop(&systemTimer);
                    runMode = runSleep;
                }
                /* If the PIC32MX is always working in the normal running mode to find card 
                 * but the system timer is timed out, then PIC32MX is forced to go to sleep mode 
                 */
                if( systemTimer.isTimedOut )
                {
                    runMode = runSleep;
                }
                break;
            }//case( runNormal )

            case runSleep:
            {
                /* Shut down the unused peripherals */
                pn5180_Sleep();
                tda8029_Sleep();                                
                /* Set port A pins to all inputs to conserve power */
                TRISA = 0xFFFF;
                /* PIC32MX is busy now */
                KL_INT2_BUSY_N_SetLow();       //LATB3 = 0
                /* Set port B pins to all inputs to conserve power
                 * Only Port B3 (BUSY line) is set to output
                 * Make sure the MISO and busy line don't do weird things
                 */
                TRISB = ~(1<<3); //Only Port B3 (BUSY line) is output                
                do
                {
                    goSleep();
                }
                while( KL_SS2_N_GetValue() );
                /* Only exit from the sleep mode if the main board selects PIC32MX MCU */
                runMode = runWaking;
//                breakpoint();  
                break;
            }//case {runSleep}

            case runWaking:
            {
                /* After the PIC32MX is waken up, all components are initialized */
                SYSTEM_Initialize();
                spi_slaveInit();
                nfc_Init();
                /* Configure the system timer to 2000 ms timeout */
                Timer_Set(&systemTimer, 2000);
                Timer_Start(&systemTimer);
                runMode = runNormal;
                break;
            }// case {runWaking}
            
            default: 
                runMode = runSleep;
        }
    }
}

/* ************************************************************************** */
/** 
  @Function
    void nfc_findCards(void)

  @Summary
    The NFC card finding function

  @Description
    This function can perform
    1. Detect NFC card if the flagFindCards is set
    2. Read card UID to data[] according to the requestMask
    3. Authenticate card and read card data within it according to the requestMask

  @Precondition
    The nfc_findCards() is called by the systemRun() function.

  @Parameters
    None

  @Returns
    None
 */
void nfc_findCards(void) 
{
    uint8_t mask = 1;

    //check if we should do something
    if( flagFindCards == false )
    {
        //turn off field
        flagFindCardsDone   = false;
        flagCardFound       = false;
        typeFound           = TYPE_NONE;
        currentCardType = cardUnknown;
        return;
    }
    else
    {
        //reset flags
        flagFindCardsDone   = false;
        flagCardFound       = false;
        typeFound           = TYPE_NONE;
        //clear global variables
        currentCardType = cardUnknown;
        memset(currentCardUID, 0, sizeof(currentCardUID));            
        memset(currentCardData, 0, sizeof(currentCardData));
    }

    //find a card
    if( detectCard(&currentCardType, currentCardUID) == SUCCESS )
    {
        /* A card is found */
//        breakpoint();        
    }
    else
    {
        /* No card is found */
//        breakpoint();
    }

//    flagFindCards = false;
//    flagFindCardsDone = true;
    /* Switch off the RF Field so that the card is not induced any more after detected
     * It can effectively reduce the possibility of the card authentication failure
     */
    phhalHw_FieldOff(pHal);
    
    //Check if the card is one of the types we want to find.
    if( currentCardType == cardUnknown )
    {
        flagFindCards       = false;
        flagFindCardsDone   = true;
        flagCardFound       = false;
        typeFound           = TYPE_NONE;
        return;
    }
    else
    {
        flagFindCards       = false;
        flagFindCardsDone   = true;
        flagCardFound       = false;
        typeFound           = TYPE_NONE;
    }
//    breakpoint();
    //for each position in the mask (in the last iteration, the value of mask gets shifted out of 8-bit range)
    for( mask = 1; mask > 0 && !flagCardFound; mask <<= 1 )
    {
        if ((~requestMask) & mask) {
            //bit not set in request mask, try next one
            continue;
        }

        switch (mask)
        {
            case TYPE_CARD_ID:
                if( currentCardType == cardUnknown )
                {
                    //TODO: unknown type of card selected, allow or reject?
                    continue;
                }

                flagCardFound       = true;
                typeFound           = mask;
                memcpy(data, currentCardUID, 7); //save the UID in data to be sent
                breakpoint(); 
                break;

            case TYPE_DESFIRE_SAM:
                if( currentCardType != cardMifareDesfire )
                {
                    //wrong type of card selected                    
                    continue;
                }

                //Found a DESFire, read out the unique part of the Card Number
                //First wake up the SAM reader
                tda8029_Init();
                if( MifareDesfire_AuthenticateCard_ReadFile(currentCardData) == FAILURE )
                {
                    /* Mifare DESFire Card Authentication Failure */
                    breakpoint();
                    continue;
                }
                else
                {
                    /* Mifare DESFire Card Authentication Success */
                    breakpoint();
                }
                memcpy(desfireCardInfo.rawData, currentCardData, 18);

                //Extract the unique ID part
                memcpy(data, desfireCardInfo.uniqueNum, 9);
                memcpy(&data[9], &desfireCardInfo.checkDigit, 1);
                flagCardFound       = true;
                typeFound           = mask;
                break;

            default:
                //MIFARE CLASSIC TYPES
                if( currentCardType != cardMifareClassic )
                {
                    //wrong type of card selected
                    continue;
                }
                //Found a MIFARE CLASSIC, read data block 4 (sector 1, block 0)

                //Authenticate the MIFARE
//                if( !nfc_authentMifare(UID, mask) ) continue;
                switch (mask)
                {
                    case TYPE_MIFARE_KEY1:
                        keyPtr = &key[0];
                        breakpoint();
                        break;
                    case TYPE_MIFARE_KEY2:
                        keyPtr = &key[1];
                        breakpoint();
                        break;
                    case TYPE_MIFARE_KEY3:
                        keyPtr = &key[2];
                        breakpoint();
                        break;
                    case TYPE_MIFARE_KEY4:
                        keyPtr = &key[3];
                        breakpoint();
                        break;
                    case TYPE_MIFARE_KEY5:
                        keyPtr = &key[4];
                        breakpoint();
                        break;
                    case TYPE_MIFARE_KEY6:
                        keyPtr = &key[5];
                        breakpoint();
                        break;
                }                
                if( MifareClassic_AuthenticateCard_ReadBlock( (uint8_t *)keyPtr, currentCardData) == FAILURE )
                {
                    /* Mifare Classic Card Authentication Failure */
                    breakpoint();
                    continue;
                }
                else
                {
                    /* Mifare Classic Card Authentication Success */
                    breakpoint();
                }

                //read the data
                memcpy(data, currentCardData, 16);
                //data[0] = Hi( City code )
                //data[1] = Lo( City Code )
                //data[2] = HI( CardNr )
                //data[3] = MID( CardNr )
                //data[4] = LO( CardNr )
                flagCardFound       = true;
                typeFound           = mask;
                break;
        }//switch( mask )
    }//for( each possible mask )

    //checked everything, either we found something or nothing is there
    flagFindCards       = false;
    flagFindCardsDone   = true;
}

/** 
  @Function
    void key_Init(void) 

  @Summary
    Initialize the 6 sets of MIFARE CLASSIC card keys.
 
  @Precondition
    The global key array key_t key[6] must be defined beforehand.
 */
void key_Init(void)
{
    uint8_t i, j, k;
    for( i = 0; i < 6; i++ )
    {
        for( k = 0, j = 0; k < 6; k++, j^=0x55 )
            key[i][k] = j;
    }
}
/* *****************************************************************************
 End of File
 */
