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

/** \file Gpio functionality for Raspberry PI.
 *
* $Author: Ankur Srivastava (nxp79569) $
* $Revision: 5748 $ (v4.040.05.011646)
* $Date: 2016-08-25 13:55:20 +0530 (Thu, 25 Aug 2016) $
*
* History:
*  CHu: Generated 31. July 2009
*
*/

#include <ph_Status.h>

#ifdef NXPBUILD__PH_RASPBERRY_PI

#include <stdint.h>
#include <stdbool.h>
#include <unistd.h>
#include <sys/ioctl.h>
#include <linux/spi/spidev.h>
#include <poll.h>
#include <stdio.h>
#include <sys/stat.h>
#include <fcntl.h>

#define PHPLATFORM_PORT_PIGPIO_CFG_DIR                      "/sys/class/gpio"
#define PHPLATFORM_PORT_PIGPIO_SYS_FILE_EXPORTED_TIME       10
#define PHPLATFORM_PORT_PIGPIO_LINUX_ERROR                  0xFFFFFFFF

phStatus_t PiGpio_is_exported(size_t gpio)
{
    uint32_t fd = 0;
    char bGpio[64] = {0};

    snprintf(bGpio, sizeof(bGpio), PHPLATFORM_PORT_PIGPIO_CFG_DIR "/gpio%lu/direction", gpio);

    fd = open(bGpio, O_WRONLY);
    if (fd != PHPLATFORM_PORT_PIGPIO_LINUX_ERROR)
    {
        close(fd);
        return PH_ERR_SUCCESS;
    }

    return PH_ADD_COMPCODE(PH_ERR_RESOURCE_ERROR, PH_COMP_PLATFORM);
}


phStatus_t PiGpio_export(size_t gpio)
{
    uint32_t fd;
    uint32_t dwTimeoutLoop;
    char buf[64] = {0};
    size_t len = 0;

    if(PiGpio_is_exported(gpio) == PH_ERR_SUCCESS)
    {
        return PH_ERR_SUCCESS;
    }

    fd = open(PHPLATFORM_PORT_PIGPIO_CFG_DIR "/export", O_WRONLY);
    if (fd == PHPLATFORM_PORT_PIGPIO_LINUX_ERROR)
    {
        return PH_ADD_COMPCODE(PH_ERR_RESOURCE_ERROR, PH_COMP_PLATFORM);
    }

    len = snprintf(buf, sizeof(buf), "%lu", gpio);
    write(fd, buf, len);
    close(fd);

    /* wait until file is actually available in user space OR TimeOut. */
    for (dwTimeoutLoop = 0; dwTimeoutLoop < PHPLATFORM_PORT_PIGPIO_SYS_FILE_EXPORTED_TIME; dwTimeoutLoop++)
    {
        if( PiGpio_is_exported(gpio) == 0 )
        {
            return PH_ERR_SUCCESS;
        }

        (void)phOsal_ThreadDelay(100);
    }

    return PH_ADD_COMPCODE(PH_ERR_RESOURCE_ERROR, PH_COMP_PLATFORM);
}

phStatus_t PiGpio_unexport(size_t gpio)
{
    uint32_t fd = 0;
    char buf[64] = {0};
    uint32_t dwLen = 0;

    fd = open(PHPLATFORM_PORT_PIGPIO_CFG_DIR "/unexport", O_WRONLY);
    if (fd == PHPLATFORM_PORT_PIGPIO_LINUX_ERROR)
    {
        return PH_ADD_COMPCODE(PH_ERR_RESOURCE_ERROR, PH_COMP_PLATFORM);
    }

    dwLen = snprintf(buf, sizeof(buf), "%lu", gpio);
    write(fd, buf, dwLen);
    close(fd);

    return PH_ERR_SUCCESS;
}

phStatus_t PiGpio_set_direction(size_t gpio, bool output)
{
    uint32_t fd = 0;
    char buf[64] = {0};

    snprintf(buf, sizeof(buf), PHPLATFORM_PORT_PIGPIO_CFG_DIR "/gpio%lu/direction", gpio);
    fd = open(buf, O_WRONLY);
    if (fd == PHPLATFORM_PORT_PIGPIO_LINUX_ERROR)
    {
        return PH_ADD_COMPCODE(PH_ERR_RESOURCE_ERROR, PH_COMP_PLATFORM);
    }

    if(output)
    {
        write(fd, "out", 3);
    }
    else
    {
        write(fd, "in", 2);
    }

    close(fd);

    return PH_ERR_SUCCESS;
}

