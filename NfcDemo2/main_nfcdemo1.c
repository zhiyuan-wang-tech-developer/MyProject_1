/**
  Generated Main Source File

  Company:
    Microchip Technology Inc.

  File Name:
    main.c

  Summary:
    This is the main file generated using PIC32MX MCUs

  Description:
    This header file provides implementations for driver APIs for all modules selected in the GUI.
    Generation Information :
        Product Revision  :  PIC32MX MCUs - pic32mx : v1.35
        Device            :  PIC32MX150F128D
        Driver Version    :  2.00
    The generated drivers are tested against the following:
        Compiler          :  XC32 1.42
        MPLAB             :  MPLAB X 3.55
*/

/*
    (c) 2016 Microchip Technology Inc. and its subsidiaries. You may use this
    software and any derivatives exclusively with Microchip products.

    THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER
    EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED
    WARRANTIES OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A
    PARTICULAR PURPOSE, OR ITS INTERACTION WITH MICROCHIP PRODUCTS, COMBINATION
    WITH ANY OTHER PRODUCTS, OR USE IN ANY APPLICATION.

    IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE,
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND
    WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS
    BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE
    FULLEST EXTENT ALLOWED BY LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN
    ANY WAY RELATED TO THIS SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY,
    THAT YOU HAVE PAID DIRECTLY TO MICROCHIP FOR THIS SOFTWARE.

    MICROCHIP PROVIDES THIS SOFTWARE CONDITIONALLY UPON YOUR ACCEPTANCE OF THESE
    TERMS.
*/
#include <string.h>
#include "mcc_generated_files/mcc.h"
#include "nxp_reader_config_files/phApp_Init.h"
//#include "nxp_reader_config_files/Nfcrdlib_MIFARE.h"
//#include "NxpNfcRdLib/intfs/phNfcLib.h"

#ifdef __DEBUG
#warning "DEBUG enabled"
#define breakpoint()    __builtin_software_breakpoint()
#else
#warning "DEBUG disabled"
#define breakpoint()
#endif

#define NUMBER_OF_KEYENTRIES        2
#define NUMBER_OF_KEYVERSIONPAIRS   2
#define NUMBER_OF_KUCENTRIES        1

//#define DATA_BUFFER_LEN             16 /* Buffer length */
#define DATA_BUFFER_LEN         20
#define MFC_BLOCK_DATA_SIZE         16 /* Block Data size - 16 Bytes */

/*******************************************************************************
**   Global Variable Declaration
*******************************************************************************/

/*HAL variables*/
uint8_t                            bHalBufferTx[128];          /* HAL  TX buffer */
uint8_t                            bHalBufferRx[128];          /* HAL  RX buffer */

/*PAL variables*/
phKeyStore_Sw_KeyEntry_t           sKeyEntries[NUMBER_OF_KEYENTRIES];                                  /* Sw KeyEntry structure */
phKeyStore_Sw_KUCEntry_t           sKUCEntries[NUMBER_OF_KUCENTRIES];                                  /* Sw Key usage counter structure */
phKeyStore_Sw_KeyVersionPair_t     sKeyVersionPairs[NUMBER_OF_KEYVERSIONPAIRS * NUMBER_OF_KEYENTRIES]; /* Sw KeyVersionPair structure */

uint8_t                            bDataBuffer[DATA_BUFFER_LEN] = {0};  /* universal data buffer */

uint8_t                            bSak;                      /* SAK  card type information */
uint16_t                           wAtqa;                     /* ATQA card type information */

/* Set the key for the MIFARE (R) Classic cards. */
uint8_t Key[6] = {0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU};

/* Don't change the following line */
uint8_t Original_Key[6] = {0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU, 0xFFU};

#ifdef PHOSAL_FREERTOS_STATIC_MEM_ALLOCATION
uint32_t aMfClscTaskBuffer[MIFARECLASSIC_TASK_STACK];
#else /* PHOSAL_FREERTOS_STATIC_MEM_ALLOCATION */
#define aMfClscTaskBuffer       NULL
#endif /* PHOSAL_FREERTOS_STATIC_MEM_ALLOCATION */

typedef struct
{
    uint16_t wATQA;
    uint8_t bSAK;
    uint8_t aUID[7];
    uint8_t bUIDsize;
    char cardType[20];
    char cardNum[12];
} Card_Info_t;

const char *pMfcTypeName  = "MIFARE Classic Card";
const char *pMfdfTypeName = "MIFARE DESFire Card";

/* The information of the detected card is stored here. */
static Card_Info_t cardInfo = { 0U,
                                0U,
                                {0x00U, 0x00U, 0x00U, 0x00U, 0x00U, 0x00U, 0x00U},
                                0U,
                                {'\0'},
                                {'\0'}
                                };

static const Card_Info_t clearCardInfo = {  0U,
                                            0U,
                                            {0x00U, 0x00U, 0x00U, 0x00U, 0x00U, 0x00U, 0x00U},
                                            0U,
                                            {'\0'},
                                            {'\0'}
                                            };

/*******************************************************************************
**   Function Declarations
*******************************************************************************/
void MIFARE_CardDetection(void *pParams);
static phStatus_t NfcRdLibInit(void);

void Mfc_ReadCardInfo(void);
void Mfdf_ReadCardInfo(void);

