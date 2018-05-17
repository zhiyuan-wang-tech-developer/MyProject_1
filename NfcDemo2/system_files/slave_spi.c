#include "slave_spi.h"
#include "slave_spi_fifo.h"
//#include "nfc_iface.h"
//#include "clock.h"

//Change me to issue command
volatile int spi_SimStep = 1;
volatile bool spi_simulation = false;

volatile bool flagProcessCommand = false;

static uint8_t empty[10] = {0};
static uint8_t tx_buf[30] = {0};
static uint8_t rx_buf[20] = {0};

static fifo rx = {.buf = rx_buf, .size = 20, .w = 0, .r =0};
static fifo tx = {.buf = tx_buf, .size = 30, .w = 0, .r =0};

volatile uint32_t Tprev, Tdiff;

static uint8_t r_idx = 0;

void spi_sendByte( uint8_t b );

extern volatile run_t runMode;

extern key_t   key[6];

extern uint8_t requestMask;
extern uint8_t typeFound;

extern bool    flagFindCards;
extern bool    flagFindCardsDone;
extern bool    flagCardFound;

extern uint8_t data[20];



void spi_endSimulation();
void spi_startSimulation();

void spi_simulateReadCommand();
void spi_simulateGetKeyCommand( uint8_t keyNr, key_t key);
void spi_simulateSetKeyCommand( uint8_t keyNr, key_t key);
void spi_simulateRequestCommand( uint8_t mask );


//------------------------------------------------------------------------------
// SPI Interrupt

void __ISR(_SPI2_VECTOR, IPL6AUTO ) spi_IntHandler(void){
    
    if( spi_simulation ) return;
    
//    N_KL_INT = 0;   //busy
    KL_INT2_BUSY_N_SetLow();
//    breakpoint();
    uint8_t         rx_byte, tx_byte = 0xAA;
    static uint8_t  cmd;

    //check if it's a receive interrupt
    if( IFS1bits.SPI2RXIF ){
        rx_byte = SPI2BUF;
        //received first or last byte in command
        if( r_idx == 0 ){
            //first byte
            flagProcessCommand  = true;
            cmd                 = rx_byte;
            tx.w                = 0;
            tx.r                = 0;
            //first byte in response is always cmd
            fifo_putByte(&tx, cmd);
        }

        //working on a response
        if( flagProcessCommand ){
            spi_handleCommand(cmd, rx_byte);
        }

        //send reply
        fifo_getByte(&tx, &tx_byte);

        if( r_idx == 0xFF ){
            //last byte
            flagProcessCommand  = false;
            r_idx = 0;
            if( cmd != CMD_CheckCardAvailable ){
                runMode = runSleep;
            }
        }else{
            SPI2BUF = (tx_byte);
        }
        IFS1bits.SPI2RXIF = 0;  //clear interrupt
//        N_KL_INT = 1;   //not busy
        KL_INT2_BUSY_N_SetHigh();
    }
}//spi_IntHandler()

//------------------------------------------------------------------------------
// Send a number of bytes to SPI master
void spi_sendBytes( uint8_t *buf, uint8_t len ){
    uint8_t x;

    //for each byte in the message
    while( len-- > 0){
        //Wait for space
        while( SPI2STATbits.SPITBF ) ;
            SPI2BUF = *buf++;
    }
}

//------------------------------------------------------------------------------
// Send a number of bytes to SPI master
void spi_sendByte( uint8_t b ){
    //Wait for space
    while( SPI2STATbits.SPITBF ) ;
        SPI2BUF = b;
}

//------------------------------------------------------------------------------
//
void spi_getByte( uint8_t *b ){
    //wait for data
    while( SPI2STATbits.SPIRBE ) ;
        *b = SPI2BUF;
}


//------------------------------------------------------------------------------
// Initialize this spi bus as slave
void spi_slaveInit(){
    uint8_t dummy;

    if( spi_simulation ) return;
    
//    N_KL_INT = 0; //busy
    KL_INT2_BUSY_N_SetLow();

    //Reset registers
    SPI2CON     = 0;
    SPI2CON2    = 0;
    SPI2BRG     = 0;
    SPI2STAT    = 0;

    SPI2CONbits.SSEN = 1;

    IEC1bits.SPI2EIE  = 0;
    IEC1bits.SPI2RXIE = 0;
    IEC1bits.SPI2TXIE = 0;

    IFS1bits.SPI2EIF    = 0;
    IFS1bits.SPI2RXIF   = 0;
    IFS1bits.SPI2TXIF   = 0;

    //clear Rx handler variables
    r_idx               = 0;
    flagProcessCommand  = false;
    tx.w                = 0;
    tx.r                = 0;

    //Configure the SPI port for 8-bit Slave mode
    SPI2CONbits.STXISEL = 0b00; //11: TXBUF not full; 10: TXBUF 1/2 empty; 01: TXBUF empty; 00: last character transmitted
    SPI2CONbits.SRXISEL = 0b01; //11: RXBUF full; 10: RXBUF 1/2 full; 01: RXBUF not empty; 00: RXBUF empty

    SPI2CONbits.ENHBUF = 1;

    

     //Clear Rx buffer
    while( !SPI2STATbits.SPIRBE )
        dummy = SPI2BUF;

    //pre-load the first byte to send, which is bogus
    SPI2BUF = 0xAA;

    //CKE = 0 -> output changes on clock Idle -> Active
    //CKP = 0 -> clock idle = 0, active = 1
    // => output stable on clock 1 -> 0

    IPC9bits.SPI2IP = 6;

    //enable interrupts
    IEC1bits.SPI2RXIE = 1;
    
    //Turn on SPI
    SPI2CONbits.ON  = 1;

//    N_KL_INT = 1;   //not busy
    KL_INT2_BUSY_N_SetHigh();
}//spi_initSlave()

