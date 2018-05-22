/* 
 * File:   sam_interface.c
 * Author: TJ van Veen
 * Created on: 6 januari 2015, 9:54
 * 
 * Author: Zhiyuan Wang
 * Changed on: 2018-05-03 13:08
 * 
 */
#include "sam_interface.h"
#include "tda8029.h"
#include <string.h>

//uint8_t PIN[8] = {0x31, 0x32, 0x33, 0x34, 0x35, 0x36, 0x37, 0x38};    //Test PIN
uint8_t PIN[8] = {0x5E, 0xDE, 0x34, 0xF5, 0x94, 0xF0, 0x8B, 0x1D};      //Production PIN

static uint8_t buf[40];

//static uint8_t tx_buf[40];

volatile bool sam_Verified = false;

//------------------------------------------------------------------------------
// Declaration for private function prototypes
static bool sam_putByte( uint8_t b );
static bool sam_putBytes( uint8_t *buf, uint8_t bufLen );
static bool sam_getByte( uint8_t *buf );
static bool sam_getBytes( uint8_t *buf, uint8_t *bufLen );
static bool sam_transceive( uint8_t *pbuf, uint8_t *bufLen, uint16_t *response );

//------------------------------------------------------------------------------
// Calculate the XOR of all bytes in a buffer

uint8_t XOR( uint8_t *buf, uint8_t bufLen )
{
    uint8_t xor = 0;
    uint8_t idx;

    for( idx = 0; idx < bufLen; idx++ )
    {
        xor ^= buf[idx];
    }
    return xor;
}//XOR()

//------------------------------------------------------------------------------
// Verify the SAM

bool sam_verify( uint8_t *pPIN )
{
    uint8_t i = 0;
    uint8_t j = 0;
    uint16_t response = 0;

    //ALPAR header
    buf[i++] = 0x60;    //ACK
    buf[i++] = 0x00;    //L1
    buf[i++] = 0x0D;    //L0
    buf[i++] = 0x00;    //code 00 = command for SAM card
    //APDU header
    buf[i++] = 0x00;  //CLA
    buf[i++] = 0x20;  //INS = verified code
    buf[i++] = 0x00;  //P1
    buf[i++] = 0x02;  //P2 = PIN ID
    buf[i++] = 0x08;  //P3 = PIN Length
    //APDU data
    for( j = 0; j < 8; j++ )
        buf[i++] = pPIN[j];
    //LRC
    buf[i++] = XOR(&buf[0], i);

    Nop();
    
    //Send the message
    if( !sam_transceive(buf, &i, &response) )
    {
        //Error
#ifdef DEBUG_SAM
        breakpoint();
#endif
        return false;
    }
#ifdef DEBUG_SAM
    breakpoint();
#endif
    //Check response
    if( response != 0x9000 )
    {
        //Error
        //0x6283    = Current DF is blocked; EF1 is blocked
        //0x63Cn    = Verify failed, n tries remaining
        //0x6700    = Incorrect P3 (PIN length), must be <= 32
        //0x6981    = EF1 has wrong FDB, EF1 is not a valid PIN file
        //0x6983    = Referenced PIN is locked
        //0x6986    = No DF selected
        //0x6A83    = PIN ID referenced in P1 is not found in EF1
        //0x6A86    = Invalid P1 or P2
        //0x6A88    = EF1 not found
        //0x6985    = Session Key not valid or not consistent with key DES mode
        return false;
    }

    //SAM verified
    return true;
}//sam_verify()

//------------------------------------------------------------------------------
// Obtain ID of current SAM card

bool sam_getID( uint8_t *pSAM_ID_Output )
{
    uint8_t    i = 0, j = 0;
    uint16_t   response;
    uint8_t    rx_buf[40] = {0};

    //ALPAR header
    buf[i++] = 0x60;
    buf[i++] = 0x00;
    buf[i++] = 0x05;
    buf[i++] = 0x00;
    //APDU header
    buf[i++] = 0x80;  //CLA
    buf[i++] = 0x14;  //INS
    buf[i++] = 0x04;  //P1
    buf[i++] = 0x00;  //P2
    buf[i++] = 0x06;  //P3
    //LRC
    buf[i++] = XOR(&buf[0], i);

    Nop();
    for( j = 0; j < i; j++ )
    {
//        putcUART1(buf[j]);
        tda8029_putByte(buf[j]);
    }

    j = 0;

    tda8029_getResponse(rx_buf, &j);
#ifdef DEBUG_SAM
    breakpoint();
#endif
    Nop();
    Nop();

    //Send the message
    if( !sam_transceive(buf, &i, &response) )
    {
        //Error
#ifdef DEBUG_SAM
        breakpoint();
#endif
        return false;
    }
#ifdef DEBUG_SAM
    breakpoint();
#endif
    //Check response
    if( response != 0x9000 )
    {
        //Error
        //0x6700    = Incorrect P3 (PIN length), must be <= 32
        //0x6A80    = Incorrect P1 or P2, data not available
        return false;
    }

    //Check receive length, expecting 6-byte ID + 2 byte response
    if( i != 8 )
    {
        return false;
    }

    //store SAM ID
    memcpy(pSAM_ID_Output, buf, 6);
    
    return true;
}//sam_getID()

