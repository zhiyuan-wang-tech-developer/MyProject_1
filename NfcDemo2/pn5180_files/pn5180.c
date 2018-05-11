/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.c

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */
#include "pn5180.h"
#include "../mcc_generated_files/mcc.h"
#include "../nxp_reader_config_files/phApp_Init.h"
#include "../sam_reader_files/sam_interface.h"

/* TODO:  Include other files here if needed. */

/* ATQA (Answer To Request type-A) */
#define MIFARE_CLASSIC_1K_ATQA  0x0004
#define MIFARE_CLASSIC_4K_ATQA  0x0002
#define MIFARE_DESFIRE_ATQA  0x0344
/* SAK (Select Acknowledge) */
#define MIFARE_CLASSIC_1K_SAK   0x08
#define MIFARE_CLASSIC_4K_SAK   0x18
#define MIFARE_DESFIRE_SAK  0x20

typedef uint8_t key_t[6];

typedef union {
    uint8_t fileData[18];
    struct __attribute__((packed))
    {
        uint8_t ISO_prefix[6];
        uint8_t TypeA_prefix[2];
        uint8_t uniqueNum[9];
        uint8_t checkDigit;
    };
} cardNumType;

typedef enum {
    cardUnknown,
    cardMifareDesfire,
    cardMifareClassic
} cardType;
/*******************************************************************************
**   Global Variable Declaration
*******************************************************************************/

/* HAL variables */
static uint8_t bHalBufferTx[128];  /* HAL TX buffer */
static uint8_t bHalBufferRx[128];  /* HAL RX buffer */

/* The 6-bytes Test Key only for Mifare Classic Card Authentication */
static uint8_t MifareClassicTestKey[6] = {0x80, 0xAF, 0x30, 0x42, 0x1A, 0x20};
/* The Block Data read from the Mifare Classic Card is stored here */
static uint8_t MifareClassicBlockData[16] = {0};

/* The File Data read from the Mifare DESFire Card is stored here */
static uint8_t MifareDesfireFileData[18] = {0};


bool nfc_init(void)
{
    phStatus_t status = PH_ERR_SUCCESS;
    
    /* Enable 5V power supply for PN5180 transmitter and loop antenna*/
    EnableTXPowerSupply_SetHigh();
    
    /* Initialize the Operating System Abstraction Layer (OSAL) attributes */
    status = phOsal_Init();
    if(status != PH_ERR_SUCCESS) return false;
    
    /* Perform Platform Initialization */
    status = phPlatform_Init(&sPlatform, bHalBufferTx, sizeof(bHalBufferTx), bHalBufferRx, sizeof(bHalBufferRx));
    if(status != PH_ERR_SUCCESS) return false;
    
    /* Initialize Reader Library PAL and AL Components */
    status = phApp_RdLibInit();
    if(status != PH_ERR_SUCCESS) return false;

    /* Set the generic pointer to platform HAL */        
    pHal = &sPlatform.sHal;  

    /* Set RF Field off time = 250 ms */
    phhalHw_Pn5180_SetConfig(pHal, PHHAL_HW_CONFIG_FIELD_OFF_TIME, 250);
    if((status & PH_ERR_MASK) != PH_ERR_SUCCESS) return false;
    /* Set RF Field recovery time = 100 ms */
    phhalHw_Pn5180_SetConfig(pHal, PHHAL_HW_CONFIG_FIELD_RECOVERY_TIME, 100);
    if((status & PH_ERR_MASK) != PH_ERR_SUCCESS) return false;

    /* Initializes the discovery loop */
    /* Device limit for Type A */
    status = phacDiscLoop_SetConfig(&sDiscLoop, PHAC_DISCLOOP_CONFIG_TYPEA_DEVICE_LIMIT, 1);
    if(status != PH_ERR_SUCCESS) return false;
 
    /* Set the discovery loop as Type A card detection with passive polling mode */
    status = phacDiscLoop_SetConfig(&sDiscLoop, PHAC_DISCLOOP_CONFIG_PAS_POLL_TECH_CFG, PHAC_DISCLOOP_POS_BIT_MASK_A);
    if(status != PH_ERR_SUCCESS) return false;
    
    return true;
}

