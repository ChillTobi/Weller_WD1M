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
 * File: i2c.c
 * Description: I2C communication
 * Author: T. Hensle
 * Revision history: 1.0
 * Date: 07/08/18
 */


#include <xc.h>
#include "i2c.h"


static uint8_t u8_I2C_State= 0;

/* Initialization of I2C master with disabled receiver
 * f_i2c= 20kHz
 */
void I2C_Init()
{
    SSPSTAT= 0;
    SSPCON1= 0x28;
    SSPCON2= 0;
    SSPADD= 19;
    SSPSTAT= 0;
    TRISC3= 1;
    TRISC4= 1;
    PORTCbits.RC3= 1;
    PORTCbits.RC4= 1;
    
    //u8_I2C_State= I2C_STATE_IDLE;
}


uint8_t I2C_Start(uint8_t u8_Address)
{
    uint16_t u16_Timeout= TIMER_GetSysTick();
    if(!((SSPSTAT & 0x04) || (SSPCON2 & 0x1F)))
    {
        SEN= 1;
        while((SSPSTAT & 0x04) || (SSPCON2 & 0x1F))
        {
            u16_Timeout= TIMER_GetSysTick() - u16_Timeout;
            if(u16_Timeout > I2C_TIMEOUT_MS)
            {
                return I2C_STATUS_TIMEOUT;
            }
        }
        SSPBUF= u8_Address;
        return I2C_STATUS_ACK;
    }
    else
    {
        return I2C_STATUS_NACK;
    }
}


uint8_t I2C_SendData(uint8_t u8_Data)
{
    if(!((SSPSTAT & 0x04) || (SSPCON2 & 0x1F)))
    {
        SSPBUF= u8_Data;
        return I2C_STATUS_ACK;
    }
    else
    {
        return I2C_STATUS_NACK;
    }
}



void I2C_Stop()
{
    PEN= 1;
}