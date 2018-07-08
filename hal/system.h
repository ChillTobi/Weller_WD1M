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
 * File: system.h
 * Description: General system handling 
 * Author: T. Hensle
 * Revision history: 1.0
 * Date: 07/08/18
 */


// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef XC_HEADER_SYSTEM_H
#define	XC_HEADER_SYSTEM_H



#include <xc.h> // include processor files - each processor file is guarded.  
#include "dio.h"
#include "adc.h"
#include "i2c.h"
#include "timer.h"

# define OSC_SPEED_8MHZ 112
# define OSC_SPEED_4MHZ 96
# define OSC_SPEED_2MHZ 80
# define OSC_SPEED_1MHZ 64

#define SYS_CLOCK_INTERNAL 2
#define SYS_CLOCK_SECONDARY 1
#define SYS_CLOCK_PRIMARY 0

#define TIME_INTERVALL_100MS        (uint32_t)99


void SYSTEM_Init();
void SYSTEM_EnableInterrupts();
void SYSTEM_DisableInterrupts();

#endif	/* XC_HEADER_SYSTEM_H */