/* Customize your detection mode: detect only once or detect continously */
void detectCard(bool detectLoopMode)
{   
    phStatus_t  status = PH_ERR_SUCCESS;
    uint16_t    wTagsDetected = 0;  /* Stash the tag technologies that were detected during polling mode */
    uint16_t    wATQA = 0;              /* Stash card ATQA information */
    uint8_t     bSAK = 0;               /* Stash card SAK information */
    uint8_t     bUidLength = 0;         /* Indicate the card UID length */
    uint8_t     aUid[PHAC_DISCLOOP_I3P3A_MAX_UID_LENGTH] = {0};   /* Stash the card UID (Unique IDentifier) */
    cardType    detectedCardType = cardUnknown;
    
     /* Start card detection */
    do   
    {
        /* Ready to detect a card */
        /* Turn off LED */
        LED_SetLow();            
        /* Switch off the RF Field */
        status = phhalHw_FieldOff(pHal);
        /* Wait for 5100 ms */
        status = phhalHw_Wait(sDiscLoop.pHalDataParams, PHHAL_HW_TIME_MICROSECONDS, 5100);
        /* Configure Discovery loop for Polling Detection Mode */
        status = phacDiscLoop_SetConfig(&sDiscLoop, PHAC_DISCLOOP_CONFIG_NEXT_POLL_STATE, PHAC_DISCLOOP_POLL_STATE_DETECTION);
        /* Run Discovery loop */
        status = phacDiscLoop_Run(&sDiscLoop, PHAC_DISCLOOP_ENTRY_POINT_POLL);
        /* Check for the status code 
         * Enter when single card/device is activated
         */    
        if((status & PH_ERR_MASK) == PHAC_DISCLOOP_DEVICE_ACTIVATED ) 
        {    
            /* Go here when a card is detected */

            /* Get the detected tech type info */
            status = phacDiscLoop_GetConfig(&sDiscLoop, PHAC_DISCLOOP_CONFIG_TECH_DETECTED, &wTagsDetected);
            /* Check if the detected tech type is acquired from the discovery loop with success */
            if((status & PH_ERR_MASK) == PH_ERR_SUCCESS)
            {
                /* Check for ISO/IEC 14443 Type A tech detection */
                if(PHAC_DISCLOOP_CHECK_ANDMASK(wTagsDetected, PHAC_DISCLOOP_POS_BIT_MASK_A))
                {
                    /* Turn on the LED to indicate that a Type A card has been detected */
                    LED_SetHigh();

                    /* Read and store ATQA from Type A card */
                    wATQA = (uint16_t) sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aAtqa[0];
                    wATQA |= sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aAtqa[1] << 8;
                    /* Read and store SAK from Type A card */
                    bSAK = sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aSak;
                    /* Read and store UID length */
                    bUidLength = sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].bUidSize;
                    /* Read and store UID */
                    memcpy(aUid, sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aUid, bUidLength);

                    /* Check for MIFARE Classic 1K Card */
                    if( (wATQA == MIFARE_CLASSIC_1K_ATQA) && (bSAK == MIFARE_CLASSIC_1K_SAK) )                        
                    {
                        /* Card Type: MIFARE Classic 1K Card */
                        detectedCardType = cardMifareClassic;
                        /* Read card info here */
                        if(MifareClassic_AuthenticateCard_ReadBlock(MifareClassicTestKey, MifareClassicBlockData) == FAILURE)
                        {
                            /* Mifare Classic Card Authentication Failure */
                            breakpoint();
                        }
                        else
                        {
                            /* Mifare Classic Card Authentication Success */
                            breakpoint();
                        }
                    }
                    /* Check for MIFARE Classic 4K Card */
                    if( (wATQA == MIFARE_CLASSIC_4K_ATQA) && (bSAK == MIFARE_CLASSIC_4K_SAK) )                        
                    {
                        /* Card Type: MIFARE Classic 4K Card */
                        detectedCardType = cardMifareClassic;
                        breakpoint();
                        /* Read card info here */

                    }
                    /* Check for MIFARE DESFire Card */
                    if( (wATQA == MIFARE_DESFIRE_ATQA) && (bSAK == MIFARE_DESFIRE_SAK) )                        
                    {
                        /* Card Type: MIFARE DESFire Card */
                        detectedCardType = cardMifareDesfire;
                        /* Read card info here */
                        if( MifareDesfire_AuthenticateCard_ReadFile(MifareDesfireFileData) == FAILURE )
                        {
                            /* Mifare DESFire Card Authentication Failure */
                            breakpoint();
                        }
                        else
                        {
                            /* Mifare DESFire Card Authentication Success */
                            breakpoint();
                        }

                    }                

                    /* RF Field RESET */
                    status = phhalHw_FieldReset(pHal);
                    /* Wait for Type-A card removal */
                    /* Make sure that the routine is not detecting the same Type-A card continuously */
                    do
                    {
                        /* Perform a ISO14443-3A Wakeup command */
        //                    status = phpalI14443p3a_WakeUpA(sDiscLoop.pPal1443p3aDataParams,
        //                                                    sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aAtqa);
                        /* Perform a ISO14443-3A Request command */
                        status = phpalI14443p3a_RequestA(sDiscLoop.pPal1443p3aDataParams,
                                                         sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aAtqa);
                        /* Check for Status */
                        if( (status & PH_ERR_MASK) != PH_ERR_SUCCESS )
                        {
                            /* Turn off the LED to indicate that the ISO/IEC 14443 Type A card has been removed */
                            LED_SetLow();
                            /* Clear the detected card information */
                            wTagsDetected = 0;
                            wATQA = 0;
                            bSAK = 0;
                            bUidLength = 0;
                            memset(aUid, '\0', PHAC_DISCLOOP_I3P3A_MAX_UID_LENGTH);
                            memset(MifareClassicBlockData, '\0', sizeof(MifareClassicBlockData));
                            memset(MifareDesfireFileData, '\0', sizeof(MifareDesfireFileData));
                            detectedCardType = cardUnknown;
                            /* Card is removed and break from the internal do-while loop */
                            break;
                        }
                        /* Perform a ISO14443-3A Halt command */
                        status = phpalI14443p3a_HaltA(sDiscLoop.pPal1443p3aDataParams);
                        /* Delay - 5 milliseconds*/
                        status = phhalHw_Wait(sDiscLoop.pHalDataParams, PHHAL_HW_TIME_MILLISECONDS, 5);
                    }while(1);                   
                }
                detectedCardType = cardUnknown;
            }
        }
        else
        {
            /* No card/device is activated */
            continue;
        }
    }while(detectLoopMode);
}