void MFC_test(phacDiscLoop_Sw_DataParams_t* pDataParams);
phStatus_t MFDF_test(phacDiscLoop_Sw_DataParams_t* pDataParams);

int setEEPROM_Values(int selection);

/*******************************************************************************
**   Function Definitions
*******************************************************************************/

/*
                         Main application
 */
int main(void)
{
//    WDTCONbits.ON = 0;
    
    /* initialize the device */
    SYSTEM_Initialize();
    
    /* Enable 5V power supply for PN5180 transmitter and loop antenna*/
    EnableTXPowerSupply_SetHigh();
    
    do{
        phStatus_t status = PH_ERR_INTERNAL_ERROR;

        /* Initialize the Controller */
//        phPlatform_Controller_Init();

        /* Print demo application name */
        DEBUG_PRINTF("\n *** MIFARE Demo *** \n");

//        status = phNfcLib_Init();       
        phOsal_Init();

        /* Perform Platform Initialization */
        status = phPlatform_Init(&sPlatform, bHalBufferTx, sizeof(bHalBufferTx), bHalBufferRx, sizeof(bHalBufferRx));
        CHECK_STATUS(status);
        if(status != PH_ERR_SUCCESS) break;

        /* Initialize Reader Library PAL/AL Components */
        status = phApp_RdLibInit();
        CHECK_STATUS(status);
        if(status != PH_ERR_SUCCESS) break;

        /* Set the generic pointer */        
        pHal = &sPlatform.sHal;      
        //pHal = &gphNfcLib_Params.sPlatform.sHal;
        
//        setEEPROM_Values(0);
      
        //RF field off time = 250 ms
        phhalHw_Pn5180_SetConfig(&sPlatform.sHal, PHHAL_HW_CONFIG_FIELD_OFF_TIME, 250);
        //RF field recovery time = 100 ms
        phhalHw_Pn5180_SetConfig(&sPlatform.sHal, PHHAL_HW_CONFIG_FIELD_RECOVERY_TIME, 100);
        
        MIFARE_CardDetection(&sDiscLoop);      
    } while(0);
        
    while (1)
    {   
        // Come here if initialization failure due to error
        // Add your application code
    }

    return -1;
}
/**
 End of File
*/

/***********************************************************************************************
 * \brief   This function performs the MIFARE Classic and MIFARE DESFire card detection, 
 *          Block authentication, Block Read and Block Write operation.          
 * \param   *pParams
 * \return  This function will never return
 **********************************************************************************************/
