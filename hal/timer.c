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
 * File: time.c
 * Description: Basic system timer for 1ms 
 * Author: T. Hensle
 * Revision history: 1.0
 * Date: 07/08/18
 */


#include <xc.h>
#include "timer.h"

static uint32_t u32_SysTickCounter= 0;
static bool bFlag_SysTick= false;

/* The SysTick timer provides a 1ms timebase.
 * For this the Timer2 is used to generate appropriate interrupt.
 */
void TIMER_Init()
{
    T2CON= 0;
    TMR2= 0;
    PR2= TIMER2_COMPARE_VALUE;
    T2CON= TIMER2_PRESCALER_16 | TIMER2_ENABLE | 0x08;     
    PIE1bits.TMR2IE= 1;
}

/* Return SysTicks since startup im milliseconds
 */
uint32_t TIMER_GetSysTick()
{
    return u32_SysTickCounter;
}


/* Callback function for interrupt handler */
void TIMER_IncrementSysTick()
{
    ++u32_SysTickCounter;
}


bool TIMER_GetSysTickFlag()
{
    return bFlag_SysTick;
}

void TIMER_SetSysTickFlag()
{
    bFlag_SysTick= true;
}

void TIMER_ResetSysTickFlag()
{
    bFlag_SysTick= false;
}