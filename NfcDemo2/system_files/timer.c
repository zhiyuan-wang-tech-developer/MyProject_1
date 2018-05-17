/* ************************************************************************** */

#include "timer.h"

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

/* TODO:  Include other files here if needed. */
#include "timer.h"

software_millisec_timer_t systemTimer = {
    .TimeoutThreshold = 0,
    .TimerCount = 0,
    .isRunning = false,
    .isTimedOut = false
};

void Timer_Set(software_millisec_timer_t *pTimer, uint16_t timeout_ms)
{
    pTimer->TimeoutThreshold = timeout_ms;
    pTimer->TimerCount = 0;
    pTimer->isRunning = false;
    pTimer->isTimedOut = false;
}

void Timer_Start(software_millisec_timer_t *pTimer)
{
    pTimer->TimerCount = 0;
    pTimer->isRunning = true;
    pTimer->isTimedOut = false;
}

void Timer_Stop(software_millisec_timer_t *pTimer)
{
    pTimer->isRunning = false;
}

void TMR3_CallBack(void)
{
    if( systemTimer.isRunning && (!systemTimer.isTimedOut) )
    {
        if( ++systemTimer.TimerCount > systemTimer.TimeoutThreshold )
        {
            systemTimer.isRunning = false;
            systemTimer.isTimedOut = true;
        }
    }
}

/* *****************************************************************************
 End of File
 */
