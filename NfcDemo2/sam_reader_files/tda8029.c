/* 
 * File:   tda8029.h
 * Author: TJ van Veen
 *
 * Created on 6 januari 2015, 12:22
 *
 * Modifier: Zhiyuan Wang
 * Changed on 2018-05-03 14:42
 * 
 */

#include "tda8029.h"
//#include "clock.h"

// Flush RX Buffer
__inline void FlushRxBuffer(void);

//static uint8_t  tx_buf[40];
//static fifo     tx = {.buf = tx_buf, .size = 40, .r = 0, .w = 0};

//static uint8_t  rx_buf[64];
//static fifo     rx = {.buf = rx_buf, .size = 64, .r = 0, .w = 0};

//------------------------------------------------------------------------------
bool tda8029_getResponse( uint8_t *buf, uint8_t *bufLen )
{
    uint8_t x, idx;
    
    //LRC check
    uint8_t check = 0;
    
    //wait for ACK/NACK
    do{
        while( !tda8029_getByte(&buf[0]) );
    }while( buf[0] != 0x60 && buf[0] != 0xE0 );

    check = buf[0];
    
    for( idx = 1; idx < 4; idx++ ){
        //header: {ACK/NACK, LEN, LEN, CODE}
        while( !tda8029_getByte(&buf[idx] ) );
        check ^= buf[idx];
    }
    //technically buf[1:2] are length, but assuming everything is less than 255 bytes
    for( x = 0; x < buf[2]+1; x++, idx++ ){
        //data + LRC
        while( !tda8029_getByte(&buf[idx]) ) ;
        check ^= buf[idx];
    }
    
    *bufLen = idx;
    
    //check LRC    
    return (check == 0);    
}

//------------------------------------------------------------------------------
// Initialize the SAM reader chip
void tda8029_Init()
{
    uint8_t buf[30] = {0};
    uint8_t bufLen = 0;

    //Disable Energy Saving Mode
    SIM_ESM_SetLow();
    
    //Hold SAM reader in Reset
    SIM_RESET_SetHigh();

    // Wait for 10 ms to become stable after RESET
    Wait(50);
    
    //Release shutdown mode
    SIM_SHDN_N_SetHigh();

//    UART1_Initialize();
    
    //Reset registers
//    IEC1bits.U1EIE   = 0;
//    IEC1bits.U1RXIE  = 0;
//    IEC1bits.U1TXIE  = 0;

//    IFS1bits.U1EIF   = 0;
//    IFS1bits.U1RXIF  = 0;
//    IFS1bits.U1TXIF  = 0;

//    U1MODE  = 0;
//    U1STA   = 0;
//    U1BRG   = 0;

//    U1STAbits.UTXISEL   = 0b01;   //10: TXBUF empty; 01: all characters transmitted; 00: TXBUF not full
//    U1STAbits.URXISEL   = 0b00;   //11: RXBUF full; 10: RXBUF 3/4 full; 0x: character received
//    U1STAbits.UTXEN     = 1;
//    U1STAbits.URXEN     = 1;

    //Set baudrate
    //    @BRGH = 1
    //          = 8 MHz / (4 * baud) - 1
    //          = 2 MHz / baud -1
    //@38400    = 51.08 @ ~0.1% error
    //@40000    = 49    @ 0% error
//    U1MODEbits.BRGH = 1;
//    U1BRG = F_PB / ( (U1MODEbits.BRGH ? 1 : 4) * 4 * UART_BAUDRATE ) - 1;

    //Clear interrupt flags
//    IFS1bits.U1RXIF = 0;
    
    //Enable interrupts
//    IPC8bits.U1IP    = 4;   //set interrupt priority
//    IEC1bits.U1RXIE  = 1;

    //Enable UART
//    U1MODEbits.ON   = 1;

    //Flush RX Buffer
//    while( DataRdyUART1() )
//        dummy = getcUART1();
    FlushRxBuffer();
    
    //release from Reset
    SIM_RESET_SetLow();

    //Wait for SAM reader to come online
//    delay = timer_ms.timer;
//    while( timer_ms.timer - delay < 100) ;
    /* Wait for 100 ms */
    Wait(100);
    
    //Flush RX Buffer
    FlushRxBuffer();
    
    //Request Status
    tda8029_putByte(0x60);  //ACK
    tda8029_putByte(0x00);  //Length
    tda8029_putByte(0x00);  //Length
    tda8029_putByte(0xAA);  //Code: get_reader_status 
    tda8029_putByte(0xCA);  //LRC
    tda8029_getResponse(buf, &bufLen);
    
    //Request Software ID
    tda8029_putByte(0x60);  //ACK
    tda8029_putByte(0x00);  //Length
    tda8029_putByte(0x00);  //Length
    tda8029_putByte(0x0A);  //Code: send_num_mask
    tda8029_putByte(0x6A);  //LRC 
    tda8029_getResponse(buf, &bufLen);
    
//    delay = timer_ms.timer;
//    while( timer_ms.timer - delay < 100) ;
    Wait(100);

    //Initiate 5V
    memset(buf, 0, 30);    
//    putcUART1( 0x60 );    //ACK
//    putcUART1( 0x00 );    //Length
//    putcUART1( 0x01 );    //Length
//    putcUART1( 0x6E );    //Code: power_up_5V 
//    putcUART1( 0x00 );    //Param: 00h indicates that all the parameters of the ATR of the card compliant with ISO7816-3 will be taken into account.
//    putcUART1( 0x0F );    //LRC
    uint8_t setPower5V[5] = {0x60, 0x00, 0x01, 0x6E, 0x00};
    uint8_t setPower5VLRC = XOR(setPower5V, sizeof(setPower5V));
    int i;
    for( i = 0; i < sizeof(setPower5V); i++ )
    {
        tda8029_putByte(setPower5V[i]);
    }
    tda8029_putByte(setPower5VLRC);   

    //Expecting back: Error {E0, 00, 01, 6E, C0, LRC} or ATR {60, 00, 0D, 6E, ATR, LRC}
    tda8029_getResponse(buf, &bufLen);
    Nop();
    /* Check card presence */
    tda8029_isCardPresent();
    Nop();
}

