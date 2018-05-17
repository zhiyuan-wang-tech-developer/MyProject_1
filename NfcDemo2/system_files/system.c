/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.c

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */
#include "../mcc_generated_files/mcc.h"
#include "system.h"
#include "slave_spi.h"
#include "timer.h"
/* TODO:  Include other files here if needed. */



/* ************************************************************************** */
/* ************************************************************************** */
/* Section: File Scope or Global Data                                         */
/* ************************************************************************** */


/* ************************************************************************** */
/* ************************************************************************** */
// Section: Local Functions                                                   */
/* ************************************************************************** */

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

/* Enter sleep mode */
void goSleep(void)
{
    //Go to sleep when wait is issued
    OSCCONbits.SLPEN = 1;
    
    //Issue wait command, then go to sleep
    asm("wait");
    
    //Resume here when waken-up by interrupt during sleep
    Nop();
}

/* Enter idle mode */
void goIdle(void)
{
    //Go to idle when wait is issued
    OSCCONbits.SLPEN = 0;
    
    //Issue wait command, then go to idle
    asm("wait");
    
    //Resume here when waken-up by interrupt during idle
    Nop();
}

/* Enable the Watchdog Timer by software */
__inline void watchdogTimerEnable(void)
{
    WDTCONbits.ON = 1;
}

/* Disable the Watchdog Timer by software */
__inline void watchdogTimerDisable(void)
{
    WDTCONbits.ON = 0;
}

/* Clear the Watchdog Timer by software */
__inline void watchdogTimerClear(void)
{
    WDTCONbits.WDTCLR = 1;
}

void systemRun(void)
{
//    watchdogTimerEnable();
    SYSTEM_Initialize();
    spi_slaveInit();
    nfc_Init();
    key_Init();    
    memcpy( key[0], TestKey, sizeof(key_t) );
    /* Start main loop */
    while(1)
    {
        //Clear watchdog timer
//        watchdogTimerClear();
        
        spi_Simulation();
        
        //Do some things only when awake/asleep
        switch( runMode )
        {
            case runNormal:
            {
                /* Detect NFC card if required */
                nfc_findCards();
                // If no card found, go back to sleep
                if( (flagFindCardsDone == true) && (typeFound == TYPE_NONE) )
                {
                    Timer_Stop(&systemTimer);
                    runMode = runSleep;
                }
                
                if( systemTimer.isTimedOut )
                {
                    runMode = runSleep;
                }
                break;
            }//case( runNormal )

            case runSleep:
            {
                /* Shut down the unused peripherals */
                                
                /* Set pins to all inputs to conserve power */
//                TRISA = 0xFFFF;
                KL_INT2_BUSY_N_SetLow();       //busy
//                TRISB = ~(1<<3);    //make sure the MSIO and busy line don't do weird things
                
                do
                {
                    goSleep();
                }while( KL_SS2_N_GetValue() );
                /* Only exit from the sleep mode if the mainboard selects PIC32MX MCU */
                runMode = runWaking;
//                breakpoint();  
                break;
            }

            case runWaking:
            {
                /* Wake up all components */
                SYSTEM_Initialize();
                spi_slaveInit();
                nfc_Init();
//                tda8029_Init();
                /* Configure system timer to 200ms time out */
                Timer_Set(&systemTimer, 2000);
                Timer_Start(&systemTimer);
                runMode = runNormal;
                break;
            }
            
            default: 
                runMode = runSleep;
        }
    }
}

//------------------------------------------------------------------------------
// NFC process
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