//------------------------------------------------------------------------------
// Diversify the SAM key based on a specified 8-byte Serial Number

bool sam_diversify( uint8_t *pSN )
{
    uint8_t    i = 0, j = 0;
    uint16_t   response;

    //ALPAR header
    buf[i++] = 0x60;
    buf[i++] = 0x00;
    buf[i++] = 0x0D;
    buf[i++] = 0x00;
    //APDU header
    buf[i++] = 0x80;  //CLA
    buf[i++] = 0x72;  //INS
    buf[i++] = 0x03;  //P1      = Terminal Key
    buf[i++] = 0x01;  //P2      = Global Key 1
    buf[i++] = 0x08;  //P3      = Master Key uses DES algorithm
    //APDU data
    for( j = 0; j < 8; j++ )
        buf[i++] = pSN[j];
    //LRC
    buf[i++] = XOR(&buf[0], i);

    Nop();
    //Send the message
    if( !sam_transceive(buf, &i, &response) )
    {
        //Error
        return false;
    }

    //Check response
    if( response != 0x9000 )
    {
        //Error
        //0x6986    = No DF selected
        //0x6A86    = Wrong P1, P1 must be 1 - 6
        //0x6700    = Wrong P3, P3 must be 8 or 0
        //0x6283    = Current DF or EF2 is blocked
        //0x6982    = Security condition not satisfied
        //0x6A88    = EF2 not found
        //0x6A83    = Referenced Master Key in EF2 not found
        //0x6981    = Invalid EF2
        //0x6A87    = Referenced KEY not capable of authentication
        //0x6983    = Referenced Key is locked
        return false;
    }

    //Diversified key is ready in SAM memory
    return true;
}//sam_diversify()

//------------------------------------------------------------------------------
// Prepare for Authentication with 8-byte NFC challenge

bool sam_prepareAuthentication( uint8_t *pNfcChallengeInput )
{
    uint8_t    i = 0, j = 0;
    uint16_t   response;

    //ALPAR header
    buf[i++] = 0x60;
    buf[i++] = 0x00;
    buf[i++] = 0x0D;
    buf[i++] = 0x00;
    //APDU header
    buf[i++] = 0x80;  //CLA
    buf[i++] = 0x78;  //INS
    buf[i++] = 0x00;  //P1      = 3DES
    buf[i++] = 0x01;  //P2      = Diversified Terminal Key
    buf[i++] = 0x08;  //P3      = Challenge length
    //APDU data
    for( j = 0; j < 8; j++ )
        buf[i++] = pNfcChallengeInput[j];
    //LRC
    buf[i++] = XOR(&buf[0], i);

    Nop();

    if( !sam_transceive(buf, &i, &response) )
    {
        //Error
        return false;
    }

    if( response != 0x6110 )
    {
        //Error
        //0x6986    = No DF selected
        //0x6A86    = Invalid P1 or P2
        //0x6700    = Invalid P3, P3 must be 8
        //0x6982    = Security condition not satisfied
        //0x6A83    = Key is not ready, use Diversify first
        return false;
    }

    //Command complete, obtain result with GET RESPONSE
    return true;    
}//sam_prepareAuthentication()

//------------------------------------------------------------------------------
// Obtain the SAM response from Prepare Authentication, store the 16-byte SAM response

bool sam_getResponseAuthentication( uint8_t *pSamResponseOutput )
{
    uint8_t    i = 0, j = 0;
    uint16_t   response = 0;

    //ALPAR header
    buf[i++] = 0x60;
    buf[i++] = 0x00;
    buf[i++] = 0x05;
    buf[i++] = 0x00;
    //APDU header
    buf[i++] = 0x00;  //CLA
    buf[i++] = 0xC0;  //INS
    buf[i++] = 0x00;  //P1
    buf[i++] = 0x00;  //P2
    buf[i++] = 0x10;  //P3      = Challenge length
    //LRC
    buf[i++] = XOR(&buf[0], i);

    Nop();

    if( !sam_transceive(buf, &i, &response) )
    {
        //Error
        return false;
    }

    if( response != 0x9000 )
    {
        //Error
        //0x6A86    = Invalid P1 or P2
        //0x6700    = Invalid P3, P3 must be 8
        //0x6985    = No data available
        return false;
    }

    //Check receive length, expecting 16-byte SAM Response + 2 byte response
    if( i != 18 )
    {
        return false;
    }

    memcpy(pSamResponseOutput, buf, 16);

    //Command complete, result saved in pSamResponseOutput
    return true;
}//sam_getResponseAuthentication()

