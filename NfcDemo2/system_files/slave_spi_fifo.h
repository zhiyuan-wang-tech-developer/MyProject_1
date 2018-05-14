/* 
 * File:   slave_fifo.h
 * Author: TJ van Veen
 *
 * Created on 7 januari 2015, 14:22
 */

#ifndef SLAVE_FIFO_H
#define	SLAVE_FIFO_H

#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

//------------------------------------------------------------------------------
// Definitions

typedef struct {
    uint8_t *buf;
    uint8_t r;
    uint8_t w;
    uint8_t size;
} fifo;

//------------------------------------------------------------------------------
// Prototypes

void fifo_updateRead( fifo *f );
void fifo_updateWrite( fifo *f );
uint8_t fifo_space( fifo *f );
uint8_t fifo_data( fifo *f );
bool fifo_getByte( fifo *f, uint8_t *b );
bool fifo_putByte( fifo *f, uint8_t b);
uint8_t fifo_putBytes( fifo *f, uint8_t *src, uint8_t len );
uint16_t fifo_getBytes( uint8_t *dst, fifo *f, uint8_t len );

//------------------------------------------------------------------------------
// Variables

#endif	/* SLAVE_FIFO_H */

