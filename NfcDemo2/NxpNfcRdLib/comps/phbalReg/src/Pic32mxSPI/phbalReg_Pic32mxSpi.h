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

#ifndef PHBALREG_PIC32MXSPI_H
#define PHBALREG_PIC32MXSPI_H

#include <ph_Status.h>
#include <phbalReg.h>

phStatus_t phbalReg_Pic32mxSpi_GetPortList(
                                           phbalReg_Pic32mxSpi_DataParams_t * pDataParams
                                           );

phStatus_t phbalReg_Pic32mxSpi_SetPort(
                                       phbalReg_Pic32mxSpi_DataParams_t * pDataParams
                                       );

phStatus_t phbalReg_Pic32mxSpi_OpenPort(
                                        phbalReg_Pic32mxSpi_DataParams_t * pDataParams
                                        );

phStatus_t phbalReg_Pic32mxSpi_ClosePort(
                                         phbalReg_Pic32mxSpi_DataParams_t * pDataParams
                                         );

phStatus_t phbalReg_Pic32mxSpi_Exchange(
                                        phbalReg_Pic32mxSpi_DataParams_t * pDataParams,
                                        uint8_t * pTxBuffer,
                                        uint16_t wTxLength,
                                        uint16_t wRxBufSize,
                                        uint8_t * pRxBuffer,
                                        uint16_t * pRxLength
                                        );

phStatus_t phbalReg_Pic32mxSpi_SetConfig(
                                         phbalReg_Pic32mxSpi_DataParams_t * pDataParams,
                                         uint16_t wConfig,
                                         uint16_t wValue
                                         );

phStatus_t phbalReg_Pic32mxSpi_GetConfig(
                                         phbalReg_Pic32mxSpi_DataParams_t * pDataParams,
                                         uint16_t wConfig,
                                         uint16_t * pValue
                                         );

#endif /* PHBALREG_PIC32MXSPI_H */
