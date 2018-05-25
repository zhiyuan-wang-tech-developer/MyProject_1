/* ************************************************************************** */
/** Descriptive File Name

  @Author
    Zhiyuan Wang

  @Created on
    2018-05-22

  @File Name
    spi_flash.c

  @Summary
    External Flash memory SST25VF080B SPI driver source code

  @Description
    This file is the source file for the flash memory SST25VF080B driver.
    All the driver API functions are defined here.
 */
/* ************************************************************************** */

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */
/* TODO:  Include other files here if needed. */
#include "spi_flash.h"
#include "../mcc_generated_files/mcc.h"
#include <string.h>

/* SPI FLASH Memory Operation Instructions */
#define READ_MEMORY                     0x03    // SPI Flash Opcode: Read Memory at up to 25MHz
#define ERASE_4KB_SECTOR                0x20    // SPI Flash Opcode: Erase 4KByte of Sector
#define ERASE_32KB_BLOCK                0x52    // SPI Flash Opcode: Erase 32KByte of Block 
#define ERASE_64KB_BLOCK                0xD8    // SPI Flash Opcode: Erase 64KByte of Block 
#define ERASE_ALL                       0x60    // SPI Flash Opcode: Erase Entire Chip
#define WRITE_BYTE                      0x02    // SPI Flash Opcode: Write One Data Byte to Memory Chip                   
#define WRITE_WORD_AAI_MODE             0xAD    // SPI Flash Opcode: Write continuous stream of 16-bit words with Auto Address Increment Mode
#define READ_STATUS_REGISTER            0x05    // SPI Flash Opcode: Read Status Register
#define ENABLE_WRITE_STATUS_REGISTER    0x50    // SPI Flash Opcode: Enable Write Status Register
#define WRITE_STATUS_REGISTER           0x01    // SPI Flash Opcode: Write Status Register
#define ENABLE_WRITE                    0x06    // SPI Flash Opcode: Write Enable
#define DISABLE_WRITE                   0x04    // SPI Flash Opcode: Write Disable and End AAI Mode
#define READ_ID                         0x90    // SPI Flash Opcode: Read ID
#define READ_JEDEC_ID                   0x9F    // SPI Flash Opcode: Read JEDEC ID
#define ENABLE_BUSY_MISO                0x70    // SPI Flash Opcode: Enable output READY/#BUSY status on MISO pin in AAI Mode
#define DISABLE_BUSY_MISO               0x80    // SPI Flash Opcode: Disable output READY/#BUSY status on MISO pin in AAI Mode

/* Software Status Register Bits */
#define BUSY    0x01    // Mask for Status Register BUSY (Internal Write Operation in Progress) status bit
#define WEL     0x02    // Mask for Status Register WEL (Write Enable Latch) status bit
#define BP0     0x04    // Mask for Status Register BP0 (Block Protection 0) status bit
#define BP1     0x08    // Mask for Status Register BP1 (Block Protection 1) status bit
#define BP2     0x10    // Mask for Status Register BP2 (Block Protection 2) status bit
#define BP3     0x20    // Mask for Status Register BP3 (Block Protection 3) status bit
#define AAI     0x40    // Mask for Status Register AAI (Auto Address Increment Programming) status bit
#define BPL     0x80    // Mask for Status Register BPL (Block Protection Lockdown / BPx block protection bit read-only) status bit

/* SST25VF080B JEDEC ID */
#define SST25VF080B_JEDEC_ID            0x00BF258E

/* The status of the MISO used for hardware end-of-write detection during the AAI mode */
#define FLASH_READY       1
#define FLASH_BUSY        0



