/**
  System Interrupts Generated Driver File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

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

#ifndef _PIN_MANAGER_H
#define _PIN_MANAGER_H
/**
    Section: Includes
*/
#include <xc.h>
/**
    Section: Device Pin Macros
*/
/**
  @Summary
    Sets the GPIO pin, RA1, high using LATAbits.LATA1.

  @Description
    Sets the GPIO pin, RA1, high using LATAbits.LATA1.

  @Preconditions
    The RA1 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA1 high (1)
    RF_SDO1_SetHigh();
    </code>

*/
#define RF_SDO1_SetHigh()          LATAbits.LATA1 = 1
/**
  @Summary
    Sets the GPIO pin, RA1, low using LATAbits.LATA1.

  @Description
    Sets the GPIO pin, RA1, low using LATAbits.LATA1.

  @Preconditions
    The RA1 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA1 low (0)
    RF_SDO1_SetLow();
    </code>

*/
#define RF_SDO1_SetLow()           LATAbits.LATA1 = 0
/**
  @Summary
    Toggles the GPIO pin, RA1, using LATAbits.LATA1.

  @Description
    Toggles the GPIO pin, RA1, using LATAbits.LATA1.

  @Preconditions
    The RA1 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RA1
    RF_SDO1_Toggle();
    </code>

*/
#define RF_SDO1_Toggle()           LATAbits.LATA1 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RA1.

  @Description
    Reads the value of the GPIO pin, RA1.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RA1
    postValue = RF_SDO1_GetValue();
    </code>

*/
#define RF_SDO1_GetValue()         PORTAbits.RA1
/**
  @Summary
    Configures the GPIO pin, RA1, as an input.

  @Description
    Configures the GPIO pin, RA1, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA1 as an input
    RF_SDO1_SetDigitalInput();
    </code>

*/
#define RF_SDO1_SetDigitalInput()  TRISAbits.TRISA1 = 1
/**
  @Summary
    Configures the GPIO pin, RA1, as an output.

  @Description
    Configures the GPIO pin, RA1, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA1 as an output
    RF_SDO1_SetDigitalOutput();
    </code>

*/
#define RF_SDO1_SetDigitalOutput() TRISAbits.TRISA1 = 0
/**
  @Summary
    Sets the GPIO pin, RA10, high using LATAbits.LATA10.

  @Description
    Sets the GPIO pin, RA10, high using LATAbits.LATA10.

  @Preconditions
    The RA10 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA10 high (1)
    FLASH_SS_N_SetHigh();
    </code>

*/
#define FLASH_SS_N_SetHigh()          LATAbits.LATA10 = 1
/**
  @Summary
    Sets the GPIO pin, RA10, low using LATAbits.LATA10.

  @Description
    Sets the GPIO pin, RA10, low using LATAbits.LATA10.

  @Preconditions
    The RA10 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA10 low (0)
    FLASH_SS_N_SetLow();
    </code>

*/
#define FLASH_SS_N_SetLow()           LATAbits.LATA10 = 0
/**
  @Summary
    Toggles the GPIO pin, RA10, using LATAbits.LATA10.

  @Description
    Toggles the GPIO pin, RA10, using LATAbits.LATA10.

  @Preconditions
    The RA10 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RA10
    FLASH_SS_N_Toggle();
    </code>

*/
#define FLASH_SS_N_Toggle()           LATAbits.LATA10 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RA10.

  @Description
    Reads the value of the GPIO pin, RA10.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RA10
    postValue = FLASH_SS_N_GetValue();
    </code>

*/
#define FLASH_SS_N_GetValue()         PORTAbits.RA10
/**
  @Summary
    Configures the GPIO pin, RA10, as an input.

  @Description
    Configures the GPIO pin, RA10, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA10 as an input
    FLASH_SS_N_SetDigitalInput();
    </code>

*/
#define FLASH_SS_N_SetDigitalInput()  TRISAbits.TRISA10 = 1
/**
  @Summary
    Configures the GPIO pin, RA10, as an output.

  @Description
    Configures the GPIO pin, RA10, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA10 as an output
    FLASH_SS_N_SetDigitalOutput();
    </code>

*/
#define FLASH_SS_N_SetDigitalOutput() TRISAbits.TRISA10 = 0
/**
  @Summary
    Sets the GPIO pin, RA3, high using LATAbits.LATA3.

  @Description
    Sets the GPIO pin, RA3, high using LATAbits.LATA3.

  @Preconditions
    The RA3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA3 high (1)
    KL_SS2_N_SetHigh();
    </code>

*/
#define KL_SS2_N_SetHigh()          LATAbits.LATA3 = 1
/**
  @Summary
    Sets the GPIO pin, RA3, low using LATAbits.LATA3.

  @Description
    Sets the GPIO pin, RA3, low using LATAbits.LATA3.

  @Preconditions
    The RA3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA3 low (0)
    KL_SS2_N_SetLow();
    </code>

*/
#define KL_SS2_N_SetLow()           LATAbits.LATA3 = 0
/**
  @Summary
    Toggles the GPIO pin, RA3, using LATAbits.LATA3.

  @Description
    Toggles the GPIO pin, RA3, using LATAbits.LATA3.

  @Preconditions
    The RA3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RA3
    KL_SS2_N_Toggle();
    </code>

*/
#define KL_SS2_N_Toggle()           LATAbits.LATA3 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RA3.

  @Description
    Reads the value of the GPIO pin, RA3.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RA3
    postValue = KL_SS2_N_GetValue();
    </code>