void MIFARE_CardDetection(void *pParams)
{
    phStatus_t  status = 0;
    uint16_t    wTagsDetected = 0;
//    uint8_t     bUid[PHAC_DISCLOOP_I3P3A_MAX_UID_LENGTH];
//    uint8_t     bUidSize;

    /* Initialize NFC reader library components required by this project. */
    status = NfcRdLibInit();

    while(1)    /* Continuous loop */
    {
        DEBUG_PRINTF("\nReady to detect...\n");

        do
        {
            LED_SetLow();
            
            /* Field OFF */
            status = phhalHw_FieldOff(pHal);
            CHECK_STATUS(status);

            status = phhalHw_Wait(sDiscLoop.pHalDataParams, PHHAL_HW_TIME_MICROSECONDS, 5100);
            CHECK_STATUS(status);

            /* Configure Discovery loop for Poll Mode */
            status = phacDiscLoop_SetConfig(&sDiscLoop, PHAC_DISCLOOP_CONFIG_NEXT_POLL_STATE, PHAC_DISCLOOP_POLL_STATE_DETECTION);
            CHECK_STATUS(status);

            /* Run Discovery loop */
            status = phacDiscLoop_Run(&sDiscLoop, PHAC_DISCLOOP_ENTRY_POINT_POLL);

        }while((status & PH_ERR_MASK) != PHAC_DISCLOOP_DEVICE_ACTIVATED); /* Exit on Card detection */

        /* Card detected */
        
        /* Turn on LED to indicate that a MIFARE card has been detected */
//        LED_SetHigh();
        
        /* Get the tag types detected info */
        status = phacDiscLoop_GetConfig(&sDiscLoop, PHAC_DISCLOOP_CONFIG_TECH_DETECTED, &wTagsDetected);

        /* Check for Status */
        if ((status & PH_ERR_MASK) == PH_ERR_SUCCESS)
        {
            /* Check for Type A tag detection */
            if (PHAC_DISCLOOP_CHECK_ANDMASK(wTagsDetected, PHAC_DISCLOOP_POS_BIT_MASK_A))
            {
                LED_SetHigh();
                /* Check for MIFARE Classic Card */
                if (0x08 == (sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aSak & 0x08))
                {
//                    LED_SetHigh();
                    do
                    {                        
                        /* Print Product type */
                        DEBUG_PRINTF("\nProduct Type: MIFARE Classic Card\n");

                        /* Print ATQA */
                        DEBUG_PRINTF("\nATQA: ");
                        phApp_Print_Buff(sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aAtqa, 2);
                        
                        /* Read and store ATQA */
                        cardInfo.wATQA = (uint16_t) sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aAtqa[0];
                        cardInfo.wATQA = (cardInfo.wATQA) | (sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aAtqa[1] << 8);
                        
                        /* Print SAK */
                        DEBUG_PRINTF ("\nSAK: 0x%02X", sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aSak);
                        
                        /* Read and store SAK*/
                        cardInfo.bSAK = sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aSak;
                        
                        /* Print UID */
                        DEBUG_PRINTF ("\nUID: ");
                        phApp_Print_Buff(sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aUid,
                                sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].bUidSize);

                        /* Read and store UID */
                        cardInfo.bUIDsize = sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].bUidSize;
                        memcpy(cardInfo.aUID, sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aUid, cardInfo.bUIDsize);

                        /* Authenticate with the Key
                         * We can authenticate at any block of a sector and we will get the access to all blocks of the same sector
                         * For example authenticating at block 5, we will get the access to blocks 4, 5, 6 and 7.
                         */
                        /* Send authentication for block 6 */
//                        status = phalMfc_Authenticate(&salMFC, 6, PHHAL_HW_MFC_KEYA, 1, 0, cardInfo.aUID, cardInfo.bUIDsize);
//
//                        /* Check for Status */
//                        if ((status & PH_ERR_MASK) != PH_ERR_SUCCESS)
//                        {
//                            /* Print Error info */
//                            DEBUG_PRINTF("\nAuthentication Failed!!!");
//                            DEBUG_PRINTF("\nPlease correct the used key");
//                            DEBUG_PRINTF("\nExecution aborted!!!\n");
//                            break;
//                        }
//
//                        DEBUG_PRINTF("\nAuthentication Successful");

                        /* Empty the bDataBuffer */
//                        memset(bDataBuffer, '\0', DATA_BUFFER_LEN);

//                        DEBUG_PRINTF("\nRead data from Block 4");

                        /* Read data from block 4 */
//                        status = phalMfc_Read(&salMFC, 4, bDataBuffer);

                        /* Check for Status */
//                        if (status != PH_ERR_SUCCESS)
//                        {
//                            /* Print Error info */
//                            DEBUG_PRINTF("\nRead operation failed!!!\n");
//                            DEBUG_PRINTF("\nExecution aborted!!!\n\n");
//                            break; /* Break from the loop*/
//                        }
//
//                        DEBUG_PRINTF("\nRead Success");
//                        DEBUG_PRINTF("\nThe content of Block 4 is:\n");
//
//                        phApp_Print_Buff(&bDataBuffer[0], MFC_BLOCK_DATA_SIZE);
//                        DEBUG_PRINTF("\n\n --- End of Read Operation --- \n");
//
//                        DEBUG_PRINTF("\nWrite data to Block 4");

                        /* Write data to block 4 */
//                        status = phalMfc_Write(&salMFC, 4, bDataBuffer);

                        /* Check for Status */
//                        if (status != PH_ERR_SUCCESS)
//                        {
//                            /* Print Error info */
//                            DEBUG_PRINTF("\nWrite operation failed!!!\n");
//                            DEBUG_PRINTF("\nExecution aborted!!!\n");
//                            break; /* Break from the loop*/
//                        }

//                        DEBUG_PRINTF("\nWrite Success");
//                        DEBUG_PRINTF("\n\n --- End of Write Operation --- ");

//                        MFC_test(&sDiscLoop);
                        Mfc_ReadCardInfo();
                        /* End of example */
                        DEBUG_PRINTF("\n\n --- End of Example --- \n\n");

                    }while(0);

                    DEBUG_PRINTF("\nPlease Remove the Card\n\n");

                    /* Field RESET */
                    status = phhalHw_FieldReset(pHal);
                    CHECK_STATUS(status);

                    /* Make sure that example application is not detecting the same card continuously */
                    do
                    {
                        /* Send WakeUpA */
                        status = phpalI14443p3a_WakeUpA(sDiscLoop.pPal1443p3aDataParams,
                                                        sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aAtqa);

                        
//                        status = phpalI14443p3a_RequestA(sDiscLoop.pPal1443p3aDataParams,
//                                                        sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aAtqa);

                        
                        /* Check for Status */
                        if ((status & PH_ERR_MASK) != PH_ERR_SUCCESS)
                        {
                            LED_SetLow();
                            /* Empty the card information */
                            cardInfo = clearCardInfo;
                            /* Empty the bDataBuffer */
                            memset(bDataBuffer, '\0', DATA_BUFFER_LEN);
                            break; /* Card Removed, break from the loop */
                        }

                        /* Send HaltA */
                        status = phpalI14443p3a_HaltA(sDiscLoop.pPal1443p3aDataParams);
                        CHECK_STATUS(status);

                        /* Delay - 5 milli seconds*/
                        status = phhalHw_Wait(sDiscLoop.pHalDataParams, PHHAL_HW_TIME_MILLISECONDS, 5);
                        CHECK_STATUS(status);

                    }while(1);
                }
                /* END: Check for MIFARE Classic */
                /* Check for MIFARE DESFire */                
                else if (0x20 == (sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aSak & 0x20))
                {
//                    static uint16_t countGood = 0;
//                    static uint16_t countCRC = 0;
//                    static uint16_t countTimeout = 0;
//                    static uint16_t countErr = 0;
//                    static uint16_t countTries = 0;
//                    
//                    ++countTries;
//                    if( ((status = MFDF_test(&sDiscLoop)) &0xFF) == PH_ERR_SUCCESS ){
//                        LED_SetHigh();
//                        ++countGood;
//                    }else{
//                        ++countErr;
//                        if( (status & 0xFF) == PH_ERR_INTEGRITY_ERROR ){
//                            ++countCRC;
//                        }
//                        if( (status & 0xFF) == PH_ERR_IO_TIMEOUT){
//                            ++countTimeout;
//                        }
//                    }
//                    
//                    if( countTries >= 100 ){
//                        breakpoint();
//                    }
                    do
                    {
                        /* Print Product type */
                        DEBUG_PRINTF("\nProduct Type: MIFARE DESFire Card\n");

                        /* Print ATQA */
                        DEBUG_PRINTF("\nATQA: ");
                        phApp_Print_Buff(sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aAtqa, 2);
                        
                        /* Read and store ATQA */
                        cardInfo.wATQA = (uint16_t) sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aAtqa[0];
                        cardInfo.wATQA = (cardInfo.wATQA) | (sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aAtqa[1] << 8);
                        
                        /* Print SAK */
                        DEBUG_PRINTF ("\nSAK: 0x%02X", sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aSak);
                        
                        /* Read and store SAK*/
                        cardInfo.bSAK = sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aSak;
                        
                        /* Print UID */
                        DEBUG_PRINTF ("\nUID: ");
                        phApp_Print_Buff(sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aUid,
                                sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].bUidSize);

                        /* Read and store UID */
                        cardInfo.bUIDsize = sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].bUidSize;
                        memcpy(cardInfo.aUID, sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aUid, cardInfo.bUIDsize);
                                            
//                        status = MFDF_test(&sDiscLoop);
                        Mfdf_ReadCardInfo();
                    }while(0);
                    
                    DEBUG_PRINTF("\nPlease Remove the Card\n\n");

                    /* Field RESET */
                    status = phhalHw_FieldReset(pHal);
                    CHECK_STATUS(status);

                    /* Make sure that example application is not detecting the same card continuously */
                    do
                    {
                        /* Send WakeUpA */
                        status = phpalI14443p3a_WakeUpA(sDiscLoop.pPal1443p3aDataParams,
                                                        sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aAtqa);
                        
//                        status = phpalI14443p3a_RequestA(sDiscLoop.pPal1443p3aDataParams,
//                                                        sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aAtqa);
                        /* Check for Status */
                        if ((status & PH_ERR_MASK) != PH_ERR_SUCCESS)
                        {
                            LED_SetLow();
                            /* Empty the card information */
                            cardInfo = clearCardInfo;
                            /* Empty the bDataBuffer */
                            memset(bDataBuffer, '\0', DATA_BUFFER_LEN);                            
                            break; /* Card Removed, break from the loop */
                        }

                        /* Send HaltA */
                        status = phpalI14443p3a_HaltA(sDiscLoop.pPal1443p3aDataParams);
                        CHECK_STATUS(status);

                        /* Delay - 5 milli seconds*/
                        status = phhalHw_Wait(sDiscLoop.pHalDataParams, PHHAL_HW_TIME_MILLISECONDS, 5);
                        CHECK_STATUS(status);

                    }while(1);                   
                }
                /* END: Check for MIFARE DESFire */
                else{
                        /* Print Product type */
                        DEBUG_PRINTF("\nProduct Type: Unknown \n");
                        LED_SetLow();
                }
            }
        }
    }
}