//------------------------------------------------------------------------------
// Put the SAM reader chip to sleep
void tda8029_Sleep()
{
    //Disable UART
    U1MODEbits.ON   = 0;

    //Disable RX Interrupt
    IEC1bits.U1RXIE  = 0;
    
    //Clear RX Interrupt Flag
    IFS1bits.U1RXIF = 0;
    
    //Disable chip
    SIM_RESET_SetHigh();
    SIM_SHDN_N_SetLow();
}//tda8029_Sleep()

//------------------------------------------------------------------------------
// Wake up the SAM reader chip
void tda8029_WakeUp()
{
    uint8_t buf[30] = {0};
    uint8_t bufLen = 0;
    
    //Enable chip
    SIM_SHDN_N_SetHigh();
    SIM_RESET_SetLow();

//    uint16_t delay = timer_ms.timer;
//    while( timer_ms.timer - delay < 100 );
    Wait(100);

    //Enable interrupts
    IFS1bits.U1RXIF  = 0;
    IEC1bits.U1RXIE  = 1;

    //Enable UART
    U1STAbits.URXEN = 1;
    U1STAbits.UTXEN = 1;
    U1MODEbits.ON   = 1;

//    putcUART1(0xAA);    //wake up SAM reader

//    tda8029_getResponse(buf, &bufLen);

    //Initiate 5V
//    putcUART1( 0x60 );
//    putcUART1( 0x00 );
//    putcUART1( 0x01 );
//    putcUART1( 0x6E );
//    putcUART1( 0x00 );
//    putcUART1( 0x0F );
    
    tda8029_putByte(0x60);
    tda8029_putByte(0x00);
    tda8029_putByte(0x01);
    tda8029_putByte(0x6E);
    tda8029_putByte(0x00);
    tda8029_putByte(0x0F);    

    //expecting back: Error {51, E0, 00, 01, 6E, C0, LRC} or ATR {51, 60, 00, 0D, 6E, ATR, LRC}
    tda8029_getResponse(buf, &bufLen);
    Nop();
}

//------------------------------------------------------------------------------
// Flush RX Buffer
__inline void FlushRxBuffer(void)
{
    uint8_t dummy;
    
    while( !UART1_ReceiveBufferIsEmpty() )
    {
        dummy = UART1_Read();
    }
}

//------------------------------------------------------------------------------
// Send a byte to the SAM reader chip

//bool tda8029_putByte( uint8_t b ){
//    //wait for space to send
//    while( !U1STAbits.TRMT ) Nop();
//    U1TXREG = b;
//    return true;
//}

bool tda8029_putByte( uint8_t byte )
{
    while( UART1_TRANSFER_STATUS_TX_FULL & UART1_TransferStatusGet() )
    {
        continue;
    }
    UART1_Write(byte);
    return true;
}