*/
#define KL_SS2_N_GetValue()         PORTAbits.RA3
/**
  @Summary
    Configures the GPIO pin, RA3, as an input.

  @Description
    Configures the GPIO pin, RA3, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA3 as an input
    KL_SS2_N_SetDigitalInput();
    </code>

*/
#define KL_SS2_N_SetDigitalInput()  TRISAbits.TRISA3 = 1
/**
  @Summary
    Configures the GPIO pin, RA3, as an output.

  @Description
    Configures the GPIO pin, RA3, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA3 as an output
    KL_SS2_N_SetDigitalOutput();
    </code>

*/
#define KL_SS2_N_SetDigitalOutput() TRISAbits.TRISA3 = 0
/**
  @Summary
    Sets the GPIO pin, RA4, high using LATAbits.LATA4.

  @Description
    Sets the GPIO pin, RA4, high using LATAbits.LATA4.

  @Preconditions
    The RA4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA4 high (1)
    SIM_ESM_SetHigh();
    </code>

*/
#define SIM_ESM_SetHigh()          LATAbits.LATA4 = 1
/**
  @Summary
    Sets the GPIO pin, RA4, low using LATAbits.LATA4.

  @Description
    Sets the GPIO pin, RA4, low using LATAbits.LATA4.

  @Preconditions
    The RA4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA4 low (0)
    SIM_ESM_SetLow();
    </code>

*/
#define SIM_ESM_SetLow()           LATAbits.LATA4 = 0
/**
  @Summary
    Toggles the GPIO pin, RA4, using LATAbits.LATA4.

  @Description
    Toggles the GPIO pin, RA4, using LATAbits.LATA4.

  @Preconditions
    The RA4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RA4
    SIM_ESM_Toggle();
    </code>

*/
#define SIM_ESM_Toggle()           LATAbits.LATA4 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RA4.

  @Description
    Reads the value of the GPIO pin, RA4.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RA4
    postValue = SIM_ESM_GetValue();
    </code>

*/
#define SIM_ESM_GetValue()         PORTAbits.RA4
/**
  @Summary
    Configures the GPIO pin, RA4, as an input.

  @Description
    Configures the GPIO pin, RA4, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA4 as an input
    SIM_ESM_SetDigitalInput();
    </code>

*/
#define SIM_ESM_SetDigitalInput()  TRISAbits.TRISA4 = 1
/**
  @Summary
    Configures the GPIO pin, RA4, as an output.

  @Description
    Configures the GPIO pin, RA4, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA4 as an output
    SIM_ESM_SetDigitalOutput();
    </code>

*/
#define SIM_ESM_SetDigitalOutput() TRISAbits.TRISA4 = 0
/**
  @Summary
    Sets the GPIO pin, RA7, high using LATAbits.LATA7.

  @Description
    Sets the GPIO pin, RA7, high using LATAbits.LATA7.

  @Preconditions
    The RA7 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA7 high (1)
    EnableTXPowerSupply_SetHigh();
    </code>

*/
#define EnableTXPowerSupply_SetHigh()          LATAbits.LATA7 = 1
/**
  @Summary
    Sets the GPIO pin, RA7, low using LATAbits.LATA7.

  @Description
    Sets the GPIO pin, RA7, low using LATAbits.LATA7.

  @Preconditions
    The RA7 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RA7 low (0)
    EnableTXPowerSupply_SetLow();
    </code>

*/
#define EnableTXPowerSupply_SetLow()           LATAbits.LATA7 = 0
/**
  @Summary
    Toggles the GPIO pin, RA7, using LATAbits.LATA7.

  @Description
    Toggles the GPIO pin, RA7, using LATAbits.LATA7.

  @Preconditions
    The RA7 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RA7
    EnableTXPowerSupply_Toggle();
    </code>

*/
#define EnableTXPowerSupply_Toggle()           LATAbits.LATA7 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RA7.

  @Description
    Reads the value of the GPIO pin, RA7.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RA7
    postValue = EnableTXPowerSupply_GetValue();
    </code>

*/
#define EnableTXPowerSupply_GetValue()         PORTAbits.RA7
/**
  @Summary
    Configures the GPIO pin, RA7, as an input.

  @Description
    Configures the GPIO pin, RA7, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA7 as an input
    EnableTXPowerSupply_SetDigitalInput();
    </code>

*/
#define EnableTXPowerSupply_SetDigitalInput()  TRISAbits.TRISA7 = 1
/**
  @Summary
    Configures the GPIO pin, RA7, as an output.

  @Description
    Configures the GPIO pin, RA7, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RA7 as an output
    EnableTXPowerSupply_SetDigitalOutput();
    </code>

*/
#define EnableTXPowerSupply_SetDigitalOutput() TRISAbits.TRISA7 = 0
/**
  @Summary
    Sets the GPIO pin, RB10, high using LATBbits.LATB10.

  @Description
    Sets the GPIO pin, RB10, high using LATBbits.LATB10.

  @Preconditions
    The RB10 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB10 high (1)
    RF_SS1_N_SetHigh();
    </code>

*/
#define RF_SS1_N_SetHigh()          LATBbits.LATB10 = 1
/**
  @Summary
    Sets the GPIO pin, RB10, low using LATBbits.LATB10.

  @Description
    Sets the GPIO pin, RB10, low using LATBbits.LATB10.

  @Preconditions
    The RB10 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB10 low (0)
    RF_SS1_N_SetLow();
    </code>

*/
#define RF_SS1_N_SetLow()           LATBbits.LATB10 = 0
/**
  @Summary
    Toggles the GPIO pin, RB10, using LATBbits.LATB10.

  @Description
    Toggles the GPIO pin, RB10, using LATBbits.LATB10.

  @Preconditions
    The RB10 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB10
    RF_SS1_N_Toggle();
    </code>

*/
#define RF_SS1_N_Toggle()           LATBbits.LATB10 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RB10.

  @Description
    Reads the value of the GPIO pin, RB10.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB10
    postValue = RF_SS1_N_GetValue();
    </code>