/***********************************************************************************************
 * \brief   Initializes the discovery loop and keystore components required by Example-4
 * \param   none
 * \return  status  Returns the function status
 **********************************************************************************************/
static phStatus_t NfcRdLibInit(void)
{
    phStatus_t status;

    /* Device limit for Type A */
    status = phacDiscLoop_SetConfig(&sDiscLoop, PHAC_DISCLOOP_CONFIG_TYPEA_DEVICE_LIMIT, 1);
    CHECK_STATUS(status);

    /* Bailout on Type A detect */
//    status = phacDiscLoop_SetConfig(&sDiscLoop, PHAC_DISCLOOP_CONFIG_BAIL_OUT, PHAC_DISCLOOP_POS_BIT_MASK_A);
//    CHECK_STATUS(status);
    
    /* Set the discovery loop as Type A card detection with passive polling mode */
    status = phacDiscLoop_SetConfig(&sDiscLoop, PHAC_DISCLOOP_CONFIG_PAS_POLL_TECH_CFG, PHAC_DISCLOOP_POS_BIT_MASK_A);
    CHECK_STATUS(status);

    /* Initialize the keystore component */
//    status = phKeyStore_Sw_Init(
//        &sPlatform.sKeyStore,
//        sizeof(phKeyStore_Sw_DataParams_t),
//        &sKeyEntries[0],
//        NUMBER_OF_KEYENTRIES,
//        &sKeyVersionPairs[0],
//        NUMBER_OF_KEYVERSIONPAIRS,
//        &sKUCEntries[0],
//        NUMBER_OF_KUCENTRIES
//        );
//    CHECK_STATUS(status);

    /* load a Key to the Store */
    /* Note: If You use Key number 0x00, be aware that in SAM
      this Key is the 'Host authentication key' !!! */
//    status = phKeyStore_FormatKeyEntry(&sPlatform.sKeyStore, 1, PH_KEYSTORE_KEY_TYPE_MIFARE);
//    CHECK_STATUS(status);

    /* Set Key Store */
//    status = phKeyStore_SetKey(&sPlatform.sKeyStore, 1, 0, PH_KEYSTORE_KEY_TYPE_MIFARE, &Key[0], 0);
//    CHECK_STATUS(status);

    /* Read the version of the reader IC */
#if defined NXPBUILD__PHHAL_HW_RC523
    status = phhalHw_Rc523_ReadRegister(&sPlatform.sHal, PHHAL_HW_RC523_REG_VERSION, &bDataBuffer[0]);
    CHECK_STATUS(status);
    DEBUG_PRINTF("\nReader chip PN512: 0x%02x\n", bDataBuffer[0]);
#endif
#if defined NXPBUILD__PHHAL_HW_RC663
    status = phhalHw_Rc663_ReadRegister(&sPlatform.sHal, PHHAL_HW_RC663_REG_VERSION, &bDataBuffer[0]);
    CHECK_STATUS(status);
    DEBUG_PRINTF("\nReader chip RC663: 0x%02x\n", bDataBuffer[0]);
#endif

    /* Return Success */
    return PH_ERR_SUCCESS;
}

