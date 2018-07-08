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

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef XC_HEADER_PWM_H
#define	XC_HEADER_PWM_H

#include <xc.h> 
#include "stdint.h"
#include "stdbool.h"
#include "../apl/control.h"
#include "timer.h"
#include "dio.h"

#define PWM_PERIOD_MS   9


void PWM_Task();
void PWM_SetSyncTrigger();
void PWM_SetDutyCycle(uint16_t);

#ifdef PWM_SYNC
void PWM_Init();
uint16_t PWM_GetSyncTime();
#endif

#endif	/* XC_HEADER_TEMPLATE_H */

