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
 * File: dio.c
 * Description: Digital input output handling
 * Author: T. Hensle
 * Revision history: 1.0
 * Date: 07/08/18
 */

#include <xc.h>
#include "dio.h"

/* Set PORT configuration
 * PORTA: analog Pins, specified in ADC
 *       - OUTPUT : 6
 * PORTB - INPUT : 0-5
 * PORTC - OUTPUT : 3,4,6
 *       - INPUT : 7 
 * PORTD - OUTPUT: 7
 */
void GPIO_Init()
{    
    TRISA= 0x3F;
    LATA= 0x40;
    PORTA= 0;
    
    TRISB= 0x3F; 
    LATB= 0;
    PORTB= 0;
    
    TRISC= 0x80;
    PORTC= 0;
    LATC= 0;
    
    TRISD= 0x00;
    LATD= 0;
    PORTD= 0;
    
    /* external Interrupt config
     * Edge trigger: falling
     */
    INTCON= 0;
    INTCON2= IO_PORTB_PULL_DISABLE;
    INTCON3= 0;
    
    SET_TRIAC_PIN;
}

#ifdef EXT_GPIO
/**
 * @brief Reads one pin of the given port
 * @param PORT_ADR, parameter can be one of the following:
 *                      PORTA, PORTB, PORTC, PORTD
 * @param PORT_PIN
 * @return true if pin set, false if reset
 */
bool GPIO_ReadPin(uint8_t* PORT_ADR, uint8_t PORT_PIN)
{
    if(*(PORT_ADR+0x009) & PORT_PIN)
    {
        return true;
    }
    else
    {
        return false;
    }
}


/* Reads the whole port
 */
uint8_t GPIO_ReadPort(uint8_t* PORT_ADR)
{
    return (*PORT_ADR+0x009);
}


/* Set a given pin of the port 
 */
void GPIO_WritePin(uint8_t* PORT_ADR, uint8_t PORT_PIN, bool PIN_STATE)
{
    if(PIN_STATE == PINSET)
    {
        /* Adding 0x009 to the address of the input register PORTx 
         * will point to the corresponding LATx register */
        *(PORT_ADR+0x009)|= PORT_PIN;
    }
    else
    {
        *(PORT_ADR+0x009)&= ~PORT_PIN;
    }
}


/* Toggles a port pin, independent of the inital state
 */
void GPIO_TogglePin(uint8_t* PORT_ADR, uint8_t PORT_PIN)
{
    *(PORT_ADR+0x009)^= PORT_PIN;
}

#endif