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

bool tda8029_getByte( uint8_t *pbyte );

static uint8_t  tx_buf[40];
static fifo     tx = {.buf = tx_buf, .size = 40, .r = 0, .w = 0};

static uint8_t  rx_buf[64];
static fifo     rx = {.buf = rx_buf, .size = 64, .r = 0, .w = 0};

//------------------------------------------------------------------------------
void tda8029_getResponse( uint8_t *buf, uint8_t *len ){
    uint8_t x, idx;

    //wait for ACK/NACK
    do{
        while( !tda8029_getByte(&buf[0]) );
    }while( buf[0] != 0x60 && buf[0] != 0xE0 );
    
    for( idx = 1; idx < 4; idx++ ){
        //header: {ACK/NACK, LEN, LEN, CODE}
        while( !tda8029_getByte(&buf[idx] ) );
    }
    //technically buf[1:2] are length, but assuming everything is less than 255 bytes
    for( x = 0; x < buf[2]+1; x++, idx++ ){
        //data + LRC
        while( !tda8029_getByte(&buf[idx]) ) ;
    }
    *len = idx;
}

//------------------------------------------------------------------------------
// Initialize the SAM reader chip
void tda8029_Init(){
    uint8_t x;
    uint16_t delay;

    //Hold SAM reader in reset
    SIM_RESET   = 1;

    //Release shutdown mode
    N_SIM_SHDN  = 1;
    
    //Disable energy saving mode
    SIM_ESM     = 0;

    UART1_Initialize();
    
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

    U1STAbits.UTXISEL   = 0b01;   //10: TXBUF empty; 01: all characters transmitted; 00: TXBUF not full
    U1STAbits.URXISEL   = 0b00;   //11: RXBUF full; 10: RXBUF 3/4 full; 0x: character received
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
    IFS1bits.U1RXIF = 0;
    
    //Enable interrupts
    IPC8bits.U1IP    = 4;   //set interrupt priority
//    IEC1bits.U1RXIE  = 1;

    //Enable UART
//    U1MODEbits.ON   = 1;

    //Flush RX
//    while( DataRdyUART1() )
//        x = getcUART1();
    while( UART1_TRANSFER_STATUS_RX_DATA_PRESENT & UART1_TransferStatusGet() )
    {
        x = UART1_Read();
    }

    uint8_t buf[30] = {0};
    uint8_t len;
    
    //release from reset
    SIM_RESET = 0;

    //Wait for SAM reader to come online
//    delay = timer_ms.timer;
//    while( timer_ms.timer - delay < 100) ;
    /* Wait for 100 ms */
    Wait(100);

    //Request software ID
    
//    putcUART1( 0x60 );
//    putcUART1( 0x00 );
//    putcUART1( 0x00 );
//    putcUART1( 0x0A );
//    putcUART1( 0x6A );
    
    UART1_Write(0x60);
    UART1_Write(0x00);
    UART1_Write(0x00);
    UART1_Write(0x0A);
    UART1_Write(0x6A);
    
    Nop();
    Nop();
    tda8029_getResponse(buf, &len);
    Nop();
    
//    delay = timer_ms.timer;
//    while( timer_ms.timer - delay < 100) ;
    Wait(100);

    //Initiate 5V
    memset(buf, 0, 30);
    
//    putcUART1( 0x60 );
//    putcUART1( 0x00 );
//    putcUART1( 0x01 );
//    putcUART1( 0x6E );
//    putcUART1( 0x00 );
//    putcUART1( 0x0F );
    
    UART1_Write(0x60);
    UART1_Write(0x00);
    UART1_Write(0x01);
    UART1_Write(0x6E);
    UART1_Write(0x00);
    UART1_Write(0x0F);

//    delay = timer_ms.timer;
//    while( timer_ms.timer - delay < 100) ;
    Wait(100);  
    
    //expecting back: Error: {E0, 00, 01, 6E, C0, LRC} or ATR: {60, 00, 0D, 6E, ATR, LRC}
    tda8029_getResponse(buf, &len);

    Nop();
    Nop();
}

//------------------------------------------------------------------------------
// Put the SAM reader chip to sleep
void tda8029_Sleep(){
    //Disable UART
    U1MODEbits.ON   = 0;

    //Disable interrupts
    IEC1bits.U1RXIE  = 0;
    
    //Clear interrupt flags
    IFS1bits.U1RXIF = 0;
    
    //Disable chip
    SIM_RESET  = 1;
    N_SIM_SHDN = 0;
}//tda8029_Sleep()

//------------------------------------------------------------------------------
// Wake up the SAM reader chip
void tda8029_WakeUp(){
    //Enable chip
    N_SIM_SHDN = 1;
    SIM_RESET  = 0;

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
    uint8_t len;
    uint8_t buf[30];

//    tda8029_getResponse(buf, &len);
   
    Nop();
    //Initiate 5V
//    putcUART1( 0x60 );
//    putcUART1( 0x00 );
//    putcUART1( 0x01 );
//    putcUART1( 0x6E );
//    putcUART1( 0x00 );
//    putcUART1( 0x0F );
    
    UART1_Write(0x60);
    UART1_Write(0x00);
    UART1_Write(0x01);
    UART1_Write(0x6E);
    UART1_Write(0x00);
    UART1_Write(0x0F);    
    
    Nop();

    //expecting back: Error: {51, E0, 00, 01, 6E, C0, LRC} or ATR: {51, 60, 00, 0D, 6E, ATR, LRC}
    tda8029_getResponse(buf, &len);
    Nop();
    Nop();
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
    if( !(UART1_TRANSFER_STATUS_TX_FULL & UART1_TransferStatusGet()) )
    {
        UART1_Write(byte);
        return true;
    }
    else
    {
        return false;
    }
}

//------------------------------------------------------------------------------
// Send multiple bytes to the SAM reader chip

//bool tda8029_putBytes( uint8_t *buf, uint8_t len){
//    while(len--){
//        tda8029_putByte( *buf++ );
//    }
//    return true;
//}

bool tda8029_putBytes( uint8_t *buf, uint8_t len )
{
    if ( UART1_WriteBuffer(buf, len) == len ) 
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
    if( UART1_TRANSFER_STATUS_RX_DATA_PRESENT & UART1_TransferStatusGet() )
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

//bool tda8029_getBytes( uint8_t *buf, uint8_t *len ){
//    uint8_t avail = fifo_data(&rx);
//    uint8_t todo = min( avail, *len );
//    uint8_t read = fifo_getBytes( buf, &rx, todo );
//
//    if( read == *len ){
//        return true;
//    }
//
//    *len = read;
//    return false;
//}

bool tda8029_getBytes( uint8_t *buf, uint8_t *len )
{
    
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

