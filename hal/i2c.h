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
 * File: i2c.h
 * Description: I2C communication
 * Author: T. Hensle
 * Revision history: 1.0
 * Date: 07/08/18
 */


#ifndef XC_HEADER_I2C_H
#define	XC_HEADER_I2C_H

#include <xc.h>   
#include <stdint.h>
#include <stdbool.h>
#include "timer.h"

#define I2C_STATUS_OK       0
#define I2C_STATUS_BUS_IDLE 1
#define I2C_STATUS_ACK      2
#define I2C_STATUS_NACK     3
#define I2C_STATUS_TIMEOUT  4
#define I2C_STATUS_ERROR    10


#define I2C_STATE_IDLE          0
#define I2C_STATE_START         1
#define I2C_STATE_SEND_ADDRESS  2
#define I2C_STATE_SEND_DATA     3
#define I2C_STATE_STOP          4

#define I2C_TIMEOUT_MS     10

void I2C_Init();
//void I2C_Start();
//void I2C_ForceStop();
//uint8_t I2C_SendData(uint8_t, uint8_t*, uint8_t);

uint8_t I2C_Start(uint8_t);
uint8_t I2C_SendData(uint8_t);
void I2C_Stop();

#endif	/* XC_HEADER_I2C_H */