/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Local Function Declarations                                       */
/* ************************************************************************** */
/* ************************************************************************** */
void spi_flash_Chip_Enable(void);
void spi_flash_Chip_Disable(void);
void spi_flash_Send_Byte(uint8_t byteToSend);
uint8_t spi_flash_Get_Byte(void);
uint8_t spi_flash_Read_Status_Register(void);
void spi_flash_Enable_Write_Status_Register(void);
void spi_flash_Write_Status_Register(uint8_t byteToWrite);
void spi_flash_Write_Enable(void);
void spi_flash_Write_Disable(void);
void spi_flash_MISO_Busy_Output_Enable(void);
void spi_flash_MISO_Busy_Output_Disable(void);
void spi_flash_MISO_Busy_Output_Polling(void);
uint8_t spi_flash_Read_ID(uint8_t ID_address);
uint32_t spi_flash_Read_Jedec_ID(void);
uint8_t spi_flash_Read_Byte(uint32_t address);
bool spi_flash_Read_Bytes(uint32_t address, uint32_t num_bytes_to_read, uint8_t *pOutputBuffer, uint32_t outputBufferSize);
void spi_flash_Write_Byte(uint32_t address, uint8_t byteToWrite);
void spi_flash_Write_Bytes_Start_AutoAddressInc(uint32_t address, uint8_t byte1ToWrite, uint8_t byte2ToWrite);
void spi_flash_Write_Bytes_Follow_AutoAddressInc(uint8_t byte1ToWrite, uint8_t byte2ToWrite);
void spi_flash_Write_Bytes_Stop_AutoAddressInc(void);
bool spi_flash_Write_Bytes(uint32_t address, uint32_t num_bytes_to_write, uint8_t *pInputBuffer, uint32_t inputBufferSize);
void spi_flash_Erase_All(void);
void spi_flash_Erase_4KB_Sector(uint32_t address);
void spi_flash_Erase_32KB_Block(uint32_t address);
void spi_flash_Erase_64KB_Block(uint32_t address);
void spi_flash_Busy_Wait(void);
bool spi_flash_is_Write_Enabled(void);
bool spi_flash_is_SST25VF080B(void);
void spi_flash_test(void);


/*******************************************************************************
**   Function Definitions
*******************************************************************************/
void spi_flash_Chip_Enable(void)
{
    FLASH_SS_N_SetLow();
}

void spi_flash_Chip_Disable(void)
{
    FLASH_SS_N_SetHigh();
}

void spi_flash_Send_Byte(uint8_t byteToSend)
{
    uint8_t rxDummy = 0;
    rxDummy = SPI1_Exchange8bit(byteToSend);
}

uint8_t spi_flash_Get_Byte(void)
{
    uint8_t rxData = 0;
    uint8_t txDummy = 255;
    rxData = SPI1_Exchange8bit(txDummy);
    return rxData;
}

uint8_t spi_flash_Read_Status_Register(void)
{
    uint8_t status = 0;
    /* Enable flash device */
    spi_flash_Chip_Enable();
    /* Send Read Status Register Command 0x05 */
    spi_flash_Send_Byte(READ_STATUS_REGISTER);
    /* Receive register status */
    status = spi_flash_Get_Byte();
    /* Disable flash device */
    spi_flash_Chip_Disable();
    return status;    
}

void spi_flash_Enable_Write_Status_Register(void)
{
    /* Enable flash device */
    spi_flash_Chip_Enable();
    /* Send Enable Write Status Register Command 0x50 */
    spi_flash_Send_Byte(ENABLE_WRITE_STATUS_REGISTER);
    /* Disable flash device */
    spi_flash_Chip_Disable();
}

void spi_flash_Write_Status_Register(uint8_t byteToWrite)
{
    /* Enable flash device */
    spi_flash_Chip_Enable();
    /* Send Write Status Register Command 0x01 */
    spi_flash_Send_Byte(WRITE_STATUS_REGISTER);
    /* Write one byte data to the Status Register */
    /* Data that will change the status of BPx or BPL (only bits 2,3,4,5,7 can be written) */
    spi_flash_Send_Byte(byteToWrite);
    /* Disable flash device */
    spi_flash_Chip_Disable();
}

void spi_flash_Write_Enable(void)
{
    /* Enable flash device */
    spi_flash_Chip_Enable();
    /* Send Enable Write Command 0x06 */
    spi_flash_Send_Byte(ENABLE_WRITE);    
    /* Disable flash device */
    spi_flash_Chip_Disable();
}

void spi_flash_Write_Disable(void)
{
    /* Enable flash device */
    spi_flash_Chip_Enable();
    /* Send Disable Write Command 0x04 */
    spi_flash_Send_Byte(DISABLE_WRITE);    
    /* Disable flash device */
    spi_flash_Chip_Disable();
}

void spi_flash_MISO_Busy_Output_Enable(void)
{
    /* Enable flash device */
    spi_flash_Chip_Enable();
    /* Send Enable MISO Busy Command 0x70 */
    spi_flash_Send_Byte(ENABLE_BUSY_MISO);    
    /* Disable flash device */
    spi_flash_Chip_Disable();
}

