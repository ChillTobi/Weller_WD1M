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
 * File: nvm.h
 * Description: None volatile memory (EEPROM) access
 * Author: T. Hensle
 * Revision history: 1.0
 * Date: 07/08/18
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef XC_HEADER_NVM_H
#define	XC_HEADER_NVM_H

#include <xc.h> 
#include <stdint.h>


#define NVM_MIN_ADDRESS 0x0000
#define NVM_MAX_ADDRESS 0x03FF

#define NVM_ADDRESS_SW_VERSION          0x0000
#define NVM_ADDRESS_SW_VERSION_BYTE2    0x0001
#define NVM_ADDRESS_TEMP1               0x0002
#define NVM_ADDRESS_TEMP1_BYTE2         0x0003
#define NVM_ADDRESS_TEMP2               0x0004
#define NVM_ADDRESS_TEMP2_BYTE2         0x0005
#define NVM_ADDRESS_TEMP3               0x0006
#define NVM_ADDRESS_TEMP3_BYTE2         0x0007
#define NVM_ADDRESS_AUTO_OFF            0x0008
#define NVM_ADDRESS_AUTO_OFF_BYTE2      0x0009
#define NVM_ADDRESS_STANDBY_TEMP        0x000A
#define NVM_ADDRESS_STANDBY_TEMP_BYTE2  0x000B
#define NVM_ADDRESS_OPTIONS             0x000C
#define NVM_ADDRESS_OPTIONS_BYTE2       0x000D
#define NVM_ADDRESS_SETPOINT            0x000E
#define NVM_ADDRESS_SETPOINT_BYTE2      0x000F


#define NVM_WR_FLAG_VERSION           0
#define NVM_WR_FLAG_TEMP1             1
#define NVM_WR_FLAG_TEMP2             2
#define NVM_WR_FLAG_TEMP3             3
#define NVM_WR_FLAG_AUTOOFF           4
#define NVM_WR_FLAG_STANDBY           5
#define NVM_WR_FLAG_OPTIONS           6
#define NVM_WR_FLAG_SETPOINT          7


#define NVM_WRITE_VERSION           0
#define NVM_WRITE_TEMP1             1
#define NVM_WRITE_TEMP2             2
#define NVM_WRITE_TEMP3             3
#define NVM_WRITE_AUTOOFF           4
#define NVM_WRITE_STANDBY           5
#define NVM_WRITE_OPTIONS           6
#define NVM_WRITE_SETPOINT          7


#define NVM_NUM_OF_ELEMENTS         5

// defines the size of bytes of every address
#define NVM_SIZE_OF_ELEMENTS        2



void NVM_Init();
void NVM_Task();
void NVM_Write(uint8_t, uint16_t);
uint16_t NVM_Read(uint16_t);



#endif	/* XC_HEADER_NVM_H */

