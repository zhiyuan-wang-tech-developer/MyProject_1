/**
  System Interrupts Generated Driver File 

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.c

  @Summary:
    This is the generated manager file for the MPLAB(c) Code Configurator device.  This manager
    configures the pins direction, initial state, analog setting.
    The peripheral pin select, PPS, configuration is also handled by this manager.

  @Description:
    This source file provides implementations for MPLAB(c) Code Configurator interrupts.
    Generation Information : 
        Product Revision  :  MPLAB(c) Code Configurator - 4.35
        Device            :  PIC32MX150F128D
        Version           :  1.02
    The generated drivers are tested against the following:
        Compiler          :  XC32 1.42
        MPLAB             :  MPLAB X 3.55

    Copyright (c) 2013 - 2015 released Microchip Technology Inc.  All rights reserved.

    Microchip licenses to you the right to use, modify, copy and distribute
    Software only when embedded on a Microchip microcontroller or digital signal
    controller that is integrated into your product or third party product
    (pursuant to the sublicense terms in the accompanying license agreement).

    You should refer to the license agreement accompanying this Software for
    additional information regarding your rights and obligations.

    SOFTWARE AND DOCUMENTATION ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND,
    EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
    MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
    IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
    CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
    OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
    INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
    CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
    SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
    (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.

*/


/**
    Section: Includes
*/
#include <xc.h>
#include <sys/attribs.h>
#include "pin_manager.h"
#include "mcc.h"

/**
    void PIN_MANAGER_Initialize(void)
*/
void PIN_MANAGER_Initialize(void)
{
    /****************************************************************************
     * Setting the Output Latch SFR(s)
     ***************************************************************************/
    LATA = 0x0000;
    LATB = 0x0000;
    LATC = 0x0000;

    /****************************************************************************
     * Setting the GPIO Direction SFR(s)
     ***************************************************************************/
    TRISA = 0x030C;
    TRISB = 0xAA87;
    TRISC = 0x02FF;

    /****************************************************************************
     * Setting the Weak Pull Up and Weak Pull Down SFR(s)
     ***************************************************************************/
    CNPDA = 0x0000;
    CNPDB = 0x0200;
    CNPDC = 0x0200;
    CNPUA = 0x0008;
    CNPUB = 0x0080;
    CNPUC = 0x0000;

    /****************************************************************************
     * Setting the Open Drain SFR(s)
     ***************************************************************************/
    ODCA = 0x0000;
    ODCB = 0x0000;
    ODCC = 0x0000;

    /****************************************************************************
     * Setting the Analog/Digital Configuration SFR(s)
     ***************************************************************************/
    ANSELA = 0x0003;
    ANSELB = 0x4000;
    ANSELC = 0x000F;

    /****************************************************************************
     * Set the PPS
     ***************************************************************************/
    SYSTEM_RegUnlock(); // unlock PPS
    CFGCONbits.IOLOCK = 0;

    RPA0Rbits.RPA0R = 0x0001;   //RA0->UART1:U1TX;
    U1RXRbits.U1RXR = 0x0003;   //RB13->UART1:U1RX;
    RPB5Rbits.RPB5R = 0x0004;   //RB5->SPI2:SDO2;
    SDI2Rbits.SDI2R = 0x0004;   //RB2->SPI2:SDI2;
    RPA1Rbits.RPA1R = 0x0003;   //RA1->SPI1:SDO1;
    SS2Rbits.SS2R = 0x0000;   //RA3->SPI2:SS2;
    SDI1Rbits.SDI1R = 0x0003;   //RB11->SPI1:SDI1;

    CFGCONbits.IOLOCK = 1; // lock   PPS
    SYSTEM_RegLock(); 

    /****************************************************************************
     * Interrupt On Change for group CNCONA - config
     ***************************************************************************/
	CNCONAbits.ON = 1; 

    /****************************************************************************
     * Interrupt On Change for group CNCONB - config
     ***************************************************************************/
	CNCONBbits.ON = 1; 

    /****************************************************************************
     * Interrupt On Change for group CNENA - any
     ***************************************************************************/
	CNENAbits.CNIEA3 = 1; // Pin : RA3

    /****************************************************************************
     * Interrupt On Change for group CNENB - any
     ***************************************************************************/
	CNENBbits.CNIEB9 = 1; // Pin : RB9

    IEC1bits.CNAIE = 1; // Enable CNAI interrupt 
    IEC1bits.CNBIE = 1; // Enable CNBI interrupt 

        
//    _TRISB9 = 1;
//    CNPUBbits.CNPUB9 = 0;
//    CNPDBbits.CNPDB9 = 1;

    /* Enable change notice on Port A, B and C. */
//    CNCONAbits.ON = 1;
//    CNCONBbits.ON = 1;
//    CNCONCbits.ON = 1;

    //enable change notification on RF_IRQ
//    CNENBbits.CNIEB9 = 1;    
}

/* This IRQ handler handles the IRQ event from the front-end IC. */
/* This IRQ handler is defined in phPlatform.c file. */
extern void RF_IRQ_Handler(void);

/* Interrupt service routine for the change notification interrupt. */
void __ISR (_CHANGE_NOTICE_VECTOR, IPL5AUTO) _CHANGE_NOTICE ( void )
{    
    if(IFS1bits.CNAIF == 1)
    {
        /* Check the change notice on port A3 */
        if(CNSTATAbits.CNSTATA3)
        {
            if( !KL_SS2_N_GetValue() )
            {
                //PIC32MX MCU is selected
                //Maybe do some special things before resuming with the rest of the wake-up procedure
                KL_INT2_BUSY_N_SetLow();

//                breakpoint();
            }
            else
            {
                //PIC32MX MCU is not selected, go to sleep
                //runMode = runSleep;
            }
        }
        // Clear the flag
        IFS1bits.CNAIF = 0;
    }
    if(IFS1bits.CNBIF == 1)
    {
        // Clear the flag
        IFS1bits.CNBIF = 0;
        
        /* RF_IRQ pin changes from low -> high then call RF IRQ handler. */
        if( RF_IRQ_GetValue() )
        {
            RF_IRQ_Handler();
        }
    }
}