//------------------------------------------------------------------------------
// Send multiple bytes to the SAM reader chip

//bool tda8029_putBytes( uint8_t *buf, uint8_t bufLen){
//    while(bufLen--){
//        tda8029_putByte( *buf++ );
//    }
//    return true;
//}

bool tda8029_putBytes( uint8_t *buf, uint8_t bufLen )
{ 
    if( (buf == NULL) || (bufLen == 0) )
    {
        /* If the buffer pointer is NULL then return false */
        /* If the buffer length is zero then return false */
        return false;
    }
    
    /* Count the number of bytes that have been written */
    unsigned int  numBytesWritten = 0;
    UART1_TRANSFER_STATUS status;

    while( numBytesWritten < bufLen )
    {
        status = UART1_TransferStatusGet();
        if( status & UART1_TRANSFER_STATUS_TX_EMPTY )
        {
            numBytesWritten += UART1_WriteBuffer(buf + numBytesWritten, bufLen - numBytesWritten);
            if(numBytesWritten < bufLen)
            {
                continue;
            }
            else
            {
                break;
            }
        }
        else
        {
            continue;
        }
        // Perhaps do something else... ^o^
    }
    
    if( numBytesWritten == bufLen )
    {
        return true;
    }
    else
    {
        return false;
    }
}

//------------------------------------------------------------------------------
// Receive a byte from the SAM reader chip

//bool tda8029_getByte( uint8_t *b ){
//    return fifo_getByte(&rx, b);
//}

bool tda8029_getByte( uint8_t *pbyte )
{
    if ( pbyte == NULL )
    {
        return false;
    }
    
    if( !UART1_ReceiveBufferIsEmpty() )
    {
        *pbyte = UART1_Read();
        return true;
    }
    else
    {
        return false;
    }
}

//------------------------------------------------------------------------------
// Receive multiple bytes from the SAM reader chip

//bool tda8029_getBytes( uint8_t *buf, uint8_t *bufLen ){
//    uint8_t avail = fifo_data(&rx);
//    uint8_t todo = min( avail, *bufLen );
//    uint8_t read = fifo_getBytes( buf, &rx, todo );
//
//    if( read == *bufLen ){
//        return true;
//    }
//
//    *bufLen = read;
//    return false;
//}

bool tda8029_getBytes( uint8_t *buf, uint8_t *bufLen )
{
    if( (buf == NULL) || (bufLen == NULL) || (*bufLen == 0) )
    {
        return false;
    }
    
    /* Store the number of bytes that are ready to read */
    unsigned int numBytesToRead = *bufLen;
    /* Count the number of bytes that have been read */
    unsigned int numBytesRead = 0;
    
    do
    {
        if( !UART1_ReceiveBufferIsEmpty() )
        {
            buf[numBytesRead++] = UART1_Read();
        }
    }
    while( numBytesRead < numBytesToRead );
    
    *bufLen = numBytesRead;
    if ( numBytesRead == numBytesToRead )
    {
        return true;
    }
    else
    {
        return false;
    }
}

//------------------------------------------------------------------------------
// UART 1 Interrupt Handler

//void __ISR(_UART_1_VECTOR, ipl4) TDA8029_IntHandler(void){
//    //Rx
//    if( IEC1bits.U1RXIE && IFS1bits.U1RXIF ){
//        IFS1bits.U1RXIF = 0;
//        while( U1STAbits.URXDA ){
//            fifo_putByte( &rx, U1RXREG );
//        }
//    }
//}

/**
 * Check if there is a SAM card present
 * @return  true if there is a card present
 *          false on error or if no card is detected
 */
bool tda8029_isCardPresent(void)
{
    bool response;
    
    uint8_t buf[30] = {0};
    uint8_t bufLen = 0;
    
    //Check card presence
    tda8029_putByte(0x60);  //ACK
    tda8029_putByte(0x00);  //Length
    tda8029_putByte(0x00);  //Length
    tda8029_putByte(0x09);  //Code: check_card_presence
    tda8029_putByte(0x69);  //LRC
    
    tda8029_getResponse(buf, &bufLen);
    
    /* 
     * expecting back:
     *  60      = ACK
     *  00      = L1
     *  01      = L0
     *  09      = Code: check_card_presence
     *  PRESENSE= 00 (no card) or 01 (card)
     *  LRC
     */    
    response = ( (bufLen == 6) && (buf[0] == 0x60) && (buf[4] == 1) );    
    return response;
}