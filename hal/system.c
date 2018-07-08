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
 * File: system.c
 * Description: General system handling 
 * Author: T. Hensle
 * Revision history: 1.0
 * Date: 07/08/18
 */


#include <xc.h>
#include "system.h"


/* System clock settings */
void SYSTEM_Init()
{
    OSCCON= OSC_SPEED_8MHZ | SYS_CLOCK_PRIMARY ;
    while(IOFS == 0);
    TMR2IP= 1;
    PLLEN= 1;
    while(IOFS == 0);
}

void SYSTEM_EnableInterrupts()
{
    INTCONbits.GIE= 1;
    INTCONbits.PEIE= 1;
}

void SYSTEM_DisableInterrupts()
{
    INTCONbits.GIE= 0;
    INTCONbits.PEIE= 0;
}
