/*
 * Nfcrdlib_MIFARE.h
 *
 *  Created on: April 20, 2018
 *      Author: Zhiyuan Wang
 */

#ifndef NFCRDLIB_MIFARE_H_
#define NFCRDLIB_MIFARE_H_
#include <ph_Status.h>

#ifdef NXPBUILD__PH_OSAL_FREERTOS

#ifdef PHOSAL_FREERTOS_STATIC_MEM_ALLOCATION
#define MIFARECLASSIC_TASK_STACK              (1200/4)
#else /* PHOSAL_FREERTOS_STATIC_MEM_ALLOCATION */
#ifdef __PN74XXXX__
#define MIFARECLASSIC_TASK_STACK              (1200/4)
#else /* __PN74XXXX__*/
#define MIFARECLASSIC_TASK_STACK              1200
#endif /* __PN74XXXX__*/
#endif /* PHOSAL_FREERTOS_STATIC_MEM_ALLOCATION */

#define MIFARECLASSIC_TASK_PRIO                4
#endif /* NXPBUILD__PH_OSAL_FREERTOS */

#ifdef NXPBUILD__PH_OSAL_LINUX
#define MIFARECLASSIC_TASK_STACK                0x20000
#define MIFARECLASSIC_TASK_PRIO                 0
#endif /* NXPBUILD__PH_OSAL_LINUX */


#endif /* NFCRDLIB_MIFARE_H_ */