*/
#define RF_SS1_N_GetValue()         PORTBbits.RB10
/**
  @Summary
    Configures the GPIO pin, RB10, as an input.

  @Description
    Configures the GPIO pin, RB10, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB10 as an input
    RF_SS1_N_SetDigitalInput();
    </code>

*/
#define RF_SS1_N_SetDigitalInput()  TRISBbits.TRISB10 = 1
/**
  @Summary
    Configures the GPIO pin, RB10, as an output.

  @Description
    Configures the GPIO pin, RB10, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB10 as an output
    RF_SS1_N_SetDigitalOutput();
    </code>

*/
#define RF_SS1_N_SetDigitalOutput() TRISBbits.TRISB10 = 0
/**
  @Summary
    Sets the GPIO pin, RB11, high using LATBbits.LATB11.

  @Description
    Sets the GPIO pin, RB11, high using LATBbits.LATB11.

  @Preconditions
    The RB11 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB11 high (1)
    RF_SDI1_SetHigh();
    </code>

*/
#define RF_SDI1_SetHigh()          LATBbits.LATB11 = 1
/**
  @Summary
    Sets the GPIO pin, RB11, low using LATBbits.LATB11.

  @Description
    Sets the GPIO pin, RB11, low using LATBbits.LATB11.

  @Preconditions
    The RB11 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB11 low (0)
    RF_SDI1_SetLow();
    </code>

*/
#define RF_SDI1_SetLow()           LATBbits.LATB11 = 0
/**
  @Summary
    Toggles the GPIO pin, RB11, using LATBbits.LATB11.

  @Description
    Toggles the GPIO pin, RB11, using LATBbits.LATB11.

  @Preconditions
    The RB11 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB11
    RF_SDI1_Toggle();
    </code>

*/
#define RF_SDI1_Toggle()           LATBbits.LATB11 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RB11.

  @Description
    Reads the value of the GPIO pin, RB11.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB11
    postValue = RF_SDI1_GetValue();
    </code>

*/
#define RF_SDI1_GetValue()         PORTBbits.RB11
/**
  @Summary
    Configures the GPIO pin, RB11, as an input.

  @Description
    Configures the GPIO pin, RB11, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB11 as an input
    RF_SDI1_SetDigitalInput();
    </code>

*/
#define RF_SDI1_SetDigitalInput()  TRISBbits.TRISB11 = 1
/**
  @Summary
    Configures the GPIO pin, RB11, as an output.

  @Description
    Configures the GPIO pin, RB11, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB11 as an output
    RF_SDI1_SetDigitalOutput();
    </code>

*/
#define RF_SDI1_SetDigitalOutput() TRISBbits.TRISB11 = 0
/**
  @Summary
    Sets the GPIO pin, RB12, high using LATBbits.LATB12.

  @Description
    Sets the GPIO pin, RB12, high using LATBbits.LATB12.

  @Preconditions
    The RB12 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB12 high (1)
    RF_RST_N_SetHigh();
    </code>

*/
#define RF_RST_N_SetHigh()          LATBbits.LATB12 = 1
/**
  @Summary
    Sets the GPIO pin, RB12, low using LATBbits.LATB12.

  @Description
    Sets the GPIO pin, RB12, low using LATBbits.LATB12.

  @Preconditions
    The RB12 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB12 low (0)
    RF_RST_N_SetLow();
    </code>

*/
#define RF_RST_N_SetLow()           LATBbits.LATB12 = 0
/**
  @Summary
    Toggles the GPIO pin, RB12, using LATBbits.LATB12.

  @Description
    Toggles the GPIO pin, RB12, using LATBbits.LATB12.

  @Preconditions
    The RB12 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB12
    RF_RST_N_Toggle();
    </code>

*/
#define RF_RST_N_Toggle()           LATBbits.LATB12 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RB12.

  @Description
    Reads the value of the GPIO pin, RB12.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB12
    postValue = RF_RST_N_GetValue();
    </code>

