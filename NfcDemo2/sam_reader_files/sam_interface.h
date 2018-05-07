/* 
 * File:   sam_interface.h
 * Author: TJ van Veen
 * Created on 6 januari 2015, 9:54
 * 
 * Modifier: Zhiyuan Wang
 * Changed on 2018-05-03 11:22
 * 
 */

#ifndef SAM_INTERFACE_H
#define	SAM_INTERFACE_H

#include "../mcc_generated_files/mcc.h"
#include <stdint.h>
#include <stdbool.h>
#include <string.h>

//------------------------------------------------------------------------------
//Global Variables

/* Store 8 Bytes of Personal Identification Number (PIN) */
extern uint8_t PIN[8];
/* Flag to indicate that the SAM card is verified*/
extern volatile bool sam_Verified;

//------------------------------------------------------------------------------
// Definitions

//------------------------------------------------------------------------------
//Function Prototypes

//void sam_InitUART();
void sam_Sleep();
void sam_WakeUp();
//void sam_ProcessMessages();

bool sam_getID( uint8_t *pSAM_ID_Output );
bool sam_verify( uint8_t *pPIN );
bool sam_diversify( uint8_t *pSN );
bool sam_prepareAuthentication( uint8_t *pNfcChallengeInput );
bool sam_getResponseAuthentication( uint8_t *pSamResponseOutput );
bool sam_verifyAuthentication( uint8_t *pNfcResponseInput );

uint8_t XOR( uint8_t *buf, uint8_t len );

#endif	/* SAM_INTERFACE_H */

