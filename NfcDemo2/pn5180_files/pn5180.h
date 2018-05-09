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

/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif
/* Detection Mode */
#define DETECT_ONCE         false
#define DETECT_CONTINUOUS   true

#define FAILURE     false
#define SUCCESS     true

bool nfc_init(void);
void detectCard(bool detectMode);
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