bool MifareClassic_AuthenticateCard_ReadBlock(uint8_t *pKeyIn, uint8_t *pBlockDataOut)
{
    if( (pKeyIn == NULL) || (pBlockDataOut == NULL) )
    {
        breakpoint();
        return false;
    }
    /* Stash the temporary status code */
    phStatus_t status = PH_ERR_SUCCESS;
    
    /* Pointer to the Protocol Abstraction Layer (PAL) MIFARE component*/
    phpalMifare_Sw_DataParams_t *ppalMifare = &spalMifare;
    /* Pointer to the PAL ISO 14443-3A component */
    phpalI14443p3a_Sw_DataParams_t *ppalI14443p3a = &spalI14443p3a;
    
    /* Read the Block 4 from the MIFARE Classic Card */
    /* Block 4 = Block 0 in the Sector 1 */
    uint8_t bBlockNo = 4;
    
    /* Set the MIFARE Classic Card Key Type */
    uint8_t bKeyType = PHHAL_HW_MFC_KEYA;
    /* Stash the MIFARE Classic Authentication Key */ 
    uint8_t Key[6] = {0};
    /* Copy the input Mifare Classic Key */
    memcpy(Key, pKeyIn, PHHAL_HW_MFC_KEY_LENGTH);
    
    /* Authenticate the Mifare Classic card with the provided Key
     * We can authenticate any block of a sector and we will get the access right to all blocks in the same sector
     * For example authenticating the block 4, we will get the access to blocks 4, 5, 6 and 7 in the sector 1.
     */
    /* Step #1: Perform the authentication for block 4 */    
    status = phpalMifare_MfcAuthenticate(ppalMifare, bBlockNo, bKeyType, Key, ppalI14443p3a->abUid);
    /* Check for the status code */
    if( (status & PH_ERR_MASK) != PH_ERR_SUCCESS )
    {
        /* MIFARE CLASSIC Authentication Failure */
        /* User must provide a correct key */
        breakpoint();
        return false;
    }
    
    /* Tx Buffer holds commands */
    uint8_t TxBuffer[2] = {0x30, 0x04};
    /* Tx Buffer Length */
    uint16_t wTxLength = sizeof(TxBuffer);
    /* Pointer to the Rx Buffer */
    /* If the pointer is NULL the NFC reader library internal Rx buffer is used */
    uint8_t *pRxBuffer = NULL;
    /* Rx Buffer Length */
    uint16_t wRxLength = 0;
    /* Step #2: Perform the ISO 14443-3 Data Exchange with MIFARE Classic card */
    status = phpalMifare_ExchangeL3(ppalMifare, PH_EXCHANGE_DEFAULT, TxBuffer, wTxLength, &pRxBuffer, &wRxLength);
    /* Check for status code */
    if( (status & PH_ERR_MASK) != PH_ERR_SUCCESS )
    {
        /* Reading data in block 4 failed */
        breakpoint();
        return false;
    }
    /* Copy the data read from the MIFARE Classic Card Block 4 to the Block Data Buffer */
    memcpy(pBlockDataOut, pRxBuffer, wRxLength);
    return true;
}