void spi_flash_MISO_Busy_Output_Disable(void)
{
    /* Enable flash device */
    spi_flash_Chip_Enable();
    /* Send Disable MISO Busy Command 0x80 */
    spi_flash_Send_Byte(DISABLE_BUSY_MISO);    
    /* Disable flash device */
    spi_flash_Chip_Disable();    
}

void spi_flash_MISO_Busy_Output_Polling(void)
{
    /* Enable flash device */
    spi_flash_Chip_Enable();
    /* Wait until the chip is not busy */
    while( RF_SDI1_GetValue() == FLASH_BUSY );
    /* Disable flash device */
    spi_flash_Chip_Disable(); 
}

uint8_t spi_flash_Read_ID(uint8_t ID_address)
{
    uint8_t byteID = 0;
    /* Enable flash device */
    spi_flash_Chip_Enable();
    /* Send Read ID Command 0x90 */
    spi_flash_Send_Byte(READ_ID);
    /* Send address either 0x000000 or 0x000001 */
    /* Send address (High Byte 0x00) */
    spi_flash_Send_Byte(0x00);
    /* Send address (Middle Byte 0x00) */
    spi_flash_Send_Byte(0x00);
    /* Send address (Low Byte ID address either 0x00 or 0x01) */
    spi_flash_Send_Byte(ID_address);
    /* Receive ID byte */
    byteID = spi_flash_Get_Byte();
    /* Disable flash device */
    spi_flash_Chip_Disable();
    return byteID;
}

uint32_t spi_flash_Read_Jedec_ID(void)
{
    uint32_t dwJedecID = 0;
    /* Enable flash device */
    spi_flash_Chip_Enable();
    /* Send Read Jedec ID Command 0x9F */
    spi_flash_Send_Byte(READ_JEDEC_ID);
    /* Receive 3-bytes Jedec ID (0xBF258E) */
    dwJedecID = (dwJedecID | spi_flash_Get_Byte()) << 8;
    dwJedecID = (dwJedecID | spi_flash_Get_Byte()) << 8;
    dwJedecID = (dwJedecID | spi_flash_Get_Byte());
    /* Disable flash device */
    spi_flash_Chip_Disable();
    return dwJedecID;
}

uint8_t spi_flash_Read_Byte(uint32_t address)
{
    uint8_t byteRead = 0;
    /* Enable flash device */
    spi_flash_Chip_Enable();
    /* Send Read Command 0x03 */
    spi_flash_Send_Byte(READ_MEMORY);
    /* Send 3-bytes address */
    /* Send high byte address */
    spi_flash_Send_Byte( ((address & 0x00FF0000) >> 16) );
    /* Send middle byte address */
    spi_flash_Send_Byte( ((address & 0x0000FF00) >> 8) );
    /* Send low byte address */
    spi_flash_Send_Byte( (address & 0x000000FF) );
    /* Read one data byte */
    byteRead = spi_flash_Get_Byte();
    /* Disable flash device */
    spi_flash_Chip_Disable();
    return byteRead;
}

bool spi_flash_Read_Bytes(uint32_t address, uint32_t num_bytes_to_read, uint8_t *pOutputBuffer, uint32_t outputBufferSize)
{
    /* Security Check */
    /* The address must be in the range 0x00000000 ~ 0x000FFFFF */    
    if( address > 0x000FFFFF ) return false;
    /* The buffer for output data should be non-null */
    if( pOutputBuffer == NULL ) return false;
    /* The output buffer should be large enough to hold the read bytes */
    if( num_bytes_to_read > outputBufferSize ) return false;
    uint32_t i = 0;
    /* Enable flash device */
    spi_flash_Chip_Enable();
    /* Send Read Command 0x03 */
    spi_flash_Send_Byte(READ_MEMORY);
    /* Send 3-bytes address */
    /* Send high byte address */
    spi_flash_Send_Byte( ((address & 0x00FF0000) >> 16) );
    /* Send middle byte address */
    spi_flash_Send_Byte( ((address & 0x0000FF00) >> 8) );
    /* Send low byte address */
    spi_flash_Send_Byte( (address & 0x000000FF) );
    /* Read multiple bytes until the num_bytes_to_read limit is reached */
    for( i = 0; i < num_bytes_to_read; i++ )
    {
        pOutputBuffer[i] = spi_flash_Get_Byte();
    }
    /* Disable flash device */
    spi_flash_Chip_Disable();
    /* Reading multiple bytes is successful */
    return true;
}

