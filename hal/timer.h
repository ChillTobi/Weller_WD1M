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
 * File: time.h
 * Description: Basic system timer for 1ms 
 * Author: T. Hensle
 * Revision history: 1.0
 * Date: 07/08/18
 */
 
#ifndef XC_HEADER_TIMER_H

#define	XC_HEADER_TIMER_H

#include <xc.h> // include processor files - each processor file is guarded.  
#include "stdint.h"
#include "stdbool.h"

#define TIMER2_COMPARE_VALUE    249

#define TIMER2_PRESCALER_16     2
#define TIMER2_PRESCALER_4      1
#define TIMER2_PRESCALER_1      0

#define TIMER2_ENABLE           4           


void TIMER_Init();
void TIMER_IncrementSysTick();
uint32_t TIMER_GetSysTick();
void TIMER_SetSysTickFlag();
void TIMER_ResetSysTickFlag();
bool TIMER_GetSysTickFlag();



#endif	/* XC_HEADER_TIMER_H */

