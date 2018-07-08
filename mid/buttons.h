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
 * File: buttons.h
 * Description: Reads the push buttons inlc. debouncing 
 * Author: T. Hensle
 * Revision history: 1.0
 * Date: 07/08/18
 */


// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef XC_HEADER_BUTTONS_H
#define	XC_HEADER_BUTTONS_H

#include <xc.h> // include processor files - each processor file is guarded. 
#include "../hal/system.h"
#include "../hal/dio.h"
#include "../apl/user.h"

#define BUTTONS_PORT    PORTB

#define NUM_OF_BUTTONS  5

#define BUTTON_UP       4
#define BUTTON_DOWN     5
#define BUTTON_TEMP1    0
#define BUTTON_TEMP2    2
#define BUTTON_TEMP3    3

#define BUTTON_DEBOUNCE_TIME_MS     20
#define BUTTON_PRESET_HOLD_TIME_MS  2000
#define BUTTON_UPDOWN_HOLD_TIME_MS  250


#define BUTTON_RELEASED     0
#define BUTTON_PUSHED       1
#define BUTTON_HOLD         2

typedef struct{
    uint8_t Up;
    uint8_t Down;
    uint8_t Temp1;
    uint8_t Temp2;
    uint8_t Temp3;  
}struct_Buttons;

void BUTTONS_Task();
void BUTTONS_GetState(struct_Buttons*);


#endif	/* XC_HEADER_BUTTONS_H */

