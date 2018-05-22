/* ************************************************************************** */
/** Descriptive File Name

  @Author
    Zhiyuan Wang

  @Modified on
    2018-05-22 

  @File Name
    system.h

  @Summary
    system header file

  @Description
    Declare all macros, data types, global variables and functions used in
    the system level.
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

/* Card Type Macros */
#define TYPE_NONE           0x00
// For MIFARE DESFIRE Card with SAM authentication
#define TYPE_DESFIRE_SAM    0x01
// For MIFARE CLASSIC Card with Key authentication
#define TYPE_MIFARE_KEY1    0x02
#define TYPE_MIFARE_KEY2    0x04
#define TYPE_MIFARE_KEY3    0x08
#define TYPE_MIFARE_KEY4    0x10
#define TYPE_MIFARE_KEY5    0x20
#define TYPE_MIFARE_KEY6    0x40
// For Card UID reading
#define TYPE_CARD_ID        0x80

/* Key type
 * Each key has 6 bytes
 */
typedef uint8_t key_t[6];

/* MIFARE DESFIRE card data format 
 * NOTE:
 * Type-A Prefix "90" + Unique Number + Check Digit are visible on the back side of MIFARE DESFIRE card
 */
typedef union {
    // The card data is 18-bytes long
    uint8_t rawData[18];
    struct __attribute__((packed))
    {
        // 6-bytes ISO Prefix
        uint8_t ISO_prefix[6];
        // 2-bytes Type-A Prefix = "90"
        uint8_t TypeA_prefix[2];
        // 9-bytes Unique Number
        uint8_t uniqueNum[9];
        // 1-byte Check Digit
        // The check digit is calculated from ISO Prefix, Type-A Prefix and Unique Number 
        uint8_t checkDigit;
    };
} desfireCardInfoType;

/* System running mode type */
typedef enum {
    runSleep,
    runWaking,
    runNormal
} run_t;

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Global Variables                                                  */
/* ************************************************************************** */

// Running mode
// When the system starts up it goes to the sleep mode first
volatile run_t runMode = runSleep;

// Request Mask is the command from the main board
uint8_t requestMask = TYPE_NONE;
// Card Type found by the card reader
uint8_t typeFound = TYPE_NONE;

/* Flag bits */
/* Find card flag bit:
 * If it is true the system is ready to find card
 * If it is false the system do not find card any more
 * Find card flag bit is set by SPI2 ISR
 */
bool flagFindCards = false;
/* Flag bit indicates that finding card step is done */
bool flagFindCardsDone = false;
/* Flag bit indicates that the desired card is found or not */
bool flagCardFound = false;

/* 6 sets of keys for MIFARE CLASSIC card are stored here */
key_t key[6] ={{0}, {0}, {0}, {0}, {0}, {0}};
/* Pointer to a key */
key_t *keyPtr;

/* The 6-bytes Test Key only for MIFARE CLASSIC Card Authentication
 * Only used when the system is tested
 * In product the key is provided by the main board
 */
key_t TestKey = {0x80, 0xAF, 0x30, 0x42, 0x1A, 0x20};

/* The data is going to be transmitted by PIC32MX MCU to the main board */
uint8_t data[20];

/* It holds the card data read from the MIFARE DESFIRE card */
desfireCardInfoType desfireCardInfo;

/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif

/*******************************************************************************
**   Function Declarations for system level
*******************************************************************************/   
void reset(void);
void goSleep(void);
void goIdle(void);
void systemRun(void);
void nfc_findCards(void);
void key_Init(void);

/* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* SYSTEM_H */

/* *****************************************************************************
 End of File
 */
