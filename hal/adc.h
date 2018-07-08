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
 * File: adc.h
 * Description: Analog to digital converter handling
 * Author: T. Hensle
 * Revision history: 1.0
 * Date: 07/08/18
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef XC_HEADER_ADC_H
#define	XC_HEADER_ADC_H

#include <xc.h> 
#include <stdint.h>
#include <stdbool.h>
#include "dio.h"


#define ADC_REFERENCE_VOLTAGE 5000000
#define ADC_RESOLUTION_BIT 10

#define ADC_ENABLE  1

#define ADC_CHANNEL_0   0
#define ADC_CHANNEL_1   4
#define ADC_CHANNEL_2   8
#define ADC_CHANNEL_3   12
#define ADC_CHANNEL_4   16
#define ADC_CHANNEL_5   20   
#define ADC_CHANNEL_6   24
#define ADC_CHANNEL_7   28

#define AIN_TEMPERATURE_PT20        ADC_CHANNEL_1

#define ADC_CLOCK_DIVIDER_64    7
#define ADC_CLOCK_DIVIDER_16    6
#define ADC_CLOCK_DIVIDER_4     4
#define ADC_CLOCK_DIVIDER_32    2
#define ADC_CLOCK_DIVIDER_8     1
#define ADC_CLOCK_DIVIDER_2     0

#define ADC_RESULT_RIGHT_ALIGN 128

#define ADC_AQUISITION_TIME_20 56
#define ADC_AQUISITION_TIME_16 48
#define ADC_AQUISITION_TIME_12 40
#define ADC_AQUISITION_TIME_8 32
#define ADC_AQUISITION_TIME_0 0

#define ADC_ERROR_LEVEL         4800
#define ERROR_TEMPERATURE_SENSOR    1

#define TEMPERATURE_LOWER_LIMIT_C   50
#define TEMPERATURE_UPPER_LIMIT_C   460

#define ADC_LOWER_VOLTAGE_LEVEL     (uint16_t)1000
#define ADC_UPPER_VOLTAGE_LEVEL     (uint16_t)4850

#define ADC_FILTER_GAIN                 1
#define ADC_FILTER_SYSTEM_TIME          1
#define ADC_FILTER_TIME_CONSTANT        160


const int32_t si32_TempSensorGain= 95;
const int32_t si32_TempSensorOffset= 70;
// 125, -58



void ADC_Init();
void ADC_Task();
uint16_t ADC_GetTemperature();
uint16_t ADC_GetVoltageFiltered(uint16_t);
uint16_t ADC_GetVoltageMV();


#endif	/* XC_HEADER_ADC_H */

