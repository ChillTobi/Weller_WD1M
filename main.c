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

/* Project: Solder Station Weller WD1
 * File: main.h
 * Description:
 * Author: T. Hensle
 * Revision history: 1.0
 * Date: 07/08/18
 */

/*****************************************************************/
// Inlcudes
#include <xc.h>
#include "main.h"




/*****************************************************************/
// Global variables
volatile uint16_t DebugVariable= 0;

/*****************************************************************/


/* Programm entry function
 */
int main(int argc, char** argv)
{
    /*****************************************************************/
    // Local variables
    uint8_t u8_TaskCounter100ms= 0;    
    
    
    /*****************************************************************/
    SYSTEM_Init();
    GPIO_Init();
    TIMER_Init();
    ADC_Init();
    I2C_Init();
    LCD_Init();
    NVM_Init();
    
    SYSTEM_EnableInterrupts();
    USER_Init();
    
    /*****************************************************************/
    while(1)
    {
        /* 1ms Task */
        if(TIMER_GetSysTickFlag() == true)
        {
            TIMER_ResetSysTickFlag();
            PWM_Task();
            BUTTONS_Task();
            USER_Task();  
 
            ++u8_TaskCounter100ms;
        }
        
        /* 100ms Task */
        if(u8_TaskCounter100ms > (TIME_INTERVALL_100MS-1))
        {
            ADC_Task();
            CONTROL_Task();
                    
            LCD_Update();
            u8_TaskCounter100ms= 0;
        }   
        LCD_Task();
        NVM_Task();
  }
  return (EXIT_SUCCESS);
}




/**
 *  Interrupt main handler
 */
void interrupt ISR()
{
    // Timer2 interrupt callback
    if(PIR1bits.TMR2IF == 1)
    {
        PIR1bits.TMR2IF = 0;
        TIMER_IncrementSysTick();
        TIMER_SetSysTickFlag();   
    }
    
    // External Interrupt 1 callback
    if(INTCON3bits.INT1F == 1)
    {
        INTCON3bits.INT1F= 0;
        PWM_SetSyncTrigger();
        // Reset Triac
        SET_TRIAC_PIN;
    }
}
