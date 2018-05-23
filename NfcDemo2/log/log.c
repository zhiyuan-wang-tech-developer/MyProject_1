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
    log.c

  @Summary
    log record source file

  @Description
    string log record for the purpose of debugging
 */
/* ************************************************************************** */

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */
/* TODO:  Include other files here if needed. */
#include "log.h"

/* Define log structure type */
typedef struct{
    /* Count the number of bytes that have been written into the log buffer */
    uint16_t WrittenByteCount;
    /* It holds the maximum log buffer size */
    size_t MaxLogBufferSize;
    /* Pointer to the log buffer initial address */
    char *pLogBuffer;    
} log_t;

/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Global Data                                         */
/* ************************************************************************** */
/* ************************************************************************** */
static char logBuffer[MAX_LOG_BUFFER_SIZE] = {0};

static log_t debugLogInfo = {
    .WrittenByteCount = 0,
    .MaxLogBufferSize = MAX_LOG_BUFFER_SIZE,
    .pLogBuffer = logBuffer
};

/* ************************************************************************** */
/* ************************************************************************** */
// Section: Function Definitions                                                  */
/* ************************************************************************** */
/* ************************************************************************** */

/** 
  @Function
    int _logf(const char *format, ...)

  @Summary
    log function

  @Description
    This function prints the format string into the log buffer 

  @Precondition
    format is not NULL and log buffer is defined beforehand.

  @Parameters
    @param format 
            Pointer to a format string that you want to print into the log buffer
    @param variable argument list
            Arbitrary number of arguments that are going to be written into the format string
    
  @Returns
    -1 failed to write the format string into the log buffer
    >0 the number of bytes that have been written into the log buffer this time
 */
int _logf(const char *format, ...)
{
    // Count the number of bytes that have been written
    int writtenByteCount = 0;
    // Security Check
    if( debugLogInfo.pLogBuffer == NULL ) return -1;
    if( debugLogInfo.WrittenByteCount >= debugLogInfo.MaxLogBufferSize ) return -1;
    // Pointer to the log buffer element from where the character will be recorded
    char *pLogToRecord = &debugLogInfo.pLogBuffer[debugLogInfo.WrittenByteCount];
    // Calculate the remaining available log buffer size 
    size_t MaxAvailableLogBufferSize = debugLogInfo.MaxLogBufferSize - debugLogInfo.WrittenByteCount;
    
    // Variable argument list
    va_list vl;
    va_start(vl, format);
    // Print format string into the log buffer
    writtenByteCount = vsnprintf(pLogToRecord, MaxAvailableLogBufferSize, format, vl);
    va_end(vl);
    
    if( writtenByteCount > 0 )
    {
        // Update how many bytes have been already written into log buffer
        debugLogInfo.WrittenByteCount += writtenByteCount;
        // Return the number of bytes that have been written this time
        return writtenByteCount;
    }
    else
    {
        // If writing log buffer is failed then return -1
        return -1;
    }
}

/** 
  @Function
    void clearLogInfo(void)

  @Summary
    log clearing function

  @Description
    This function clears log buffer information and resets its written byte count

  @Precondition
    The log buffer must be defined beforehand.

  @Parameters
    None
    
  @Returns
    None
 */
void clearLogInfo(void)
{
    memset(debugLogInfo.pLogBuffer, 0, debugLogInfo.MaxLogBufferSize);
    debugLogInfo.WrittenByteCount = 0;
}

/* *****************************************************************************
 End of File
 */
