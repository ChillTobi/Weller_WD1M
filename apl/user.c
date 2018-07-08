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
 * File: user.c
 * Description: Top level function
 * Author: T. Hensle
 * Revision history: 1.0
 * Date: 07/08/18
 */


#include <xc.h>
#include "user.h"


//static uint16_t u16_UserTemperatureSetpoint= 0;
static bool bFlag_Menu= false;

static struct_User_Temperatures t_Temperatures;
static struct_Buttons t_Buttons;
static struct_User_Menu t_Menu;


void USER_Init()
{
    uint16_t u16_StartupCounter= 0;
    uint16_t u16_TempNvmData= 0;

    
    u16_TempNvmData= NVM_Read(NVM_ADDRESS_SETPOINT);
    if(u16_TempNvmData <= USER_MAX_LIMIT_SETPOINT)
    {
        t_Temperatures.SetpointTemperature= u16_TempNvmData;
    }
    else
    {
        t_Temperatures.SetpointTemperature= USER_STANDARD_SETPOINT;
    }
    
    u16_TempNvmData= NVM_Read(NVM_ADDRESS_TEMP1);
    if(u16_TempNvmData <= USER_MAX_LIMIT_SETPOINT)
    {
        t_Temperatures.PresetTemperature1= u16_TempNvmData;
    }
    else
    {
        t_Temperatures.PresetTemperature1= USER_STANDARD_PRESET_1;
    }

    u16_TempNvmData= NVM_Read(NVM_ADDRESS_TEMP2);
    if(u16_TempNvmData <= USER_MAX_LIMIT_SETPOINT)
    {
        t_Temperatures.PresetTemperature2= u16_TempNvmData;
    }
    else
    {
        t_Temperatures.PresetTemperature2= USER_STANDARD_PRESET_2;
    }
    
    u16_TempNvmData= NVM_Read(NVM_ADDRESS_TEMP3);
    if(u16_TempNvmData <= USER_MAX_LIMIT_SETPOINT)
    {
        t_Temperatures.PresetTemperature3= u16_TempNvmData;
    }
    else
    {
        t_Temperatures.PresetTemperature3= USER_STANDARD_PRESET_3;
    }
    
    
    LCD_SetMainDigits(888, LCD_NUMBER);
    LCD_SetPresetDigits(888,LCD_PRESET_1 ,LCD_NUMBER);
    LCD_SetPresetDigits(888,LCD_PRESET_2, LCD_NUMBER);
    LCD_SetPresetDigits(888,LCD_PRESET_3, LCD_NUMBER);
    LCD_SetIcons(LCD_ICON_CELCIUS);
    LCD_Update();

    u16_StartupCounter= TIMER_GetSysTick();
    while(1)
    {
        if((TIMER_GetSysTick() - u16_StartupCounter) > USER_STARTUP_TIME_MS)
        {
            break;
        }
        LCD_Task();
    }
    
    LCD_Clear(); 
    LCD_SetPresetDigits(t_Temperatures.PresetTemperature1,LCD_PRESET_1, LCD_NUMBER);
    LCD_SetPresetDigits(t_Temperatures.PresetTemperature2,LCD_PRESET_2, LCD_NUMBER);
    LCD_SetPresetDigits(t_Temperatures.PresetTemperature3,LCD_PRESET_3, LCD_NUMBER);
    LCD_SetIcons(LCD_ICON_CELCIUS);
    LCD_Update();
}


/* The USER_Task is the top function which controls every part in the programm
 * Call this function within a 1ms-Task */
