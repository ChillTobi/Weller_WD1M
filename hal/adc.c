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
 * File: adc.c
 * Description: Analog to digital converter handling
 * Author: T. Hensle
 * Revision history: 1.0
 * Date: 07/08/18
 */


/*****************************************************************/
// Inlcudes
#include <xc.h>
#include "adc.h"
#include "system.h"

/*****************************************************************/
// Global variables
static const uint32_t u32_AdcLsb= ADC_REFERENCE_VOLTAGE/(1<<ADC_RESOLUTION_BIT);
static uint16_t u16_AdcVoltageMV= 0;

static int32_t s16_TemperatureCelcius= 0;
static volatile uint8_t u8_ErrorRegister= 0;


/* Analog to digital contverter config
 */
void ADC_Init()
{
    ADCON0= 0;
    ADCON1= 0x07;
    ADCON2= 0;
    
    ADCON0= ADC_ENABLE | ADC_CHANNEL_1;
    // configure VDD and VSS for reference input and AIN0 - AIN4 as analog input
    ADCON2= ADC_RESULT_RIGHT_ALIGN | ADC_AQUISITION_TIME_0 | ADC_CLOCK_DIVIDER_64;
    
    SET_PT20_PIN;
    ADCON0= AIN_TEMPERATURE_PT20 | ADC_ENABLE;
    ADCON0bits.GO= 1;
}


/* Returns the conversion result */
uint16_t ADC_GetTemperature()
{
    return s16_TemperatureCelcius;
}

uint16_t ADC_GetVoltageMV()
{
    return u16_AdcVoltageMV;
}

uint16_t ADC_GetVoltageFiltered(uint16_t u16_Input)
{
    int32_t s32_FilterTemporary= 0;
    static uint16_t u16_OutputBefore= 0;
    
    s32_FilterTemporary= (int32_t)(u16_Input*ADC_FILTER_GAIN - u16_OutputBefore) * ADC_FILTER_TIME_CONSTANT;
    s32_FilterTemporary= (s32_FilterTemporary/1000) + u16_OutputBefore;
    u16_OutputBefore= (uint16_t) s32_FilterTemporary;
    return u16_OutputBefore;
}



/* Adc handler triggers new conversion if adc is ready */
void ADC_Task()
{
    int32_t si32_AdcTemporary= 0;
    uint16_t u16_AdcResult= 0;
    if(ADCON0bits.GO == 0)
    {
        u16_AdcResult= ADRES;
        u16_AdcVoltageMV= (u32_AdcLsb*(uint32_t)ADC_GetVoltageFiltered(u16_AdcResult))/(uint32_t)1000;
        
        si32_AdcTemporary= (u32_AdcLsb*(uint32_t)u16_AdcResult)/(uint32_t)1000;
        si32_AdcTemporary= (si32_AdcTemporary * si32_TempSensorGain) / 1000;
        si32_AdcTemporary= si32_AdcTemporary + si32_TempSensorOffset;
        
        s16_TemperatureCelcius= si32_AdcTemporary;
        
        if(s16_TemperatureCelcius > TEMPERATURE_UPPER_LIMIT_C)
        {
            u8_ErrorRegister|= ERROR_TEMPERATURE_SENSOR;
        }
        
        if(s16_TemperatureCelcius < 0)
        {
            s16_TemperatureCelcius= 0;
        }
        
        ADCON0= AIN_TEMPERATURE_PT20 | ADC_ENABLE;
        ADCON0bits.GO= 1;
    }
}


