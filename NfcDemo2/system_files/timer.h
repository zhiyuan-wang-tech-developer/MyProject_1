/* ************************************************************************** */
/** Descriptive File Name

  @Author
    Zhiyuan Wang

  @Modified on
    2018-05-23 

  @File Name
    timer.h

  @Summary
    System timer header file

  @Description
    The timer type structure is defined here.
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

/* Timer structure type for millisecond timing */
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

/* System timer used in systemRun() for timeout check */
extern software_millisec_timer_t systemTimer;

/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif

/*******************************************************************************
**   Function Declarations for Timer control
*******************************************************************************/
    
void Timer_Set(software_millisec_timer_t *pTimer, uint16_t timeout_ms);
void Timer_Start(software_millisec_timer_t *pTimer);
void Timer_Stop(software_millisec_timer_t *pTimer);

/* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* TIMER_H */

/* *****************************************************************************
 End of File
 */