*/
#define RF_RST_N_GetValue()         PORTBbits.RB12
/**
  @Summary
    Configures the GPIO pin, RB12, as an input.

  @Description
    Configures the GPIO pin, RB12, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB12 as an input
    RF_RST_N_SetDigitalInput();
    </code>

*/
#define RF_RST_N_SetDigitalInput()  TRISBbits.TRISB12 = 1
/**
  @Summary
    Configures the GPIO pin, RB12, as an output.

  @Description
    Configures the GPIO pin, RB12, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB12 as an output
    RF_RST_N_SetDigitalOutput();
    </code>

*/
#define RF_RST_N_SetDigitalOutput() TRISBbits.TRISB12 = 0
/**
  @Summary
    Sets the GPIO pin, RB14, high using LATBbits.LATB14.

  @Description
    Sets the GPIO pin, RB14, high using LATBbits.LATB14.

  @Preconditions
    The RB14 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB14 high (1)
    SCK1_SetHigh();
    </code>

*/
#define SCK1_SetHigh()          LATBbits.LATB14 = 1
/**
  @Summary
    Sets the GPIO pin, RB14, low using LATBbits.LATB14.

  @Description
    Sets the GPIO pin, RB14, low using LATBbits.LATB14.

  @Preconditions
    The RB14 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB14 low (0)
    SCK1_SetLow();
    </code>

*/
#define SCK1_SetLow()           LATBbits.LATB14 = 0
/**
  @Summary
    Toggles the GPIO pin, RB14, using LATBbits.LATB14.

  @Description
    Toggles the GPIO pin, RB14, using LATBbits.LATB14.

  @Preconditions
    The RB14 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB14
    SCK1_Toggle();
    </code>

*/
#define SCK1_Toggle()           LATBbits.LATB14 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RB14.

  @Description
    Reads the value of the GPIO pin, RB14.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB14
    postValue = SCK1_GetValue();
    </code>

*/
#define SCK1_GetValue()         PORTBbits.RB14
/**
  @Summary
    Configures the GPIO pin, RB14, as an input.

  @Description
    Configures the GPIO pin, RB14, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB14 as an input
    SCK1_SetDigitalInput();
    </code>

*/
#define SCK1_SetDigitalInput()  TRISBbits.TRISB14 = 1
/**
  @Summary
    Configures the GPIO pin, RB14, as an output.

  @Description
    Configures the GPIO pin, RB14, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB14 as an output
    SCK1_SetDigitalOutput();
    </code>

*/
#define SCK1_SetDigitalOutput() TRISBbits.TRISB14 = 0
/**
  @Summary
    Sets the GPIO pin, RB15, high using LATBbits.LATB15.

  @Description
    Sets the GPIO pin, RB15, high using LATBbits.LATB15.

  @Preconditions
    The RB15 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB15 high (1)
    SCK2_SetHigh();
    </code>

*/
#define SCK2_SetHigh()          LATBbits.LATB15 = 1
/**
  @Summary
    Sets the GPIO pin, RB15, low using LATBbits.LATB15.

  @Description
    Sets the GPIO pin, RB15, low using LATBbits.LATB15.

  @Preconditions
    The RB15 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB15 low (0)
    SCK2_SetLow();
    </code>

*/
#define SCK2_SetLow()           LATBbits.LATB15 = 0
/**
  @Summary
    Toggles the GPIO pin, RB15, using LATBbits.LATB15.

  @Description
    Toggles the GPIO pin, RB15, using LATBbits.LATB15.

  @Preconditions
    The RB15 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB15
    SCK2_Toggle();
    </code>

*/
#define SCK2_Toggle()           LATBbits.LATB15 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RB15.

  @Description
    Reads the value of the GPIO pin, RB15.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB15
    postValue = SCK2_GetValue();
    </code>

*/
#define SCK2_GetValue()         PORTBbits.RB15
/**
  @Summary
    Configures the GPIO pin, RB15, as an input.

  @Description
    Configures the GPIO pin, RB15, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB15 as an input
    SCK2_SetDigitalInput();
    </code>

*/
#define SCK2_SetDigitalInput()  TRISBbits.TRISB15 = 1
/**
  @Summary
    Configures the GPIO pin, RB15, as an output.

  @Description
    Configures the GPIO pin, RB15, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB15 as an output
    SCK2_SetDigitalOutput();
    </code>

*/
#define SCK2_SetDigitalOutput() TRISBbits.TRISB15 = 0
/**
  @Summary
    Sets the GPIO pin, RB2, high using LATBbits.LATB2.

  @Description
    Sets the GPIO pin, RB2, high using LATBbits.LATB2.

  @Preconditions
    The RB2 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB2 high (1)
    KL_MOSI2_SetHigh();
    </code>

*/
#define KL_MOSI2_SetHigh()          LATBbits.LATB2 = 1
/**
  @Summary
    Sets the GPIO pin, RB2, low using LATBbits.LATB2.

  @Description
    Sets the GPIO pin, RB2, low using LATBbits.LATB2.

  @Preconditions
    The RB2 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB2 low (0)
    KL_MOSI2_SetLow();
    </code>

*/
#define KL_MOSI2_SetLow()           LATBbits.LATB2 = 0
/**
  @Summary
    Toggles the GPIO pin, RB2, using LATBbits.LATB2.

  @Description
    Toggles the GPIO pin, RB2, using LATBbits.LATB2.

  @Preconditions
    The RB2 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB2
    KL_MOSI2_Toggle();
    </code>

*/
#define KL_MOSI2_Toggle()           LATBbits.LATB2 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RB2.

  @Description
    Reads the value of the GPIO pin, RB2.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB2
    postValue = KL_MOSI2_GetValue();
    </code>