#ifdef NXPBUILD__PHHAL_HW_TARGET
/* Stubbed definitions in case TARGET is enabled */
uint8_t  sens_res[2]     = {0x04, 0x00};
uint8_t  nfc_id1[3]      = {0xA1, 0xA2, 0xA3};
uint8_t  sel_res         = 0x40;
uint8_t  nfc_id3         = 0xFA;
uint8_t  poll_res[18]    = {0x01, 0xFE, 0xB2, 0xB3, 0xB4, 0xB5,
                                   0xB6, 0xB7, 0xC0, 0xC1, 0xC2, 0xC3,
                                   0xC4, 0xC5, 0xC6, 0xC7, 0x23, 0x45 };
#endif /* NXPBUILD__PHHAL_HW_TARGET */

/***********************************************************************************************
 *                            End Of File
 **********************************************************************************************/

void Mfc_ReadCardInfo(void)
{
    phStatus_t status; // Store the temporary status
    /* Pointer to the PAL MIFARE component*/
    phpalMifare_Sw_DataParams_t *ppalMifare = &spalMifare;
    /* Pointer to the PAL ISO14443-3A component */
    phpalI14443p3a_Sw_DataParams_t *ppalI14443p3a = &spalI14443p3a;
    /* Read the Block #4 in the Sector 1 from the MIFARE Classic Card */
    uint8_t bBlockNo = 4; // Block #4 in the Sector 1
    /* MIFARE Classic Key Type */
    uint8_t bKeyType = PHHAL_HW_MFC_KEYA;
    uint8_t Key[6] = {0x80, 0xAF, 0x30, 0x42, 0x1A, 0x20};   //MIFARE Classic Authentication Key    
    /* Authenticate with the Key
     * We can authenticate at any block of a sector and we will get the access to all blocks of the same sector
     * For example authenticating at block 4, we will get the access to blocks 4, 5, 6 and 7 in the sector 1.
     */
    /* Send authentication for block 4 */    
//    status = phalMfc_Authenticate(palMfc, bBlockNo, bKeyType, 0, 0, cardInfo.aUID, cardInfo.bUIDsize);
    status = phpalMifare_MfcAuthenticate(ppalMifare, bBlockNo, bKeyType, Key, ppalI14443p3a->abUid);
    /* Check for Status */
    if ((status & PH_ERR_MASK) != PH_ERR_SUCCESS)
    {
        /* Print Error info */
        DEBUG_PRINTF("\nAuthentication Failed!!!");
        DEBUG_PRINTF("\nPlease correct the used key");
        breakpoint();
//        return;
    }
    uint8_t TxBuffer[2] = {0x30, 0x04};
    uint16_t wTxLength = sizeof(TxBuffer);
    uint8_t *pRxBuffer = NULL;
    uint16_t RxLength;
    /* Perform ISO14443-3 Data Exchange with MIFARE Classic card */
    status = phpalMifare_ExchangeL3(ppalMifare, PH_EXCHANGE_DEFAULT, TxBuffer, wTxLength, &pRxBuffer, &RxLength);
    /* Check for Status */
    if ((status & PH_ERR_MASK) != PH_ERR_SUCCESS)
    {
        /* Print Error info */
        DEBUG_PRINTF("\nRead operation failed!!!\n");
        DEBUG_PRINTF("\nExecution aborted!!!\n\n");
        breakpoint();
//        return;
    }
    /* Copy the MIFARE Classic Card Information to the Data Buffer */
    memcpy(bDataBuffer, pRxBuffer, RxLength);
    strcpy(cardInfo.cardType, pMfcTypeName);
    strcpy(cardInfo.cardNum , "16040626");
    breakpoint(); // MIFARE Classic Card Info
    return;
}

