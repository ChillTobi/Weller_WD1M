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
 * File: user.h
 * Description: Top level function
 * Author: T. Hensle
 * Revision history: 1.0
 * Date: 07/08/18
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef XC_HEADER_USER_H
#define	XC_HEADER_USER_H

#include <xc.h>  
#include "stdlib.h"
#include "stdint.h"
#include "../hal/nvm.h"
#include "../hal/adc.h"
#include "../hal/pwm.h"
#include "../mid/lcd.h"
#include "../mid/buttons.h"


#define USER_MAX_LIMIT_SETPOINT     450
#define USER_MIN_LIMIT_SETPOINT     50

#define USER_FAST_INCREMENT_TIME_MS 20
#define USER_STARTUP_TIME_MS        2000

#define USER_AUTO_SHUTDOWN_MINUTES  60
#define USER_AUTO_SHUTDOWN_MS       (uint32_t) (USER_AUTO_SHUTDOWN_MINUTES * 60 * 1000)

#define USER_STANDBY_MINUTES        15
#define USER_STANDBY_MS             (uint32_t) (USER_STANDBY_MINUTES * 60 * 1000)

#define USER_SHOW_SETTING_MS        2000

#define USER_SAVE_AFTER_MS          20000

#define USER_STANDBY_SETPOINT       150

#define USER_STANDARD_SETPOINT      360
#define USER_STANDARD_PRESET_1      250
#define USER_STANDARD_PRESET_2      360
#define USER_STANDARD_PRESET_3      420

#define USER_MENU_PAGE_AUTOOFF      0
#define USER_MENU_PAGE_TEMPUNIT     1
#define USER_MENU_PAGE_SWVERISON    2

#define USER_ERROR_STATE_NO_TOOL        0
#define USER_ERROR_STATE_TEMPERATURE    1


const uint8_t u8_SoftwareVersion[2]= {1,0};


typedef struct{
    uint16_t    Instance;
    uint8_t     InstanceOptions;
    bool        Entry;
    uint8_t     NumberOfMenuElements;
}struct_User_Menu;


typedef struct{
    uint16_t CurrentTemperature;
    uint16_t SetpointTemperature;
    uint16_t PresetTemperature1;
    uint16_t PresetTemperature2;
    uint16_t PresetTemperature3;
}struct_User_Temperatures;




void USER_Init();
void USER_Task();
void USER_NewSetpointValue(uint16_t);
void USER_IncrementSetpoint();
void USER_DecrementSetpoint();
void USER_FastIncrementSetpoint();
void USER_FastDecrementSetpoint();
uint16_t USER_GetSetpointValue();
void USER_Menu(struct_User_Menu*);
uint16_t USER_TemperatureFilter();

#endif	/* XC_HEADER_USER_H */