*/
#define KL_MOSI2_GetValue()         PORTBbits.RB2
/**
  @Summary
    Configures the GPIO pin, RB2, as an input.

  @Description
    Configures the GPIO pin, RB2, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB2 as an input
    KL_MOSI2_SetDigitalInput();
    </code>

*/
#define KL_MOSI2_SetDigitalInput()  TRISBbits.TRISB2 = 1
/**
  @Summary
    Configures the GPIO pin, RB2, as an output.

  @Description
    Configures the GPIO pin, RB2, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB2 as an output
    KL_MOSI2_SetDigitalOutput();
    </code>

*/
#define KL_MOSI2_SetDigitalOutput() TRISBbits.TRISB2 = 0
/**
  @Summary
    Sets the GPIO pin, RB3, high using LATBbits.LATB3.

  @Description
    Sets the GPIO pin, RB3, high using LATBbits.LATB3.

  @Preconditions
    The RB3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB3 high (1)
    KL_INT2_BUSY_N_SetHigh();
    </code>

*/
#define KL_INT2_BUSY_N_SetHigh()          LATBbits.LATB3 = 1
/**
  @Summary
    Sets the GPIO pin, RB3, low using LATBbits.LATB3.

  @Description
    Sets the GPIO pin, RB3, low using LATBbits.LATB3.

  @Preconditions
    The RB3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB3 low (0)
    KL_INT2_BUSY_N_SetLow();
    </code>

*/
#define KL_INT2_BUSY_N_SetLow()           LATBbits.LATB3 = 0
/**
  @Summary
    Toggles the GPIO pin, RB3, using LATBbits.LATB3.

  @Description
    Toggles the GPIO pin, RB3, using LATBbits.LATB3.

  @Preconditions
    The RB3 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB3
    KL_INT2_BUSY_N_Toggle();
    </code>

*/
#define KL_INT2_BUSY_N_Toggle()           LATBbits.LATB3 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RB3.

  @Description
    Reads the value of the GPIO pin, RB3.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB3
    postValue = KL_INT2_BUSY_N_GetValue();
    </code>

*/
#define KL_INT2_BUSY_N_GetValue()         PORTBbits.RB3
/**
  @Summary
    Configures the GPIO pin, RB3, as an input.

  @Description
    Configures the GPIO pin, RB3, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB3 as an input
    KL_INT2_BUSY_N_SetDigitalInput();
    </code>

*/
#define KL_INT2_BUSY_N_SetDigitalInput()  TRISBbits.TRISB3 = 1
/**
  @Summary
    Configures the GPIO pin, RB3, as an output.

  @Description
    Configures the GPIO pin, RB3, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB3 as an output
    KL_INT2_BUSY_N_SetDigitalOutput();
    </code>

*/
#define KL_INT2_BUSY_N_SetDigitalOutput() TRISBbits.TRISB3 = 0
/**
  @Summary
    Sets the GPIO pin, RB4, high using LATBbits.LATB4.

  @Description
    Sets the GPIO pin, RB4, high using LATBbits.LATB4.

  @Preconditions
    The RB4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB4 high (1)
    LED_SetHigh();
    </code>

*/
#define LED_SetHigh()          LATBbits.LATB4 = 1
/**
  @Summary
    Sets the GPIO pin, RB4, low using LATBbits.LATB4.

  @Description
    Sets the GPIO pin, RB4, low using LATBbits.LATB4.

  @Preconditions
    The RB4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB4 low (0)
    LED_SetLow();
    </code>

*/
#define LED_SetLow()           LATBbits.LATB4 = 0
/**
  @Summary
    Toggles the GPIO pin, RB4, using LATBbits.LATB4.

  @Description
    Toggles the GPIO pin, RB4, using LATBbits.LATB4.

  @Preconditions
    The RB4 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB4
    LED_Toggle();
    </code>

*/
#define LED_Toggle()           LATBbits.LATB4 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RB4.

  @Description
    Reads the value of the GPIO pin, RB4.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB4
    postValue = LED_GetValue();
    </code>

*/
#define LED_GetValue()         PORTBbits.RB4
/**
  @Summary
    Configures the GPIO pin, RB4, as an input.

  @Description
    Configures the GPIO pin, RB4, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB4 as an input
    LED_SetDigitalInput();
    </code>

*/
#define LED_SetDigitalInput()  TRISBbits.TRISB4 = 1
/**
  @Summary
    Configures the GPIO pin, RB4, as an output.

  @Description
    Configures the GPIO pin, RB4, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB4 as an output
    LED_SetDigitalOutput();
    </code>

*/
#define LED_SetDigitalOutput() TRISBbits.TRISB4 = 0
/**
  @Summary
    Sets the GPIO pin, RB5, high using LATBbits.LATB5.

  @Description
    Sets the GPIO pin, RB5, high using LATBbits.LATB5.

  @Preconditions
    The RB5 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB5 high (1)
    KL_MISO2_SetHigh();
    </code>

*/
#define KL_MISO2_SetHigh()          LATBbits.LATB5 = 1
/**
  @Summary
    Sets the GPIO pin, RB5, low using LATBbits.LATB5.

  @Description
    Sets the GPIO pin, RB5, low using LATBbits.LATB5.

  @Preconditions
    The RB5 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB5 low (0)
    KL_MISO2_SetLow();
    </code>

*/
#define KL_MISO2_SetLow()           LATBbits.LATB5 = 0
/**
  @Summary
    Toggles the GPIO pin, RB5, using LATBbits.LATB5.

  @Description
    Toggles the GPIO pin, RB5, using LATBbits.LATB5.

  @Preconditions
    The RB5 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB5
    KL_MISO2_Toggle();
    </code>

*/
#define KL_MISO2_Toggle()           LATBbits.LATB5 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RB5.

  @Description
    Reads the value of the GPIO pin, RB5.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB5
    postValue = KL_MISO2_GetValue();
    </code>

