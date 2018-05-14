#include "slave_spi_fifo.h"

__inline bool fifo_putByte( fifo *f, uint8_t b){
    //make sure there's space
    if( fifo_space(f) > 0 ){
        f->buf[f->w] = b;
        fifo_updateWrite(f);
        return true;
    }
    return false;
}

__inline bool fifo_getByte( fifo *f, uint8_t *b ){
    //make sure there's data
    if( fifo_data(f) > 0 ){
        *b = f->buf[f->r];
        fifo_updateRead(f);
        return true;
    }
    return false;
}

__inline uint8_t fifo_data( fifo *f ){
     //[.|R|.|.|W|.]
    if( f->w >= f->r ){
        return (f->w - f->r);
    }//[.|W.|R|.|.]
    else{
        return (f->size - f->r) + f->w;
    }
}

 __inline uint8_t fifo_space( fifo *f ){
    //[.|R|.|.|W|.]
    if( f->w >= f->r ){
        return (f->size - f->w) + f->r - 1;

    }//[.|W.|R|.|.]
    else{
        return f->r - f->w - 1;
    }
}

 __inline void fifo_updateRead( fifo *f ){
    if( ++(f->r) >= f->size ){
        f->r = 0;
    }
}

 __inline void fifo_updateWrite( fifo *f ){
    if( ++(f->w) >= f->size ){
        f->w = 0;
    }

    //make sure not to overtake readpointer
    if( f->w == f-> r ){
        fifo_updateRead(f);
    }
}

//------------------------------------------------------------------------------
//Read a number of bytes from FIFO

uint16_t fifo_getBytes( uint8_t *dst, fifo *f, uint8_t len ) {
    uint8_t to_do      = len;
    uint8_t num_copy   = 0;
    uint8_t data       = fifo_data( f );

    if ( f->w == f->r ){
        return 0;
    }
    //[.|R|.|.|W|.]
    else if( f->w > f->r ){
        //posR ... posW
        num_copy = min( to_do, f->w - f->r );            //determine how many bytes fit til Read Index

        memcpy( &dst[len - to_do], &( ((uint8_t*)(f->buf))[f->r]), num_copy );     //copy data

        to_do   -= num_copy;                                          //update total to-do, should be 0 now
        f->r += num_copy;                                      //update Write index
        if( f->r >= f->size ) f->r = 0;

        return len - to_do;

    }
    //[.|W|.|R|.|.]
    else{
        //posR ... END
        num_copy = min( to_do, f->size - f->r );		//determine how many bytes fit til END

        memcpy( &dst[len - to_do], &( ((uint8_t*)(f->buf))[f->r]), num_copy ); //copy data

        to_do   -= num_copy;					//update total to-do
        f->r += num_copy;					//update Write index
        if( f->r >= f->size ) f->r = 0;

        if( to_do != 0 && f->w > 0 ){
            //0...posW
            num_copy = min( to_do, f->w );                    //determine how many bytes fit til Read Index

            memcpy( &dst[len - to_do], &( ((uint8_t*)(f->buf))[f->r]), num_copy ); //copy data
            to_do     -= num_copy;                                //update total to-do, should be 0 now
            f->r   += num_copy;                                //update Write index
            if( f->r >= f->size ) f->r = 0;
        }
        return len - to_do;
    }
    return to_do - len;
}//readBuf();

//------------------------------------------------------------------------------
//Write a number of bytes to a FIFO

uint8_t fifo_putBytes( fifo *f, uint8_t *src, uint8_t len ) {
    uint8_t to_do      = len;
    uint8_t num_write  = 0;
    uint8_t space       = fifo_space( f );

    //[.|R|.|.|W|.]
    if( f->w >= f->r ){
        //posW ... END
        num_write = min( to_do, f->size - f->w - (f->r == 0 ? 1 : 0) );     //determine how many bytes fit til END

        memcpy( &( ((uint8_t*)(f->buf))[f->w]), &src[len - to_do], num_write );    //copy data
        to_do       -= num_write;					//update total to-do
        f->w    += num_write;                                       //update Write index
        if( f->w >= f->size ) f->w = 0;

        // Read pointer larger than one, because only then there is space left from the beginning of the array
        if( to_do != 0 && f->r > 1 ){
            //0...posR
            num_write = min( to_do, f->r - 1 );                    //determine how many bytes fit til Read Index

            memcpy( &( ((uint8_t*)(f->buf))[f->w]), &src[len - to_do], num_write );   //copy data

            to_do       -= num_write;                                   //update total to-do, should be 0 now
            f->w    += num_write;                                   //update Write index
            if( f->w >= f->size ) f->w = 0;
        }
        return len - to_do;
    }        //[.|W|.|R|.|.]
    else{
        //posW ... posR
        num_write = min( to_do, f->r - f->w - 1 );       //determine how many bytes fit til Read Index

        memcpy( &( ((uint8_t*)(f->buf))[f->w]), &src[len - to_do], num_write );   //copy data

        to_do       -= num_write;                                   //update total to-do, should be 0 now
        f->w    += num_write;                                   //update Write index
        if( f->w >= f->size ) f->w = 0;

        return len - to_do;
    }
}//writeBuf()