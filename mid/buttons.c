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
 * File: buttons.c
 * Description: Reads the push buttons inlc. debouncing 
 * Author: T. Hensle
 * Revision history: 1.0
 * Date: 07/08/18
 */



#include <xc.h>
#include "buttons.h"

static uint8_t u8_ButtonSignal[NUM_OF_BUTTONS]={BUTTON_RELEASED,
                                                BUTTON_RELEASED,
                                                BUTTON_RELEASED,
                                                BUTTON_RELEASED,
                                                BUTTON_RELEASED};

/* Call this function from other layers */
void BUTTONS_GetState(struct_Buttons* t_Buttons)
{
    t_Buttons->Up= u8_ButtonSignal[0];
    t_Buttons->Down= u8_ButtonSignal[1];
    t_Buttons->Temp1= u8_ButtonSignal[2];
    t_Buttons->Temp2= u8_ButtonSignal[3];
    t_Buttons->Temp3= u8_ButtonSignal[4];
}


/* The BUTTON_Task() function must called periodically, i.e. 1ms */
void BUTTONS_Task()
{
    /*****************************************************************/
    // Local variables
    static uint16_t u16_ButtonsDebounceCounter[8];
    static uint16_t u16_ButtonsHoldCounter[8];
    static uint8_t u8_ButtonsStatusPressed= 0;
    uint8_t u8_ButtonsTemporaryInput= 0xff;    
    
    /*****************************************************************/
    
    u8_ButtonsTemporaryInput= GET_BUTTONS;
    
    if(u8_ButtonsTemporaryInput)
    {  
        /**********************************************************************/
        //BUTTON UP
        if(u8_ButtonsTemporaryInput & (1<<BUTTON_UP))
        {
            u8_ButtonsStatusPressed|= (1<<BUTTON_UP);
            ++u16_ButtonsHoldCounter[BUTTON_UP];
            if(u16_ButtonsHoldCounter[BUTTON_UP] > BUTTON_UPDOWN_HOLD_TIME_MS)
            {
                u8_ButtonSignal[0]= BUTTON_HOLD;
                u8_ButtonsStatusPressed&= ~(1<<BUTTON_UP);
                u16_ButtonsHoldCounter[BUTTON_UP]= 0;
            }  
        }
        
        /**********************************************************************/
        //BUTTON DOWN
        if(u8_ButtonsTemporaryInput & (1<<BUTTON_DOWN))
        {
            u8_ButtonsStatusPressed|= (1<<BUTTON_DOWN);
            ++u16_ButtonsHoldCounter[BUTTON_DOWN];
            if(u16_ButtonsHoldCounter[BUTTON_DOWN] > BUTTON_UPDOWN_HOLD_TIME_MS)
            {
                u8_ButtonSignal[1]= BUTTON_HOLD;
                u8_ButtonsStatusPressed&= ~(1<<BUTTON_DOWN);
                u16_ButtonsHoldCounter[BUTTON_DOWN]= 0;
            }
        }
        
        /**********************************************************************/
        //BUTTON PRESET1
        if(u8_ButtonsTemporaryInput & (1<<BUTTON_TEMP1))
        {
            u8_ButtonsStatusPressed|= (1<<BUTTON_TEMP1);
            ++u16_ButtonsHoldCounter[BUTTON_TEMP1];
            if(++u16_ButtonsHoldCounter[BUTTON_TEMP1] > BUTTON_PRESET_HOLD_TIME_MS)
            {
                u8_ButtonSignal[2]= BUTTON_HOLD;
                u8_ButtonsStatusPressed&= ~(1<<BUTTON_TEMP1);
                u16_ButtonsHoldCounter[BUTTON_TEMP1]= 0;
            }
        }
        
        /**********************************************************************/
        //BUTTON PRESET2
        if(u8_ButtonsTemporaryInput & (1<<BUTTON_TEMP2))
        {
            u8_ButtonsStatusPressed|= (1<<BUTTON_TEMP2);
            ++u16_ButtonsHoldCounter[BUTTON_TEMP2];
            if(u16_ButtonsHoldCounter[BUTTON_TEMP2] > BUTTON_PRESET_HOLD_TIME_MS)
            {
                u8_ButtonSignal[3]= BUTTON_HOLD;
                u8_ButtonsStatusPressed&= ~(1<<BUTTON_TEMP2);
                u16_ButtonsHoldCounter[BUTTON_TEMP2]= 0;
            }
        }
        
        /**********************************************************************/
        //BUTTON PRESET3
        if(u8_ButtonsTemporaryInput & (1<<BUTTON_TEMP3))
        {
            u8_ButtonsStatusPressed|= (1<<BUTTON_TEMP3);
            ++u16_ButtonsHoldCounter[BUTTON_TEMP3];
            if(u16_ButtonsHoldCounter[BUTTON_TEMP3] > BUTTON_PRESET_HOLD_TIME_MS)
            {
                u8_ButtonSignal[4]= BUTTON_HOLD;
                u8_ButtonsStatusPressed&= ~(1<<BUTTON_TEMP3);
                u16_ButtonsHoldCounter[BUTTON_TEMP3]= 0;
            }
        }
    }
    else
    {
        /**********************************************************************/
        //BUTTON UP
        if(u8_ButtonsStatusPressed == (1<<BUTTON_UP))
        {
            ++u16_ButtonsDebounceCounter[BUTTON_UP];
            if(u16_ButtonsDebounceCounter[BUTTON_UP] > BUTTON_DEBOUNCE_TIME_MS)
            {
                u8_ButtonSignal[0]= BUTTON_PUSHED;
                u16_ButtonsDebounceCounter[BUTTON_UP]= 0;
                u16_ButtonsHoldCounter[BUTTON_UP]= 0;
                u8_ButtonsStatusPressed&= ~(1<<BUTTON_UP);
            }
        }
        else
        {
            u8_ButtonSignal[0]= BUTTON_RELEASED;
        }
        
        /**********************************************************************/
        //BUTTON DOWN
        if(u8_ButtonsStatusPressed == (1<<BUTTON_DOWN))
        {
            ++u16_ButtonsDebounceCounter[BUTTON_DOWN]; 
            if(u16_ButtonsDebounceCounter[BUTTON_DOWN] > BUTTON_DEBOUNCE_TIME_MS)
            {
                u8_ButtonSignal[1]= BUTTON_PUSHED;
                u16_ButtonsDebounceCounter[BUTTON_DOWN]= 0;
                u16_ButtonsHoldCounter[BUTTON_DOWN]= 0;
                u8_ButtonsStatusPressed&= ~(1<<BUTTON_DOWN);
            }
        }
        else
        {
            u8_ButtonSignal[1]= BUTTON_RELEASED;
        }
        
        /**********************************************************************/
        //BUTTON PRESET TEMP 1
        if(u8_ButtonsStatusPressed == (1<<BUTTON_TEMP1))
        {
            ++u16_ButtonsDebounceCounter[BUTTON_TEMP1]; 
            if(u16_ButtonsDebounceCounter[BUTTON_TEMP1] > BUTTON_DEBOUNCE_TIME_MS)
            {
                u8_ButtonSignal[2]= BUTTON_PUSHED; 
                u16_ButtonsDebounceCounter[BUTTON_TEMP1]= 0;
                u16_ButtonsHoldCounter[BUTTON_TEMP1]= 0;
                u8_ButtonsStatusPressed&= ~(1<<BUTTON_TEMP1);
            }
        }
        else
        {
            u8_ButtonSignal[2]= BUTTON_RELEASED;
            u16_ButtonsHoldCounter[BUTTON_TEMP1]= 0;
        }
        
        /**********************************************************************/
        //BUTTON PRESET TEMP 2
        if(u8_ButtonsStatusPressed == (1<<BUTTON_TEMP2))
        {
            ++u16_ButtonsDebounceCounter[BUTTON_TEMP2]; 
            if(u16_ButtonsDebounceCounter[BUTTON_TEMP2] > BUTTON_DEBOUNCE_TIME_MS)
            {
                u8_ButtonSignal[3]= BUTTON_PUSHED;
                u16_ButtonsDebounceCounter[BUTTON_TEMP2]= 0;
                u16_ButtonsHoldCounter[BUTTON_TEMP2]= 0;
                u8_ButtonsStatusPressed&= ~(1<<BUTTON_TEMP2);
            }
        }
        else
        {
            u8_ButtonSignal[3]= BUTTON_RELEASED;
            u16_ButtonsHoldCounter[BUTTON_TEMP2]= 0;
        }
        
        /**********************************************************************/
        //BUTTON PRESET TEMP 3
        if(u8_ButtonsStatusPressed == (1<<BUTTON_TEMP3))
        {
            ++u16_ButtonsDebounceCounter[BUTTON_TEMP3]; 
            if(u16_ButtonsDebounceCounter[BUTTON_TEMP3] > BUTTON_DEBOUNCE_TIME_MS)
            {
                u8_ButtonSignal[4]= BUTTON_PUSHED;
                u16_ButtonsDebounceCounter[BUTTON_TEMP3]= 0;
                u16_ButtonsHoldCounter[BUTTON_TEMP3]= 0;
                u8_ButtonsStatusPressed&= ~(1<<BUTTON_TEMP3);
            }
        }
        else
        {
            u8_ButtonSignal[4]= BUTTON_RELEASED;
            u16_ButtonsHoldCounter[BUTTON_TEMP3]= 0;
        }
    } 
}


