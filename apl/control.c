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
 * File: control.h
 * Description: Temperature control
 * Author: T. Hensle
 * Revision history: 1.0
 * Date: 07/08/18
 */


#include <xc.h>
#include "control.h"
#include "user.h"


static uint16_t u16_ControlOutput= 0;

/* PID Temperature control
 * Call this function within a 100ms-Task 
 * It is recommended first to handle the ADC before calling the temperature
 * control */
void CONTROL_Task()
{
    static int16_t s16_Error= 0;
    static int16_t s16_prevError= 0;
    
    int32_t s32_Temp_P= 0;
    int32_t s32_Temp_I= 0;
    int32_t s32_Temp_D= 0;
    int32_t s32_ControlOutput= 0;
    
    int16_t s16_CurrentTemperature= ADC_GetTemperature();
    
    
    if(s16_CurrentTemperature <= CONTROL_LIMIT_MAX )
    {
        s16_Error=  USER_GetSetpointValue() - s16_CurrentTemperature;
        
        if(s16_Error > PRECONTROL_DIFFERENCE)
        {
            u16_ControlOutput= 10;
        }
        else
        {
            /***************************************************************/
            // Proportional part
            s32_Temp_P= s16_Error * CONTROL_PARAMETER_P;

            if(s32_Temp_P > CONTROL_PARAMETER_P_LIMIT)
            {
                s32_Temp_P= CONTROL_PARAMETER_P_LIMIT;
            }

            if(s32_Temp_P < (-CONTROL_PARAMETER_P_LIMIT))
            {
                s32_Temp_P= -CONTROL_PARAMETER_P_LIMIT;
            }


            /***************************************************************/
            // Integral part
            if((s32_Temp_I < CONTROL_PARAMETER_I_LIMIT) && (s16_Error > 0))
            {
                s32_Temp_I+= s16_Error;
            }

            if(s32_Temp_I > CONTROL_PARAMETER_I_LIMIT)
            {
                s32_Temp_I= CONTROL_PARAMETER_I_LIMIT;
            }

            if(s32_Temp_I < (-CONTROL_PARAMETER_I_LIMIT))
            {
                s32_Temp_I= (-CONTROL_PARAMETER_I_LIMIT);
            }

            /***************************************************************/
            // Derivation part
            s32_Temp_D= s16_Error - s16_prevError;           
            s16_prevError= s16_Error;


            s32_ControlOutput= s32_Temp_P + s32_Temp_I * CONTROL_PARAMETER_I + s32_Temp_D * CONTROL_PARAMETER_D;

            if(s32_ControlOutput < (-CONTROL_OUTPUT_LIMIT_MIN))
            {
                s32_ControlOutput= -CONTROL_OUTPUT_LIMIT_MIN;
            }

            u16_ControlOutput= (uint16_t) (s32_ControlOutput / (int32_t)CONTROL_OUTPUT_LIMIT_MAX);
        }
    }
    else
    {
        u16_ControlOutput= 0;
    }
    

    PWM_SetDutyCycle(u16_ControlOutput);
}
