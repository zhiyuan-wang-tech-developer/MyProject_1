/*
*         Copyright (c), NXP Semiconductors Gratkorn / Austria
*
*                     (C)NXP Semiconductors
*       All rights are reserved. Reproduction in whole or in part is
*      prohibited without the written consent of the copyright owner.
*  NXP reserves the right to make changes without notice at any time.
* NXP makes no warranty, expressed, implied or statutory, including but
* not limited to any implied warranty of merchantability or fitness for any
*particular purpose, or that the use will not infringe any third party patent,
* copyright or trademark. NXP must not be liable for any loss or damage
*                          arising from its use.
*/

/** \file
* BAL Stub Component of Reader Library Framework.
* $Author: Zhiyuan Wang $
* $Revision: 1.0 $
* $Date: 2018-04-16 $
*
* History:
*  Zhiyuan Wang : Modified on 2018-04-16
*
*/

#include <ph_Status.h>

#ifdef NXPBUILD__PHBAL_REG_PIC32MX_SPI
#include "phPlatform.h"
#include "phbalReg_Pic32mxSpi.h"

/* PIC32MX platform header */
#include "../../mcc_generated_files/mcc.h"

phStatus_t phbalReg_Pic32mxSpi_Init(
                                    phbalReg_Pic32mxSpi_DataParams_t * pDataParams,
                                    uint16_t wSizeOfDataParams
                                    )
{

    volatile uint32_t delay;

    if (sizeof(phbalReg_Pic32mxSpi_DataParams_t) != wSizeOfDataParams)
    {
        return (PH_ERR_INVALID_DATA_PARAMS | PH_COMP_BAL);
    }

    PH_ASSERT_NULL (pDataParams);

    pDataParams->sBal_Struct.wId      = PH_COMP_BAL | PHBAL_REG_PIC32MX_SPI_ID;
    pDataParams->sBal_Struct.bBalType = PHBAL_REG_TYPE_SPI;

    phPlatform_Port_Host_SetPinConfig(PHPLATFORM_PORT_PIN_SPI);

    // Chip_SSP_Init(LPC_SSP);
    // Chip_SSP_SetBitRate(LPC_SSP, SSP_CLOCKRATE);

    // ssp_format.frameFormat = SSP_FRAMEFORMAT_SPI;
    // ssp_format.bits = SSP_BITS_8;
    // ssp_format.clockMode = SSP_CLOCK_MODE0;

    // Chip_SSP_SetFormat(LPC_SSP, ssp_format.bits, ssp_format.frameFormat, ssp_format.clockMode);
    // Chip_SSP_SetMaster(LPC_SSP, 1 Master);
    // Chip_SSP_Enable(LPC_SSP);

    // Wait Startup time
    for(delay=0; delay<10000; delay++){}

    return PH_ERR_SUCCESS;
}

phStatus_t phbalReg_Pic32mxSpi_GetPortList(
                                           phbalReg_Pic32mxSpi_DataParams_t * pDataParams
                                           )
{
    return PH_ERR_SUCCESS;
}

phStatus_t phbalReg_Pic32mxSpi_SetPort(
                                       phbalReg_Pic32mxSpi_DataParams_t * pDataParams
                                       )
{
    return PH_ERR_SUCCESS;
}

phStatus_t phbalReg_Pic32mxSpi_OpenPort(
                                        phbalReg_Pic32mxSpi_DataParams_t * pDataParams
                                        )
{
    return PH_ERR_SUCCESS;
}

phStatus_t phbalReg_Pic32mxSpi_ClosePort(
                                         phbalReg_Pic32mxSpi_DataParams_t * pDataParams
                                         )
{
    return PH_ERR_SUCCESS;
}

phStatus_t phbalReg_Pic32mxSpi_Exchange(
                                        phbalReg_Pic32mxSpi_DataParams_t * pDataParams,
                                        uint8_t * pTxBuffer,
                                        uint16_t wTxLength,
                                        uint16_t wRxBufSize,
                                        uint8_t * pRxBuffer,
                                        uint16_t * pRxLength
                                        )
{
    uint16_t              xferLen;  // actual length of data that has been transferred 
    // Chip_SSP_DATA_SETUP_T xferConfig;

    // xferConfig.length  = wTxLength;
    // xferConfig.rx_data = pRxBuffer;
    // xferConfig.tx_data = pTxBuffer;
    // xferConfig.rx_cnt  = 0;
    // xferConfig.tx_cnt  = 0;

    
    //Wait RF_BUSY -> 0 => PN5180 is ready for data
    while( RF_BUSY_GetValue() ) ;
    
    
    
    /* Enable chip select of reader IC by pulling NSS low. */
    RF_SS1_N_SetLow();
    
    
    
    //prevent issues with testbus if it's enabled
    //Wait RF_BUSY -> 1
 //   while( RF_BUSY_GetValue() == 0 ) ;
        
    
    
    // Chip_GPIO_SetPinState(LPC_GPIO, PORT_SSP, SSEL_PINNUM_SSP, PH_PLATFORM_SET_LOW);

    /* data exchange */
    if ( wRxBufSize == 0 )
    {
        // Chip_SSP_WriteFrames_Blocking(LPC_SSP, pTxBuffer, wTxLength);
        // xferLen = wTxLength; /* Fake as a full duplex */
        
        xferLen = SPI1_Exchange8bitBuffer(pTxBuffer, wTxLength, NULL);
        
    }
    else
    {
        if ( wTxLength == 0 )
        {
            // xferLen = Chip_SSP_ReadFrames_Blocking(LPC_SSP, pRxBuffer, wRxBufSize);
            
            xferLen = SPI1_Exchange8bitBuffer(NULL, wRxBufSize, pRxBuffer);
            
        }
        else
        {
            // xferLen = Chip_SSP_RWFrames_Blocking(LPC_SSP, &xferConfig);
            
            xferLen = SPI1_Exchange8bitBuffer(pTxBuffer, wTxLength, pRxBuffer);
            
        }
    }
   
    //Wait RF_BUSY -> 0 = ready for data
//    while( RF_BUSY_GetValue() ) ;
    
    /* Disable chip select of reader IC by pulling NSS high. */
    RF_SS1_N_SetHigh();
    
    // Chip_GPIO_SetPinState(LPC_GPIO, PORT_SSP, SSEL_PINNUM_SSP, PH_PLATFORM_SET_HIGH);

    if ( wTxLength !=0 && wRxBufSize != 0 )
    {
        if (xferLen != wTxLength)
        {
            return (PH_ERR_INTERFACE_ERROR | PH_COMP_BAL);
        }
    }
    if ( pRxLength != NULL)
    	*pRxLength = xferLen;

    return PH_ERR_SUCCESS;
}

phStatus_t phbalReg_Pic32mxSpi_SetConfig(
                                         phbalReg_Pic32mxSpi_DataParams_t * pDataParams,
                                         uint16_t wConfig,
                                         uint16_t wValue
                                         )
{
    return PH_ERR_SUCCESS;
}

phStatus_t phbalReg_Pic32mxSpi_GetConfig(
                                         phbalReg_Pic32mxSpi_DataParams_t * pDataParams,
                                         uint16_t wConfig,
                                         uint16_t * pValue
                                         )
{
    return PH_ERR_SUCCESS;
}

#endif /* NXPBUILD__PHBAL_REG_PIC32MX_SPI */
