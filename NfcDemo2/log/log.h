/* ************************************************************************** */
/** Descriptive File Name

  @Author
    Thijs

  @Created on 
    2018-05-18, 15:18 

  @Modifier
    Zhiyuan Wang

  @Modified on
    2018-05-23
 
  @File Name
    log.h

  @Summary
    log record header file

  @Description
    string log record for the purpose of debugging
 */
/* ************************************************************************** */

#ifndef LOG_H    /* Guard against multiple inclusion */
#define LOG_H


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */
/* TODO:  Include other files here if needed. */
#include <stdio.h>
#include <stdint.h>
#include <stdarg.h>
#include <string.h>

#define LOG_ENABLE

/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif

/*******************************************************************************
**   Function Declarations for Log Record
*******************************************************************************/

int _logf(const char *format, ...);
void clearLogInfo(void);   

#ifdef LOG_ENABLE
#define MAX_LOG_BUFFER_SIZE     512
#define logf(format, ...)       _logf(format, ## __VA_ARGS__)
#else
#define MAX_LOG_BUFFER_SIZE     0
#define logf(format, ...)      (0)
#endif

/* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* LOG_H */

/* *****************************************************************************
 End of File
 */
