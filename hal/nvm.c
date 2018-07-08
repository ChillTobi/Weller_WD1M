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
 * File: nvm.c
 * Description: None volatile memory (EEPROM) access
 * Author: T. Hensle
 * Revision history: 1.0
 * Date: 07/08/18
 */


#include <xc.h>
#include "nvm.h"
#include "system.h"


static bool bFlag_NVM_Update= false;
static uint16_t u16_NVM_WriteBuffer[NVM_NUM_OF_ELEMENTS];
static uint8_t u8_NVM_WriteRegister= 0;

void NVM_Init()
{
    uint16_t u16_TempData= 0;
    
    for(;u16_TempData < NVM_NUM_OF_ELEMENTS; ++u16_TempData)
    {
        u16_NVM_WriteBuffer[u16_TempData]= 0;
    }
    u16_TempData= 0;
    
    EECON1= 0;    
}

/* This functions handles NVM write operations, if a request is set.
 * To set a request use NVM_Write() 
 * Every iterration of the funtcion will write one byte, therefore the 
 * function has to be called at least two times to handle 16bit values,
 * which are the prefered size */
void NVM_Task()
{    
    static bool bFlag_StateWriteLowByte= false;
    static uint8_t u8_TempWriteFlag= 0;
    static uint16_t u16_TempWriteData= 0;
    static uint16_t u16_TempAddress= 0;

    if(u8_NVM_WriteRegister > 0)
    {
        // Check for errors
        if(EECON1bits.WRERR == 1)
        {
            return;
        }
        
        if( !EECON1bits.WR )
        {
            SYSTEM_DisableInterrupts();
            EECON1bits.WREN= 1;

            if(bFlag_StateWriteLowByte == false)
            {
                if(u8_NVM_WriteRegister & (1<<NVM_WR_FLAG_VERSION))
                {
                    u16_TempAddress= NVM_ADDRESS_SW_VERSION;
                    u16_TempWriteData= u16_NVM_WriteBuffer[NVM_WRITE_VERSION];
                    u8_TempWriteFlag= NVM_WR_FLAG_VERSION;
                }
                else if(u8_NVM_WriteRegister & (1<<NVM_WR_FLAG_TEMP1))
                {
                    u16_TempAddress= NVM_ADDRESS_TEMP1;
                    u16_TempWriteData= u16_NVM_WriteBuffer[NVM_WRITE_TEMP1];
                    u8_TempWriteFlag= NVM_WR_FLAG_TEMP1;
                }
                else if(u8_NVM_WriteRegister & (1<<NVM_WR_FLAG_TEMP2))
                {
                    u16_TempAddress= NVM_ADDRESS_TEMP2;
                    u16_TempWriteData= u16_NVM_WriteBuffer[NVM_WRITE_TEMP2];
                    u8_TempWriteFlag= NVM_WR_FLAG_TEMP2;
                }
                else if(u8_NVM_WriteRegister & (1<<NVM_WR_FLAG_TEMP3))
                {
                    u16_TempAddress= NVM_ADDRESS_TEMP3;
                    u16_TempWriteData= u16_NVM_WriteBuffer[NVM_WRITE_TEMP3];
                    u8_TempWriteFlag= NVM_WR_FLAG_TEMP3;
                }   
                else if(u8_NVM_WriteRegister & (1<<NVM_WR_FLAG_AUTOOFF))
                {
                    u16_TempAddress= NVM_ADDRESS_AUTO_OFF;
                    u16_TempWriteData= u16_NVM_WriteBuffer[NVM_WRITE_AUTOOFF];
                    u8_TempWriteFlag= NVM_WR_FLAG_AUTOOFF;
                }
                else if(u8_NVM_WriteRegister & (1<<NVM_WR_FLAG_STANDBY))
                {
                    u16_TempAddress= NVM_ADDRESS_STANDBY_TEMP;
                    u16_TempWriteData= u16_NVM_WriteBuffer[NVM_WRITE_STANDBY];
                    u8_TempWriteFlag= NVM_WR_FLAG_STANDBY;
                }
                else if(u8_NVM_WriteRegister & (1<<NVM_WR_FLAG_OPTIONS))
                {
                    u16_TempAddress= NVM_ADDRESS_OPTIONS;
                    u16_TempWriteData= u16_NVM_WriteBuffer[NVM_WRITE_OPTIONS];
                    u8_TempWriteFlag= NVM_WR_FLAG_OPTIONS;
                }
                else if(u8_NVM_WriteRegister & (1<<NVM_WR_FLAG_SETPOINT))
                {
                    u16_TempAddress= NVM_ADDRESS_SETPOINT;
                    u16_TempWriteData= u16_NVM_WriteBuffer[NVM_WRITE_SETPOINT];
                    u8_TempWriteFlag= NVM_WR_FLAG_SETPOINT;
                }
                /* if other EEPROM bytes needs to be written, just add else-if */
                else
                {
                    ;
                }
                bFlag_StateWriteLowByte= true;
                EEADR= u16_TempAddress;
                EEDATA= (u16_TempWriteData >> 8) & 0x00ff;
            }
            else
            {
                bFlag_StateWriteLowByte= false; 
                u8_NVM_WriteRegister&= ~(1<<u8_TempWriteFlag);
                EEADR= u16_TempAddress + 0x0001;
                EEDATA= u16_TempWriteData & 0x00ff;  
                u16_TempWriteData= 0;
            }

            EECON1bits.EEPGD= 0;        
            EECON1bits.CFGS= 0;
            EECON2= 0x55;
            EECON2= 0x0AA;
            EECON1bits.WR= 1;

            SYSTEM_EnableInterrupts();
        }
    }
}


/* Writes the information to the write buffer.
 * Note: The given address is not a memory address */
void NVM_Write(uint8_t u8_Address, uint16_t u16_Data)
{
    u16_NVM_WriteBuffer[u8_Address]= u16_Data;
    u8_NVM_WriteRegister|= (1<<u8_Address);
}

/* Reads the information back from the EEPROM.
 * Note: The given address is not a memory address */
uint16_t NVM_Read(uint16_t u16_Address)
{
    uint16_t u16_Temp= 0;
    if(u16_Address < NVM_MAX_ADDRESS)
    {
        EEADR= u16_Address;
        EECON1bits.EEPGD= 0;        
        EECON1bits.CFGS= 0;
        EECON1bits.RD= 1;
        u16_Temp= EEDATA;
        u16_Temp= u16_Temp << 8;
 
        EEADR= u16_Address+1;
        EECON1bits.RD= 1;
        u16_Temp|= EEDATA & 0x00ff;
        
        return u16_Temp;
    }
    return 0;
}