//------------------------------------------------------------------------------
void spi_slaveClose(){
    SPI2CONbits.ON    = 0;
    IEC1bits.SPI2EIE  = 0;
    IEC1bits.SPI2RXIE = 0;
    IEC1bits.SPI2TXIE = 0;

    IFS1bits.SPI2EIF    = 0;
    IFS1bits.SPI2RXIF   = 0;
    IFS1bits.SPI2TXIF   = 0;
}//spi_slaveClose()

//------------------------------------------------------------------------------
void spi_slaveWakeUp(){
    IEC1bits.SPI2RXIE = 1;
    SPI2CONbits.ON    = 1;
}//spi_slaveWakeUp()

//------------------------------------------------------------------------------
// Handle the SPI message flow

void spi_processMessages(){
//    static uint8_t cmd = 0;

    static enum {
        idle,
        processingCommand
    } state = idle;

     if( SPI2STATbits.SPIROV ){
        SPI2STATbits.SPIROV = 0;
        flagProcessCommand = false;
        rx.w = 0;
        rx.r = 0;
        Nop();
    }

    switch( state ){
        case idle:{
            //flag set in Rx ISR
            if( flagProcessCommand ){
                //already set first response byte in ISR
                state = processingCommand;
//                fifo_getByte( &rx, &cmd );  //set cmd to be processed
//                fifo_putByte( &tx, cmd );   //first byte is always the cmd
                //fall-through for faster handling
            }else{
                break;
            }
        }//case( idle )

        case processingCommand:{
//            spi_handleCommand( cmd );

            //return to idle when done with this command
            if( flagProcessCommand == false ){
                state = idle;
            }
            break;
        }//case( processingCommand )
    }//switch( state )
}//spi_processMessages()




void spi_Simulation(){    
    switch( spi_SimStep ){
        case 0: 
            //wait for input
            break;
        
        case 1:
            spi_startSimulation();
            break;

        case 2:
            spi_startSimulation();
            spi_simulateSetKeyCommand( 1, TestKey );
            spi_simulateRequestCommand( TYPE_MIFARE_KEY1 );
            break;
            
        case 3:
            spi_startSimulation();
            spi_simulateRequestCommand( TYPE_DESFIRE_SAM );
            break;
            
        case 4:
            spi_startSimulation();
            spi_simulateReadCommand();
            break;
            
            
        case 0xFF:
            //Enable
            spi_endSimulation();
            break;
    }
    spi_SimStep = 0;         
}

void spi_startSimulation(){
    //Don't allow the mainboard to interrupt us
    KL_INT2_BUSY_N_SetLow(); 
    spi_simulation = true;
}

void spi_endSimulation(){
    //Allow the mainboard to interrupt us
    KL_INT2_BUSY_N_SetHigh(); 
    spi_simulation = false;
}

void spi_simulateRequestCommand( uint8_t mask ){    
    r_idx = 0;
    flagProcessCommand  = true;

    spi_handleCommand(CMD_CheckCardAvailable, CMD_CheckCardAvailable);
    spi_handleCommand(CMD_CheckCardAvailable, mask);
    spi_handleCommand(CMD_CheckCardAvailable, 0xFF);    
    
    flagProcessCommand  = false;
   
}

void spi_simulateSetKeyCommand( uint8_t keyNr, key_t key){
    int i;
            r_idx = 0;
        flagProcessCommand  = true;

    spi_handleCommand(CMD_SetKey, CMD_SetKey);
    spi_handleCommand(CMD_SetKey, keyNr);
    for( i = 0; i < sizeof(key_t); i++ ){
        spi_handleCommand(CMD_SetKey, key[i]);
    }
    
    flagProcessCommand  = false;
   
}

void spi_simulateGetKeyCommand( uint8_t keyNr, uint8_t key[6]){
    int i;
    
    r_idx = 0;
    flagProcessCommand  = true;

    spi_handleCommand(CMD_GetKey, CMD_GetKey);
    spi_handleCommand(CMD_GetKey, keyNr);
    spi_handleCommand(CMD_GetKey, 0xff);
    for( i = 0; i < sizeof(key); i++ ){
        spi_handleCommand(CMD_GetKey, key[i]);
    }
    
    flagProcessCommand  = false;
   
}