void spi_flash_Write_Byte(uint32_t address, uint8_t byteToWrite)
{
    /* Enable Write Operation */
    spi_flash_Write_Enable();    
    /* Enable flash device */
    spi_flash_Chip_Enable();
    /* Send Write Byte Command 0x02 */
    spi_flash_Send_Byte(WRITE_BYTE);
    /* Send 3-bytes address */
    /* Send high byte address */
    spi_flash_Send_Byte( ((address & 0x00FF0000) >> 16) );
    /* Send middle byte address */
    spi_flash_Send_Byte( ((address & 0x0000FF00) >> 8) );
    /* Send low byte address */
    spi_flash_Send_Byte( (address & 0x000000FF) );
    /* Send a data byte to be written */
    spi_flash_Send_Byte(byteToWrite);
    /* Disable flash device */
    spi_flash_Chip_Disable();
}

void spi_flash_Write_Bytes_Start_AutoAddressInc(uint32_t address, uint8_t byte1ToWrite, uint8_t byte2ToWrite)
{
    /* Enable READY/BUSY# output on MISO line during AAI mode */
    spi_flash_MISO_Busy_Output_Enable();
    /* Enable Write Operation */
    spi_flash_Write_Enable();
    /* Enable flash device */
    spi_flash_Chip_Enable();
    /* Send Auto Address Increment Command 0xAD */
    spi_flash_Send_Byte(WRITE_WORD_AAI_MODE);
    /* Send 3-bytes address */
    /* Send high byte address */
    spi_flash_Send_Byte( ((address & 0x00FF0000) >> 16) );
    /* Send middle byte address */
    spi_flash_Send_Byte( ((address & 0x0000FF00) >> 8) );
    /* Send low byte address */
    spi_flash_Send_Byte( (address & 0x000000FF) );
    /* Send 1st data byte to be written at the address A23 ... A1 0 */
    spi_flash_Send_Byte(byte1ToWrite);
    /* Send 2nd data byte to be written at the address A23 ... A1 1 */
    spi_flash_Send_Byte(byte2ToWrite);
    /* Disable flash device */
    spi_flash_Chip_Disable();
    /* Poll the READY/BUSY# output on MISO line */
    spi_flash_MISO_Busy_Output_Polling();
}

void spi_flash_Write_Bytes_Follow_AutoAddressInc(uint8_t byte1ToWrite, uint8_t byte2ToWrite)
{
    /* Enable flash device */
    spi_flash_Chip_Enable();
    /* Send Auto Address Increment Command 0xAD */
    spi_flash_Send_Byte(WRITE_WORD_AAI_MODE);
    /* Send 1st data byte to be written at the address A23 ... A1 0 */
    spi_flash_Send_Byte(byte1ToWrite);
    /* Send 2nd data byte to be written at the address A23 ... A1 1 */
    spi_flash_Send_Byte(byte2ToWrite);
    /* Disable flash device */
    spi_flash_Chip_Disable();
    /* Poll the READY/BUSY# output on MISO line */
    spi_flash_MISO_Busy_Output_Polling();    
}

void spi_flash_Write_Bytes_Stop_AutoAddressInc(void)
{
    /* Write Disable followed by MISO Busy Output Disable to exit Auto Address Increment Mode */
    spi_flash_Write_Disable();
    spi_flash_MISO_Busy_Output_Disable();
}