*/
#define KL_MISO2_GetValue()         PORTBbits.RB5
/**
  @Summary
    Configures the GPIO pin, RB5, as an input.

  @Description
    Configures the GPIO pin, RB5, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB5 as an input
    KL_MISO2_SetDigitalInput();
    </code>

*/
#define KL_MISO2_SetDigitalInput()  TRISBbits.TRISB5 = 1
/**
  @Summary
    Configures the GPIO pin, RB5, as an output.

  @Description
    Configures the GPIO pin, RB5, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB5 as an output
    KL_MISO2_SetDigitalOutput();
    </code>

*/
#define KL_MISO2_SetDigitalOutput() TRISBbits.TRISB5 = 0
/**
  @Summary
    Sets the GPIO pin, RB6, high using LATBbits.LATB6.

  @Description
    Sets the GPIO pin, RB6, high using LATBbits.LATB6.

  @Preconditions
    The RB6 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB6 high (1)
    SIM_SHDN_N_SetHigh();
    </code>

*/
#define SIM_SHDN_N_SetHigh()          LATBbits.LATB6 = 1
/**
  @Summary
    Sets the GPIO pin, RB6, low using LATBbits.LATB6.

  @Description
    Sets the GPIO pin, RB6, low using LATBbits.LATB6.

  @Preconditions
    The RB6 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB6 low (0)
    SIM_SHDN_N_SetLow();
    </code>

*/
#define SIM_SHDN_N_SetLow()           LATBbits.LATB6 = 0
/**
  @Summary
    Toggles the GPIO pin, RB6, using LATBbits.LATB6.

  @Description
    Toggles the GPIO pin, RB6, using LATBbits.LATB6.

  @Preconditions
    The RB6 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB6
    SIM_SHDN_N_Toggle();
    </code>

*/
#define SIM_SHDN_N_Toggle()           LATBbits.LATB6 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RB6.

  @Description
    Reads the value of the GPIO pin, RB6.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB6
    postValue = SIM_SHDN_N_GetValue();
    </code>

*/
#define SIM_SHDN_N_GetValue()         PORTBbits.RB6
/**
  @Summary
    Configures the GPIO pin, RB6, as an input.

  @Description
    Configures the GPIO pin, RB6, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB6 as an input
    SIM_SHDN_N_SetDigitalInput();
    </code>

*/
#define SIM_SHDN_N_SetDigitalInput()  TRISBbits.TRISB6 = 1
/**
  @Summary
    Configures the GPIO pin, RB6, as an output.

  @Description
    Configures the GPIO pin, RB6, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB6 as an output
    SIM_SHDN_N_SetDigitalOutput();
    </code>

*/
#define SIM_SHDN_N_SetDigitalOutput() TRISBbits.TRISB6 = 0
/**
  @Summary
    Sets the GPIO pin, RB7, high using LATBbits.LATB7.

  @Description
    Sets the GPIO pin, RB7, high using LATBbits.LATB7.

  @Preconditions
    The RB7 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB7 high (1)
    SIM_INT_N_SetHigh();
    </code>

*/
#define SIM_INT_N_SetHigh()          LATBbits.LATB7 = 1
/**
  @Summary
    Sets the GPIO pin, RB7, low using LATBbits.LATB7.

  @Description
    Sets the GPIO pin, RB7, low using LATBbits.LATB7.

  @Preconditions
    The RB7 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB7 low (0)
    SIM_INT_N_SetLow();
    </code>

*/
#define SIM_INT_N_SetLow()           LATBbits.LATB7 = 0
/**
  @Summary
    Toggles the GPIO pin, RB7, using LATBbits.LATB7.

  @Description
    Toggles the GPIO pin, RB7, using LATBbits.LATB7.

  @Preconditions
    The RB7 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB7
    SIM_INT_N_Toggle();
    </code>

*/
#define SIM_INT_N_Toggle()           LATBbits.LATB7 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RB7.

  @Description
    Reads the value of the GPIO pin, RB7.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB7
    postValue = SIM_INT_N_GetValue();
    </code>

