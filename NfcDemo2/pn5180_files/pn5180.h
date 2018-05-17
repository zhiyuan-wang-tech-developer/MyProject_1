/* ************************************************************************** */
/** Descriptive File Name

  @Company

  @File Name
    pn5180.h

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
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
#include "../mcc_generated_files/mcc.h"
#include "../nxp_reader_config_files/phApp_Init.h"
#include <string.h>
/* TODO:  Include other files here if needed. */

/* Detection Mode */
#define DETECT_ONCE         false
#define DETECT_CONTINUOUS   true

#define FAILURE     false
#define SUCCESS     true

//#define DEBUG_DETECT_CARD

/* Type Definition */
typedef uint8_t key_t[6];

typedef enum {
    cardUnknown,
    cardMifareDesfire,
    cardMifareClassic
} cardType;

/* Global Variables */
/* Used for nfc_findCard() function */
cardType currentCardType = cardUnknown;
uint8_t currentCardUID[10] = {0};
uint8_t currentCardData[20] = {0};

/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif

bool nfc_Init(void);
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
