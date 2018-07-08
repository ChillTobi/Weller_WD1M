/*  Control software for solder station Weller WD 1M with PIC18F4620
    Copyright (C) 2018  T. Hensle

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

/*
 * File: pwm.c
 * Description: Pulse width modulation 
 * Author: T. Hensle
 * Revision history: 1.0
 * Date: 07/08/18
 */


#include <xc.h>
#include "pwm.h"


static bool bFlag_SyncTrigger= false;
static uint16_t u16_SyncTime= 0;
static uint8_t u8_DutyCycle= 0;



/* The basetime is 1ms in this application 
 * This is a software implementation of a PWM */
void PWM_Task() 
{
    static uint8_t u8_PwmCounter= 0;
    static uint8_t u8_PeriodCount= 0;

    if(bFlag_SyncTrigger == true)
    {
        ++u8_PwmCounter;
        if(u8_PwmCounter >= (9-u8_DutyCycle))
        {
            CLR_TRIAC_PIN;
        }
        
        if(u8_PwmCounter >= PWM_PERIOD_MS)
        {
            SET_TRIAC_PIN;
            ++u8_PeriodCount;
            u8_PwmCounter= 0;
            if(u8_PeriodCount > 1)
            {
                bFlag_SyncTrigger= false;
                u8_PeriodCount= 0;
            }
        }
    }
}

/* The PWM resolution is 10%
 * Values between 0 and 10 are accepted */
void PWM_SetDutyCycle(uint16_t u16_DutyCycle)
{
    if(u16_DutyCycle > 10)
    {
        u16_DutyCycle= 10;
    }
    
    u8_DutyCycle= (uint8_t) u16_DutyCycle;
}

/* This function is called when positive sine wave is detected 
 * by an external interrupt routine */
void PWM_SetSyncTrigger()
{
    bFlag_SyncTrigger= true;
}



#ifdef PWM_SYNC
void PWM_Init()
{
    while(!bFlag_SyncTrigger);
    u16_SyncTime= TIMER_GetSysTick();
    bFlag_SyncTrigger= false;
    while(!bFlag_SyncTrigger);
    u16_SyncTime= TIMER_GetSysTick() - u16_SyncTime;  
    bFlag_SyncTrigger= false;
}

uint16_t PWM_GetSyncTime() 
{
    return u16_SyncTime;
}
#endif