*/
#define SIM_INT_N_GetValue()         PORTBbits.RB7
/**
  @Summary
    Configures the GPIO pin, RB7, as an input.

  @Description
    Configures the GPIO pin, RB7, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB7 as an input
    SIM_INT_N_SetDigitalInput();
    </code>

*/
#define SIM_INT_N_SetDigitalInput()  TRISBbits.TRISB7 = 1
/**
  @Summary
    Configures the GPIO pin, RB7, as an output.

  @Description
    Configures the GPIO pin, RB7, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB7 as an output
    SIM_INT_N_SetDigitalOutput();
    </code>

*/
#define SIM_INT_N_SetDigitalOutput() TRISBbits.TRISB7 = 0
/**
  @Summary
    Sets the GPIO pin, RB8, high using LATBbits.LATB8.

  @Description
    Sets the GPIO pin, RB8, high using LATBbits.LATB8.

  @Preconditions
    The RB8 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB8 high (1)
    SIM_RESET_SetHigh();
    </code>

*/
#define SIM_RESET_SetHigh()          LATBbits.LATB8 = 1
/**
  @Summary
    Sets the GPIO pin, RB8, low using LATBbits.LATB8.

  @Description
    Sets the GPIO pin, RB8, low using LATBbits.LATB8.

  @Preconditions
    The RB8 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB8 low (0)
    SIM_RESET_SetLow();
    </code>

*/
#define SIM_RESET_SetLow()           LATBbits.LATB8 = 0
/**
  @Summary
    Toggles the GPIO pin, RB8, using LATBbits.LATB8.

  @Description
    Toggles the GPIO pin, RB8, using LATBbits.LATB8.

  @Preconditions
    The RB8 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB8
    SIM_RESET_Toggle();
    </code>

*/
#define SIM_RESET_Toggle()           LATBbits.LATB8 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RB8.

  @Description
    Reads the value of the GPIO pin, RB8.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB8
    postValue = SIM_RESET_GetValue();
    </code>

*/
#define SIM_RESET_GetValue()         PORTBbits.RB8
/**
  @Summary
    Configures the GPIO pin, RB8, as an input.

  @Description
    Configures the GPIO pin, RB8, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB8 as an input
    SIM_RESET_SetDigitalInput();
    </code>

*/
#define SIM_RESET_SetDigitalInput()  TRISBbits.TRISB8 = 1
/**
  @Summary
    Configures the GPIO pin, RB8, as an output.

  @Description
    Configures the GPIO pin, RB8, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB8 as an output
    SIM_RESET_SetDigitalOutput();
    </code>

*/
#define SIM_RESET_SetDigitalOutput() TRISBbits.TRISB8 = 0
/**
  @Summary
    Sets the GPIO pin, RB9, high using LATBbits.LATB9.

  @Description
    Sets the GPIO pin, RB9, high using LATBbits.LATB9.

  @Preconditions
    The RB9 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB9 high (1)
    RF_IRQ_SetHigh();
    </code>

*/
#define RF_IRQ_SetHigh()          LATBbits.LATB9 = 1
/**
  @Summary
    Sets the GPIO pin, RB9, low using LATBbits.LATB9.

  @Description
    Sets the GPIO pin, RB9, low using LATBbits.LATB9.

  @Preconditions
    The RB9 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RB9 low (0)
    RF_IRQ_SetLow();
    </code>

*/
#define RF_IRQ_SetLow()           LATBbits.LATB9 = 0
/**
  @Summary
    Toggles the GPIO pin, RB9, using LATBbits.LATB9.

  @Description
    Toggles the GPIO pin, RB9, using LATBbits.LATB9.

  @Preconditions
    The RB9 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RB9
    RF_IRQ_Toggle();
    </code>

*/
#define RF_IRQ_Toggle()           LATBbits.LATB9 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RB9.

  @Description
    Reads the value of the GPIO pin, RB9.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RB9
    postValue = RF_IRQ_GetValue();
    </code>

*/
#define RF_IRQ_GetValue()         PORTBbits.RB9
/**
  @Summary
    Configures the GPIO pin, RB9, as an input.

  @Description
    Configures the GPIO pin, RB9, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB9 as an input
    RF_IRQ_SetDigitalInput();
    </code>

*/
#define RF_IRQ_SetDigitalInput()  TRISBbits.TRISB9 = 1
/**
  @Summary
    Configures the GPIO pin, RB9, as an output.

  @Description
    Configures the GPIO pin, RB9, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RB9 as an output
    RF_IRQ_SetDigitalOutput();
    </code>

*/
#define RF_IRQ_SetDigitalOutput() TRISBbits.TRISB9 = 0
/**
  @Summary
    Sets the GPIO pin, RC0, high using LATCbits.LATC0.

  @Description
    Sets the GPIO pin, RC0, high using LATCbits.LATC0.

  @Preconditions
    The RC0 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RC0 high (1)
    CheckTXPowerSupply_SetHigh();
    </code>

*/
#define CheckTXPowerSupply_SetHigh()          LATCbits.LATC0 = 1
/**
  @Summary
    Sets the GPIO pin, RC0, low using LATCbits.LATC0.

  @Description
    Sets the GPIO pin, RC0, low using LATCbits.LATC0.

  @Preconditions
    The RC0 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RC0 low (0)
    CheckTXPowerSupply_SetLow();
    </code>

*/
#define CheckTXPowerSupply_SetLow()           LATCbits.LATC0 = 0
/**
  @Summary
    Toggles the GPIO pin, RC0, using LATCbits.LATC0.

  @Description
    Toggles the GPIO pin, RC0, using LATCbits.LATC0.

  @Preconditions
    The RC0 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RC0
    CheckTXPowerSupply_Toggle();
    </code>

*/
#define CheckTXPowerSupply_Toggle()           LATCbits.LATC0 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RC0.

  @Description
    Reads the value of the GPIO pin, RC0.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RC0
    postValue = CheckTXPowerSupply_GetValue();
    </code>