bool spi_flash_Write_Bytes(uint32_t address, uint32_t num_bytes_to_write, uint8_t *pInputBuffer, uint32_t inputBufferSize)
{
    /* Security Check */
    /* The address must be in the range 0x00000000 ~ 0x000FFFFF */    
    if( address > 0x000FFFFF ) return false;
    /* The buffer for input data should be non-null */
    if( pInputBuffer == NULL ) return false;
    /* Both the number of bytes to write and the input buffer size are not zero */
    if( (num_bytes_to_write == 0) || (inputBufferSize == 0) ) return false;
    /* The input buffer should be large enough to hold the bytes to write */
    if( num_bytes_to_write > inputBufferSize ) return false;
    
    /* The number of bytes to write should be even */
    /* If it isn't, the first or last byte needs to be written separately */
    bool writeLastByte = false;
    if(num_bytes_to_write & 1){
        //Odd number of bytes to write
        num_bytes_to_write--;
        if( address & 1 ){
            //Odd address, write first byte separately
            
            //AAI programming is done by word
            //write the first byte normally, do the rest by AAI programming        
            uint8_t firstByte = pInputBuffer[0];
            spi_flash_Write_Byte(address, firstByte);
            spi_flash_Busy_Wait();

            uint8_t check_byte = spi_flash_Read_Byte(address);
            if( check_byte != firstByte ){
                breakpoint();
            }
            ++pInputBuffer;
            ++address;
        }else{
            writeLastByte = true;
        }
    }
    
    uint32_t i = 0;
    /* Write multiple bytes into flash memory */
    spi_flash_Write_Bytes_Start_AutoAddressInc(address, pInputBuffer[0], pInputBuffer[1]);
    for( i = 2; i < num_bytes_to_write; i+=2 )
    {
        spi_flash_Write_Bytes_Follow_AutoAddressInc(pInputBuffer[i], pInputBuffer[i+1]);
    }
    spi_flash_Write_Bytes_Stop_AutoAddressInc();
    /* Writing multiple bytes is successful */
    
    if( writeLastByte ){
        spi_flash_Busy_Wait();
        uint8_t lastByte = pInputBuffer[num_bytes_to_write];
        address += num_bytes_to_write;
        
        spi_flash_Write_Byte(address, lastByte);
        spi_flash_Busy_Wait();

        uint8_t check_byte = spi_flash_Read_Byte(address);
        if( check_byte != lastByte ){
            breakpoint();
        }
    }
    
    
    return true;
}

void spi_flash_Erase_All(void)
{
    spi_flash_Write_Enable();
    /* Enable flash device */
    spi_flash_Chip_Enable();
    /* Send Erase All Chip Command 0x60 */
    spi_flash_Send_Byte(ERASE_ALL);
    /* Disable flash device */
    spi_flash_Chip_Disable();    
}

void spi_flash_Erase_4KB_Sector(uint32_t address)
{  
    spi_flash_Write_Enable();
    
    /* Enable flash device */
    spi_flash_Chip_Enable();
    /* Send Erase 4KB Sector Command 0x20 */
    spi_flash_Send_Byte(ERASE_4KB_SECTOR);
    /* Send 3-bytes address */
    /* Send high byte address */
    spi_flash_Send_Byte( ((address & 0x00FF0000) >> 16) );
    /* Send middle byte address */
    spi_flash_Send_Byte( ((address & 0x0000FF00) >> 8) );
    /* Send low byte address */
    spi_flash_Send_Byte( (address & 0x000000FF) );    
    /* Disable flash device */
    spi_flash_Chip_Disable();     
    
    spi_flash_Busy_Wait();
}

void spi_flash_Erase_32KB_Block(uint32_t address)
{
    spi_flash_Write_Enable();
    /* Enable flash device */
    spi_flash_Chip_Enable();
    /* Send Erase 32KB Block Command 0x52 */
    spi_flash_Send_Byte(ERASE_32KB_BLOCK);
    /* Send 3-bytes address */
    /* Send high byte address */
    spi_flash_Send_Byte( ((address & 0x00FF0000) >> 16) );
    /* Send middle byte address */
    spi_flash_Send_Byte( ((address & 0x0000FF00) >> 8) );
    /* Send low byte address */
    spi_flash_Send_Byte( (address & 0x000000FF) );    
    /* Disable flash device */
    spi_flash_Chip_Disable();     
}

void spi_flash_Erase_64KB_Block(uint32_t address)
{
    spi_flash_Write_Enable();
    /* Enable flash device */
    spi_flash_Chip_Enable();
    /* Send Erase 64KB Block Command 0xD8 */
    spi_flash_Send_Byte(ERASE_64KB_BLOCK);
    /* Send 3-bytes address */
    /* Send high byte address */
    spi_flash_Send_Byte( ((address & 0x00FF0000) >> 16) );
    /* Send middle byte address */
    spi_flash_Send_Byte( ((address & 0x0000FF00) >> 8) );
    /* Send low byte address */
    spi_flash_Send_Byte( (address & 0x000000FF) );    
    /* Disable flash device */
    spi_flash_Chip_Disable();     
}

