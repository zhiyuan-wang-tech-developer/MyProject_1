/* ************************************************************************** */
/** Descriptive File Name

  @Author
    Zhiyuan Wang

  @Created on
    2018-05-22 

  @File Name
    spi_flash.h

  @Summary
    External Flash memory SST25VF080B SPI driver header

  @Description
    This file is the header file for the flash memory SST25VF080B driver.
 */
/* ************************************************************************** */

#ifndef SPI_FLASH_H    /* Guard against multiple inclusion */
#define SPI_FLASH_H

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */
/* TODO:  Include other files here if needed. */
#include "../mcc_generated_files/mcc.h"
#include <string.h>
#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>

/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Constants                                                         */
/* ************************************************************************** */
/* ************************************************************************** */


    
/*******************************************************************************
**   Function Declarations for flash memory
*******************************************************************************/ 
uint8_t spi_flash_Read_Status_Register(void);
void spi_flash_Enable_Write_Status_Register(void);
void spi_flash_Write_Status_Register(uint8_t byteToWrite);
void spi_flash_Write_Enable(void);
void spi_flash_Write_Disable(void);
uint8_t spi_flash_Read_ID(uint8_t ID_address);
uint32_t spi_flash_Read_Jedec_ID(void);
uint8_t spi_flash_Read_Byte(uint32_t address);
bool spi_flash_Read_Bytes(uint32_t address, uint32_t num_bytes_to_read, uint8_t *pOutputBuffer, uint32_t outputBufferSize);
void spi_flash_Unlock_Block_Protection(void);
void spi_flash_Write_Byte(uint32_t address, uint8_t byteToWrite);
bool spi_flash_Write_Bytes(uint32_t address, uint32_t num_bytes_to_write, uint8_t *pInputBuffer, uint32_t inputBufferSize);
void spi_flash_Erase_All(void);
void spi_flash_Erase_4KB_Sector(uint32_t address);
void spi_flash_Erase_32KB_Block(uint32_t address);
void spi_flash_Erase_64KB_Block(uint32_t address);
void spi_flash_Busy_Wait(void);
bool spi_flash_is_Write_Enabled(void);
bool spi_flash_is_SST25VF040B(void);
bool spi_flash_is_SST25VF080B(void);
void spi_flash_Test(void);    

/* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* SPI_FLASH_H */

/* *****************************************************************************
 End of File
 */
