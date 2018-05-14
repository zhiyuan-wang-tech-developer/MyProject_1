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
#include "system.h"
/* TODO:  Include other files here if needed. */
#include "../mcc_generated_files/mcc.h"
#include "slave_spi.h"

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

    spi_slaveInit();
    
    /* Start main loop */
    while(1)
    {
        //Clear watchdog timer
//        watchdogTimerClear();
        //Do some things only when awake/asleep
        switch( runMode )
        {
            case runNormal:
            {
                /* Detect NFC card if required */
//                findCards();
                runMode = runSleep;
                break;
            }

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
                spi_slaveInit();
                runMode = runNormal;
                break;
            }
            
            default: 
                runMode = runSleep;
        }
    }
}

/* *****************************************************************************
 End of File
 */
