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
 * File: dio.h
 * Description: Digital input output handling
 * Author: T. Hensle
 * Revision history: 1.0
 * Date: 07/08/18
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef XC_HEADER_DIO_H
#define	XC_HEADER_DIO_H

#include <xc.h> // include processor files - each processor file is guarded. 
#include "stdint.h"
#include <stdbool.h>

#define IO_EXTERNAL_INT_1   16
#define IO_EXTERNAL_INT_1_RISING 32
#define IO_EXTERNAL_INT_1_HIGH_PRIO 64

#define IO_PORTB_PULL_DISABLE 128

#define PIN_0   1
#define PIN_1   2
#define PIN_2   4
#define PIN_3   8
#define PIN_4   16
#define PIN_5   32
#define PIN_6   64
#define PIN_7   128

#define PINSET     true
#define PINRESET   false

#define SET_TRIAC_PIN   LATAbits.LA6= 1
#define SET_PT20_PIN    LATDbits.LD7= 1
#define SET_TX_PIN      LATCbits.LC6= 1

#define CLR_TRIAC_PIN   LATAbits.LA6= 0
#define CLR_PT20_PIN    LATDbits.LD7= 0
#define CLR_TX_PIN      LATCbits.LC6= 0

#define TOG_TRIAC_PIN   LATAbits.LA6^= 1
#define TOG_PT20_PIN    LATDbits.LD7^= 1
#define TOG_TX_PIN      LATCbits.LC6^= 1


#define GET_BUTTONS     (~PORTB) & (PIN_0 | PIN_2 | PIN_3 | PIN_4 | PIN_5)


void GPIO_Init();


#endif	/* XC_HEADER_DIO_H */


#ifdef EXT_GPIO
bool GPIO_ReadPin(uint8_t*, uint8_t);
uint8_t GPIO_ReadPort(uint8_t*);
void GPIO_WritePin(uint8_t*, uint8_t, bool);
void GPIO_TogglePin(uint8_t*, uint8_t);
#endif