//------------------------------------------------------------------------------
// Verify the 8-byte NFC response

bool sam_verifyAuthentication( uint8_t *pNfcResponseInput )
{
    uint8_t    i = 0, j = 0;
    uint16_t   response;

    //ALPAR header
    buf[i++] = 0x60;
    buf[i++] = 0x00;
    buf[i++] = 0x0D;
    buf[i++] = 0x00;
    //APDU header
    buf[i++] = 0x80;  //CLA
    buf[i++] = 0x7A;  //INS
    buf[i++] = 0x00;  //P1  = 3DES
    buf[i++] = 0x01;  //P2  = Verify Mifare UL-C/DESFire/DESFire EV1 Authentication Return
    buf[i++] = 0x08;  //P3  = Session Key is 3DES
    //APDU data
    for( j = 0; j < 8; j++ )
        buf[i++] = pNfcResponseInput[j];
    //LRC
    buf[i++] = XOR(&buf[0], i);

    Nop();

    //Send the message
    if( !sam_transceive(buf, &i, &response) )
    {
        //Error
        return false;
    }

    //Check response
    if( response != 0x9000 )
    {
        //Error
        //0x6986    = No DF selected
        //0x6A86    = Invalid P1 or P2
        //0x6700    = Invalid P3, must be 8
        //0x6A83    = Session Key or RNDt not ready. Use PREPARE AUTHENTICATION first.
        //0x6982    = Data is incorrect
        return false;
    }

    //Card authenticated
    return true;
}//sam_verifyAuthentication()

//------------------------------------------------------------------------------
// Send a byte to the SAM reader chip

bool sam_putByte( uint8_t b )
{
    return tda8029_putByte(b);
}//sam_putByte()

//------------------------------------------------------------------------------
// Send bufLen bytes to the SAM card

bool sam_putBytes( uint8_t *buf, uint8_t bufLen )
{
    return tda8029_putBytes(buf, bufLen);
}//sam_putBytes()

//------------------------------------------------------------------------------
// Receive a byte from the SAM reader chip into buf

bool sam_getByte( uint8_t *buf )
{
    return tda8029_getByte(buf);
}//sam_getByte()

//------------------------------------------------------------------------------
// Receive a response from the SAM reader chip into buf, store received response length in bufLen

bool sam_getBytes( uint8_t *buf, uint8_t *bufLen )
{
    return tda8029_getBytes(buf, bufLen);
}//sam_getBytes()

//------------------------------------------------------------------------------
// Send bufLen bytes to the SAM reader chip and obtain a response

bool sam_transceive( uint8_t *pbuf, uint8_t *bufLen, uint16_t *response )
{
     //Send the message
    if( !sam_putBytes(pbuf, *bufLen) ){
        //Error
        return false;
    }

//    uint16_t delay = timer_ms.timer;
//    while( timer_ms.timer - delay < 100) ;
//    while( timer_ms.timer - delay < 20) ;
    /* Wait for 20 ms */
    Wait(20);

    memset(buf, 0, 40);
    //Receive response
    tda8029_getResponse(buf, bufLen);

    if( buf[0] == 0xE0 )
    {
        //error
        Nop();
        Nop();
        return false;
    }

    //Check CRC
    if( buf[*bufLen-1] != XOR(buf, *bufLen-1) )
    {
        return false;
    }
    
    //Store the response code
    *response = (buf[*bufLen-3] << 8) + buf[*bufLen-2];

    *bufLen -= 5;  //ALPAR header and LRC are not part of the data the user is interested in
    memcpy(pbuf, &buf[4], *bufLen);

    return true;
}

//------------------------------------------------------------------------------
// Put the SAM reader to sleep

void sam_Sleep()
{
    tda8029_Sleep();
}//sam_Sleep()

//------------------------------------------------------------------------------
// Wake up the SAM reader

void sam_WakeUp()
{
    tda8029_WakeUp();
}//sam_WakeUp()

//------------------------------------------------------------------------------
// Test the SAM card reader
void sam_test(void)
{
    uint8_t sam_ID[6] = {0};   
    UART1_Initialize();
//    IEC1bits.U1RXIE = 1;
//    IEC1bits.U1TXIE = 1;
    tda8029_Init();
//    sam_WakeUp();
 
    if( !sam_verify(PIN) )
    {
        breakpoint();
    }
    
    if( !sam_getID(sam_ID) )
    {
       breakpoint();
    }
    breakpoint();
}