/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.h

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

#ifndef SYSTEM_H    /* Guard against multiple inclusion */
#define SYSTEM_H


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */

/* TODO:  Include other files here if needed. */
#include "../mcc_generated_files/mcc.h"
#include "../pn5180_files/pn5180.h"
#include "../sam_reader_files/tda8029.h"

//card types
#define TYPE_NONE           0x00
#define TYPE_DESFIRE_SAM    0x01
#define TYPE_MIFARE_KEY1    0x02
#define TYPE_MIFARE_KEY2    0x04
#define TYPE_MIFARE_KEY3    0x08
#define TYPE_MIFARE_KEY4    0x10
#define TYPE_MIFARE_KEY5    0x20
#define TYPE_MIFARE_KEY6    0x40
#define TYPE_CARD_ID        0x80

typedef uint8_t key_t[6];

typedef union {
    uint8_t rawData[18];
    struct __attribute__((packed))
    {
        uint8_t ISO_prefix[6];
        uint8_t TypeA_prefix[2];
        uint8_t uniqueNum[9];
        uint8_t checkDigit;
    };
} desfireCardInfoType;

typedef enum {
    runSleep,
    runWaking,
    runNormal
} run_t;

volatile run_t runMode = runSleep;

uint8_t requestMask = TYPE_NONE;
uint8_t typeFound = TYPE_NONE;

bool flagFindCards = false;
bool flagFindCardsDone = false;
bool flagCardFound = false;

key_t key[6] ={{0}, {0}, {0}, {0}, {0}, {0}};

uint8_t data[20];

desfireCardInfoType desfireCardInfo;

/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif
    
void reset(void);
void goSleep(void);
void goIdle(void);
void systemRun(void);
void nfc_findCards(void);

/* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* SYSTEM_H */

/* *****************************************************************************
 End of File
 */
