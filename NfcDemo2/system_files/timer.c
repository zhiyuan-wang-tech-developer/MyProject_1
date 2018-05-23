/* ************************************************************************** */
/** Descriptive File Name

  @Author
    Zhiyuan Wang

  @Modified on
    2018-05-23

  @File Name
    timer.c

  @Summary
    System timer source file

  @Description
    The system timer structure variable and its API functions are defined here.
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

/*******************************************************************************
**   Global Variable Declarations
*******************************************************************************/

/* system timer definition */
software_millisec_timer_t systemTimer = {
    .TimerCount = 0,
    .TimeoutThreshold = 0,
    .isRunning = false,
    .isTimedOut = false
};

/*******************************************************************************
**   Function Definitions
*******************************************************************************/

/** 
  @Function
    void Timer_Set(software_millisec_timer_t *pTimer, uint16_t timeout_ms)

  @Summary
    Timer setting function

  @Description
    This function configures the timer's timeout threshold. Meanwhile it also
    resets other parameters in the timer

  @Precondition
    pTimer is not NULL and pointing to an already defined timer structure variable.

  @Parameters
    @param pTimer 
            Pointer to a timer structure variable
    @param timeout_ms 
            It holds the timeout threshold you want to configure
    
  @Returns
    None
 */
void Timer_Set(software_millisec_timer_t *pTimer, uint16_t timeout_ms)
{
    pTimer->TimeoutThreshold = timeout_ms;
    pTimer->TimerCount = 0;
    pTimer->isRunning = false;
    pTimer->isTimedOut = false;
}

/** 
  @Function
    void Timer_Start(software_millisec_timer_t *pTimer)

  @Summary
    Starting timer function

  @Description
    This function clears the timer count and sets the isRunning flag to be true.

  @Precondition
    pTimer is not NULL and pointing to an already defined timer structure variable.
    The timer's timeout threshold value must have been configured by the
    Timer_Set() function already.

  @Parameters
    @param pTimer 
            Pointer to a timer structure variable
    
  @Returns
    None
 */
void Timer_Start(software_millisec_timer_t *pTimer)
{
    pTimer->TimerCount = 0;
    pTimer->isRunning = true;
    pTimer->isTimedOut = false;
}

/** 
  @Function
    void Timer_Stop(software_millisec_timer_t *pTimer)

  @Summary
    Stopping timer function

  @Description
    This function sets the isRunning flag to be false.

  @Precondition
    pTimer is not NULL and pointing to an already defined timer structure variable.

  @Parameters
    @param pTimer 
            Pointer to a timer structure variable
    
  @Returns
    None
 */
void Timer_Stop(software_millisec_timer_t *pTimer)
{
    pTimer->isRunning = false;
}

/** 
  @Function
    void TMR3_CallBack(void)

  @Summary
    Timer 3 call back function

  @Description
    The timer 3 call back function is called by Timer 3 ISR every one millisecond. 

  @Precondition
    The system timer structure variable must be defined already.

  @Parameters
    None
    
  @Returns
    None
 */
void TMR3_CallBack(void)
{
    /* Call back every one millisecond by Timer 3 ISR */
    /* If the system timer is running and not timed out
     * then timer count increments 
     */
    if( systemTimer.isRunning && (!systemTimer.isTimedOut) )
    {
        /* After the timer count increments then check if it is timed out or not */
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