bool MifareDesfire_AuthenticateCard_ReadFile(uint8_t *pFileDataOut)
{
    if( (pFileDataOut == NULL) )
    {
        breakpoint();
        return false;
    }
        
    /* Stash the temporary status code */
    phStatus_t status = PH_ERR_SUCCESS;
    
    /* Pointer to the Abstraction Layer (AL) MIFARE DESFire component */
    phalMfdf_Sw_DataParams_t *palMfdf = &salMFDF;
    /* Pointer to the PAL ISO 14443-4 component */
    phpalI14443p4_Sw_DataParams_t *ppalI14443p4 = &spalI14443p4;
    
    /* ISO 14443-4 Protocol Configuration Parameters */
    uint8_t bCidEnable = 0;
    uint8_t bCid = 0;
    uint8_t bNadEnable = 0;
    uint8_t bNad = 0;
    uint8_t bFwi = 0;
    uint8_t bFsdi = 4;
    uint8_t bFsci = 0;
    /* Configure ISO 14443-4 Protocol */
    status = phpalI14443p4_SetProtocol(ppalI14443p4, bCidEnable, bCid, bNadEnable, bNad, bFwi, bFsdi, bFsci);
    /* Check for the status code */
    if( (status & PH_ERR_MASK) != PH_ERR_SUCCESS )
    {
        /* ISO 14443-4 Protocol Configuration Failure */
        breakpoint();
        return false;
    }
    /* Pointer to the Rx Buffer */
    /* If the pointer is NULL the NFC reader library internal Rx buffer is used */   
    uint8_t *pRxBuffer = NULL;
    /* Rx Buffer Length */
    uint16_t wRxLength = 0;
    
    /* Step #1: Perform Request Answer To Select (RATS) */
    /* It holds RATS commands */
    uint8_t RATS[2] = {0xE0, 0x40};
    /* Perform ISO 14443-4 Data Exchange with Mifare DESFire Card */
    status = phpalI14443p4_Exchange(ppalI14443p4, PH_EXCHANGE_DEFAULT, RATS, 2, &pRxBuffer, &wRxLength);
    /* Check for the status code */
    if( (status & PH_ERR_MASK) != PH_ERR_SUCCESS )
    {
        /* Request Answer To Select (RATS) Failure */
        breakpoint();
        return false;
    }

    /* Step #2: Perform Protocol Parameter Selection (PPS) */
    /* It holds PPS commands */
    uint8_t PPS[3] = {0xD0, 0x11, 0x00};
    /* Perform ISO 14443-4 Data Exchange with Mifare DESFire Card */
    status = phpalI14443p4_Exchange(ppalI14443p4, PH_EXCHANGE_DEFAULT, PPS, 3, &pRxBuffer, &wRxLength);
    /* Check for the status code */
    if( (status & PH_ERR_MASK) != PH_ERR_SUCCESS )
    {
        /* Protocol Parameter Selection (PPS) Failure */
        breakpoint();
        return false;
    }
    
    /* Step #3: Perform Mifare DESFire card authentication with Secure Access Module (SAM) card */
    /* This step checks if Mifare DESFire card has the same key as SAM card */
    if( MifareDesfire_SAM_authentication() == FAILURE )
    {
        /* Mifare DESFire card authentication with SAM card failed */
        breakpoint();
        return false;
    }
    
    /* Step #4: Select Application */
    /* It holds Application IDentifier (AID) and LSB is the first */
    uint8_t AID[3] = {0xFFU, 0xFFU, 0xFFU};
    /* Select one particular application with the AID on the MIFARE DESFire card for further access */
    status = phalMfdf_SelectApplication(palMfdf, AID);
    /* Check for the status code */
    if( (status & PH_ERR_MASK) != PH_ERR_SUCCESS )
    {
        /* Card Application Selection Failure */
        breakpoint();
        return false;
    }
    
    /* Step #5: Read Mifare DESFire File Data */
    /* It holds File ID (0x01) */
    uint8_t readNr[8] = {0xBD, 0x01, 0x00, 0x00, 0x00, 0x12, 0x00, 0x00};
    /* Pointer to the Rx Buffer */
    /* If the pointer is NULL the NFC reader library internal Rx buffer is used */ 
    pRxBuffer = NULL;
    /* Perform ISO 14443-4 Data Exchange with Mifare DESFire Card */    
    status = phpalI14443p4_Exchange(ppalI14443p4, PH_EXCHANGE_DEFAULT, readNr, 8, &pRxBuffer, &wRxLength);
    /* Check for the status code */
    if((status & PH_ERR_MASK) != PH_ERR_SUCCESS)
    {
        /* Mifare DESFire File Data Reading Failure */
        breakpoint();
        return false;
    }
    /* 19 bytes should be received
     * The first byte pRxBuffer[0] = 0 so it can be skipped      
     */
    if( wRxLength == 19 )
    {
        /* Copy the 18-bytes MIFARE DESFire Card File Data to the File Data Buffer */
        memcpy(pFileDataOut, &pRxBuffer[1], 18);
    }
    else
    {
        /* The number of received bytes is not 19 */
        breakpoint();
        return false;
    }

    return true;    
}