void USER_Task()
{
    static uint8_t      u8_ErroState= 0;
    static uint16_t     u16_TemporarySetpoint= 0;
    static uint16_t     u16_TemporaryCurrentTemperature= 0;
    
    static uint16_t     u16_TemporarySaveSetpoint= 0;
    static uint16_t     u16_SaveCurrentSettingCounter= 0;
    
    static uint16_t     u16_ShowCurrentSettingCounter= 0;
    static uint8_t      u8_DisplayChangeCounter= 0;
    
    volatile static uint32_t        u32_WatchdogCounter= 0;
    static bool                     bFlag_AutoOff= false;
    
    static uint16_t   u16_AdcPT20Voltage= 0;
    
    if(bFlag_AutoOff == false)
    { 
        /*******************************************************/
        /* ERROR */
        u16_AdcPT20Voltage= ADC_GetVoltageMV();

        if(u16_AdcPT20Voltage > ADC_UPPER_VOLTAGE_LEVEL)
        {
            u8_ErroState|= USER_ERROR_STATE_NO_TOOL;
        }
        else if(u16_AdcPT20Voltage < ADC_LOWER_VOLTAGE_LEVEL)
        {
            ;
        }
        else
        {
            if(u8_ErroState & (1<< USER_ERROR_STATE_NO_TOOL))
            {
                u8_ErroState&= ~USER_ERROR_STATE_NO_TOOL;
                t_Temperatures.SetpointTemperature= u16_TemporarySetpoint;
            }
        }

        if(!u8_ErroState)
        {
            if(t_Temperatures.SetpointTemperature != u16_TemporarySetpoint)
            {
                if(t_Temperatures.SetpointTemperature > USER_MAX_LIMIT_SETPOINT )
                {
                    t_Temperatures.SetpointTemperature= USER_MAX_LIMIT_SETPOINT;
                }

                LCD_SetMainDigits(t_Temperatures.SetpointTemperature, LCD_NUMBER);
                LCD_SetIcons(LCD_ICON_CELCIUS);
                u16_TemporarySetpoint= t_Temperatures.SetpointTemperature;
                u16_ShowCurrentSettingCounter= 0;
            }
            else
            {
                if(u16_ShowCurrentSettingCounter < USER_SHOW_SETTING_MS)
                {
                    ++u16_ShowCurrentSettingCounter;
                }
                else
                {
                    if(u8_DisplayChangeCounter > 250)
                    {
                        t_Temperatures.CurrentTemperature= USER_TemperatureFilter();
                        
                        if(t_Temperatures.CurrentTemperature < USER_MIN_LIMIT_SETPOINT)
                        {
                            LCD_SetMainDigits(LCD_WORD_LINES,LCD_LETTER); 
                        }
                        else
                        {
                            LCD_SetMainDigits(t_Temperatures.CurrentTemperature,LCD_NUMBER); 
                            LCD_SetIcons(LCD_ICON_CELCIUS);
                        }

                        u16_TemporaryCurrentTemperature= t_Temperatures.CurrentTemperature;
                        u8_DisplayChangeCounter= 0;
                    }
                    else
                    {
                        ++u8_DisplayChangeCounter;
                    }
                }
            }  
        }
        else
        {
            if(u8_ErroState & (1<< USER_ERROR_STATE_NO_TOOL))
            {
                u16_TemporarySetpoint= t_Temperatures.SetpointTemperature;
                t_Temperatures.SetpointTemperature= 0;
                LCD_SetMainDigits(LCD_WORD_LINES,LCD_LETTER);
            }
            else if(u8_ErroState & (1<< USER_ERROR_STATE_TEMPERATURE))
            {
                t_Temperatures.SetpointTemperature= 0;
                PWM_SetDutyCycle(0);
                LCD_SetMainDigits(LCD_WORD_ERROR,LCD_LETTER);
            } 
        }

        /*******************************************************/
        BUTTONS_GetState(&t_Buttons);

        /*if((t_Buttons.Temp1 == BUTTON_HOLD) && (t_Buttons.Temp2 == BUTTON_HOLD))
        {        
            t_Buttons.Temp1 = BUTTON_RELEASED;
            t_Buttons.Temp2 = BUTTON_RELEASED;
        }*/

        /************************************************************/
        if(t_Buttons.Up == BUTTON_PUSHED)
        {
            USER_IncrementSetpoint();
        }
        else if(t_Buttons.Up == BUTTON_HOLD)
        {
            USER_FastIncrementSetpoint();
        }

        /************************************************************/
        if(t_Buttons.Down == BUTTON_PUSHED)
        {
            USER_DecrementSetpoint();
        }
        else if(t_Buttons.Down == BUTTON_HOLD)
        {
            USER_FastDecrementSetpoint();
        }


        /************************************************************/
        if(t_Buttons.Temp1 == BUTTON_PUSHED)
        {
            t_Temperatures.PresetTemperature1= NVM_Read(NVM_ADDRESS_TEMP1);
            t_Temperatures.SetpointTemperature= t_Temperatures.PresetTemperature1;
        }
        else if(t_Buttons.Temp1 == BUTTON_HOLD)
        {
            t_Temperatures.PresetTemperature1= t_Temperatures.SetpointTemperature;
            LCD_SetPresetDigits(t_Temperatures.PresetTemperature1,LCD_PRESET_1, true);
            NVM_Write(NVM_WRITE_TEMP1, t_Temperatures.PresetTemperature1);
        }

        if(t_Buttons.Temp2 == BUTTON_PUSHED)
        {
            t_Temperatures.PresetTemperature2= NVM_Read(NVM_ADDRESS_TEMP2);
            t_Temperatures.SetpointTemperature= t_Temperatures.PresetTemperature2;
        }
        else if(t_Buttons.Temp2 == BUTTON_HOLD)
        {           
            t_Temperatures.PresetTemperature2= t_Temperatures.SetpointTemperature;
            LCD_SetPresetDigits(t_Temperatures.PresetTemperature2,LCD_PRESET_2, true);
            NVM_Write(NVM_WRITE_TEMP2, t_Temperatures.PresetTemperature2);
        }

        if(t_Buttons.Temp3 == BUTTON_PUSHED)
        {
            t_Temperatures.PresetTemperature3= NVM_Read(NVM_ADDRESS_TEMP3);
            t_Temperatures.SetpointTemperature= t_Temperatures.PresetTemperature3;
        }
        else if(t_Buttons.Temp3 == BUTTON_HOLD)
        {
            t_Temperatures.PresetTemperature3= t_Temperatures.SetpointTemperature;
            LCD_SetPresetDigits(t_Temperatures.PresetTemperature3,LCD_PRESET_3, true);
            NVM_Write(NVM_WRITE_TEMP3, t_Temperatures.PresetTemperature3);
        }
    }
    
    /*******************************************************/
    /* Save current setpoint */
    if(u16_SaveCurrentSettingCounter > USER_SAVE_AFTER_MS)
    {
        u16_SaveCurrentSettingCounter= 0;
        NVM_Write(NVM_ADDRESS_SETPOINT, t_Temperatures.SetpointTemperature);
    }
    else
    {
        if(u16_TemporarySaveSetpoint == t_Temperatures.SetpointTemperature)
        {
            ++u16_SaveCurrentSettingCounter;
        }
        else
        {
            u16_SaveCurrentSettingCounter= 0;
        }
    }
    u16_TemporarySaveSetpoint= t_Temperatures.SetpointTemperature;
    
    /*******************************************************/
    /* Watchdog */
    if( (t_Buttons.Up == BUTTON_RELEASED) &&
        (t_Buttons.Down == BUTTON_RELEASED) &&
        (t_Buttons.Temp1 == BUTTON_RELEASED) &&
        (t_Buttons.Temp2 == BUTTON_RELEASED) &&
        (t_Buttons.Temp3 == BUTTON_RELEASED) &&
        (bFlag_AutoOff == false) )
    {
        ++u32_WatchdogCounter;
        if(u32_WatchdogCounter > USER_STANDBY_MS)
        {
            t_Temperatures.SetpointTemperature= USER_STANDBY_SETPOINT;
        }
        
        if(u32_WatchdogCounter > USER_AUTO_SHUTDOWN_MS)
        {
            bFlag_AutoOff= true;
            t_Temperatures.SetpointTemperature= 0;
            PWM_SetDutyCycle(0);
            LCD_Clear();
            LCD_SetMainDigits(LCD_WORD_OFF,LCD_LETTER);
        }
    }
    else
    {
        u32_WatchdogCounter= 0;
    }
    
}




