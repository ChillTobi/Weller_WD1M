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
 * File: control.c
 * Description: Temperature control
 * Author: T. Hensle
 * Revision history: 1.0
 * Date: 07/08/18
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef XC_HEADER_CONTROL_H
#define	XC_HEADER_CONTROL_H

#include <xc.h>
#include "../hal/pwm.h"

#define CONTROL_PARAMETER_P     5
#define CONTROL_PARAMETER_I     50
#define CONTROL_PARAMETER_D     2

#define CONTROL_PARAMETER_P_LIMIT   900
#define CONTROL_PARAMETER_I_LIMIT   180000
#define CONTROL_PARAMETER_D_LIMIT   450


#define CONTROL_OUTPUT_LIMIT_MAX     100
#define CONTROL_OUTPUT_LIMIT_MIN     0

#define CONTROL_LIMIT_MAX       450
#define CONTROL_LIMIT_MIN       50
#define CONTROL_TOLERANCE       0


#define PRECONTROL_DIFFERENCE   100

void CONTROL_Task();


#endif	/* XC_HEADER_CONTROL_H */