phStatus_t PiGpio_set_edge(size_t gpio, bool rising, bool falling)
{
    uint32_t fd = 0;
    char buf[64] = {0};

    snprintf(buf, sizeof(buf), PHPLATFORM_PORT_PIGPIO_CFG_DIR "/gpio%lu/edge", gpio);

    fd = open(buf, O_WRONLY);
    if (fd == PHPLATFORM_PORT_PIGPIO_LINUX_ERROR)
    {
        return PH_ADD_COMPCODE(PH_ERR_RESOURCE_ERROR, PH_COMP_PLATFORM);
    }

    if(rising && falling)
    {
        write(fd, "both", 4);
    }
    else if(rising)
    {
        write(fd, "rising", 6);
    }
    else
    {
        write(fd, "falling", 7);
    }

    close(fd);

    return PH_ERR_SUCCESS;
}

phStatus_t PiGpio_read(size_t gpio, uint8_t *pGpioVal)
{
    char path[30];
    char cValue;
    uint32_t fd;
    struct pollfd pollfd;

    *pGpioVal = 0;

    snprintf(path, 30, PHPLATFORM_PORT_PIGPIO_CFG_DIR "/gpio%lu/value", gpio);
    fd = open(path, O_RDONLY);
    if (fd == PHPLATFORM_PORT_PIGPIO_LINUX_ERROR)
    {
        return PH_ADD_COMPCODE(PH_ERR_RESOURCE_ERROR, PH_COMP_PLATFORM);
    }

    pollfd.fd = fd;
    lseek(pollfd.fd, 0, SEEK_SET);

    if ((read(fd, &cValue, 1)) == PHPLATFORM_PORT_PIGPIO_LINUX_ERROR)
    {
        close(fd);
        return PH_ADD_COMPCODE(PH_ERR_RESOURCE_ERROR, PH_COMP_PLATFORM);
    }

    close(fd);

    *pGpioVal = (cValue == '0') ? 0 : 1;

    return PH_ERR_SUCCESS;
}

phStatus_t PiGpio_Write(size_t gpio, int value)
{
    const char s_values_str[] = "01";

    char path[30];
    uint32_t fd;

    snprintf(path, 30, PHPLATFORM_PORT_PIGPIO_CFG_DIR "/gpio%lu/value", gpio);
    fd = open(path, O_WRONLY);
    if (fd == PHPLATFORM_PORT_PIGPIO_LINUX_ERROR)
    {
        return PH_ADD_COMPCODE(PH_ERR_RESOURCE_ERROR, PH_COMP_PLATFORM);
    }

    if (1 != write(fd, &s_values_str[(0 == value) ? 0 : 1], 1))
    {
        close(fd);
        return PH_ADD_COMPCODE(PH_ERR_RESOURCE_ERROR, PH_COMP_PLATFORM);
    }

    close(fd);
    return PH_ERR_SUCCESS;
}

phStatus_t PiGpio_poll(size_t gpio, int highOrLow, int timeOutms)
{
    char path[30];
    char cValue;
    uint32_t fd;
    uint32_t ret;
    struct pollfd pollfd;

    pollfd.events = POLLPRI; /* look for GPIO status change. */

    snprintf(path, 30, PHPLATFORM_PORT_PIGPIO_CFG_DIR "/gpio%u/value", gpio);
    fd = open(path, O_RDONLY);
    if (fd == PHPLATFORM_PORT_PIGPIO_LINUX_ERROR)
    {
        return PH_ADD_COMPCODE(PH_ERR_RESOURCE_ERROR, PH_COMP_PLATFORM);
    }

    pollfd.fd = fd; /* GPIO file descriptor. */

    ret = read(fd, &cValue, 1);
    if (ret == PHPLATFORM_PORT_PIGPIO_LINUX_ERROR)
    {
        close(fd);
        return PH_ADD_COMPCODE(PH_ERR_RESOURCE_ERROR, PH_COMP_PLATFORM);
    }

    if((highOrLow) == ((cValue == '0')? 0 : 1))
    {
        close(fd);
        return PH_ERR_SUCCESS;
    }

    /* Reposition the read/write file offset to 0 bytes. */
    lseek(pollfd.fd, 0, SEEK_SET);
    /* Poll until the GPIO state changes.
     * Num of Items in pollFd is 1. */
    ret = poll( &pollfd, 1, timeOutms );
    if( ret != 1 )
    {
        close(fd);
        return PH_ADD_COMPCODE(PH_ERR_RESOURCE_ERROR, PH_COMP_PLATFORM);
    }

    /* Check for GPIO change OR Timeout. */
    lseek(pollfd.fd, 0, SEEK_SET);

    ret = read(fd, &cValue, 1);
    if (ret == PHPLATFORM_PORT_PIGPIO_LINUX_ERROR)
    {
        close(fd);
        return PH_ADD_COMPCODE(PH_ERR_RESOURCE_ERROR, PH_COMP_PLATFORM);
    }

    if((highOrLow) == ((cValue == '0')? 0 : 1))
    {
        close(fd);
        return PH_ERR_SUCCESS;
    }else{
        close(fd);
        return PH_ADD_COMPCODE(PH_ERR_IO_TIMEOUT, PH_COMP_PLATFORM);
    }
}

#endif /* NXPBUILD__PH_RASPBERRY_PI */