void Mfdf_ReadCardInfo(void)
{
    phStatus_t status = PH_ERR_SUCCESS;
    /* Pointer to the AL MIFARE DESFire component */
    phalMfdf_Sw_DataParams_t *palMfdf = &salMFDF;
    /* Pointer to the PAL ISO14443-4 component */
    phpalI14443p4_Sw_DataParams_t* ppalI14443p4 = &spalI14443p4;
    
    uint8_t bCidEnable = 0;
    uint8_t bCid = 0;
    uint8_t bNadEnable = 0;
    uint8_t bNad = 0;
    uint8_t bFwi = 0;
    uint8_t bFsdi = 4;
    uint8_t bFsci = 0;
    
    status = phpalI14443p4_SetProtocol(ppalI14443p4, bCidEnable, bCid, bNadEnable, bNad, bFwi, bFsdi, bFsci);
    CHECK_STATUS(status);
    
    uint8_t* pRxBuffer = NULL;
    uint16_t RxLength = 0;
    
    //Perform RATS (Request Answer To Select)
    static uint8_t rats[2] = {0xE0, 0x40};
    status = phpalI14443p4_Exchange(ppalI14443p4, PH_EXCHANGE_DEFAULT, rats, 2, &pRxBuffer, &RxLength);
    CHECK_STATUS(status);

    //Perform PPS (Protocol Parameter Selection)
    static uint8_t pps[3] = {0xD0, 0x11, 0};
    status = phpalI14443p4_Exchange(ppalI14443p4, PH_EXCHANGE_DEFAULT, pps, 3, &pRxBuffer, &RxLength);
    CHECK_STATUS(status);
    
    //Select CoA application
    static uint8_t AID[3] = {0xFFU, 0xFFU, 0xFFU}; //Application Identifier (LSB first)
    status = phalMfdf_SelectApplication(palMfdf, AID);
    CHECK_STATUS(status);
    if((status & PH_ERR_MASK) != PH_ERR_SUCCESS)
    {
        breakpoint();
    }
    
    //Obtain Card Number
    uint8_t readNr[8] = {0xBD, 0x01, 0, 0, 0, 0x12, 0, 0};
    pRxBuffer = NULL;
    status = phpalI14443p4_Exchange(ppalI14443p4, PH_EXCHANGE_DEFAULT, readNr, 8, &pRxBuffer, &RxLength);
    CHECK_STATUS(status);
    if((status & PH_ERR_MASK) != PH_ERR_SUCCESS)
    {
        breakpoint();
    }
    /* Copy the MIFARE DESFire Card Information to the Data Buffer */
    memcpy(bDataBuffer, pRxBuffer, RxLength);
    strcpy(cardInfo.cardType, pMfdfTypeName);
    memcpy(cardInfo.cardNum, &bDataBuffer[7], 12);
    breakpoint(); // MIFARE DESFre Card Info
    return;
}

void MFC_test(phacDiscLoop_Sw_DataParams_t* pDataParams){
    phStatus_t status;
    phpalMifare_Sw_DataParams_t* ppalMifare = &spalMifare;    //phNfcLib_GetDataParams( PH_COMP_PAL_MIFARE );
    phpalI14443p3a_Sw_DataParams_t* ppalI14443p3a = &spalI14443p3a;    //phNfcLib_GetDataParams(PH_COMP_PAL_ISO14443P3A);
    
    uint8_t bBlockNo = 4;
    uint8_t pKey[6] = {0x80, 0xAF, 0x30, 0x42, 0x1A, 0x20};   //MFC Test key
    uint8_t bKeyType = PHHAL_HW_MFC_KEYA;
    
    status = phpalMifare_MfcAuthenticate(ppalMifare, bBlockNo, bKeyType, pKey, ppalI14443p3a->abUid);
    CHECK_STATUS(status);
    
    uint8_t* pRxBuffer = NULL;
    uint8_t pTxBuffer[2] = {0x30, 0x04};
    uint16_t wTxLength = sizeof(pTxBuffer);
    uint16_t RxLength;
    
    status = phpalMifare_ExchangeL3(ppalMifare, PH_EXCHANGE_DEFAULT, pTxBuffer, wTxLength, &pRxBuffer, &RxLength);
    CHECK_STATUS(status);
}

phStatus_t MFDF_test(phacDiscLoop_Sw_DataParams_t* pDataParams){
    phStatus_t res = PH_ERR_SUCCESS;  
    phStatus_t status = PH_ERR_SUCCESS;
    phalMfdf_Sw_DataParams_t* palMfdf = &salMFDF; //phNfcLib_GetDataParams( PH_COMP_AL_MFDF );
    phpalI14443p4_Sw_DataParams_t* ppalI14443p4 = &spalI14443p4;   //phNfcLib_GetDataParams(PH_COMP_PAL_ISO14443P4);
    
    uint8_t bFsdi = 4;
    uint8_t bFsci = 0;
    uint8_t bFwi = 0;
    uint8_t bCid = 0;
    uint8_t bNad = 0;
    uint8_t bNadEnable = 0;
    uint8_t bCidEnable = 0;
//    breakpoint();
    
    status = phpalI14443p4_SetProtocol(ppalI14443p4, bCidEnable, bCid, bNadEnable, bNad, bFwi, bFsdi, bFsci);
    CHECK_STATUS(status);
    if( status ) res = status;  
//    breakpoint();
    
    uint8_t* pRxBuffer = NULL;
    uint16_t RxLength = 0;
    
    //Perform RATS
    uint8_t rats[2] = {0xE0, 0x40};
    status = phpalI14443p4_Exchange(ppalI14443p4, PH_EXCHANGE_DEFAULT, rats, 2, &pRxBuffer, &RxLength);
    CHECK_STATUS(status);
    if( status ) res = status;   
//    breakpoint();

    //Perform PPS
    uint8_t pps[3] = {0xD0, 0x11, 0};
    status = phpalI14443p4_Exchange(ppalI14443p4, PH_EXCHANGE_DEFAULT, pps, 3, &pRxBuffer, &RxLength);
    CHECK_STATUS(status);
    if( status ) res = status;
//    breakpoint();
    
    //Select CoA application
    uint8_t pAppId[3] = {0xFF, 0xFF, 0xFF};
    status = phalMfdf_SelectApplication(palMfdf, pAppId);
    CHECK_STATUS(status);
    if( status ) res = status;  
//    breakpoint();
   
    //Obtain Card Number
    uint8_t readNr[8] = {0xBD, 0x01, 0, 0, 0, 0x12, 0, 0};
    pRxBuffer = NULL;
    status = phpalI14443p4_Exchange(ppalI14443p4, PH_EXCHANGE_DEFAULT, readNr, 8, &pRxBuffer, &RxLength);
    CHECK_STATUS(status);
    if( status ) res = status;
//    breakpoint(); 
    return res;
}

