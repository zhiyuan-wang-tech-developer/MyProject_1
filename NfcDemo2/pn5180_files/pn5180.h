/* ************************************************************************** */
/** Descriptive File Name

  @Author
    Zhiyuan Wang

  @Modified on
    2018-05-22 

  @File Name
    pn5180.h

  @Summary
    PN5180 card reader header file.

  @Description
    File inclusion
    Macro definitions
    Type definitions
    Global variable declarations
    Function prototypes 
 */
/* ************************************************************************** */

#ifndef PN5180_H    /* Guard against multiple inclusion */
#define PN5180_H

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */
/* TODO:  Include other files here if needed. */
#include "../mcc_generated_files/mcc.h"
#include "../nxp_reader_config_files/phApp_Init.h"
#include <string.h>

/* Detection Loop Mode Macros
 * only for detectCardTest(detectLoopMode) function 
 */
#define DETECT_ONCE         false
#define DETECT_CONTINUOUS   true

/* Macros for the returned status check */
#define FAILURE     false
#define SUCCESS     true

/* Enable software breakpoints for card detection test */
//#define DEBUG_DETECT_CARD

/* Type Definition */
// 6-bytes Key Type
typedef uint8_t key_t[6];

// card type for the NFC card detection result
typedef enum {
    cardUnknown,
    cardMifareDesfire,
    cardMifareClassic
} cardType;

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Global Variables                                                  */
/* ************************************************************************** */
/* Used for nfc_findCards() function */
// It holds the current card type that is detected
cardType currentCardType = cardUnknown;
// It holds the current card UID with maximum 10 bytes
uint8_t currentCardUID[10] = {0};
// It holds the current card data with maximum 20 bytes
uint8_t currentCardData[20] = {0};

/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif

/*******************************************************************************
**   Function Declarations for NFC card detection
*******************************************************************************/
bool nfc_Init(void);
void pn5180_Sleep(void);
bool detectCard(cardType *pDetectedCardTypeOut, uint8_t *pDetectedCardUidOut);
void detectCardTest(bool detectLoopMode);
bool MifareClassic_AuthenticateCard_ReadBlock(uint8_t *pKeyIn, uint8_t *pBlockDataOut);
bool MifareDesfire_AuthenticateCard_ReadFile(uint8_t *pFileDataOut);
bool MifareDesfire_SAM_authentication(void);

/* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* PN5180_H */

/* *****************************************************************************
 End of File
 */
