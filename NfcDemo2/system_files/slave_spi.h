/* 
 * File:   slave_spi.h
 * Author: TJ van Veen
 * Created on: 6 januari 2015, 12:22
 * 
 * Author: Zhiyuan Wang
 * Changed on: 2018-05-22 17:53
 * 
 */

#ifndef SLAVE_SPI_H
#define	SLAVE_SPI_H

#include "../mcc_generated_files/mcc.h"
#include "system.h"
#include <stdint.h>
#include <stdbool.h>
#include <string.h>

//------------------------------------------------------------------------------
// Definitions

// SPI commands
#define CMD_CheckCardAvailable  0x01
#define CMD_ReadData            0x02
#define CMD_SetKey              0x03
#define CMD_GetKey              0x04

#define RES_NO_CARD             0x00
#define RES_CARD_FOUND          0x01
#define RES_BUSY                0x02

//------------------------------------------------------------------------------
// Prototypes
void spi_slaveInit();
void spi_slaveClose();
void spi_processMessages(void);
void spi_handleCommand( uint8_t cmd, uint8_t rx_byte );
void spi_reset(void);

// For Test Only 
void SPI_Slave_Simulation_Run();
void SPI_Slave_Simulation_Start();
void SPI_Slave_Simulation_Stop();
void SPI_CheckCardAvailable_Simulation( uint8_t mask );
void SPI_ReadData_Simulation();
void SPI_GetKey_Simulation( uint8_t keyNr, key_t key );
void SPI_SetKey_Simulation( uint8_t keyNr, key_t key );

//------------------------------------------------------------------------------
// Variables

#endif	/* SLAVE_SPI_H */

