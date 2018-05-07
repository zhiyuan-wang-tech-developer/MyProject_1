/* 
 * File:   tda8029.h
 * Author: TJ van Veen
 *
 * Created on 6 januari 2015, 12:22
 *
 * Modifier: Zhiyuan Wang
 * Changed on 2018-05-03 14:40
 * 
 */

#ifndef TDA8029_H
#define	TDA8029_H

#include "../mcc_generated_files/mcc.h"

#include <stdint.h>
#include <stdbool.h>
//#include "fifo.h"

//------------------------------------------------------------------------------
// Definitions
//#define UART_BAUDRATE    38400

//------------------------------------------------------------------------------
// PIN Definition
#define SIM_ESM     LATAbits.LATA4      //Energy Saving Mode output to SAM reader
#define SIM_TX      LATAbits.LATA0      //serial data output to SAM reader
#define SIM_RX      PORTBbits.RB13      //serial data input from SAM reader
#define N_SIM_SHDN  LATBbits.LATB6      //Shutdown output to SAM reader
#define N_SIM_INT   PORTBbits.RB7       //Interrupt input from SAM reader
#define SIM_RESET   LATBbits.LATB8      //Reset output to SAM reader

//------------------------------------------------------------------------------
// Function Prototypes
void tda8029_Init();
void tda8029_Sleep();
void tda8029_WakeUp();
bool tda8029_isCardPresent();
bool tda8029_putByte( uint8_t byte );
bool tda8029_putBytes( uint8_t *buf, uint8_t bufLen );
bool tda8029_getByte( uint8_t *pbyte );
bool tda8029_getBytes( uint8_t *buf, uint8_t *bufLen );
void tda8029_getResponse( uint8_t *buf, uint8_t *bufLen );

//------------------------------------------------------------------------------
// Variables

#endif	/* TDA8029_H */