bool MifareDesfire_SAM_authentication(void)
{
    /* Store the temporary status code */
    phStatus_t status = PH_ERR_SUCCESS;
    /* Pointer to the Rx Buffer */
    /* If the pointer is NULL the NFC reader library internal Rx buffer is used */ 
    uint8_t *pRxBuffer = NULL;
    /* Rx Buffer Length */
    uint16_t wRxLength = 0;
    
    /* Pointer to the Abstraction Layer (AL) MIFARE DESFire component */
    phalMfdf_Sw_DataParams_t *palMfdf = &salMFDF;
    /* Pointer to the PAL ISO 14443-4 component */
    phpalI14443p4_Sw_DataParams_t *ppalI14443p4 = &spalI14443p4;
  
    /* It holds the 8-bytes NFC challenge code from the MIFARE DESFire card */
    uint8_t nfcChallenge[8] = {0};
    /* It holds the 16-bytes SAM response code from the SAM card */
    uint8_t samResponse[16] = {0};
    /* It holds the 8-bytes NFC response code from the MIFARE DESFire card */
    uint8_t nfcResponse[8] = {0};
   
    /* Attempt MIFARE DESFire authentication with SAM card */
    
    /* Step #1: Select Touch a Tag (TaT) application */
    /* It holds the Touch a Tag (TaT) Application IDentifier */
    uint8_t TaTAID[3] = {0x30, 0x88, 0xF8};
    /* Select one particular application with the TaTAID on the MIFARE DESFire card for further access */
    status = phalMfdf_SelectApplication(palMfdf, TaTAID);
    /* Check for the status code */       
    if( (status & PH_ERR_MASK) != PH_ERR_SUCCESS )
    {
        /* Card Application Selection with TaTAID failed */
        breakpoint();
        return false;
    }

    /* Step #2: Get 8-bytes NFC challenge code from the MIFARE DESFire card */
    /* It holds the command to get the NFC challenge code */
    uint8_t nfcGetChallengeCmd[2] = {0x1A, 0x01};
    /* If the pointer is NULL the NFC reader library internal Rx buffer is used */    
    pRxBuffer = NULL;
    /* Perform ISO 14443-4 Data Exchange with MIFARE DESFire Card */ 
    status = phpalI14443p4_Exchange(ppalI14443p4, PH_EXCHANGE_DEFAULT, nfcGetChallengeCmd, 2, &pRxBuffer, &wRxLength);
    /* Check for the status code */
    if( (status & PH_ERR_MASK) != PH_ERR_SUCCESS )
    {
        /* Fail to get the 8-bytes NFC challenge code from the MIFARE DESFire card */
        breakpoint();
        return false;
    }
    else
    {
        /* Success in getting NFC challenge code from the MIFARE DESFire card */
        /* Copy the acquired NFC challenge code */
        /* pRxBuffer[0] == 0 so it can be skipped and we copy from pRxBuffer[1] */
        memcpy(nfcChallenge, &pRxBuffer[1], 8);
    }
    
    /* Step #3: Generate the session key */
    /* It holds the 8-bytes Serial Number */
    uint8_t SN[8] = {0};
    /* Convert the 7-bytes UID to the 8-bytes Serial Number */
    memcpy(SN, sDiscLoop.sTypeATargetInfo.aTypeA_I3P3[0].aUid, 7);
    SN[7] = SN[0];
    /* Verify the SAM card with the PIN */
    if( sam_verify(PIN) == FAILURE )
    {
        /* The SAM card verification failed */
        /* You may provide the incorrect PIN */
        breakpoint();
        return false;
    }
    /* Diversify the SAM Key based on a specified 8-bytes Serial Number */
    if( sam_diversify(SN) == FAILURE )
    {
        /* Diversifying the SAM Key failed */
        breakpoint();
        return false;
    }
    
    /* Step #4: Prepare the SAM card for authentication on 8-bytes NFC challenge code
     * After forwarding the NFC challenge code to the SAM card and 
     * succeeding in preparing the SAM card for authentication 
     * then get SAM response code for the NFC challenge code
     */ 
    if( sam_prepareAuthentication(nfcChallenge) == FAILURE )
    {
        /* Fail to prepare the SAM card for authentication on 8-bytes NFC challenge code */
        breakpoint();
        return false;
    }
    
    /* Step #5: Get the 16-bytes SAM response code from the SAM card 
     * after successful SAM authentication preparation in step 4
     */  
    if( sam_getResponseAuthentication(samResponse) == FAILURE )
    {
        /* Fail to get the 16-bytes SAM response code from the SAM card */
        breakpoint();
        return false;        
    }

    /* Step #6: Get the 8-bytes NFC response code from the MIFARE DESFire card */
    /* It holds the command to get the NFC response code 
     * nfcGetResponseCmd[0] = 0xAF is the Get-NFC-Response-Command
     * nfcGetResponseCmd[1...17] hold the 16-bytes SAM response code
     */   
    uint8_t nfcGetResponseCmd[17] = {0xAF};
    memcpy(&nfcGetResponseCmd[1], samResponse, 16);
    /* If the pointer is NULL the NFC reader library internal Rx buffer is used */
    pRxBuffer = NULL;
    /* Perform ISO 14443-4 Data Exchange with MIFARE DESFire Card
     * Forward the 16-bytes SAM response code to NFC reader (MIFARE DESFire Card)
     * Then get the 8-bytes NFC response code from the MIFARE DESFire Card
     */
    status = phpalI14443p4_Exchange(ppalI14443p4, PH_EXCHANGE_DEFAULT, nfcGetResponseCmd, 17, &pRxBuffer, &wRxLength);
    /* Check for the status code */
    if( (status & PH_ERR_MASK) != PH_ERR_SUCCESS )
    {
        /* Fail to get the 8-bytes NFC response code from the MIFARE DESFire card */
        breakpoint();
        return false;
    }
    else
    {
        /* Success in getting the NFC response code from the MIFARE DESFire card */
        /* Copy the acquired NFC response code */
        /* pRxBuffer[0] == 0 so it can be skipped and we copy from pRxBuffer[1] */       
        memcpy(nfcResponse, &pRxBuffer[1], 8);       
    }

    /* Step #7: Verify the 8-bytes NFC response code with SAM card */
    if( sam_verifyAuthentication(nfcResponse) == FAILURE )
    {
        /* Fail to verify the 8-bytes NFC response code with SAM card */
        breakpoint();
        return false;        
    }
    
    /* Successful authentication on MIFARE DESFire card with the SAM card */
    return true;
}
/* *****************************************************************************
 End of File
 */