*/
#define CheckTXPowerSupply_GetValue()         PORTCbits.RC0
/**
  @Summary
    Configures the GPIO pin, RC0, as an input.

  @Description
    Configures the GPIO pin, RC0, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RC0 as an input
    CheckTXPowerSupply_SetDigitalInput();
    </code>

*/
#define CheckTXPowerSupply_SetDigitalInput()  TRISCbits.TRISC0 = 1
/**
  @Summary
    Configures the GPIO pin, RC0, as an output.

  @Description
    Configures the GPIO pin, RC0, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RC0 as an output
    CheckTXPowerSupply_SetDigitalOutput();
    </code>

*/
#define CheckTXPowerSupply_SetDigitalOutput() TRISCbits.TRISC0 = 0
/**
  @Summary
    Sets the GPIO pin, RC8, high using LATCbits.LATC8.

  @Description
    Sets the GPIO pin, RC8, high using LATCbits.LATC8.

  @Preconditions
    The RC8 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RC8 high (1)
    RF_DWL_REQ_SetHigh();
    </code>

*/
#define RF_DWL_REQ_SetHigh()          LATCbits.LATC8 = 1
/**
  @Summary
    Sets the GPIO pin, RC8, low using LATCbits.LATC8.

  @Description
    Sets the GPIO pin, RC8, low using LATCbits.LATC8.

  @Preconditions
    The RC8 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RC8 low (0)
    RF_DWL_REQ_SetLow();
    </code>

*/
#define RF_DWL_REQ_SetLow()           LATCbits.LATC8 = 0
/**
  @Summary
    Toggles the GPIO pin, RC8, using LATCbits.LATC8.

  @Description
    Toggles the GPIO pin, RC8, using LATCbits.LATC8.

  @Preconditions
    The RC8 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RC8
    RF_DWL_REQ_Toggle();
    </code>

*/
#define RF_DWL_REQ_Toggle()           LATCbits.LATC8 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RC8.

  @Description
    Reads the value of the GPIO pin, RC8.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RC8
    postValue = RF_DWL_REQ_GetValue();
    </code>

*/
#define RF_DWL_REQ_GetValue()         PORTCbits.RC8
/**
  @Summary
    Configures the GPIO pin, RC8, as an input.

  @Description
    Configures the GPIO pin, RC8, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RC8 as an input
    RF_DWL_REQ_SetDigitalInput();
    </code>

*/
#define RF_DWL_REQ_SetDigitalInput()  TRISCbits.TRISC8 = 1
/**
  @Summary
    Configures the GPIO pin, RC8, as an output.

  @Description
    Configures the GPIO pin, RC8, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RC8 as an output
    RF_DWL_REQ_SetDigitalOutput();
    </code>

*/
#define RF_DWL_REQ_SetDigitalOutput() TRISCbits.TRISC8 = 0
/**
  @Summary
    Sets the GPIO pin, RC9, high using LATCbits.LATC9.

  @Description
    Sets the GPIO pin, RC9, high using LATCbits.LATC9.

  @Preconditions
    The RC9 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RC9 high (1)
    RF_BUSY_SetHigh();
    </code>

*/
#define RF_BUSY_SetHigh()          LATCbits.LATC9 = 1
/**
  @Summary
    Sets the GPIO pin, RC9, low using LATCbits.LATC9.

  @Description
    Sets the GPIO pin, RC9, low using LATCbits.LATC9.

  @Preconditions
    The RC9 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Set RC9 low (0)
    RF_BUSY_SetLow();
    </code>

*/
#define RF_BUSY_SetLow()           LATCbits.LATC9 = 0
/**
  @Summary
    Toggles the GPIO pin, RC9, using LATCbits.LATC9.

  @Description
    Toggles the GPIO pin, RC9, using LATCbits.LATC9.

  @Preconditions
    The RC9 must be set to an output.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Toggle RC9
    RF_BUSY_Toggle();
    </code>

*/
#define RF_BUSY_Toggle()           LATCbits.LATC9 ^= 1
/**
  @Summary
    Reads the value of the GPIO pin, RC9.

  @Description
    Reads the value of the GPIO pin, RC9.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    uint16_t portValue;

    // Read RC9
    postValue = RF_BUSY_GetValue();
    </code>

*/
#define RF_BUSY_GetValue()         PORTCbits.RC9
/**
  @Summary
    Configures the GPIO pin, RC9, as an input.

  @Description
    Configures the GPIO pin, RC9, as an input.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RC9 as an input
    RF_BUSY_SetDigitalInput();
    </code>

*/
#define RF_BUSY_SetDigitalInput()  TRISCbits.TRISC9 = 1
/**
  @Summary
    Configures the GPIO pin, RC9, as an output.

  @Description
    Configures the GPIO pin, RC9, as an output.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    // Sets the RC9 as an output
    RF_BUSY_SetDigitalOutput();
    </code>

*/
#define RF_BUSY_SetDigitalOutput() TRISCbits.TRISC9 = 0

/**
    Section: Function Prototypes
*/
/**
  @Summary
    Configures the pin settings of the PIC32MX150F128D
    The peripheral pin select, PPS, configuration is also handled by this manager.

  @Description
    This is the generated manager file for the MPLAB(c) Code Configurator device.  This manager
    configures the pins direction, initial state, analog setting.
    The peripheral pin select, PPS, configuration is also handled by this manager.

  @Preconditions
    None.

  @Returns
    None.

  @Param
    None.

  @Example
    <code>
    void SYSTEM_Initialize(void)
    {
        // Other initializers are called from this function
        PIN_MANAGER_Initialize();
    }
    </code>

*/
void PIN_MANAGER_Initialize(void);

#endif