extern phStatus_t phhalHw_Pn5180_Instr_WriteE2Prom( phhalHw_Pn5180_DataParams_t * pDataParams, uint8_t bE2PromAddress, uint8_t * pDataToWrite, uint8_t bDataLength );

int setEEPROM_Values(int selection){
/*
Differences EEPROM Evaluation -> KNFC 2.0
Die ID
Product Version
0x10: { 0x00, 0x01 } -> { 0x04, 0x05 }
Firmware Version
0x12: { 0x00, 0x04 } -> { 0x04, 0x03 }
EEPROM Version
0x14: { 0x00, 0x99 } -> { 0x00, 0x90 }
LPCD Reference Value
0x34: { 0x08, 0x00 } -> { 0xAC, 0x20 }
LPCD Threshold
0x37: 0x10 -> 0x05
DPC Guard Fast mode
0x91: { 0x20, 0x4E } -> { 0xB8, 0x88 }
PCD AWC DRC LUT Size
0x97:   0x5D -> 0x0D
PCD AWC DRC LUT
0xA3:   0x37 -> 0x17
0xCB:   0x37 -> 0x17
0xCC: { 0x81, 0x16, 0x01, 0x00, 
        0x81, 0x02, 0x00, 0x0C, 
        0x81, 0x02, 0x00, 0x30, 
        0xD1, 0x02, 0x00, 0x40 } -> { 0x00, ..., 0x00 }
0xDC: { 0x85, 0x1A, 0x10, 0x00, 
        0x00, 0x00, 0x00, 0x00, 
        0x00, 0x00, 0x00, 0x00 } -> {   0xAA, 0x85, 0x00, 0x80, 
                                        0x33, 0x14, 0x17, 0x00,
                                        0x55, 0x2A, 0x04, 0x00 }
Misc Config                                     
0xE8:   0x03 -> 0x63
DigiDelays
0xE9:   {0x06, 0x17, 0x30, 0xA1, 0x36, 0x5E } -> { 0x00, ..., 0x00 }
*/ 
    
    uint8_t addr = 0;
    phStatus_t status = PH_ERR_UNSUPPORTED_PARAMETER;
    phStatus_t statusTemp;
   
    if( selection == 0 )
    {
        statusTemp = PH_ERR_SUCCESS;
    
        //original values
        uint8_t lpcdRefVal[] = { 0xAC, 0x20 };        
        uint8_t lpcdThresh[] = { 0x05 };
        uint8_t DpcGuardFastmode[] = { 0xB8, 0x88 };
        uint8_t PcdAwcDrcLUTSize[] = { 0x0D };
        uint8_t PcdAwcDrcLUT_1[] = { 0x17 };
        uint8_t PcdAwcDrcLUT_2[] = { 0x17 };
        uint8_t PcdAwcDrcLUT_3[16] = { 0x0 };
        uint8_t PcdAwcDrcLUT_4[] = { 0xAA, 0x85, 0x00, 0x80, 0x33, 0x14, 0x17, 0x00, 0x55, 0x2A, 0x04, 0x00 };       
        uint8_t MiscConfig[] = {0x03};
        uint8_t DigiDelays[6] = {0x00};
        
        addr = 0x34;
        statusTemp = phhalHw_Pn5180_Instr_WriteE2Prom(&sPlatform.sHal, addr, lpcdRefVal, sizeof(lpcdRefVal) );
        if( statusTemp ) status = statusTemp;
        
        addr = 0x37;
        statusTemp = phhalHw_Pn5180_Instr_WriteE2Prom(&sPlatform.sHal, addr, lpcdThresh, sizeof(lpcdThresh) );
        if( statusTemp ) status = statusTemp;
        
        addr = 0x91;
        statusTemp = phhalHw_Pn5180_Instr_WriteE2Prom(&sPlatform.sHal, addr, DpcGuardFastmode, sizeof(DpcGuardFastmode) );
        if( statusTemp ) status = statusTemp;
        
        addr = 0x97;
        statusTemp = phhalHw_Pn5180_Instr_WriteE2Prom(&sPlatform.sHal, addr, PcdAwcDrcLUTSize, sizeof(PcdAwcDrcLUTSize) );
        if( statusTemp ) status = statusTemp;
        
        addr = 0xA3;
        statusTemp = phhalHw_Pn5180_Instr_WriteE2Prom(&sPlatform.sHal, addr, PcdAwcDrcLUT_1, sizeof(PcdAwcDrcLUT_1) );
        if( statusTemp ) status = statusTemp;
        
        addr = 0xCB;
        statusTemp = phhalHw_Pn5180_Instr_WriteE2Prom(&sPlatform.sHal, addr, PcdAwcDrcLUT_2, sizeof(PcdAwcDrcLUT_2) );
        if( statusTemp ) status = statusTemp;
        
        addr = 0xCC;
        statusTemp = phhalHw_Pn5180_Instr_WriteE2Prom(&sPlatform.sHal, addr, PcdAwcDrcLUT_3, sizeof(PcdAwcDrcLUT_3) );
        if( statusTemp ) status = statusTemp;
        
        addr = 0xDC;
        statusTemp = phhalHw_Pn5180_Instr_WriteE2Prom(&sPlatform.sHal, addr, PcdAwcDrcLUT_4, sizeof(PcdAwcDrcLUT_4) );
        if( statusTemp ) status = statusTemp;
        
        addr = 0xE8;
        statusTemp = phhalHw_Pn5180_Instr_WriteE2Prom(&sPlatform.sHal, addr, MiscConfig, sizeof(MiscConfig) );
        if( statusTemp ) status = statusTemp;
        
        addr = 0xE9;
        statusTemp = phhalHw_Pn5180_Instr_WriteE2Prom(&sPlatform.sHal, addr, DigiDelays, sizeof(DigiDelays) );
        if( statusTemp ) status = statusTemp;
        
    }
    else
    {
        statusTemp = PH_ERR_SUCCESS;
        
        //evaluation kit values
        uint8_t lpcdRefVal[] = { 0x08, 0x00 };
        uint8_t lpcdThresh[] = { 0x10 };
        uint8_t DpcGuardFastmode[] = { 0x20, 0x4E };
        uint8_t PcdAwcDrcLUTSize[] = { 0x5D };
        uint8_t PcdAwcDrcLUT_1[] = { 0x37 };
        uint8_t PcdAwcDrcLUT_2[] = { 0x37 };
        uint8_t PcdAwcDrcLUT_3[] = { 0x81, 0x16, 0x01, 0x00, 0x81, 0x02, 0x00, 0x0C, 0x81, 0x02, 0x00, 0x30, 0xD1, 0x02, 0x00, 0x40 };
        uint8_t PcdAwcDrcLUT_4[] = { 0x85, 0x1A, 0x10, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };        
        uint8_t MiscConfig[] = {0x63};
        uint8_t DigiDelays[] = {0x06, 0x17, 0x30, 0xA1, 0x36, 0x5E};
                
        addr = 0x34;
        statusTemp = phhalHw_Pn5180_Instr_WriteE2Prom(&sPlatform.sHal, addr, lpcdRefVal, sizeof(lpcdRefVal) );
        if( statusTemp ) status = statusTemp;
        
        addr = 0x37;
        statusTemp = phhalHw_Pn5180_Instr_WriteE2Prom(&sPlatform.sHal, addr, lpcdThresh, sizeof(lpcdThresh) );
        if( statusTemp ) status = statusTemp;
        
        addr = 0x91;
        statusTemp = phhalHw_Pn5180_Instr_WriteE2Prom(&sPlatform.sHal, addr, DpcGuardFastmode, sizeof(DpcGuardFastmode) );
        if( statusTemp ) status = statusTemp;
        
        addr = 0x97;
        statusTemp = phhalHw_Pn5180_Instr_WriteE2Prom(&sPlatform.sHal, addr, PcdAwcDrcLUTSize, sizeof(PcdAwcDrcLUTSize) );
        if( statusTemp ) status = statusTemp;
        
        addr = 0xA3;
        statusTemp = phhalHw_Pn5180_Instr_WriteE2Prom(&sPlatform.sHal, addr, PcdAwcDrcLUT_1, sizeof(PcdAwcDrcLUT_1) );
        if( statusTemp ) status = statusTemp;
        
        addr = 0xCB;
        statusTemp = phhalHw_Pn5180_Instr_WriteE2Prom(&sPlatform.sHal, addr, PcdAwcDrcLUT_2, sizeof(PcdAwcDrcLUT_2) );
        if( statusTemp ) status = statusTemp;
        
        addr = 0xCC;
        statusTemp = phhalHw_Pn5180_Instr_WriteE2Prom(&sPlatform.sHal, addr, PcdAwcDrcLUT_3, sizeof(PcdAwcDrcLUT_3) );
        if( statusTemp ) status = statusTemp;
        
        addr = 0xDC;
        statusTemp = phhalHw_Pn5180_Instr_WriteE2Prom(&sPlatform.sHal, addr, PcdAwcDrcLUT_4, sizeof(PcdAwcDrcLUT_4) );
        if( statusTemp ) status = statusTemp;
        
        addr = 0xE8;
        statusTemp = phhalHw_Pn5180_Instr_WriteE2Prom(&sPlatform.sHal, addr, MiscConfig, sizeof(MiscConfig) );
        if( statusTemp ) status = statusTemp;
        
        addr = 0xE9;
        statusTemp = phhalHw_Pn5180_Instr_WriteE2Prom(&sPlatform.sHal, addr, DigiDelays, sizeof(DigiDelays) );
        if( statusTemp ) status = statusTemp;
    }
    
    return status;    
}