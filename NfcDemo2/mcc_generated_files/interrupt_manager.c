/**
  System Interrupts Generated Driver File 

  @Company:
    Microchip Technology Inc.

  @File Name:
    interrupt_manager.h

  @Summary:
    This is the generated driver implementation file for setting up the
    interrupts using PIC32MX MCUs

  @Description:
    This source file provides implementations for PIC32MX MCUs interrupts.
    Generation Information : 
        Product Revision  :  PIC32MX MCUs - pic32mx : v1.35
        Device            :  PIC32MX150F128D
        Version           :  1.01
    The generated drivers are tested against the following:
        Compiler          :  XC32 1.42
        MPLAB             :  MPLAB X 3.55
*/
/*
    (c) 2016 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/

/**
    Section: Includes
*/
#include <xc.h>

/**
    void INTERRUPT_Initialize (void)
*/
void INTERRUPT_Initialize (void)
{    
    //    SPIRXI: SPI2 Receiver
    //    Priority: 6
    //    SubPriority: 0
        IPC9bits.SPI2IP = 6;
        IPC9bits.SPI2IS = 0;
    //    CNAI: Part A Change Notice
    //    Priority: 5
    //    SubPriority: 0
        IPC8bits.CNIP = 5;
        IPC8bits.CNIS = 0;
    //    TI: Timer 2
    //    Priority: 5
    //    SubPriority: 0
        IPC2bits.T2IP = 5;
        IPC2bits.T2IS = 0;
    //    ADI: ADC1 Convert Done
    //    Priority: 7
    //    SubPriority: 0
        IPC5bits.AD1IP = 7;
        IPC5bits.AD1IS = 0;
    //    TI: Timer 1
    //    Priority: 5
    //    SubPriority: 0
        IPC1bits.T1IP = 5;
        IPC1bits.T1IS = 0;
    //    UERI: UART1 Error
    //    Priority: 4
    //    SubPriority: 0
        IPC8bits.U1IP = 4;
        IPC8bits.U1IS = 0;

    //  Enable the multi vector
    INTCONbits.MVEC = 1;
    //  Enable Global Interrupts 
    __builtin_mtc0(12,0,(__builtin_mfc0(12,0) | 0x0001));

}