void spi_simulateReadCommand(){
    r_idx = 0;
    flagProcessCommand  = true;

        
     spi_handleCommand( CMD_ReadData, CMD_ReadData);
     spi_handleCommand( CMD_ReadData, 0xff);
     spi_handleCommand( CMD_ReadData, 0xff);
     int i;
     for( i = 0 ; i < 16; i++ ){
         spi_handleCommand( CMD_ReadData, 0xff);
     }
     
     flagProcessCommand  = false;
   
}


//------------------------------------------------------------------------------
// Handle the commands

void spi_handleCommand( uint8_t cmd, uint8_t rx_byte ){
    static uint8_t keyNr = 0;
    uint8_t tx_byte = 0;

    //Note: already sent the command byte back
    switch( cmd ){
        case CMD_CheckCardAvailable:
            //cmd: {cmd, request ,  x}
            //response: {cmd,       found}
            switch( r_idx++ ){
                case 0:
                    //cmd
                    break;
                case 1:
                    //p1  = mask with types to find
                    //we're looking for something
                    if( rx_byte ){
                        flagFindCardsDone = false;
                        requestMask       = rx_byte;
                        memset( data, 0, 16);
                    }
                    
                    //set response
                    if( !flagFindCardsDone ){
                        flagFindCards = true;
                        tx_byte = RES_BUSY;   //still working on it
                        //breakpoint();
                    }else{
                        tx_byte = flagCardFound ? RES_CARD_FOUND : RES_NO_CARD;
                        //breakpoint();
                    }

                    fifo_putByte(&tx, tx_byte);
                    break;
                case 2:
                    //nonsense, retrieving tx
                    flagProcessCommand = false;
                    r_idx = 0xFF;
                    //prepare bogus data for next transmission
                    break;
            }//switch( r_idx )

            break;
            
        case CMD_ReadData:

            //check which byte we received
            //cmd: {cmd,    x,  x,   [16x] }
            //response: { cmd, found, [16 byte data] }
//            breakpoint();
            switch( r_idx++ ){
                case 0:
                    //cmd
                    break;
                case 1:
                    //start
                    fifo_putByte( &tx, typeFound );
                    switch( typeFound ){
                        case TYPE_NONE:
                            r_idx = 0xFF; //reset r_idx
                            flagProcessCommand = false;    //say we're done
                            breakpoint();
                            break;
                        case TYPE_DESFIRE_SAM:
                            fifo_putBytes( &tx, data, 10 );
                            fifo_putBytes( &tx, empty, 6);
                            breakpoint();
                            break;
                        case TYPE_CARD_ID:
                            fifo_putBytes( &tx, data, 7 );
                            fifo_putBytes( &tx, empty, 9);
                            breakpoint();
                            break;
                        default:
                            fifo_putBytes( &tx, data, 16 );
                            breakpoint();
                            break;
                    }//switch(typeFound)

                    break;

                case 2:
                    if( typeFound == TYPE_NONE )
                        runMode = runSleep; //go to sleep
                    break;

                case 17:
                    //end
                    r_idx = 0xFF; //reset r_idx
                    flagProcessCommand = false;    //say we're done
                    break;

                default:
                    break;
            }//switch( r_idx )

            break;

        case CMD_GetKey:
            //cmd: {cmd, keynr,  x,     6x}
            //response: {cmd,   keynr, 6-byte key}
            breakpoint();
            //check which byte we received
            switch( r_idx++ ){
                case 0:
                    //cmd
                    break;
                case 1:
                    //start
                    keyNr = rx_byte;
                    if( keyNr == 0 ) keyNr = 1;
                    if( keyNr > 6 ) keyNr = 6;

                    fifo_putByte( &tx, keyNr );
                    fifo_putBytes( &tx, key[keyNr-1], sizeof(key_t) );
                    break;

                case 8:
                    //end
                    r_idx = 0xFF;  //reset r_idx and keyNr
                    keyNr = 0;
                    flagProcessCommand = false; //say we're done
                    break;

                default:
                    //data
                    break;
            }

            break;

        case CMD_SetKey:
            //cmd: {cmd, keynr, 6-byte key}
            //response: {cmd,   6x}
            //breakpoint();
            //check which byte we received
            switch( r_idx ){
                case 0:
                    //cmd
                    break;
                case 1:
                    //start
                    if( rx_byte == 0 ) rx_byte = 1;
                    if( rx_byte > 6 ) rx_byte = 6;

                    keyNr = rx_byte-1;

                    break;
                case 7:
                    //end
                    key[keyNr][r_idx-2] = rx_byte;
                    r_idx = 0xFF;                      //reset keyNr and r_idx
                    keyNr = 0;
                    flagProcessCommand = false;    //say we're done receiving
                    break;

                default:
                    //data
                    key[keyNr][r_idx-2] = rx_byte;
                    break;
            }
            r_idx++;
            break;
            
        default:
            //don't know this command, reset
            r_idx = 0xFF;
            flagProcessCommand = false;
            break;
    }//switch( cmd )
}//spi_handleCommand()
