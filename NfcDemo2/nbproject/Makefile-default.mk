#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/NfcDemo2.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/NfcDemo2.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=mcc_generated_files/tmr2.c mcc_generated_files/uart1.c mcc_generated_files/interrupt_manager.c mcc_generated_files/tmr1.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/spi1.c mcc_generated_files/adc1.c mcc_generated_files/spi2.c nxp_reader_config_files/phApp_Init.c NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw.c NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int.c NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_A.c NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_B.c NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_F.c NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_I18000p3m3.c NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_V.c NxpNfcRdLib/comps/phacDiscLoop/src/phacDiscLoop.c NxpNfcRdLib/comps/phalFelica/src/Sw/phalFelica_Sw.c NxpNfcRdLib/comps/phalFelica/src/phalFelica.c NxpNfcRdLib/comps/phalI15693/src/Sw/phalI15693_Sw.c NxpNfcRdLib/comps/phalI15693/src/phalI15693.c NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw.c NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw_Int.c NxpNfcRdLib/comps/phalI18000p3m3/src/phalI18000p3m3.c NxpNfcRdLib/comps/phalMfc/src/Sw/phalMfc_Sw.c NxpNfcRdLib/comps/phalMfc/src/phalMfc.c NxpNfcRdLib/comps/phalMfc/src/phalMfc_Int.c NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw.c NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw_Int.c NxpNfcRdLib/comps/phalMfdf/src/phalMfdf.c NxpNfcRdLib/comps/phalMfdf/src/phalMfdf_Int.c NxpNfcRdLib/comps/phalMful/src/Sw/phalMful_Sw.c NxpNfcRdLib/comps/phalMful/src/phalMful.c NxpNfcRdLib/comps/phalMful/src/phalMful_Int.c NxpNfcRdLib/comps/phalSli/src/Sw/phalSli_Sw.c NxpNfcRdLib/comps/phalSli/src/phalSli.c NxpNfcRdLib/comps/phalT1T/src/Sw/phalT1T_Sw.c NxpNfcRdLib/comps/phalT1T/src/phalT1T.c NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw.c NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T1T.c NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T2T.c NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T3T.c NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T4T.c NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T5T.c NxpNfcRdLib/comps/phalTop/src/phalTop.c NxpNfcRdLib/comps/phbalReg/src/KinetisI2C/phbalReg_KinetisI2C.c NxpNfcRdLib/comps/phbalReg/src/KinetisSPI/phbalReg_KinetisSpi.c NxpNfcRdLib/comps/phbalReg/src/LinuxKernelSpi/phbalReg_LinuxKernelSpi.c NxpNfcRdLib/comps/phbalReg/src/LinuxUserI2C/phbalReg_LinuxUserI2C.c NxpNfcRdLib/comps/phbalReg/src/LinuxUserSpi/phbalReg_LinuxUserSpi.c NxpNfcRdLib/comps/phbalReg/src/LpcOpenI2C/phbalReg_LpcOpenI2c.c NxpNfcRdLib/comps/phbalReg/src/LpcOpenSPI/phbalReg_LpcOpenSpi.c NxpNfcRdLib/comps/phbalReg/src/Pic32mxSPI/phbalReg_Pic32mxSpi.c NxpNfcRdLib/comps/phbalReg/src/phbalReg.c NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw.c NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw_Int.c NxpNfcRdLib/comps/phceT4T/src/phceT4T.c NxpNfcRdLib/comps/phCidManager/src/Sw/phCidManager_Sw.c NxpNfcRdLib/comps/phCidManager/src/phCidManager.c NxpNfcRdLib/comps/phCryptoRng/src/Sw/phCryptoRng_Sw.c NxpNfcRdLib/comps/phCryptoRng/src/phCryptoRng.c NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw.c NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Aes.c NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Des.c NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Int.c NxpNfcRdLib/comps/phCryptoSym/src/phCryptoSym.c NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180.c NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Instr.c NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Int.c NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Wait.c NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU.c NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU_Int.c NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523.c NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Cmd.c NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Int.c NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Wait.c NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663.c NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Cmd.c NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Int.c NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Wait.c NxpNfcRdLib/comps/phhalHw/src/phhalHw.c NxpNfcRdLib/comps/phKeyStore/src/Rc663/phKeyStore_Rc663.c NxpNfcRdLib/comps/phKeyStore/src/Sw/phKeyStore_Sw.c NxpNfcRdLib/comps/phKeyStore/src/phKeyStore.c NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw.c NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Int.c NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Mac.c NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport.c NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connection.c NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connectionless.c NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Timers.c NxpNfcRdLib/comps/phlnLlcp/src/phlnLlcp.c NxpNfcRdLib/comps/phLog/src/phLog.c NxpNfcRdLib/comps/phNfcLib/src/phNfcLib.c NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_15693.c NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_18000p3m3.c NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFC.c NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFDF.c NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFUL.c NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Utility.c NxpNfcRdLib/comps/phnpSnep/src/Sw/phnpSnep_Sw.c NxpNfcRdLib/comps/phnpSnep/src/phnpSnep.c NxpNfcRdLib/comps/phOsal/src/Freertos/phOsal_Freertos.c NxpNfcRdLib/comps/phOsal/src/Linux/phOsal_Linux.c NxpNfcRdLib/comps/phOsal/src/NullOs/phOsal_NullOs.c NxpNfcRdLib/comps/phpalEpcUid/src/Sw/phpalEpcUid_Sw.c NxpNfcRdLib/comps/phpalEpcUid/src/phpalEpcUid.c NxpNfcRdLib/comps/phpalFelica/src/Sw/phpalFelica_Sw.c NxpNfcRdLib/comps/phpalFelica/src/phpalFelica.c NxpNfcRdLib/comps/phpalI14443p3a/src/Sw/phpalI14443p3a_Sw.c NxpNfcRdLib/comps/phpalI14443p3a/src/phpalI14443p3a.c NxpNfcRdLib/comps/phpalI14443p3b/src/Sw/phpalI14443p3b_Sw.c NxpNfcRdLib/comps/phpalI14443p3b/src/phpalI14443p3b.c NxpNfcRdLib/comps/phpalI14443p4/src/Sw/phpalI14443p4_Sw.c NxpNfcRdLib/comps/phpalI14443p4/src/phpalI14443p4.c NxpNfcRdLib/comps/phpalI14443p4a/src/Sw/phpalI14443p4a_Sw.c NxpNfcRdLib/comps/phpalI14443p4a/src/phpalI14443p4a.c NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw.c NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw_Int.c NxpNfcRdLib/comps/phpalI14443p4mC/src/phpalI14443p4mC.c NxpNfcRdLib/comps/phpalI18000p3m3/src/Sw/phpalI18000p3m3_Sw.c NxpNfcRdLib/comps/phpalI18000p3m3/src/phpalI18000p3m3.c NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw.c NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw_Int.c NxpNfcRdLib/comps/phpalI18092mPI/src/phpalI18092mPI.c NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw.c NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw_Int.c NxpNfcRdLib/comps/phpalI18092mT/src/phpalI18092mT.c NxpNfcRdLib/comps/phpalMifare/src/Sw/phpalMifare_Sw.c NxpNfcRdLib/comps/phpalMifare/src/phpalMifare.c NxpNfcRdLib/comps/phpalSli15693/src/Sw/phpalSli15693_Sw.c NxpNfcRdLib/comps/phpalSli15693/src/phpalSli15693.c NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_K81.c NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_KinetisTimer.c NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82.c NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82Timer.c NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/cr_startup_lpc11u6x.c NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/phPlatform_Port_LPC11u68.c NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/cr_startup_lpc175x_6x.c NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/keil_iar_sysinit.c NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/phPlatform_Port_LPC1769.c NxpNfcRdLib/comps/phPlatform/src/Port/LPCTimer/phPlatform_Port_LPCTimer.c NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MX.c NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MXTimer.c NxpNfcRdLib/comps/phPlatform/src/Port/PN7462AU/phPlatform_Port_PN7462AU.c NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_Pi.c NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_PiGpio.c NxpNfcRdLib/comps/phPlatform/src/phPlatform.c NxpNfcRdLib/comps/phTools/src/phTools.c NxpNfcRdLib/comps/phTools/src/phTools_Q.c sam_reader_files/sam_interface.c sam_reader_files/tda8029.c main.c pn5180_files/pn5180.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/mcc_generated_files/tmr2.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/spi1.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/spi2.o ${OBJECTDIR}/nxp_reader_config_files/phApp_Init.o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_A.o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_B.o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_F.o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_I18000p3m3.o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_V.o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/phacDiscLoop.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/Sw/phalFelica_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/phalFelica.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/Sw/phalI15693_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/phalI15693.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/phalI18000p3m3.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/Sw/phalMfc_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/Sw/phalMful_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/Sw/phalSli_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/phalSli.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/Sw/phalT1T_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/phalT1T.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T1T.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T2T.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T3T.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T4T.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T5T.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/phalTop.o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisI2C/phbalReg_KinetisI2C.o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisSPI/phbalReg_KinetisSpi.o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxKernelSpi/phbalReg_LinuxKernelSpi.o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserI2C/phbalReg_LinuxUserI2C.o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserSpi/phbalReg_LinuxUserSpi.o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenI2C/phbalReg_LpcOpenI2c.o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenSPI/phbalReg_LpcOpenSpi.o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/Pic32mxSPI/phbalReg_Pic32mxSpi.o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/phbalReg.o ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/phceT4T.o ${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/Sw/phCidManager_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/phCidManager.o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/Sw/phCryptoRng_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/phCryptoRng.o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Aes.o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Des.o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/phCryptoSym.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Instr.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Wait.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Cmd.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Wait.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Cmd.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Wait.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/phhalHw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Rc663/phKeyStore_Rc663.o ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Sw/phKeyStore_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/phKeyStore.o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Mac.o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport.o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connection.o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connectionless.o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Timers.o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/phlnLlcp.o ${OBJECTDIR}/NxpNfcRdLib/comps/phLog/src/phLog.o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib.o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_15693.o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_18000p3m3.o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFC.o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFDF.o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFUL.o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Utility.o ${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/Sw/phnpSnep_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/phnpSnep.o ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Freertos/phOsal_Freertos.o ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Linux/phOsal_Linux.o ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/NullOs/phOsal_NullOs.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/Sw/phpalEpcUid_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/phpalEpcUid.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/Sw/phpalFelica_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/phpalFelica.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/Sw/phpalI14443p3a_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/phpalI14443p3a.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/Sw/phpalI14443p3b_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/phpalI14443p3b.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/Sw/phpalI14443p4_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/phpalI14443p4.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/Sw/phpalI14443p4a_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/phpalI14443p4a.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/phpalI14443p4mC.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/Sw/phpalI18000p3m3_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/phpalI18000p3m3.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/phpalI18092mPI.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/phpalI18092mT.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/Sw/phpalMifare_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/phpalMifare.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/Sw/phpalSli15693_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/phpalSli15693.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_K81.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_KinetisTimer.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82Timer.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/cr_startup_lpc11u6x.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/phPlatform_Port_LPC11u68.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/cr_startup_lpc175x_6x.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/keil_iar_sysinit.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/phPlatform_Port_LPC1769.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPCTimer/phPlatform_Port_LPCTimer.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MX.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MXTimer.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PN7462AU/phPlatform_Port_PN7462AU.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_Pi.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_PiGpio.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/phPlatform.o ${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools.o ${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools_Q.o ${OBJECTDIR}/sam_reader_files/sam_interface.o ${OBJECTDIR}/sam_reader_files/tda8029.o ${OBJECTDIR}/main.o ${OBJECTDIR}/pn5180_files/pn5180.o
POSSIBLE_DEPFILES=${OBJECTDIR}/mcc_generated_files/tmr2.o.d ${OBJECTDIR}/mcc_generated_files/uart1.o.d ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d ${OBJECTDIR}/mcc_generated_files/tmr1.o.d ${OBJECTDIR}/mcc_generated_files/mcc.o.d ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d ${OBJECTDIR}/mcc_generated_files/spi1.o.d ${OBJECTDIR}/mcc_generated_files/adc1.o.d ${OBJECTDIR}/mcc_generated_files/spi2.o.d ${OBJECTDIR}/nxp_reader_config_files/phApp_Init.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_A.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_B.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_F.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_I18000p3m3.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_V.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/phacDiscLoop.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/Sw/phalFelica_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/phalFelica.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/Sw/phalI15693_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/phalI15693.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw_Int.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/phalI18000p3m3.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/Sw/phalMfc_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc_Int.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw_Int.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf_Int.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/Sw/phalMful_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful_Int.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/Sw/phalSli_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/phalSli.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/Sw/phalT1T_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/phalT1T.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T1T.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T2T.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T3T.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T4T.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T5T.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/phalTop.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisI2C/phbalReg_KinetisI2C.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisSPI/phbalReg_KinetisSpi.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxKernelSpi/phbalReg_LinuxKernelSpi.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserI2C/phbalReg_LinuxUserI2C.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserSpi/phbalReg_LinuxUserSpi.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenI2C/phbalReg_LpcOpenI2c.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenSPI/phbalReg_LpcOpenSpi.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/Pic32mxSPI/phbalReg_Pic32mxSpi.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/phbalReg.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw_Int.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/phceT4T.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/Sw/phCidManager_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/phCidManager.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/Sw/phCryptoRng_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/phCryptoRng.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Aes.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Des.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Int.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/phCryptoSym.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Instr.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Int.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Wait.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU_Int.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Cmd.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Int.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Wait.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Cmd.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Int.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Wait.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/phhalHw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Rc663/phKeyStore_Rc663.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Sw/phKeyStore_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/phKeyStore.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Int.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Mac.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connection.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connectionless.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Timers.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/phlnLlcp.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phLog/src/phLog.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_15693.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_18000p3m3.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFC.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFDF.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFUL.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Utility.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/Sw/phnpSnep_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/phnpSnep.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Freertos/phOsal_Freertos.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Linux/phOsal_Linux.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/NullOs/phOsal_NullOs.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/Sw/phpalEpcUid_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/phpalEpcUid.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/Sw/phpalFelica_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/phpalFelica.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/Sw/phpalI14443p3a_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/phpalI14443p3a.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/Sw/phpalI14443p3b_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/phpalI14443p3b.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/Sw/phpalI14443p4_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/phpalI14443p4.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/Sw/phpalI14443p4a_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/phpalI14443p4a.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw_Int.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/phpalI14443p4mC.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/Sw/phpalI18000p3m3_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/phpalI18000p3m3.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw_Int.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/phpalI18092mPI.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw_Int.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/phpalI18092mT.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/Sw/phpalMifare_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/phpalMifare.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/Sw/phpalSli15693_Sw.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/phpalSli15693.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_K81.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_KinetisTimer.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82Timer.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/cr_startup_lpc11u6x.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/phPlatform_Port_LPC11u68.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/cr_startup_lpc175x_6x.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/keil_iar_sysinit.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/phPlatform_Port_LPC1769.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPCTimer/phPlatform_Port_LPCTimer.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MX.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MXTimer.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PN7462AU/phPlatform_Port_PN7462AU.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_Pi.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_PiGpio.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/phPlatform.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools.o.d ${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools_Q.o.d ${OBJECTDIR}/sam_reader_files/sam_interface.o.d ${OBJECTDIR}/sam_reader_files/tda8029.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/pn5180_files/pn5180.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/mcc_generated_files/tmr2.o ${OBJECTDIR}/mcc_generated_files/uart1.o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o ${OBJECTDIR}/mcc_generated_files/tmr1.o ${OBJECTDIR}/mcc_generated_files/mcc.o ${OBJECTDIR}/mcc_generated_files/pin_manager.o ${OBJECTDIR}/mcc_generated_files/spi1.o ${OBJECTDIR}/mcc_generated_files/adc1.o ${OBJECTDIR}/mcc_generated_files/spi2.o ${OBJECTDIR}/nxp_reader_config_files/phApp_Init.o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_A.o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_B.o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_F.o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_I18000p3m3.o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_V.o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/phacDiscLoop.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/Sw/phalFelica_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/phalFelica.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/Sw/phalI15693_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/phalI15693.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/phalI18000p3m3.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/Sw/phalMfc_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/Sw/phalMful_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/Sw/phalSli_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/phalSli.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/Sw/phalT1T_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/phalT1T.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T1T.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T2T.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T3T.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T4T.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T5T.o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/phalTop.o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisI2C/phbalReg_KinetisI2C.o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisSPI/phbalReg_KinetisSpi.o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxKernelSpi/phbalReg_LinuxKernelSpi.o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserI2C/phbalReg_LinuxUserI2C.o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserSpi/phbalReg_LinuxUserSpi.o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenI2C/phbalReg_LpcOpenI2c.o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenSPI/phbalReg_LpcOpenSpi.o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/Pic32mxSPI/phbalReg_Pic32mxSpi.o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/phbalReg.o ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/phceT4T.o ${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/Sw/phCidManager_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/phCidManager.o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/Sw/phCryptoRng_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/phCryptoRng.o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Aes.o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Des.o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/phCryptoSym.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Instr.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Wait.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Cmd.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Wait.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Cmd.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Wait.o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/phhalHw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Rc663/phKeyStore_Rc663.o ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Sw/phKeyStore_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/phKeyStore.o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Mac.o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport.o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connection.o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connectionless.o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Timers.o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/phlnLlcp.o ${OBJECTDIR}/NxpNfcRdLib/comps/phLog/src/phLog.o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib.o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_15693.o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_18000p3m3.o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFC.o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFDF.o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFUL.o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Utility.o ${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/Sw/phnpSnep_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/phnpSnep.o ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Freertos/phOsal_Freertos.o ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Linux/phOsal_Linux.o ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/NullOs/phOsal_NullOs.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/Sw/phpalEpcUid_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/phpalEpcUid.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/Sw/phpalFelica_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/phpalFelica.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/Sw/phpalI14443p3a_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/phpalI14443p3a.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/Sw/phpalI14443p3b_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/phpalI14443p3b.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/Sw/phpalI14443p4_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/phpalI14443p4.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/Sw/phpalI14443p4a_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/phpalI14443p4a.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/phpalI14443p4mC.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/Sw/phpalI18000p3m3_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/phpalI18000p3m3.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/phpalI18092mPI.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw_Int.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/phpalI18092mT.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/Sw/phpalMifare_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/phpalMifare.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/Sw/phpalSli15693_Sw.o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/phpalSli15693.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_K81.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_KinetisTimer.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82Timer.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/cr_startup_lpc11u6x.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/phPlatform_Port_LPC11u68.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/cr_startup_lpc175x_6x.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/keil_iar_sysinit.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/phPlatform_Port_LPC1769.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPCTimer/phPlatform_Port_LPCTimer.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MX.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MXTimer.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PN7462AU/phPlatform_Port_PN7462AU.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_Pi.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_PiGpio.o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/phPlatform.o ${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools.o ${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools_Q.o ${OBJECTDIR}/sam_reader_files/sam_interface.o ${OBJECTDIR}/sam_reader_files/tda8029.o ${OBJECTDIR}/main.o ${OBJECTDIR}/pn5180_files/pn5180.o

# Source Files
SOURCEFILES=mcc_generated_files/tmr2.c mcc_generated_files/uart1.c mcc_generated_files/interrupt_manager.c mcc_generated_files/tmr1.c mcc_generated_files/mcc.c mcc_generated_files/pin_manager.c mcc_generated_files/spi1.c mcc_generated_files/adc1.c mcc_generated_files/spi2.c nxp_reader_config_files/phApp_Init.c NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw.c NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int.c NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_A.c NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_B.c NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_F.c NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_I18000p3m3.c NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_V.c NxpNfcRdLib/comps/phacDiscLoop/src/phacDiscLoop.c NxpNfcRdLib/comps/phalFelica/src/Sw/phalFelica_Sw.c NxpNfcRdLib/comps/phalFelica/src/phalFelica.c NxpNfcRdLib/comps/phalI15693/src/Sw/phalI15693_Sw.c NxpNfcRdLib/comps/phalI15693/src/phalI15693.c NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw.c NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw_Int.c NxpNfcRdLib/comps/phalI18000p3m3/src/phalI18000p3m3.c NxpNfcRdLib/comps/phalMfc/src/Sw/phalMfc_Sw.c NxpNfcRdLib/comps/phalMfc/src/phalMfc.c NxpNfcRdLib/comps/phalMfc/src/phalMfc_Int.c NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw.c NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw_Int.c NxpNfcRdLib/comps/phalMfdf/src/phalMfdf.c NxpNfcRdLib/comps/phalMfdf/src/phalMfdf_Int.c NxpNfcRdLib/comps/phalMful/src/Sw/phalMful_Sw.c NxpNfcRdLib/comps/phalMful/src/phalMful.c NxpNfcRdLib/comps/phalMful/src/phalMful_Int.c NxpNfcRdLib/comps/phalSli/src/Sw/phalSli_Sw.c NxpNfcRdLib/comps/phalSli/src/phalSli.c NxpNfcRdLib/comps/phalT1T/src/Sw/phalT1T_Sw.c NxpNfcRdLib/comps/phalT1T/src/phalT1T.c NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw.c NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T1T.c NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T2T.c NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T3T.c NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T4T.c NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T5T.c NxpNfcRdLib/comps/phalTop/src/phalTop.c NxpNfcRdLib/comps/phbalReg/src/KinetisI2C/phbalReg_KinetisI2C.c NxpNfcRdLib/comps/phbalReg/src/KinetisSPI/phbalReg_KinetisSpi.c NxpNfcRdLib/comps/phbalReg/src/LinuxKernelSpi/phbalReg_LinuxKernelSpi.c NxpNfcRdLib/comps/phbalReg/src/LinuxUserI2C/phbalReg_LinuxUserI2C.c NxpNfcRdLib/comps/phbalReg/src/LinuxUserSpi/phbalReg_LinuxUserSpi.c NxpNfcRdLib/comps/phbalReg/src/LpcOpenI2C/phbalReg_LpcOpenI2c.c NxpNfcRdLib/comps/phbalReg/src/LpcOpenSPI/phbalReg_LpcOpenSpi.c NxpNfcRdLib/comps/phbalReg/src/Pic32mxSPI/phbalReg_Pic32mxSpi.c NxpNfcRdLib/comps/phbalReg/src/phbalReg.c NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw.c NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw_Int.c NxpNfcRdLib/comps/phceT4T/src/phceT4T.c NxpNfcRdLib/comps/phCidManager/src/Sw/phCidManager_Sw.c NxpNfcRdLib/comps/phCidManager/src/phCidManager.c NxpNfcRdLib/comps/phCryptoRng/src/Sw/phCryptoRng_Sw.c NxpNfcRdLib/comps/phCryptoRng/src/phCryptoRng.c NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw.c NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Aes.c NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Des.c NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Int.c NxpNfcRdLib/comps/phCryptoSym/src/phCryptoSym.c NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180.c NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Instr.c NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Int.c NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Wait.c NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU.c NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU_Int.c NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523.c NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Cmd.c NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Int.c NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Wait.c NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663.c NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Cmd.c NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Int.c NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Wait.c NxpNfcRdLib/comps/phhalHw/src/phhalHw.c NxpNfcRdLib/comps/phKeyStore/src/Rc663/phKeyStore_Rc663.c NxpNfcRdLib/comps/phKeyStore/src/Sw/phKeyStore_Sw.c NxpNfcRdLib/comps/phKeyStore/src/phKeyStore.c NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw.c NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Int.c NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Mac.c NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport.c NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connection.c NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connectionless.c NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Timers.c NxpNfcRdLib/comps/phlnLlcp/src/phlnLlcp.c NxpNfcRdLib/comps/phLog/src/phLog.c NxpNfcRdLib/comps/phNfcLib/src/phNfcLib.c NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_15693.c NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_18000p3m3.c NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFC.c NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFDF.c NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFUL.c NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Utility.c NxpNfcRdLib/comps/phnpSnep/src/Sw/phnpSnep_Sw.c NxpNfcRdLib/comps/phnpSnep/src/phnpSnep.c NxpNfcRdLib/comps/phOsal/src/Freertos/phOsal_Freertos.c NxpNfcRdLib/comps/phOsal/src/Linux/phOsal_Linux.c NxpNfcRdLib/comps/phOsal/src/NullOs/phOsal_NullOs.c NxpNfcRdLib/comps/phpalEpcUid/src/Sw/phpalEpcUid_Sw.c NxpNfcRdLib/comps/phpalEpcUid/src/phpalEpcUid.c NxpNfcRdLib/comps/phpalFelica/src/Sw/phpalFelica_Sw.c NxpNfcRdLib/comps/phpalFelica/src/phpalFelica.c NxpNfcRdLib/comps/phpalI14443p3a/src/Sw/phpalI14443p3a_Sw.c NxpNfcRdLib/comps/phpalI14443p3a/src/phpalI14443p3a.c NxpNfcRdLib/comps/phpalI14443p3b/src/Sw/phpalI14443p3b_Sw.c NxpNfcRdLib/comps/phpalI14443p3b/src/phpalI14443p3b.c NxpNfcRdLib/comps/phpalI14443p4/src/Sw/phpalI14443p4_Sw.c NxpNfcRdLib/comps/phpalI14443p4/src/phpalI14443p4.c NxpNfcRdLib/comps/phpalI14443p4a/src/Sw/phpalI14443p4a_Sw.c NxpNfcRdLib/comps/phpalI14443p4a/src/phpalI14443p4a.c NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw.c NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw_Int.c NxpNfcRdLib/comps/phpalI14443p4mC/src/phpalI14443p4mC.c NxpNfcRdLib/comps/phpalI18000p3m3/src/Sw/phpalI18000p3m3_Sw.c NxpNfcRdLib/comps/phpalI18000p3m3/src/phpalI18000p3m3.c NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw.c NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw_Int.c NxpNfcRdLib/comps/phpalI18092mPI/src/phpalI18092mPI.c NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw.c NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw_Int.c NxpNfcRdLib/comps/phpalI18092mT/src/phpalI18092mT.c NxpNfcRdLib/comps/phpalMifare/src/Sw/phpalMifare_Sw.c NxpNfcRdLib/comps/phpalMifare/src/phpalMifare.c NxpNfcRdLib/comps/phpalSli15693/src/Sw/phpalSli15693_Sw.c NxpNfcRdLib/comps/phpalSli15693/src/phpalSli15693.c NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_K81.c NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_KinetisTimer.c NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82.c NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82Timer.c NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/cr_startup_lpc11u6x.c NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/phPlatform_Port_LPC11u68.c NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/cr_startup_lpc175x_6x.c NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/keil_iar_sysinit.c NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/phPlatform_Port_LPC1769.c NxpNfcRdLib/comps/phPlatform/src/Port/LPCTimer/phPlatform_Port_LPCTimer.c NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MX.c NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MXTimer.c NxpNfcRdLib/comps/phPlatform/src/Port/PN7462AU/phPlatform_Port_PN7462AU.c NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_Pi.c NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_PiGpio.c NxpNfcRdLib/comps/phPlatform/src/phPlatform.c NxpNfcRdLib/comps/phTools/src/phTools.c NxpNfcRdLib/comps/phTools/src/phTools_Q.c sam_reader_files/sam_interface.c sam_reader_files/tda8029.c main.c pn5180_files/pn5180.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/NfcDemo2.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX150F128D
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/tmr2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d" -o ${OBJECTDIR}/mcc_generated_files/tmr2.o mcc_generated_files/tmr2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/uart1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart1.o mcc_generated_files/uart1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/tmr1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d" -o ${OBJECTDIR}/mcc_generated_files/tmr1.o mcc_generated_files/tmr1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/mcc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/spi1.o: mcc_generated_files/spi1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/spi1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi1.o mcc_generated_files/spi1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/adc1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/adc1.o mcc_generated_files/adc1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/spi2.o: mcc_generated_files/spi2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/spi2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi2.o mcc_generated_files/spi2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/nxp_reader_config_files/phApp_Init.o: nxp_reader_config_files/phApp_Init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/nxp_reader_config_files" 
	@${RM} ${OBJECTDIR}/nxp_reader_config_files/phApp_Init.o.d 
	@${RM} ${OBJECTDIR}/nxp_reader_config_files/phApp_Init.o 
	@${FIXDEPS} "${OBJECTDIR}/nxp_reader_config_files/phApp_Init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/nxp_reader_config_files/phApp_Init.o.d" -o ${OBJECTDIR}/nxp_reader_config_files/phApp_Init.o nxp_reader_config_files/phApp_Init.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw.o: NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw.o NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int.o: NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int.o NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_A.o: NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_A.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_A.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_A.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_A.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_A.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_A.o NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_A.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_B.o: NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_B.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_B.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_B.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_B.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_B.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_B.o NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_B.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_F.o: NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_F.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_F.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_F.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_F.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_F.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_F.o NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_F.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_I18000p3m3.o: NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_I18000p3m3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_I18000p3m3.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_I18000p3m3.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_I18000p3m3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_I18000p3m3.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_I18000p3m3.o NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_I18000p3m3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_V.o: NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_V.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_V.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_V.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_V.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_V.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_V.o NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_V.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/phacDiscLoop.o: NxpNfcRdLib/comps/phacDiscLoop/src/phacDiscLoop.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/phacDiscLoop.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/phacDiscLoop.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/phacDiscLoop.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/phacDiscLoop.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/phacDiscLoop.o NxpNfcRdLib/comps/phacDiscLoop/src/phacDiscLoop.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/Sw/phalFelica_Sw.o: NxpNfcRdLib/comps/phalFelica/src/Sw/phalFelica_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/Sw/phalFelica_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/Sw/phalFelica_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/Sw/phalFelica_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/Sw/phalFelica_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/Sw/phalFelica_Sw.o NxpNfcRdLib/comps/phalFelica/src/Sw/phalFelica_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/phalFelica.o: NxpNfcRdLib/comps/phalFelica/src/phalFelica.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/phalFelica.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/phalFelica.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/phalFelica.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/phalFelica.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/phalFelica.o NxpNfcRdLib/comps/phalFelica/src/phalFelica.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/Sw/phalI15693_Sw.o: NxpNfcRdLib/comps/phalI15693/src/Sw/phalI15693_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/Sw/phalI15693_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/Sw/phalI15693_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/Sw/phalI15693_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/Sw/phalI15693_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/Sw/phalI15693_Sw.o NxpNfcRdLib/comps/phalI15693/src/Sw/phalI15693_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/phalI15693.o: NxpNfcRdLib/comps/phalI15693/src/phalI15693.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/phalI15693.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/phalI15693.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/phalI15693.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/phalI15693.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/phalI15693.o NxpNfcRdLib/comps/phalI15693/src/phalI15693.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw.o: NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw.o NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw_Int.o: NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw_Int.o NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/phalI18000p3m3.o: NxpNfcRdLib/comps/phalI18000p3m3/src/phalI18000p3m3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/phalI18000p3m3.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/phalI18000p3m3.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/phalI18000p3m3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/phalI18000p3m3.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/phalI18000p3m3.o NxpNfcRdLib/comps/phalI18000p3m3/src/phalI18000p3m3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/Sw/phalMfc_Sw.o: NxpNfcRdLib/comps/phalMfc/src/Sw/phalMfc_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/Sw/phalMfc_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/Sw/phalMfc_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/Sw/phalMfc_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/Sw/phalMfc_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/Sw/phalMfc_Sw.o NxpNfcRdLib/comps/phalMfc/src/Sw/phalMfc_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc.o: NxpNfcRdLib/comps/phalMfc/src/phalMfc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc.o NxpNfcRdLib/comps/phalMfc/src/phalMfc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc_Int.o: NxpNfcRdLib/comps/phalMfc/src/phalMfc_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc_Int.o NxpNfcRdLib/comps/phalMfc/src/phalMfc_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw.o: NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw.o NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw_Int.o: NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw_Int.o NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf.o: NxpNfcRdLib/comps/phalMfdf/src/phalMfdf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf.o NxpNfcRdLib/comps/phalMfdf/src/phalMfdf.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf_Int.o: NxpNfcRdLib/comps/phalMfdf/src/phalMfdf_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf_Int.o NxpNfcRdLib/comps/phalMfdf/src/phalMfdf_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/Sw/phalMful_Sw.o: NxpNfcRdLib/comps/phalMful/src/Sw/phalMful_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/Sw/phalMful_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/Sw/phalMful_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/Sw/phalMful_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/Sw/phalMful_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/Sw/phalMful_Sw.o NxpNfcRdLib/comps/phalMful/src/Sw/phalMful_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful.o: NxpNfcRdLib/comps/phalMful/src/phalMful.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful.o NxpNfcRdLib/comps/phalMful/src/phalMful.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful_Int.o: NxpNfcRdLib/comps/phalMful/src/phalMful_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful_Int.o NxpNfcRdLib/comps/phalMful/src/phalMful_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/Sw/phalSli_Sw.o: NxpNfcRdLib/comps/phalSli/src/Sw/phalSli_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/Sw/phalSli_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/Sw/phalSli_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/Sw/phalSli_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/Sw/phalSli_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/Sw/phalSli_Sw.o NxpNfcRdLib/comps/phalSli/src/Sw/phalSli_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/phalSli.o: NxpNfcRdLib/comps/phalSli/src/phalSli.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/phalSli.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/phalSli.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/phalSli.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/phalSli.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/phalSli.o NxpNfcRdLib/comps/phalSli/src/phalSli.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/Sw/phalT1T_Sw.o: NxpNfcRdLib/comps/phalT1T/src/Sw/phalT1T_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/Sw/phalT1T_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/Sw/phalT1T_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/Sw/phalT1T_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/Sw/phalT1T_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/Sw/phalT1T_Sw.o NxpNfcRdLib/comps/phalT1T/src/Sw/phalT1T_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/phalT1T.o: NxpNfcRdLib/comps/phalT1T/src/phalT1T.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/phalT1T.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/phalT1T.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/phalT1T.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/phalT1T.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/phalT1T.o NxpNfcRdLib/comps/phalT1T/src/phalT1T.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw.o: NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw.o NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T1T.o: NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T1T.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T1T.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T1T.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T1T.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T1T.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T1T.o NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T1T.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T2T.o: NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T2T.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T2T.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T2T.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T2T.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T2T.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T2T.o NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T2T.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T3T.o: NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T3T.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T3T.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T3T.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T3T.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T3T.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T3T.o NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T3T.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T4T.o: NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T4T.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T4T.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T4T.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T4T.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T4T.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T4T.o NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T4T.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T5T.o: NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T5T.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T5T.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T5T.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T5T.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T5T.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T5T.o NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T5T.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/phalTop.o: NxpNfcRdLib/comps/phalTop/src/phalTop.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/phalTop.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/phalTop.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/phalTop.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/phalTop.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/phalTop.o NxpNfcRdLib/comps/phalTop/src/phalTop.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisI2C/phbalReg_KinetisI2C.o: NxpNfcRdLib/comps/phbalReg/src/KinetisI2C/phbalReg_KinetisI2C.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisI2C" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisI2C/phbalReg_KinetisI2C.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisI2C/phbalReg_KinetisI2C.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisI2C/phbalReg_KinetisI2C.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisI2C/phbalReg_KinetisI2C.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisI2C/phbalReg_KinetisI2C.o NxpNfcRdLib/comps/phbalReg/src/KinetisI2C/phbalReg_KinetisI2C.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisSPI/phbalReg_KinetisSpi.o: NxpNfcRdLib/comps/phbalReg/src/KinetisSPI/phbalReg_KinetisSpi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisSPI" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisSPI/phbalReg_KinetisSpi.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisSPI/phbalReg_KinetisSpi.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisSPI/phbalReg_KinetisSpi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisSPI/phbalReg_KinetisSpi.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisSPI/phbalReg_KinetisSpi.o NxpNfcRdLib/comps/phbalReg/src/KinetisSPI/phbalReg_KinetisSpi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxKernelSpi/phbalReg_LinuxKernelSpi.o: NxpNfcRdLib/comps/phbalReg/src/LinuxKernelSpi/phbalReg_LinuxKernelSpi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxKernelSpi" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxKernelSpi/phbalReg_LinuxKernelSpi.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxKernelSpi/phbalReg_LinuxKernelSpi.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxKernelSpi/phbalReg_LinuxKernelSpi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxKernelSpi/phbalReg_LinuxKernelSpi.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxKernelSpi/phbalReg_LinuxKernelSpi.o NxpNfcRdLib/comps/phbalReg/src/LinuxKernelSpi/phbalReg_LinuxKernelSpi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserI2C/phbalReg_LinuxUserI2C.o: NxpNfcRdLib/comps/phbalReg/src/LinuxUserI2C/phbalReg_LinuxUserI2C.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserI2C" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserI2C/phbalReg_LinuxUserI2C.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserI2C/phbalReg_LinuxUserI2C.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserI2C/phbalReg_LinuxUserI2C.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserI2C/phbalReg_LinuxUserI2C.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserI2C/phbalReg_LinuxUserI2C.o NxpNfcRdLib/comps/phbalReg/src/LinuxUserI2C/phbalReg_LinuxUserI2C.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserSpi/phbalReg_LinuxUserSpi.o: NxpNfcRdLib/comps/phbalReg/src/LinuxUserSpi/phbalReg_LinuxUserSpi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserSpi" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserSpi/phbalReg_LinuxUserSpi.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserSpi/phbalReg_LinuxUserSpi.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserSpi/phbalReg_LinuxUserSpi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserSpi/phbalReg_LinuxUserSpi.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserSpi/phbalReg_LinuxUserSpi.o NxpNfcRdLib/comps/phbalReg/src/LinuxUserSpi/phbalReg_LinuxUserSpi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenI2C/phbalReg_LpcOpenI2c.o: NxpNfcRdLib/comps/phbalReg/src/LpcOpenI2C/phbalReg_LpcOpenI2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenI2C" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenI2C/phbalReg_LpcOpenI2c.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenI2C/phbalReg_LpcOpenI2c.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenI2C/phbalReg_LpcOpenI2c.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenI2C/phbalReg_LpcOpenI2c.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenI2C/phbalReg_LpcOpenI2c.o NxpNfcRdLib/comps/phbalReg/src/LpcOpenI2C/phbalReg_LpcOpenI2c.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenSPI/phbalReg_LpcOpenSpi.o: NxpNfcRdLib/comps/phbalReg/src/LpcOpenSPI/phbalReg_LpcOpenSpi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenSPI" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenSPI/phbalReg_LpcOpenSpi.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenSPI/phbalReg_LpcOpenSpi.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenSPI/phbalReg_LpcOpenSpi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenSPI/phbalReg_LpcOpenSpi.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenSPI/phbalReg_LpcOpenSpi.o NxpNfcRdLib/comps/phbalReg/src/LpcOpenSPI/phbalReg_LpcOpenSpi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/Pic32mxSPI/phbalReg_Pic32mxSpi.o: NxpNfcRdLib/comps/phbalReg/src/Pic32mxSPI/phbalReg_Pic32mxSpi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/Pic32mxSPI" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/Pic32mxSPI/phbalReg_Pic32mxSpi.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/Pic32mxSPI/phbalReg_Pic32mxSpi.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/Pic32mxSPI/phbalReg_Pic32mxSpi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/Pic32mxSPI/phbalReg_Pic32mxSpi.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/Pic32mxSPI/phbalReg_Pic32mxSpi.o NxpNfcRdLib/comps/phbalReg/src/Pic32mxSPI/phbalReg_Pic32mxSpi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/phbalReg.o: NxpNfcRdLib/comps/phbalReg/src/phbalReg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/phbalReg.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/phbalReg.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/phbalReg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/phbalReg.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/phbalReg.o NxpNfcRdLib/comps/phbalReg/src/phbalReg.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw.o: NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw.o NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw_Int.o: NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw_Int.o NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/phceT4T.o: NxpNfcRdLib/comps/phceT4T/src/phceT4T.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/phceT4T.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/phceT4T.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/phceT4T.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/phceT4T.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/phceT4T.o NxpNfcRdLib/comps/phceT4T/src/phceT4T.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/Sw/phCidManager_Sw.o: NxpNfcRdLib/comps/phCidManager/src/Sw/phCidManager_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/Sw/phCidManager_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/Sw/phCidManager_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/Sw/phCidManager_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/Sw/phCidManager_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/Sw/phCidManager_Sw.o NxpNfcRdLib/comps/phCidManager/src/Sw/phCidManager_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/phCidManager.o: NxpNfcRdLib/comps/phCidManager/src/phCidManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/phCidManager.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/phCidManager.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/phCidManager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/phCidManager.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/phCidManager.o NxpNfcRdLib/comps/phCidManager/src/phCidManager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/Sw/phCryptoRng_Sw.o: NxpNfcRdLib/comps/phCryptoRng/src/Sw/phCryptoRng_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/Sw/phCryptoRng_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/Sw/phCryptoRng_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/Sw/phCryptoRng_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/Sw/phCryptoRng_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/Sw/phCryptoRng_Sw.o NxpNfcRdLib/comps/phCryptoRng/src/Sw/phCryptoRng_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/phCryptoRng.o: NxpNfcRdLib/comps/phCryptoRng/src/phCryptoRng.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/phCryptoRng.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/phCryptoRng.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/phCryptoRng.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/phCryptoRng.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/phCryptoRng.o NxpNfcRdLib/comps/phCryptoRng/src/phCryptoRng.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw.o: NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw.o NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Aes.o: NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Aes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Aes.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Aes.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Aes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Aes.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Aes.o NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Aes.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Des.o: NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Des.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Des.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Des.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Des.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Des.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Des.o NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Des.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Int.o: NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Int.o NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/phCryptoSym.o: NxpNfcRdLib/comps/phCryptoSym/src/phCryptoSym.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/phCryptoSym.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/phCryptoSym.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/phCryptoSym.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/phCryptoSym.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/phCryptoSym.o NxpNfcRdLib/comps/phCryptoSym/src/phCryptoSym.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180.o: NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180.o NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Instr.o: NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Instr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Instr.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Instr.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Instr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Instr.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Instr.o NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Instr.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Int.o: NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Int.o NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Wait.o: NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Wait.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Wait.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Wait.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Wait.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Wait.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Wait.o NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Wait.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU.o: NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU.o NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU_Int.o: NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU_Int.o NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523.o: NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523.o NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Cmd.o: NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Cmd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Cmd.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Cmd.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Cmd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Cmd.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Cmd.o NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Cmd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Int.o: NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Int.o NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Wait.o: NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Wait.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Wait.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Wait.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Wait.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Wait.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Wait.o NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Wait.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663.o: NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663.o NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Cmd.o: NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Cmd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Cmd.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Cmd.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Cmd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Cmd.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Cmd.o NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Cmd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Int.o: NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Int.o NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Wait.o: NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Wait.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Wait.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Wait.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Wait.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Wait.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Wait.o NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Wait.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/phhalHw.o: NxpNfcRdLib/comps/phhalHw/src/phhalHw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/phhalHw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/phhalHw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/phhalHw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/phhalHw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/phhalHw.o NxpNfcRdLib/comps/phhalHw/src/phhalHw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Rc663/phKeyStore_Rc663.o: NxpNfcRdLib/comps/phKeyStore/src/Rc663/phKeyStore_Rc663.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Rc663" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Rc663/phKeyStore_Rc663.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Rc663/phKeyStore_Rc663.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Rc663/phKeyStore_Rc663.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Rc663/phKeyStore_Rc663.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Rc663/phKeyStore_Rc663.o NxpNfcRdLib/comps/phKeyStore/src/Rc663/phKeyStore_Rc663.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Sw/phKeyStore_Sw.o: NxpNfcRdLib/comps/phKeyStore/src/Sw/phKeyStore_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Sw/phKeyStore_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Sw/phKeyStore_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Sw/phKeyStore_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Sw/phKeyStore_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Sw/phKeyStore_Sw.o NxpNfcRdLib/comps/phKeyStore/src/Sw/phKeyStore_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/phKeyStore.o: NxpNfcRdLib/comps/phKeyStore/src/phKeyStore.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/phKeyStore.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/phKeyStore.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/phKeyStore.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/phKeyStore.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/phKeyStore.o NxpNfcRdLib/comps/phKeyStore/src/phKeyStore.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw.o: NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw.o NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Int.o: NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Int.o NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Mac.o: NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Mac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Mac.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Mac.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Mac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Mac.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Mac.o NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Mac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport.o: NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport.o NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connection.o: NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connection.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connection.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connection.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connection.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connection.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connection.o NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connection.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connectionless.o: NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connectionless.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connectionless.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connectionless.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connectionless.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connectionless.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connectionless.o NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connectionless.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Timers.o: NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Timers.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Timers.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Timers.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Timers.o NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Timers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/phlnLlcp.o: NxpNfcRdLib/comps/phlnLlcp/src/phlnLlcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/phlnLlcp.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/phlnLlcp.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/phlnLlcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/phlnLlcp.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/phlnLlcp.o NxpNfcRdLib/comps/phlnLlcp/src/phlnLlcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phLog/src/phLog.o: NxpNfcRdLib/comps/phLog/src/phLog.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phLog/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phLog/src/phLog.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phLog/src/phLog.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phLog/src/phLog.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phLog/src/phLog.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phLog/src/phLog.o NxpNfcRdLib/comps/phLog/src/phLog.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib.o: NxpNfcRdLib/comps/phNfcLib/src/phNfcLib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib.o NxpNfcRdLib/comps/phNfcLib/src/phNfcLib.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_15693.o: NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_15693.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_15693.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_15693.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_15693.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_15693.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_15693.o NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_15693.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_18000p3m3.o: NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_18000p3m3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_18000p3m3.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_18000p3m3.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_18000p3m3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_18000p3m3.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_18000p3m3.o NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_18000p3m3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFC.o: NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFC.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFC.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFC.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFC.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFC.o NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFC.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFDF.o: NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFDF.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFDF.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFDF.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFDF.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFDF.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFDF.o NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFDF.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFUL.o: NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFUL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFUL.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFUL.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFUL.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFUL.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFUL.o NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFUL.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Utility.o: NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Utility.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Utility.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Utility.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Utility.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Utility.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Utility.o NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Utility.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/Sw/phnpSnep_Sw.o: NxpNfcRdLib/comps/phnpSnep/src/Sw/phnpSnep_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/Sw/phnpSnep_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/Sw/phnpSnep_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/Sw/phnpSnep_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/Sw/phnpSnep_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/Sw/phnpSnep_Sw.o NxpNfcRdLib/comps/phnpSnep/src/Sw/phnpSnep_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/phnpSnep.o: NxpNfcRdLib/comps/phnpSnep/src/phnpSnep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/phnpSnep.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/phnpSnep.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/phnpSnep.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/phnpSnep.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/phnpSnep.o NxpNfcRdLib/comps/phnpSnep/src/phnpSnep.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Freertos/phOsal_Freertos.o: NxpNfcRdLib/comps/phOsal/src/Freertos/phOsal_Freertos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Freertos" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Freertos/phOsal_Freertos.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Freertos/phOsal_Freertos.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Freertos/phOsal_Freertos.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Freertos/phOsal_Freertos.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Freertos/phOsal_Freertos.o NxpNfcRdLib/comps/phOsal/src/Freertos/phOsal_Freertos.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Linux/phOsal_Linux.o: NxpNfcRdLib/comps/phOsal/src/Linux/phOsal_Linux.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Linux" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Linux/phOsal_Linux.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Linux/phOsal_Linux.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Linux/phOsal_Linux.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Linux/phOsal_Linux.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Linux/phOsal_Linux.o NxpNfcRdLib/comps/phOsal/src/Linux/phOsal_Linux.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/NullOs/phOsal_NullOs.o: NxpNfcRdLib/comps/phOsal/src/NullOs/phOsal_NullOs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/NullOs" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/NullOs/phOsal_NullOs.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/NullOs/phOsal_NullOs.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/NullOs/phOsal_NullOs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/NullOs/phOsal_NullOs.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/NullOs/phOsal_NullOs.o NxpNfcRdLib/comps/phOsal/src/NullOs/phOsal_NullOs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/Sw/phpalEpcUid_Sw.o: NxpNfcRdLib/comps/phpalEpcUid/src/Sw/phpalEpcUid_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/Sw/phpalEpcUid_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/Sw/phpalEpcUid_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/Sw/phpalEpcUid_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/Sw/phpalEpcUid_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/Sw/phpalEpcUid_Sw.o NxpNfcRdLib/comps/phpalEpcUid/src/Sw/phpalEpcUid_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/phpalEpcUid.o: NxpNfcRdLib/comps/phpalEpcUid/src/phpalEpcUid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/phpalEpcUid.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/phpalEpcUid.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/phpalEpcUid.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/phpalEpcUid.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/phpalEpcUid.o NxpNfcRdLib/comps/phpalEpcUid/src/phpalEpcUid.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/Sw/phpalFelica_Sw.o: NxpNfcRdLib/comps/phpalFelica/src/Sw/phpalFelica_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/Sw/phpalFelica_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/Sw/phpalFelica_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/Sw/phpalFelica_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/Sw/phpalFelica_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/Sw/phpalFelica_Sw.o NxpNfcRdLib/comps/phpalFelica/src/Sw/phpalFelica_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/phpalFelica.o: NxpNfcRdLib/comps/phpalFelica/src/phpalFelica.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/phpalFelica.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/phpalFelica.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/phpalFelica.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/phpalFelica.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/phpalFelica.o NxpNfcRdLib/comps/phpalFelica/src/phpalFelica.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/Sw/phpalI14443p3a_Sw.o: NxpNfcRdLib/comps/phpalI14443p3a/src/Sw/phpalI14443p3a_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/Sw/phpalI14443p3a_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/Sw/phpalI14443p3a_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/Sw/phpalI14443p3a_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/Sw/phpalI14443p3a_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/Sw/phpalI14443p3a_Sw.o NxpNfcRdLib/comps/phpalI14443p3a/src/Sw/phpalI14443p3a_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/phpalI14443p3a.o: NxpNfcRdLib/comps/phpalI14443p3a/src/phpalI14443p3a.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/phpalI14443p3a.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/phpalI14443p3a.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/phpalI14443p3a.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/phpalI14443p3a.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/phpalI14443p3a.o NxpNfcRdLib/comps/phpalI14443p3a/src/phpalI14443p3a.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/Sw/phpalI14443p3b_Sw.o: NxpNfcRdLib/comps/phpalI14443p3b/src/Sw/phpalI14443p3b_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/Sw/phpalI14443p3b_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/Sw/phpalI14443p3b_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/Sw/phpalI14443p3b_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/Sw/phpalI14443p3b_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/Sw/phpalI14443p3b_Sw.o NxpNfcRdLib/comps/phpalI14443p3b/src/Sw/phpalI14443p3b_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/phpalI14443p3b.o: NxpNfcRdLib/comps/phpalI14443p3b/src/phpalI14443p3b.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/phpalI14443p3b.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/phpalI14443p3b.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/phpalI14443p3b.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/phpalI14443p3b.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/phpalI14443p3b.o NxpNfcRdLib/comps/phpalI14443p3b/src/phpalI14443p3b.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/Sw/phpalI14443p4_Sw.o: NxpNfcRdLib/comps/phpalI14443p4/src/Sw/phpalI14443p4_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/Sw/phpalI14443p4_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/Sw/phpalI14443p4_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/Sw/phpalI14443p4_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/Sw/phpalI14443p4_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/Sw/phpalI14443p4_Sw.o NxpNfcRdLib/comps/phpalI14443p4/src/Sw/phpalI14443p4_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/phpalI14443p4.o: NxpNfcRdLib/comps/phpalI14443p4/src/phpalI14443p4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/phpalI14443p4.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/phpalI14443p4.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/phpalI14443p4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/phpalI14443p4.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/phpalI14443p4.o NxpNfcRdLib/comps/phpalI14443p4/src/phpalI14443p4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/Sw/phpalI14443p4a_Sw.o: NxpNfcRdLib/comps/phpalI14443p4a/src/Sw/phpalI14443p4a_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/Sw/phpalI14443p4a_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/Sw/phpalI14443p4a_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/Sw/phpalI14443p4a_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/Sw/phpalI14443p4a_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/Sw/phpalI14443p4a_Sw.o NxpNfcRdLib/comps/phpalI14443p4a/src/Sw/phpalI14443p4a_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/phpalI14443p4a.o: NxpNfcRdLib/comps/phpalI14443p4a/src/phpalI14443p4a.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/phpalI14443p4a.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/phpalI14443p4a.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/phpalI14443p4a.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/phpalI14443p4a.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/phpalI14443p4a.o NxpNfcRdLib/comps/phpalI14443p4a/src/phpalI14443p4a.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw.o: NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw.o NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw_Int.o: NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw_Int.o NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/phpalI14443p4mC.o: NxpNfcRdLib/comps/phpalI14443p4mC/src/phpalI14443p4mC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/phpalI14443p4mC.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/phpalI14443p4mC.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/phpalI14443p4mC.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/phpalI14443p4mC.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/phpalI14443p4mC.o NxpNfcRdLib/comps/phpalI14443p4mC/src/phpalI14443p4mC.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/Sw/phpalI18000p3m3_Sw.o: NxpNfcRdLib/comps/phpalI18000p3m3/src/Sw/phpalI18000p3m3_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/Sw/phpalI18000p3m3_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/Sw/phpalI18000p3m3_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/Sw/phpalI18000p3m3_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/Sw/phpalI18000p3m3_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/Sw/phpalI18000p3m3_Sw.o NxpNfcRdLib/comps/phpalI18000p3m3/src/Sw/phpalI18000p3m3_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/phpalI18000p3m3.o: NxpNfcRdLib/comps/phpalI18000p3m3/src/phpalI18000p3m3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/phpalI18000p3m3.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/phpalI18000p3m3.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/phpalI18000p3m3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/phpalI18000p3m3.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/phpalI18000p3m3.o NxpNfcRdLib/comps/phpalI18000p3m3/src/phpalI18000p3m3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw.o: NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw.o NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw_Int.o: NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw_Int.o NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/phpalI18092mPI.o: NxpNfcRdLib/comps/phpalI18092mPI/src/phpalI18092mPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/phpalI18092mPI.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/phpalI18092mPI.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/phpalI18092mPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/phpalI18092mPI.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/phpalI18092mPI.o NxpNfcRdLib/comps/phpalI18092mPI/src/phpalI18092mPI.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw.o: NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw.o NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw_Int.o: NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw_Int.o NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/phpalI18092mT.o: NxpNfcRdLib/comps/phpalI18092mT/src/phpalI18092mT.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/phpalI18092mT.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/phpalI18092mT.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/phpalI18092mT.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/phpalI18092mT.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/phpalI18092mT.o NxpNfcRdLib/comps/phpalI18092mT/src/phpalI18092mT.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/Sw/phpalMifare_Sw.o: NxpNfcRdLib/comps/phpalMifare/src/Sw/phpalMifare_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/Sw/phpalMifare_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/Sw/phpalMifare_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/Sw/phpalMifare_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/Sw/phpalMifare_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/Sw/phpalMifare_Sw.o NxpNfcRdLib/comps/phpalMifare/src/Sw/phpalMifare_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/phpalMifare.o: NxpNfcRdLib/comps/phpalMifare/src/phpalMifare.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/phpalMifare.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/phpalMifare.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/phpalMifare.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/phpalMifare.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/phpalMifare.o NxpNfcRdLib/comps/phpalMifare/src/phpalMifare.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/Sw/phpalSli15693_Sw.o: NxpNfcRdLib/comps/phpalSli15693/src/Sw/phpalSli15693_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/Sw/phpalSli15693_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/Sw/phpalSli15693_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/Sw/phpalSli15693_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/Sw/phpalSli15693_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/Sw/phpalSli15693_Sw.o NxpNfcRdLib/comps/phpalSli15693/src/Sw/phpalSli15693_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/phpalSli15693.o: NxpNfcRdLib/comps/phpalSli15693/src/phpalSli15693.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/phpalSli15693.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/phpalSli15693.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/phpalSli15693.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/phpalSli15693.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/phpalSli15693.o NxpNfcRdLib/comps/phpalSli15693/src/phpalSli15693.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_K81.o: NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_K81.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_K81.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_K81.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_K81.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_K81.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_K81.o NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_K81.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_KinetisTimer.o: NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_KinetisTimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_KinetisTimer.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_KinetisTimer.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_KinetisTimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_KinetisTimer.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_KinetisTimer.o NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_KinetisTimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82.o: NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82.o NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82Timer.o: NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82Timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82Timer.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82Timer.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82Timer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82Timer.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82Timer.o NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82Timer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/cr_startup_lpc11u6x.o: NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/cr_startup_lpc11u6x.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/cr_startup_lpc11u6x.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/cr_startup_lpc11u6x.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/cr_startup_lpc11u6x.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/cr_startup_lpc11u6x.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/cr_startup_lpc11u6x.o NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/cr_startup_lpc11u6x.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/phPlatform_Port_LPC11u68.o: NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/phPlatform_Port_LPC11u68.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/phPlatform_Port_LPC11u68.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/phPlatform_Port_LPC11u68.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/phPlatform_Port_LPC11u68.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/phPlatform_Port_LPC11u68.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/phPlatform_Port_LPC11u68.o NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/phPlatform_Port_LPC11u68.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/cr_startup_lpc175x_6x.o: NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/cr_startup_lpc175x_6x.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/cr_startup_lpc175x_6x.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/cr_startup_lpc175x_6x.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/cr_startup_lpc175x_6x.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/cr_startup_lpc175x_6x.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/cr_startup_lpc175x_6x.o NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/cr_startup_lpc175x_6x.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/keil_iar_sysinit.o: NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/keil_iar_sysinit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/keil_iar_sysinit.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/keil_iar_sysinit.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/keil_iar_sysinit.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/keil_iar_sysinit.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/keil_iar_sysinit.o NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/keil_iar_sysinit.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/phPlatform_Port_LPC1769.o: NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/phPlatform_Port_LPC1769.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/phPlatform_Port_LPC1769.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/phPlatform_Port_LPC1769.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/phPlatform_Port_LPC1769.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/phPlatform_Port_LPC1769.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/phPlatform_Port_LPC1769.o NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/phPlatform_Port_LPC1769.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPCTimer/phPlatform_Port_LPCTimer.o: NxpNfcRdLib/comps/phPlatform/src/Port/LPCTimer/phPlatform_Port_LPCTimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPCTimer" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPCTimer/phPlatform_Port_LPCTimer.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPCTimer/phPlatform_Port_LPCTimer.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPCTimer/phPlatform_Port_LPCTimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPCTimer/phPlatform_Port_LPCTimer.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPCTimer/phPlatform_Port_LPCTimer.o NxpNfcRdLib/comps/phPlatform/src/Port/LPCTimer/phPlatform_Port_LPCTimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MX.o: NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MX.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MX.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MX.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MX.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MX.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MX.o NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MX.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MXTimer.o: NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MXTimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MXTimer.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MXTimer.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MXTimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MXTimer.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MXTimer.o NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MXTimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PN7462AU/phPlatform_Port_PN7462AU.o: NxpNfcRdLib/comps/phPlatform/src/Port/PN7462AU/phPlatform_Port_PN7462AU.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PN7462AU" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PN7462AU/phPlatform_Port_PN7462AU.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PN7462AU/phPlatform_Port_PN7462AU.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PN7462AU/phPlatform_Port_PN7462AU.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PN7462AU/phPlatform_Port_PN7462AU.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PN7462AU/phPlatform_Port_PN7462AU.o NxpNfcRdLib/comps/phPlatform/src/Port/PN7462AU/phPlatform_Port_PN7462AU.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_Pi.o: NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_Pi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_Pi.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_Pi.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_Pi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_Pi.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_Pi.o NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_Pi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_PiGpio.o: NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_PiGpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_PiGpio.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_PiGpio.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_PiGpio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_PiGpio.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_PiGpio.o NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_PiGpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/phPlatform.o: NxpNfcRdLib/comps/phPlatform/src/phPlatform.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/phPlatform.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/phPlatform.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/phPlatform.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/phPlatform.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/phPlatform.o NxpNfcRdLib/comps/phPlatform/src/phPlatform.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools.o: NxpNfcRdLib/comps/phTools/src/phTools.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools.o NxpNfcRdLib/comps/phTools/src/phTools.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools_Q.o: NxpNfcRdLib/comps/phTools/src/phTools_Q.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools_Q.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools_Q.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools_Q.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools_Q.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools_Q.o NxpNfcRdLib/comps/phTools/src/phTools_Q.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/sam_reader_files/sam_interface.o: sam_reader_files/sam_interface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sam_reader_files" 
	@${RM} ${OBJECTDIR}/sam_reader_files/sam_interface.o.d 
	@${RM} ${OBJECTDIR}/sam_reader_files/sam_interface.o 
	@${FIXDEPS} "${OBJECTDIR}/sam_reader_files/sam_interface.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/sam_reader_files/sam_interface.o.d" -o ${OBJECTDIR}/sam_reader_files/sam_interface.o sam_reader_files/sam_interface.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/sam_reader_files/tda8029.o: sam_reader_files/tda8029.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sam_reader_files" 
	@${RM} ${OBJECTDIR}/sam_reader_files/tda8029.o.d 
	@${RM} ${OBJECTDIR}/sam_reader_files/tda8029.o 
	@${FIXDEPS} "${OBJECTDIR}/sam_reader_files/tda8029.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/sam_reader_files/tda8029.o.d" -o ${OBJECTDIR}/sam_reader_files/tda8029.o sam_reader_files/tda8029.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/pn5180_files/pn5180.o: pn5180_files/pn5180.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/pn5180_files" 
	@${RM} ${OBJECTDIR}/pn5180_files/pn5180.o.d 
	@${RM} ${OBJECTDIR}/pn5180_files/pn5180.o 
	@${FIXDEPS} "${OBJECTDIR}/pn5180_files/pn5180.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -DICD3PlatformTool=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/pn5180_files/pn5180.o.d" -o ${OBJECTDIR}/pn5180_files/pn5180.o pn5180_files/pn5180.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/mcc_generated_files/tmr2.o: mcc_generated_files/tmr2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr2.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/tmr2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr2.o.d" -o ${OBJECTDIR}/mcc_generated_files/tmr2.o mcc_generated_files/tmr2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/uart1.o: mcc_generated_files/uart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/uart1.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/uart1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/mcc_generated_files/uart1.o.d" -o ${OBJECTDIR}/mcc_generated_files/uart1.o mcc_generated_files/uart1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/interrupt_manager.o: mcc_generated_files/interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/mcc_generated_files/interrupt_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/interrupt_manager.o mcc_generated_files/interrupt_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/tmr1.o: mcc_generated_files/tmr1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/tmr1.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/tmr1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/mcc_generated_files/tmr1.o.d" -o ${OBJECTDIR}/mcc_generated_files/tmr1.o mcc_generated_files/tmr1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/mcc.o: mcc_generated_files/mcc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/mcc.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/mcc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/mcc_generated_files/mcc.o.d" -o ${OBJECTDIR}/mcc_generated_files/mcc.o mcc_generated_files/mcc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/pin_manager.o: mcc_generated_files/pin_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/pin_manager.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/mcc_generated_files/pin_manager.o.d" -o ${OBJECTDIR}/mcc_generated_files/pin_manager.o mcc_generated_files/pin_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/spi1.o: mcc_generated_files/spi1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi1.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/spi1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi1.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi1.o mcc_generated_files/spi1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/adc1.o: mcc_generated_files/adc1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/adc1.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/adc1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/mcc_generated_files/adc1.o.d" -o ${OBJECTDIR}/mcc_generated_files/adc1.o mcc_generated_files/adc1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/mcc_generated_files/spi2.o: mcc_generated_files/spi2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/mcc_generated_files" 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o.d 
	@${RM} ${OBJECTDIR}/mcc_generated_files/spi2.o 
	@${FIXDEPS} "${OBJECTDIR}/mcc_generated_files/spi2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/mcc_generated_files/spi2.o.d" -o ${OBJECTDIR}/mcc_generated_files/spi2.o mcc_generated_files/spi2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/nxp_reader_config_files/phApp_Init.o: nxp_reader_config_files/phApp_Init.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/nxp_reader_config_files" 
	@${RM} ${OBJECTDIR}/nxp_reader_config_files/phApp_Init.o.d 
	@${RM} ${OBJECTDIR}/nxp_reader_config_files/phApp_Init.o 
	@${FIXDEPS} "${OBJECTDIR}/nxp_reader_config_files/phApp_Init.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/nxp_reader_config_files/phApp_Init.o.d" -o ${OBJECTDIR}/nxp_reader_config_files/phApp_Init.o nxp_reader_config_files/phApp_Init.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw.o: NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw.o NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int.o: NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int.o NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_A.o: NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_A.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_A.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_A.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_A.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_A.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_A.o NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_A.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_B.o: NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_B.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_B.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_B.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_B.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_B.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_B.o NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_B.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_F.o: NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_F.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_F.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_F.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_F.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_F.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_F.o NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_F.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_I18000p3m3.o: NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_I18000p3m3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_I18000p3m3.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_I18000p3m3.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_I18000p3m3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_I18000p3m3.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_I18000p3m3.o NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_I18000p3m3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_V.o: NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_V.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_V.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_V.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_V.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_V.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_V.o NxpNfcRdLib/comps/phacDiscLoop/src/Sw/phacDiscLoop_Sw_Int_V.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/phacDiscLoop.o: NxpNfcRdLib/comps/phacDiscLoop/src/phacDiscLoop.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/phacDiscLoop.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/phacDiscLoop.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/phacDiscLoop.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/phacDiscLoop.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phacDiscLoop/src/phacDiscLoop.o NxpNfcRdLib/comps/phacDiscLoop/src/phacDiscLoop.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/Sw/phalFelica_Sw.o: NxpNfcRdLib/comps/phalFelica/src/Sw/phalFelica_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/Sw/phalFelica_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/Sw/phalFelica_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/Sw/phalFelica_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/Sw/phalFelica_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/Sw/phalFelica_Sw.o NxpNfcRdLib/comps/phalFelica/src/Sw/phalFelica_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/phalFelica.o: NxpNfcRdLib/comps/phalFelica/src/phalFelica.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/phalFelica.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/phalFelica.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/phalFelica.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/phalFelica.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalFelica/src/phalFelica.o NxpNfcRdLib/comps/phalFelica/src/phalFelica.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/Sw/phalI15693_Sw.o: NxpNfcRdLib/comps/phalI15693/src/Sw/phalI15693_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/Sw/phalI15693_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/Sw/phalI15693_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/Sw/phalI15693_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/Sw/phalI15693_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/Sw/phalI15693_Sw.o NxpNfcRdLib/comps/phalI15693/src/Sw/phalI15693_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/phalI15693.o: NxpNfcRdLib/comps/phalI15693/src/phalI15693.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/phalI15693.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/phalI15693.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/phalI15693.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/phalI15693.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalI15693/src/phalI15693.o NxpNfcRdLib/comps/phalI15693/src/phalI15693.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw.o: NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw.o NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw_Int.o: NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw_Int.o NxpNfcRdLib/comps/phalI18000p3m3/src/Sw/phalI18000p3m3_Sw_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/phalI18000p3m3.o: NxpNfcRdLib/comps/phalI18000p3m3/src/phalI18000p3m3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/phalI18000p3m3.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/phalI18000p3m3.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/phalI18000p3m3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/phalI18000p3m3.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalI18000p3m3/src/phalI18000p3m3.o NxpNfcRdLib/comps/phalI18000p3m3/src/phalI18000p3m3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/Sw/phalMfc_Sw.o: NxpNfcRdLib/comps/phalMfc/src/Sw/phalMfc_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/Sw/phalMfc_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/Sw/phalMfc_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/Sw/phalMfc_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/Sw/phalMfc_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/Sw/phalMfc_Sw.o NxpNfcRdLib/comps/phalMfc/src/Sw/phalMfc_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc.o: NxpNfcRdLib/comps/phalMfc/src/phalMfc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc.o NxpNfcRdLib/comps/phalMfc/src/phalMfc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc_Int.o: NxpNfcRdLib/comps/phalMfc/src/phalMfc_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfc/src/phalMfc_Int.o NxpNfcRdLib/comps/phalMfc/src/phalMfc_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw.o: NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw.o NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw_Int.o: NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw_Int.o NxpNfcRdLib/comps/phalMfdf/src/Sw/phalMfdf_Sw_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf.o: NxpNfcRdLib/comps/phalMfdf/src/phalMfdf.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf.o NxpNfcRdLib/comps/phalMfdf/src/phalMfdf.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf_Int.o: NxpNfcRdLib/comps/phalMfdf/src/phalMfdf_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMfdf/src/phalMfdf_Int.o NxpNfcRdLib/comps/phalMfdf/src/phalMfdf_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/Sw/phalMful_Sw.o: NxpNfcRdLib/comps/phalMful/src/Sw/phalMful_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/Sw/phalMful_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/Sw/phalMful_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/Sw/phalMful_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/Sw/phalMful_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/Sw/phalMful_Sw.o NxpNfcRdLib/comps/phalMful/src/Sw/phalMful_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful.o: NxpNfcRdLib/comps/phalMful/src/phalMful.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful.o NxpNfcRdLib/comps/phalMful/src/phalMful.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful_Int.o: NxpNfcRdLib/comps/phalMful/src/phalMful_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalMful/src/phalMful_Int.o NxpNfcRdLib/comps/phalMful/src/phalMful_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/Sw/phalSli_Sw.o: NxpNfcRdLib/comps/phalSli/src/Sw/phalSli_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/Sw/phalSli_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/Sw/phalSli_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/Sw/phalSli_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/Sw/phalSli_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/Sw/phalSli_Sw.o NxpNfcRdLib/comps/phalSli/src/Sw/phalSli_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/phalSli.o: NxpNfcRdLib/comps/phalSli/src/phalSli.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/phalSli.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/phalSli.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/phalSli.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/phalSli.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalSli/src/phalSli.o NxpNfcRdLib/comps/phalSli/src/phalSli.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/Sw/phalT1T_Sw.o: NxpNfcRdLib/comps/phalT1T/src/Sw/phalT1T_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/Sw/phalT1T_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/Sw/phalT1T_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/Sw/phalT1T_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/Sw/phalT1T_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/Sw/phalT1T_Sw.o NxpNfcRdLib/comps/phalT1T/src/Sw/phalT1T_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/phalT1T.o: NxpNfcRdLib/comps/phalT1T/src/phalT1T.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/phalT1T.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/phalT1T.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/phalT1T.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/phalT1T.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalT1T/src/phalT1T.o NxpNfcRdLib/comps/phalT1T/src/phalT1T.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw.o: NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw.o NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T1T.o: NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T1T.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T1T.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T1T.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T1T.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T1T.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T1T.o NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T1T.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T2T.o: NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T2T.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T2T.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T2T.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T2T.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T2T.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T2T.o NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T2T.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T3T.o: NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T3T.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T3T.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T3T.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T3T.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T3T.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T3T.o NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T3T.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T4T.o: NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T4T.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T4T.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T4T.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T4T.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T4T.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T4T.o NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T4T.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T5T.o: NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T5T.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T5T.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T5T.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T5T.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T5T.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T5T.o NxpNfcRdLib/comps/phalTop/src/Sw/phalTop_Sw_Int_T5T.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/phalTop.o: NxpNfcRdLib/comps/phalTop/src/phalTop.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/phalTop.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/phalTop.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/phalTop.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/phalTop.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phalTop/src/phalTop.o NxpNfcRdLib/comps/phalTop/src/phalTop.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisI2C/phbalReg_KinetisI2C.o: NxpNfcRdLib/comps/phbalReg/src/KinetisI2C/phbalReg_KinetisI2C.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisI2C" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisI2C/phbalReg_KinetisI2C.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisI2C/phbalReg_KinetisI2C.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisI2C/phbalReg_KinetisI2C.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisI2C/phbalReg_KinetisI2C.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisI2C/phbalReg_KinetisI2C.o NxpNfcRdLib/comps/phbalReg/src/KinetisI2C/phbalReg_KinetisI2C.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisSPI/phbalReg_KinetisSpi.o: NxpNfcRdLib/comps/phbalReg/src/KinetisSPI/phbalReg_KinetisSpi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisSPI" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisSPI/phbalReg_KinetisSpi.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisSPI/phbalReg_KinetisSpi.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisSPI/phbalReg_KinetisSpi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisSPI/phbalReg_KinetisSpi.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/KinetisSPI/phbalReg_KinetisSpi.o NxpNfcRdLib/comps/phbalReg/src/KinetisSPI/phbalReg_KinetisSpi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxKernelSpi/phbalReg_LinuxKernelSpi.o: NxpNfcRdLib/comps/phbalReg/src/LinuxKernelSpi/phbalReg_LinuxKernelSpi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxKernelSpi" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxKernelSpi/phbalReg_LinuxKernelSpi.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxKernelSpi/phbalReg_LinuxKernelSpi.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxKernelSpi/phbalReg_LinuxKernelSpi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxKernelSpi/phbalReg_LinuxKernelSpi.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxKernelSpi/phbalReg_LinuxKernelSpi.o NxpNfcRdLib/comps/phbalReg/src/LinuxKernelSpi/phbalReg_LinuxKernelSpi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserI2C/phbalReg_LinuxUserI2C.o: NxpNfcRdLib/comps/phbalReg/src/LinuxUserI2C/phbalReg_LinuxUserI2C.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserI2C" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserI2C/phbalReg_LinuxUserI2C.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserI2C/phbalReg_LinuxUserI2C.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserI2C/phbalReg_LinuxUserI2C.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserI2C/phbalReg_LinuxUserI2C.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserI2C/phbalReg_LinuxUserI2C.o NxpNfcRdLib/comps/phbalReg/src/LinuxUserI2C/phbalReg_LinuxUserI2C.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserSpi/phbalReg_LinuxUserSpi.o: NxpNfcRdLib/comps/phbalReg/src/LinuxUserSpi/phbalReg_LinuxUserSpi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserSpi" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserSpi/phbalReg_LinuxUserSpi.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserSpi/phbalReg_LinuxUserSpi.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserSpi/phbalReg_LinuxUserSpi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserSpi/phbalReg_LinuxUserSpi.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LinuxUserSpi/phbalReg_LinuxUserSpi.o NxpNfcRdLib/comps/phbalReg/src/LinuxUserSpi/phbalReg_LinuxUserSpi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenI2C/phbalReg_LpcOpenI2c.o: NxpNfcRdLib/comps/phbalReg/src/LpcOpenI2C/phbalReg_LpcOpenI2c.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenI2C" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenI2C/phbalReg_LpcOpenI2c.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenI2C/phbalReg_LpcOpenI2c.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenI2C/phbalReg_LpcOpenI2c.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenI2C/phbalReg_LpcOpenI2c.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenI2C/phbalReg_LpcOpenI2c.o NxpNfcRdLib/comps/phbalReg/src/LpcOpenI2C/phbalReg_LpcOpenI2c.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenSPI/phbalReg_LpcOpenSpi.o: NxpNfcRdLib/comps/phbalReg/src/LpcOpenSPI/phbalReg_LpcOpenSpi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenSPI" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenSPI/phbalReg_LpcOpenSpi.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenSPI/phbalReg_LpcOpenSpi.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenSPI/phbalReg_LpcOpenSpi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenSPI/phbalReg_LpcOpenSpi.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/LpcOpenSPI/phbalReg_LpcOpenSpi.o NxpNfcRdLib/comps/phbalReg/src/LpcOpenSPI/phbalReg_LpcOpenSpi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/Pic32mxSPI/phbalReg_Pic32mxSpi.o: NxpNfcRdLib/comps/phbalReg/src/Pic32mxSPI/phbalReg_Pic32mxSpi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/Pic32mxSPI" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/Pic32mxSPI/phbalReg_Pic32mxSpi.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/Pic32mxSPI/phbalReg_Pic32mxSpi.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/Pic32mxSPI/phbalReg_Pic32mxSpi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/Pic32mxSPI/phbalReg_Pic32mxSpi.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/Pic32mxSPI/phbalReg_Pic32mxSpi.o NxpNfcRdLib/comps/phbalReg/src/Pic32mxSPI/phbalReg_Pic32mxSpi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/phbalReg.o: NxpNfcRdLib/comps/phbalReg/src/phbalReg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/phbalReg.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/phbalReg.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/phbalReg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/phbalReg.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phbalReg/src/phbalReg.o NxpNfcRdLib/comps/phbalReg/src/phbalReg.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw.o: NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw.o NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw_Int.o: NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw_Int.o NxpNfcRdLib/comps/phceT4T/src/Sw/phceT4T_Sw_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/phceT4T.o: NxpNfcRdLib/comps/phceT4T/src/phceT4T.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/phceT4T.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/phceT4T.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/phceT4T.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/phceT4T.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phceT4T/src/phceT4T.o NxpNfcRdLib/comps/phceT4T/src/phceT4T.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/Sw/phCidManager_Sw.o: NxpNfcRdLib/comps/phCidManager/src/Sw/phCidManager_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/Sw/phCidManager_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/Sw/phCidManager_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/Sw/phCidManager_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/Sw/phCidManager_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/Sw/phCidManager_Sw.o NxpNfcRdLib/comps/phCidManager/src/Sw/phCidManager_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/phCidManager.o: NxpNfcRdLib/comps/phCidManager/src/phCidManager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/phCidManager.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/phCidManager.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/phCidManager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/phCidManager.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phCidManager/src/phCidManager.o NxpNfcRdLib/comps/phCidManager/src/phCidManager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/Sw/phCryptoRng_Sw.o: NxpNfcRdLib/comps/phCryptoRng/src/Sw/phCryptoRng_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/Sw/phCryptoRng_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/Sw/phCryptoRng_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/Sw/phCryptoRng_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/Sw/phCryptoRng_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/Sw/phCryptoRng_Sw.o NxpNfcRdLib/comps/phCryptoRng/src/Sw/phCryptoRng_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/phCryptoRng.o: NxpNfcRdLib/comps/phCryptoRng/src/phCryptoRng.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/phCryptoRng.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/phCryptoRng.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/phCryptoRng.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/phCryptoRng.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoRng/src/phCryptoRng.o NxpNfcRdLib/comps/phCryptoRng/src/phCryptoRng.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw.o: NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw.o NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Aes.o: NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Aes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Aes.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Aes.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Aes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Aes.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Aes.o NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Aes.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Des.o: NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Des.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Des.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Des.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Des.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Des.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Des.o NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Des.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Int.o: NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Int.o NxpNfcRdLib/comps/phCryptoSym/src/Sw/phCryptoSym_Sw_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/phCryptoSym.o: NxpNfcRdLib/comps/phCryptoSym/src/phCryptoSym.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/phCryptoSym.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/phCryptoSym.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/phCryptoSym.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/phCryptoSym.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phCryptoSym/src/phCryptoSym.o NxpNfcRdLib/comps/phCryptoSym/src/phCryptoSym.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180.o: NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180.o NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Instr.o: NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Instr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Instr.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Instr.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Instr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Instr.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Instr.o NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Instr.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Int.o: NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Int.o NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Wait.o: NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Wait.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Wait.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Wait.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Wait.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Wait.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Wait.o NxpNfcRdLib/comps/phhalHw/src/Pn5180/phhalHw_Pn5180_Wait.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU.o: NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU.o NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU_Int.o: NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU_Int.o NxpNfcRdLib/comps/phhalHw/src/PN7462AU/phhalHw_PN7462AU_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523.o: NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523.o NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Cmd.o: NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Cmd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Cmd.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Cmd.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Cmd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Cmd.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Cmd.o NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Cmd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Int.o: NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Int.o NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Wait.o: NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Wait.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Wait.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Wait.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Wait.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Wait.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Wait.o NxpNfcRdLib/comps/phhalHw/src/Rc523/phhalHw_Rc523_Wait.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663.o: NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663.o NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Cmd.o: NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Cmd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Cmd.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Cmd.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Cmd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Cmd.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Cmd.o NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Cmd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Int.o: NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Int.o NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Wait.o: NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Wait.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Wait.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Wait.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Wait.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Wait.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Wait.o NxpNfcRdLib/comps/phhalHw/src/Rc663/phhalHw_Rc663_Wait.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/phhalHw.o: NxpNfcRdLib/comps/phhalHw/src/phhalHw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/phhalHw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/phhalHw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/phhalHw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/phhalHw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phhalHw/src/phhalHw.o NxpNfcRdLib/comps/phhalHw/src/phhalHw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Rc663/phKeyStore_Rc663.o: NxpNfcRdLib/comps/phKeyStore/src/Rc663/phKeyStore_Rc663.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Rc663" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Rc663/phKeyStore_Rc663.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Rc663/phKeyStore_Rc663.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Rc663/phKeyStore_Rc663.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Rc663/phKeyStore_Rc663.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Rc663/phKeyStore_Rc663.o NxpNfcRdLib/comps/phKeyStore/src/Rc663/phKeyStore_Rc663.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Sw/phKeyStore_Sw.o: NxpNfcRdLib/comps/phKeyStore/src/Sw/phKeyStore_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Sw/phKeyStore_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Sw/phKeyStore_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Sw/phKeyStore_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Sw/phKeyStore_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/Sw/phKeyStore_Sw.o NxpNfcRdLib/comps/phKeyStore/src/Sw/phKeyStore_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/phKeyStore.o: NxpNfcRdLib/comps/phKeyStore/src/phKeyStore.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/phKeyStore.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/phKeyStore.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/phKeyStore.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/phKeyStore.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phKeyStore/src/phKeyStore.o NxpNfcRdLib/comps/phKeyStore/src/phKeyStore.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw.o: NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw.o NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Int.o: NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Int.o NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Mac.o: NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Mac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Mac.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Mac.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Mac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Mac.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Mac.o NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Mac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport.o: NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport.o NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connection.o: NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connection.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connection.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connection.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connection.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connection.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connection.o NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connection.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connectionless.o: NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connectionless.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connectionless.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connectionless.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connectionless.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connectionless.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connectionless.o NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Sw_Transport_Connectionless.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Timers.o: NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Timers.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Timers.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Timers.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Timers.o NxpNfcRdLib/comps/phlnLlcp/src/Sw/phlnLlcp_Timers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/phlnLlcp.o: NxpNfcRdLib/comps/phlnLlcp/src/phlnLlcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/phlnLlcp.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/phlnLlcp.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/phlnLlcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/phlnLlcp.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phlnLlcp/src/phlnLlcp.o NxpNfcRdLib/comps/phlnLlcp/src/phlnLlcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phLog/src/phLog.o: NxpNfcRdLib/comps/phLog/src/phLog.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phLog/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phLog/src/phLog.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phLog/src/phLog.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phLog/src/phLog.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phLog/src/phLog.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phLog/src/phLog.o NxpNfcRdLib/comps/phLog/src/phLog.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib.o: NxpNfcRdLib/comps/phNfcLib/src/phNfcLib.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib.o NxpNfcRdLib/comps/phNfcLib/src/phNfcLib.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_15693.o: NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_15693.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_15693.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_15693.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_15693.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_15693.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_15693.o NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_15693.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_18000p3m3.o: NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_18000p3m3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_18000p3m3.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_18000p3m3.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_18000p3m3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_18000p3m3.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_18000p3m3.o NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_18000p3m3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFC.o: NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFC.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFC.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFC.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFC.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFC.o NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFC.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFDF.o: NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFDF.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFDF.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFDF.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFDF.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFDF.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFDF.o NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFDF.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFUL.o: NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFUL.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFUL.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFUL.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFUL.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFUL.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFUL.o NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_MFUL.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Utility.o: NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Utility.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Utility.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Utility.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Utility.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Utility.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Utility.o NxpNfcRdLib/comps/phNfcLib/src/phNfcLib_Utility.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/Sw/phnpSnep_Sw.o: NxpNfcRdLib/comps/phnpSnep/src/Sw/phnpSnep_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/Sw/phnpSnep_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/Sw/phnpSnep_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/Sw/phnpSnep_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/Sw/phnpSnep_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/Sw/phnpSnep_Sw.o NxpNfcRdLib/comps/phnpSnep/src/Sw/phnpSnep_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/phnpSnep.o: NxpNfcRdLib/comps/phnpSnep/src/phnpSnep.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/phnpSnep.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/phnpSnep.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/phnpSnep.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/phnpSnep.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phnpSnep/src/phnpSnep.o NxpNfcRdLib/comps/phnpSnep/src/phnpSnep.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Freertos/phOsal_Freertos.o: NxpNfcRdLib/comps/phOsal/src/Freertos/phOsal_Freertos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Freertos" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Freertos/phOsal_Freertos.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Freertos/phOsal_Freertos.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Freertos/phOsal_Freertos.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Freertos/phOsal_Freertos.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Freertos/phOsal_Freertos.o NxpNfcRdLib/comps/phOsal/src/Freertos/phOsal_Freertos.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Linux/phOsal_Linux.o: NxpNfcRdLib/comps/phOsal/src/Linux/phOsal_Linux.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Linux" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Linux/phOsal_Linux.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Linux/phOsal_Linux.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Linux/phOsal_Linux.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Linux/phOsal_Linux.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/Linux/phOsal_Linux.o NxpNfcRdLib/comps/phOsal/src/Linux/phOsal_Linux.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/NullOs/phOsal_NullOs.o: NxpNfcRdLib/comps/phOsal/src/NullOs/phOsal_NullOs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/NullOs" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/NullOs/phOsal_NullOs.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/NullOs/phOsal_NullOs.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/NullOs/phOsal_NullOs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/NullOs/phOsal_NullOs.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phOsal/src/NullOs/phOsal_NullOs.o NxpNfcRdLib/comps/phOsal/src/NullOs/phOsal_NullOs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/Sw/phpalEpcUid_Sw.o: NxpNfcRdLib/comps/phpalEpcUid/src/Sw/phpalEpcUid_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/Sw/phpalEpcUid_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/Sw/phpalEpcUid_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/Sw/phpalEpcUid_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/Sw/phpalEpcUid_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/Sw/phpalEpcUid_Sw.o NxpNfcRdLib/comps/phpalEpcUid/src/Sw/phpalEpcUid_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/phpalEpcUid.o: NxpNfcRdLib/comps/phpalEpcUid/src/phpalEpcUid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/phpalEpcUid.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/phpalEpcUid.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/phpalEpcUid.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/phpalEpcUid.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalEpcUid/src/phpalEpcUid.o NxpNfcRdLib/comps/phpalEpcUid/src/phpalEpcUid.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/Sw/phpalFelica_Sw.o: NxpNfcRdLib/comps/phpalFelica/src/Sw/phpalFelica_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/Sw/phpalFelica_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/Sw/phpalFelica_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/Sw/phpalFelica_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/Sw/phpalFelica_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/Sw/phpalFelica_Sw.o NxpNfcRdLib/comps/phpalFelica/src/Sw/phpalFelica_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/phpalFelica.o: NxpNfcRdLib/comps/phpalFelica/src/phpalFelica.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/phpalFelica.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/phpalFelica.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/phpalFelica.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/phpalFelica.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalFelica/src/phpalFelica.o NxpNfcRdLib/comps/phpalFelica/src/phpalFelica.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/Sw/phpalI14443p3a_Sw.o: NxpNfcRdLib/comps/phpalI14443p3a/src/Sw/phpalI14443p3a_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/Sw/phpalI14443p3a_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/Sw/phpalI14443p3a_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/Sw/phpalI14443p3a_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/Sw/phpalI14443p3a_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/Sw/phpalI14443p3a_Sw.o NxpNfcRdLib/comps/phpalI14443p3a/src/Sw/phpalI14443p3a_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/phpalI14443p3a.o: NxpNfcRdLib/comps/phpalI14443p3a/src/phpalI14443p3a.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/phpalI14443p3a.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/phpalI14443p3a.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/phpalI14443p3a.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/phpalI14443p3a.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3a/src/phpalI14443p3a.o NxpNfcRdLib/comps/phpalI14443p3a/src/phpalI14443p3a.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/Sw/phpalI14443p3b_Sw.o: NxpNfcRdLib/comps/phpalI14443p3b/src/Sw/phpalI14443p3b_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/Sw/phpalI14443p3b_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/Sw/phpalI14443p3b_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/Sw/phpalI14443p3b_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/Sw/phpalI14443p3b_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/Sw/phpalI14443p3b_Sw.o NxpNfcRdLib/comps/phpalI14443p3b/src/Sw/phpalI14443p3b_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/phpalI14443p3b.o: NxpNfcRdLib/comps/phpalI14443p3b/src/phpalI14443p3b.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/phpalI14443p3b.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/phpalI14443p3b.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/phpalI14443p3b.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/phpalI14443p3b.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p3b/src/phpalI14443p3b.o NxpNfcRdLib/comps/phpalI14443p3b/src/phpalI14443p3b.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/Sw/phpalI14443p4_Sw.o: NxpNfcRdLib/comps/phpalI14443p4/src/Sw/phpalI14443p4_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/Sw/phpalI14443p4_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/Sw/phpalI14443p4_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/Sw/phpalI14443p4_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/Sw/phpalI14443p4_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/Sw/phpalI14443p4_Sw.o NxpNfcRdLib/comps/phpalI14443p4/src/Sw/phpalI14443p4_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/phpalI14443p4.o: NxpNfcRdLib/comps/phpalI14443p4/src/phpalI14443p4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/phpalI14443p4.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/phpalI14443p4.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/phpalI14443p4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/phpalI14443p4.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4/src/phpalI14443p4.o NxpNfcRdLib/comps/phpalI14443p4/src/phpalI14443p4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/Sw/phpalI14443p4a_Sw.o: NxpNfcRdLib/comps/phpalI14443p4a/src/Sw/phpalI14443p4a_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/Sw/phpalI14443p4a_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/Sw/phpalI14443p4a_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/Sw/phpalI14443p4a_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/Sw/phpalI14443p4a_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/Sw/phpalI14443p4a_Sw.o NxpNfcRdLib/comps/phpalI14443p4a/src/Sw/phpalI14443p4a_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/phpalI14443p4a.o: NxpNfcRdLib/comps/phpalI14443p4a/src/phpalI14443p4a.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/phpalI14443p4a.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/phpalI14443p4a.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/phpalI14443p4a.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/phpalI14443p4a.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4a/src/phpalI14443p4a.o NxpNfcRdLib/comps/phpalI14443p4a/src/phpalI14443p4a.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw.o: NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw.o NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw_Int.o: NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw_Int.o NxpNfcRdLib/comps/phpalI14443p4mC/src/Sw/phpalI14443p4mC_Sw_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/phpalI14443p4mC.o: NxpNfcRdLib/comps/phpalI14443p4mC/src/phpalI14443p4mC.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/phpalI14443p4mC.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/phpalI14443p4mC.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/phpalI14443p4mC.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/phpalI14443p4mC.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI14443p4mC/src/phpalI14443p4mC.o NxpNfcRdLib/comps/phpalI14443p4mC/src/phpalI14443p4mC.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/Sw/phpalI18000p3m3_Sw.o: NxpNfcRdLib/comps/phpalI18000p3m3/src/Sw/phpalI18000p3m3_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/Sw/phpalI18000p3m3_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/Sw/phpalI18000p3m3_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/Sw/phpalI18000p3m3_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/Sw/phpalI18000p3m3_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/Sw/phpalI18000p3m3_Sw.o NxpNfcRdLib/comps/phpalI18000p3m3/src/Sw/phpalI18000p3m3_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/phpalI18000p3m3.o: NxpNfcRdLib/comps/phpalI18000p3m3/src/phpalI18000p3m3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/phpalI18000p3m3.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/phpalI18000p3m3.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/phpalI18000p3m3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/phpalI18000p3m3.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18000p3m3/src/phpalI18000p3m3.o NxpNfcRdLib/comps/phpalI18000p3m3/src/phpalI18000p3m3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw.o: NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw.o NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw_Int.o: NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw_Int.o NxpNfcRdLib/comps/phpalI18092mPI/src/Sw/phpalI18092mPI_Sw_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/phpalI18092mPI.o: NxpNfcRdLib/comps/phpalI18092mPI/src/phpalI18092mPI.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/phpalI18092mPI.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/phpalI18092mPI.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/phpalI18092mPI.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/phpalI18092mPI.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mPI/src/phpalI18092mPI.o NxpNfcRdLib/comps/phpalI18092mPI/src/phpalI18092mPI.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw.o: NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw.o NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw_Int.o: NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw_Int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw_Int.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw_Int.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw_Int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw_Int.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw_Int.o NxpNfcRdLib/comps/phpalI18092mT/src/Sw/phpalI18092mT_Sw_Int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/phpalI18092mT.o: NxpNfcRdLib/comps/phpalI18092mT/src/phpalI18092mT.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/phpalI18092mT.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/phpalI18092mT.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/phpalI18092mT.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/phpalI18092mT.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalI18092mT/src/phpalI18092mT.o NxpNfcRdLib/comps/phpalI18092mT/src/phpalI18092mT.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/Sw/phpalMifare_Sw.o: NxpNfcRdLib/comps/phpalMifare/src/Sw/phpalMifare_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/Sw/phpalMifare_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/Sw/phpalMifare_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/Sw/phpalMifare_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/Sw/phpalMifare_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/Sw/phpalMifare_Sw.o NxpNfcRdLib/comps/phpalMifare/src/Sw/phpalMifare_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/phpalMifare.o: NxpNfcRdLib/comps/phpalMifare/src/phpalMifare.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/phpalMifare.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/phpalMifare.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/phpalMifare.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/phpalMifare.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalMifare/src/phpalMifare.o NxpNfcRdLib/comps/phpalMifare/src/phpalMifare.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/Sw/phpalSli15693_Sw.o: NxpNfcRdLib/comps/phpalSli15693/src/Sw/phpalSli15693_Sw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/Sw" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/Sw/phpalSli15693_Sw.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/Sw/phpalSli15693_Sw.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/Sw/phpalSli15693_Sw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/Sw/phpalSli15693_Sw.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/Sw/phpalSli15693_Sw.o NxpNfcRdLib/comps/phpalSli15693/src/Sw/phpalSli15693_Sw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/phpalSli15693.o: NxpNfcRdLib/comps/phpalSli15693/src/phpalSli15693.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/phpalSli15693.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/phpalSli15693.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/phpalSli15693.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/phpalSli15693.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phpalSli15693/src/phpalSli15693.o NxpNfcRdLib/comps/phpalSli15693/src/phpalSli15693.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_K81.o: NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_K81.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_K81.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_K81.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_K81.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_K81.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_K81.o NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_K81.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_KinetisTimer.o: NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_KinetisTimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_KinetisTimer.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_KinetisTimer.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_KinetisTimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_KinetisTimer.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_KinetisTimer.o NxpNfcRdLib/comps/phPlatform/src/Port/K81/phPlatform_Port_KinetisTimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82.o: NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82.o NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82Timer.o: NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82Timer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82Timer.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82Timer.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82Timer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82Timer.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82Timer.o NxpNfcRdLib/comps/phPlatform/src/Port/K82/phPlatform_Port_K82Timer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/cr_startup_lpc11u6x.o: NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/cr_startup_lpc11u6x.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/cr_startup_lpc11u6x.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/cr_startup_lpc11u6x.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/cr_startup_lpc11u6x.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/cr_startup_lpc11u6x.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/cr_startup_lpc11u6x.o NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/cr_startup_lpc11u6x.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/phPlatform_Port_LPC11u68.o: NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/phPlatform_Port_LPC11u68.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/phPlatform_Port_LPC11u68.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/phPlatform_Port_LPC11u68.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/phPlatform_Port_LPC11u68.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/phPlatform_Port_LPC11u68.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/phPlatform_Port_LPC11u68.o NxpNfcRdLib/comps/phPlatform/src/Port/LPC11u68/phPlatform_Port_LPC11u68.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/cr_startup_lpc175x_6x.o: NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/cr_startup_lpc175x_6x.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/cr_startup_lpc175x_6x.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/cr_startup_lpc175x_6x.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/cr_startup_lpc175x_6x.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/cr_startup_lpc175x_6x.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/cr_startup_lpc175x_6x.o NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/cr_startup_lpc175x_6x.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/keil_iar_sysinit.o: NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/keil_iar_sysinit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/keil_iar_sysinit.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/keil_iar_sysinit.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/keil_iar_sysinit.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/keil_iar_sysinit.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/keil_iar_sysinit.o NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/keil_iar_sysinit.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/phPlatform_Port_LPC1769.o: NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/phPlatform_Port_LPC1769.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/phPlatform_Port_LPC1769.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/phPlatform_Port_LPC1769.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/phPlatform_Port_LPC1769.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/phPlatform_Port_LPC1769.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/phPlatform_Port_LPC1769.o NxpNfcRdLib/comps/phPlatform/src/Port/LPC1769/phPlatform_Port_LPC1769.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPCTimer/phPlatform_Port_LPCTimer.o: NxpNfcRdLib/comps/phPlatform/src/Port/LPCTimer/phPlatform_Port_LPCTimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPCTimer" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPCTimer/phPlatform_Port_LPCTimer.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPCTimer/phPlatform_Port_LPCTimer.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPCTimer/phPlatform_Port_LPCTimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPCTimer/phPlatform_Port_LPCTimer.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/LPCTimer/phPlatform_Port_LPCTimer.o NxpNfcRdLib/comps/phPlatform/src/Port/LPCTimer/phPlatform_Port_LPCTimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MX.o: NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MX.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MX.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MX.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MX.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MX.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MX.o NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MX.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MXTimer.o: NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MXTimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MXTimer.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MXTimer.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MXTimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MXTimer.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MXTimer.o NxpNfcRdLib/comps/phPlatform/src/Port/PIC32MX/phPlatform_Port_PIC32MXTimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PN7462AU/phPlatform_Port_PN7462AU.o: NxpNfcRdLib/comps/phPlatform/src/Port/PN7462AU/phPlatform_Port_PN7462AU.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PN7462AU" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PN7462AU/phPlatform_Port_PN7462AU.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PN7462AU/phPlatform_Port_PN7462AU.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PN7462AU/phPlatform_Port_PN7462AU.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PN7462AU/phPlatform_Port_PN7462AU.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/PN7462AU/phPlatform_Port_PN7462AU.o NxpNfcRdLib/comps/phPlatform/src/Port/PN7462AU/phPlatform_Port_PN7462AU.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_Pi.o: NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_Pi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_Pi.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_Pi.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_Pi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_Pi.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_Pi.o NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_Pi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_PiGpio.o: NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_PiGpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_PiGpio.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_PiGpio.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_PiGpio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_PiGpio.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_PiGpio.o NxpNfcRdLib/comps/phPlatform/src/Port/RaspberryPi/phPlatform_Port_PiGpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/phPlatform.o: NxpNfcRdLib/comps/phPlatform/src/phPlatform.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/phPlatform.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/phPlatform.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/phPlatform.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/phPlatform.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phPlatform/src/phPlatform.o NxpNfcRdLib/comps/phPlatform/src/phPlatform.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools.o: NxpNfcRdLib/comps/phTools/src/phTools.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools.o NxpNfcRdLib/comps/phTools/src/phTools.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools_Q.o: NxpNfcRdLib/comps/phTools/src/phTools_Q.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src" 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools_Q.o.d 
	@${RM} ${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools_Q.o 
	@${FIXDEPS} "${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools_Q.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools_Q.o.d" -o ${OBJECTDIR}/NxpNfcRdLib/comps/phTools/src/phTools_Q.o NxpNfcRdLib/comps/phTools/src/phTools_Q.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/sam_reader_files/sam_interface.o: sam_reader_files/sam_interface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sam_reader_files" 
	@${RM} ${OBJECTDIR}/sam_reader_files/sam_interface.o.d 
	@${RM} ${OBJECTDIR}/sam_reader_files/sam_interface.o 
	@${FIXDEPS} "${OBJECTDIR}/sam_reader_files/sam_interface.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/sam_reader_files/sam_interface.o.d" -o ${OBJECTDIR}/sam_reader_files/sam_interface.o sam_reader_files/sam_interface.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/sam_reader_files/tda8029.o: sam_reader_files/tda8029.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/sam_reader_files" 
	@${RM} ${OBJECTDIR}/sam_reader_files/tda8029.o.d 
	@${RM} ${OBJECTDIR}/sam_reader_files/tda8029.o 
	@${FIXDEPS} "${OBJECTDIR}/sam_reader_files/tda8029.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/sam_reader_files/tda8029.o.d" -o ${OBJECTDIR}/sam_reader_files/tda8029.o sam_reader_files/tda8029.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/main.o: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	@${FIXDEPS} "${OBJECTDIR}/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/main.o.d" -o ${OBJECTDIR}/main.o main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/pn5180_files/pn5180.o: pn5180_files/pn5180.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/pn5180_files" 
	@${RM} ${OBJECTDIR}/pn5180_files/pn5180.o.d 
	@${RM} ${OBJECTDIR}/pn5180_files/pn5180.o 
	@${FIXDEPS} "${OBJECTDIR}/pn5180_files/pn5180.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -I"C:/Program Files (x86)/Microchip/xc32/v2.05/pic32mx/include" -I"NxpNfcRdLib/intfs" -I"NxpNfcRdLib/types" -I"NxpNfcRdLib" -I"pn5180_files" -Wall -Waddress-attribute-use -MMD -MF "${OBJECTDIR}/pn5180_files/pn5180.o.d" -o ${OBJECTDIR}/pn5180_files/pn5180.o pn5180_files/pn5180.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/NfcDemo2.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -DICD3PlatformTool=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/NfcDemo2.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC00490:0x1FC00BEF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=ICD3PlatformTool=1,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/NfcDemo2.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/NfcDemo2.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/NfcDemo2.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