void spi_flash_Busy_Wait(void)
{
    /* wait until the chip is not busy */
    while( (spi_flash_Read_Status_Register() & 0x03) == 0x03 );
}

bool spi_flash_is_Write_Enabled(void)
{
    uint8_t status = 0;
    /* Read the status register */
    status = spi_flash_Read_Status_Register();
    /* Verify that the Write-Enable-Latch bit is set */
    if( (status & WEL) )
    {
        /* Chip is write-enabled */
        return true;
    }
    else
    {
        /* Chip is not write-enabled */
        return false;
    }
}

bool spi_flash_is_SST25VF080B(void)
{
    uint32_t Jedec_ID;
    Jedec_ID = spi_flash_Read_Jedec_ID();
    if( Jedec_ID == SST25VF080B_JEDEC_ID )
    {
        /* Chip is SST25VF080B */
        return true;
    }
    else
    {
        /* Chip is not SST25VF080B */
        return false;
    }
}

void spi_flash_test(void)
{
    if(spi_flash_is_SST25VF080B() == false)
        breakpoint();
    
    uint8_t manufactureID = 0;
    manufactureID = spi_flash_Read_ID(0);
    
    uint8_t deviceID = 0;
    deviceID = spi_flash_Read_ID(1);
    
    uint8_t data_1 = 'h';
    uint32_t address_1 = 15;
    
    uint8_t data_2 = 'i';
    uint32_t address_2 = 16;
    
    
    
    //Disable block protection
    spi_flash_Enable_Write_Status_Register();
    spi_flash_Write_Status_Register(0);    
    
    //Check if block protection is cleared
    uint8_t status = spi_flash_Read_Status_Register();
    if( status & 0b111100){
        //BP3-0 set
        breakpoint();
    }
    
    spi_flash_Write_Byte(address_1, data_1);
    spi_flash_Busy_Wait();
    spi_flash_Write_Byte(address_2, data_2);
    spi_flash_Busy_Wait();
    
    uint8_t readData_1 = 0;
    uint8_t readData_2 = 0;
    
    readData_1 = spi_flash_Read_Byte(address_1);
    readData_2 = spi_flash_Read_Byte(address_2);

    if( data_1 != readData_1 ){
        breakpoint();
    }
    if( data_2 != readData_2 ){
        breakpoint();
    }
    
    
    
    uint8_t writeData[30] = "Hello Thijs Hello Zhiyuan";
    uint32_t address_3 = 50;
    size_t dataLength = strlen(writeData);

    spi_flash_Erase_4KB_Sector(address_3);

    uint8_t check_byte = spi_flash_Read_Byte(address_3);
    if( check_byte != 0xFF ){
        breakpoint();
    }
    
    
    
    if( spi_flash_Write_Bytes(address_3, dataLength, writeData, sizeof(writeData)) == false )
        breakpoint();
    
    uint8_t readData[100] = {0};
    if( spi_flash_Read_Bytes(0, 80, readData, sizeof(readData)) == false )
        breakpoint();
    
    if( memcmp(writeData, &readData[address_3], dataLength) ){
        breakpoint();
    }
    

    uint32_t address_4 = 4096 + 11; //odd address in next erase sector
    uint32_t address_5 = 4096 + 0;  //first address in next erase sector
    uint32_t offset = address_4 - address_5;
    
    
    spi_flash_Erase_4KB_Sector(address_4);
    check_byte = spi_flash_Read_Byte(address_4);
    if( check_byte != 0xFF ){
        breakpoint();
    }
    
    
    uint8_t writeData2[30] = "Hello Thijs Hello Zhiyuan";
    size_t dataLength2 = strlen(writeData2);

    if( spi_flash_Write_Bytes(address_4, dataLength2, writeData2, sizeof(writeData2)) == false )
        breakpoint();
    
    uint8_t readData2[100] = {0};
    if( spi_flash_Read_Bytes(address_5, 80, readData2, sizeof(readData2)) == false )
        breakpoint();
    
    if( memcmp(writeData2, &readData2[offset], dataLength2) ){
        breakpoint();
    }
    
    
    breakpoint();
//    spi_flash_Erase_4KB_Sector(address_1);    
}
/* *****************************************************************************
 End of File
 */