uint16_t USER_GetSetpointValue()
{
    return t_Temperatures.SetpointTemperature;
}


void USER_NewSetpointValue(uint16_t u16_Value)
{
    if((t_Temperatures.SetpointTemperature <= USER_MAX_LIMIT_SETPOINT) && 
            (t_Temperatures.SetpointTemperature >= USER_MIN_LIMIT_SETPOINT))
    { 
        t_Temperatures.SetpointTemperature= u16_Value;
    }
}


void USER_IncrementSetpoint()
{
    ++t_Temperatures.SetpointTemperature;
    if(t_Temperatures.SetpointTemperature > USER_MAX_LIMIT_SETPOINT)
    {
        t_Temperatures.SetpointTemperature= USER_MAX_LIMIT_SETPOINT;
    }
}


void USER_DecrementSetpoint()
{
    if(t_Temperatures.SetpointTemperature > USER_MIN_LIMIT_SETPOINT)
    {
        --t_Temperatures.SetpointTemperature;
    }
}


void USER_FastIncrementSetpoint()
{
    static uint8_t u8_FastIncrementCounter= 0;
    ++u8_FastIncrementCounter;
    if(u8_FastIncrementCounter > USER_FAST_INCREMENT_TIME_MS)
    {
        u8_FastIncrementCounter= 0;
        ++t_Temperatures.SetpointTemperature;
        
        if(t_Temperatures.SetpointTemperature > USER_MAX_LIMIT_SETPOINT)
        {
            t_Temperatures.SetpointTemperature= USER_MAX_LIMIT_SETPOINT;
        }
    }
}

/* */
void USER_FastDecrementSetpoint()
{
    static uint8_t u8_FastDecrementCounter= 0;
    ++u8_FastDecrementCounter;
    if(u8_FastDecrementCounter > USER_FAST_INCREMENT_TIME_MS)
    {
        if(t_Temperatures.SetpointTemperature > USER_MIN_LIMIT_SETPOINT)
        {
            u8_FastDecrementCounter= 0;
            --t_Temperatures.SetpointTemperature;
        }
    }
}

/* Moving average filter over four temperature samples,
 * it is called every 250ms */
uint16_t USER_TemperatureFilter()
{
    static uint16_t u16_FilterArray[4];
    uint16_t u16_FilterTemporary= 0;
    u16_FilterTemporary= ADC_GetTemperature() + u16_FilterArray[1] + u16_FilterArray[2] + u16_FilterArray[3];
    u16_FilterTemporary/= 4;
    u16_FilterArray[3]= u16_FilterArray[2];
    u16_FilterArray[2]= u16_FilterArray[1];
    u16_FilterArray[1]= ADC_GetTemperature();

    return u16_FilterTemporary;
}



/* This function is called from higher layer functions
 */
/*uint16_t TEMP_GetTemperatureFahrenheit()
{
    return (uint16_t)(((s16_TemperatureCelcius * 9) / 5) + 32) ;
}*/