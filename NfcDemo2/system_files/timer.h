/* ************************************************************************** */
/** Descriptive File Name

  @Company
    Company Name

  @File Name
    filename.h

  @Summary
    Brief description of the file.

  @Description
    Describe the purpose of this file.
 */
/* ************************************************************************** */

#ifndef TIMER_H    /* Guard against multiple inclusion */
#define TIMER_H


/* ************************************************************************** */
/* ************************************************************************** */
/* Section: Included Files                                                    */
/* ************************************************************************** */
/* ************************************************************************** */

/* This section lists the other files that are included in this file.
 */

/* TODO:  Include other files here if needed. */
#include "../mcc_generated_files/mcc.h"
#include <stdint.h>
#include <stdbool.h>

/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif

typedef struct{
    /* Count the milliseconds that have passed */
    uint16_t TimerCount;
    /* Store the time out threshold */
    uint16_t TimeoutThreshold;
    /* Timer running flag */
    bool isRunning;
    /* Time out flag */
    bool isTimedOut;
} software_millisec_timer_t;

extern software_millisec_timer_t systemTimer;

void Timer_Set(software_millisec_timer_t *pTimer, uint16_t timeout_ms);
void Timer_Start(software_millisec_timer_t *pTimer);
void Timer_Stop(software_millisec_timer_t *pTimer);

    /* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* _EXAMPLE_FILE_NAME_H */

/* *****************************************************************************
 End of File
 */
