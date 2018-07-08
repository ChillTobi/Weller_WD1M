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
 * File: lcd.c
 * Description: Library for PCF8576 LCD-Driver
 * Author: T. Hensle
 * Revision history: 1.0
 * Date: 07/08/18
 */


#include <xc.h>
#include "lcd.h"

/********************************************************************************************/
static uint8_t u8_LCD_Data[SIZE_OF_LCD_RAM+COMMAND_OFFSET];
static uint8_t u8_LCD_Data_Ext[SIZE_OF_LCD_RAM+COMMAND_OFFSET];
static u8_LCD_State= I2C_STATE_IDLE;


/********************************************************************************************/
const uint8_t u8_LCD_ModeSet = MODESET | MODE_NORMAL | DISPLAY_ENABLED | BIAS_THIRD | DRIVE_3;
const uint8_t u8_LCD_Blink = BLINK | BLINKING_NORMAL | BLINK_FREQUENCY_OFF;
const uint8_t u8_LCD_BankSelect = BANKSELECT | BANKSELECT_O1_RAM0 | BANKSELECT_O2_RAM0; 
const uint8_t u8_LCD_DeviceSelect= DEVICE_SELECT;
uint8_t u8_LCD_Datapointer = LOADDATAPOINTER_INIT;


/********************************************************************************************/

void LCD_Init()
{
    uint8_t u8_Temp;
    
    while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
    I2C_Start(I2C_ADDRESS_PCF8576);
    
    while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
    I2C_SendData(u8_LCD_ModeSet | NEXTCMD);
    
    while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
    I2C_SendData(u8_LCD_DeviceSelect | NEXTCMD);
    
    while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
    I2C_SendData(u8_LCD_Blink | NEXTCMD);
    
    while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
    I2C_SendData(u8_LCD_Datapointer | LASTCMD);

    for(u8_Temp= 0; u8_Temp < SIZE_OF_LCD_RAM; ++u8_Temp)
    {
        LCD_SetData(0 ,u8_Temp);
        while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
        I2C_SendData(0);
    }
    
    u8_LCD_Datapointer= LOADDATAPOINTER_EXT;
    
    while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
    I2C_Start(I2C_ADDRESS_PCF8576);
    
    while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
    I2C_SendData(u8_LCD_DeviceSelect | NEXTCMD);
    
    while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
    I2C_SendData(u8_LCD_Datapointer | LASTCMD);
    
    for(u8_Temp= 0; u8_Temp < SIZE_OF_LCD_RAM; ++u8_Temp)
    {
        LCD_SetData(0 ,u8_Temp);
        while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
        I2C_SendData(0);
    }
    
    while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
    I2C_Stop();
}


/* Turn all elements on the LCD on, just for debug purpose */
void LCD_Test()
{    
    uint8_t u8_Temp;
    u8_LCD_Datapointer= 0;
    while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
    I2C_Start(I2C_ADDRESS_PCF8576);
    
    while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
    I2C_SendData(u8_LCD_DeviceSelect | NEXTCMD);
    
    while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
    I2C_SendData(u8_LCD_Datapointer | LASTCMD);

    for(u8_Temp= 0; u8_Temp < SIZE_OF_LCD_RAM; ++u8_Temp)
    {
        while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
        I2C_SendData(0xff);
    }
    
    while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
    I2C_Stop();
    
    LCD_Clear();
}


/* Set the main digits which shows usually the current temperature
 * Call this function from other layers */
void LCD_SetMainDigits(uint16_t u16_MainData, bool bFlag_Number)
{
    uint8_t u8_TempArray[3];
    LCD_Dec2Bcd(u16_MainData, &u8_TempArray[0]);
   
    if(bFlag_Number == true)
    {
        /* trailing zero suppression */
        if(u16_MainData > 99)
        {
            u8_TempArray[0]= LCD_Bcd2Segment(u8_TempArray[0],LCD_BIG_DIGIT);
        }
        else
        {
            u8_TempArray[0]= LCD_7SEG_NONE;
        }


        if(u16_MainData > 9)
        {
            u8_TempArray[1]= LCD_Bcd2Segment(u8_TempArray[1],LCD_BIG_DIGIT);
        }
        else
        {
            u8_TempArray[1]= LCD_7SEG_NONE;
        }

        u8_TempArray[2]= LCD_Bcd2Segment(u8_TempArray[2],LCD_BIG_DIGIT);

        LCD_SetData(u8_TempArray[0],LCD_1ST_BIG_DIGIT);
        LCD_SetData(u8_TempArray[1],LCD_2ND_BIG_DIGIT);
        LCD_SetData(u8_TempArray[2],LCD_3RD_BIG_DIGIT);
        //LCD_Update();
    }
    else
    {
        switch(u16_MainData)
        {
            case LCD_WORD_LINES:     
                                LCD_SetData(LCD_7SEG_LINE,LCD_1ST_BIG_DIGIT);
                                LCD_SetData(LCD_7SEG_LINE,LCD_2ND_BIG_DIGIT);
                                LCD_SetData(LCD_7SEG_LINE,LCD_3RD_BIG_DIGIT);
                                break;
                                
            case LCD_WORD_ERROR:
                                LCD_SetData(LCD_7SEG_E,LCD_1ST_BIG_DIGIT);
                                LCD_SetData(LCD_7SEG_R,LCD_2ND_BIG_DIGIT);
                                LCD_SetData(LCD_7SEG_R,LCD_3RD_BIG_DIGIT);
                                break;
                                
            case LCD_WORD_OFF:
                                LCD_SetData(LCD_7SEG_O,LCD_1ST_BIG_DIGIT);
                                LCD_SetData(LCD_7SEG_F,LCD_2ND_BIG_DIGIT);
                                LCD_SetData(LCD_7SEG_F,LCD_3RD_BIG_DIGIT);
                                break;
                                
            default:            break;
        }
    }
}


/* Set one out of three preset values 
 * Call this function from other layers */
void LCD_SetPresetDigits(uint16_t u16_PresetData, uint8_t u8_Preset, bool bFlag_Number)
{
    uint8_t u8_TempArray[3];
    
    if(bFlag_Number == true)
    {
        LCD_Dec2Bcd(u16_PresetData, &u8_TempArray[0]);
        
        /* trailing zero suppression, */
        if(u16_PresetData > 99)
        {
            /* The first two digits of the Preset 1 value have a different connection than
             than the other small digits. This is only necessar if a 2 or 5 should displayed */
            if(u8_Preset == LCD_PRESET_1)
            {
                
                if(!((u8_TempArray[0] == 0) || (u8_TempArray[0] == 8)))
                {
                    u8_TempArray[0]= LCD_Bcd2Segment(u8_TempArray[0],LCD_SMALL_DIGIT_REV);
                }
                else
                {
                    u8_TempArray[0]= LCD_Bcd2Segment(u8_TempArray[0],LCD_SMALL_DIGIT);
                }
            }
            else
            {
                u8_TempArray[0]= LCD_Bcd2Segment(u8_TempArray[0],LCD_SMALL_DIGIT);
                
            }
        }
        else
        {
            u8_TempArray[0]= LCD_7SEG_NONE;
        }


        if(u16_PresetData > 9)
        {
            if(u8_Preset == LCD_PRESET_1)
            {
                 if(!((u8_TempArray[1] == 0) || (u8_TempArray[1] == 8)))
                {
                    u8_TempArray[1]= LCD_Bcd2Segment(u8_TempArray[1],LCD_SMALL_DIGIT_REV);
                }
                else
                {
                    u8_TempArray[1]= LCD_Bcd2Segment(u8_TempArray[1],LCD_SMALL_DIGIT);
                }
            }
            else
            {
                u8_TempArray[1]= LCD_Bcd2Segment(u8_TempArray[1],LCD_SMALL_DIGIT);
            }
        }
        else
        {
            u8_TempArray[1]= LCD_7SEG_NONE;
        }

        u8_TempArray[2]= LCD_Bcd2Segment(u8_TempArray[2],LCD_SMALL_DIGIT);

        LCD_SetData(u8_TempArray[0],u8_Preset);
        LCD_SetData(u8_TempArray[1],u8_Preset+1);
        LCD_SetData(u8_TempArray[2],u8_Preset+2);
    }
    else
    {
        switch(u16_PresetData)
        {
            case LCD_WORD_SELECT:       LCD_SetData(LCD_SMALL_7SEG_S,u8_Preset);
                                        LCD_SetData(LCD_SMALL_7SEG_E,u8_Preset+1);
                                        LCD_SetData(LCD_SMALL_7SEG_L,u8_Preset+2);
                                        break;
                        
            case LCD_WORD_CANCEL:       LCD_SetData(LCD_SMALL_7SEG_C,u8_Preset);
                                        LCD_SetData(LCD_SMALL_7SEG_A,u8_Preset+1);
                                        LCD_SetData(LCD_SMALL_7SEG_N,u8_Preset+2);
                                        break;
                        
            case LCD_WORD_ESCAPE:       LCD_SetData(LCD_SMALL_7SEG_E,u8_Preset);
                                        LCD_SetData(LCD_SMALL_7SEG_S,u8_Preset+1);
                                        LCD_SetData(LCD_SMALL_7SEG_C,u8_Preset+2);
                                        break;
                                        
            case LCD_WORD_ENTER:        LCD_SetData(LCD_SMALL_7SEG_E,u8_Preset);
                                        LCD_SetData(LCD_SMALL_7SEG_N,u8_Preset+1);
                                        LCD_SetData(LCD_SMALL_7SEG_T,u8_Preset+2);
                                        break;
                        
            default:    break;
        }
    }
}


/* This function maps the BCD data to the corresponding segments
 * @note The small digits have different connections regarding the big digits and the left one
 */
static uint8_t LCD_Bcd2Segment(uint8_t u8_Data, uint8_t u8_DigitType)
{
    switch(u8_Data)
    {
        case 0:     return LCD_7SEG_ZERO;
        case 1:     if(u8_DigitType == LCD_SMALL_DIGIT)
                    { 
                        return LCD_SMALL_7SEG_ONE;
                    }
                    else
                    {
                        return LCD_7SEG_ONE;
                    }
        
        case 2:     if(u8_DigitType == LCD_SMALL_DIGIT_REV)
                    {
                        return LCD_SMALL_7SEG_TWO;
                    }
                    else
                    {
                        return LCD_7SEG_TWO;
                    }
                        
        case 3:     if(u8_DigitType == LCD_SMALL_DIGIT)
                    {
                        return LCD_SMALL_7SEG_THREE;
                    }
                    else
                    {
                        return LCD_7SEG_THREE;
                    }

        case 4:     if(u8_DigitType == LCD_SMALL_DIGIT)
                    {
                        return LCD_SMALL_7SEG_FOUR;
                    }
                    else if(u8_DigitType == LCD_SMALL_DIGIT_REV)
                    {
                        return LCD_SMALL2_7SEG_FOUR;    
                    }
                    else
                    {
                        return LCD_7SEG_FOUR;
                    }
        
        
        case 5:     if(u8_DigitType == LCD_SMALL_DIGIT_REV)
                    {
                        return LCD_SMALL_7SEG_FIVE;
                    }
                    else
                    {
                        return LCD_7SEG_FIVE;
                    }
        
        case 6:     if(u8_DigitType == LCD_SMALL_DIGIT)
                    {
                        return LCD_SMALL_7SEG_SIX;     
                    }
                    else if(u8_DigitType == LCD_SMALL_DIGIT_REV)
                    {
                        return LCD_SMALL2_SEG_SIX;
                    }
                    else
                    {
                        return LCD_7SEG_SIX;
                    }
        
        case 7:     if(u8_DigitType == LCD_SMALL_DIGIT)
                    {
                        return LCD_SMALL_7SEG_SEVEN;
                    }
                    else if(u8_DigitType == LCD_SMALL_DIGIT_REV)
                    {
                        return LCD_SMALL2_7SEG_SEVEN;
                    }
                    else
                    {
                        return LCD_7SEG_SEVEN;
                    }
        
        case 8:     return LCD_7SEG_EIGHT;
        
        case 9:     if(u8_DigitType == LCD_SMALL_DIGIT)
                    {
                        return LCD_SMALL_7SEG_NINE;
                    }
                    else if(u8_DigitType == LCD_SMALL_DIGIT_REV)
                    {
                        return LCD_SMALL2_7SEG_NINE;
                    }
                    else
                    {
                        return LCD_7SEG_NINE;
                    }
        
        case 10:    return LCD_7SEG_LINE;
        case 11:    return LCD_7SEG_R;
        case 12:    return LCD_7SEG_U;
        case 13:    return LCD_7SEG_N;
        case 14:    return LCD_7SEG_E;
        case 15:    return LCD_7SEG_F;
        
        
        default:    return LCD_7SEG_E;
    }
}


/* Decimal to binary coded digit */
static void LCD_Dec2Bcd(uint16_t u16_DecimalData, uint8_t* ptrBCD)
{
    if(u16_DecimalData > 999)
    {
        u16_DecimalData= 999;
    }
    // hundred
    *ptrBCD= u16_DecimalData / 100;
    ++ptrBCD;
    // decade
    *ptrBCD= (u16_DecimalData / 10) % 10;
    ++ptrBCD;
    // one
    *ptrBCD= u16_DecimalData % 10;
}

/* Show the corresponding icon on the LCD */
void LCD_SetIcons(uint8_t u8_Icon)
{
    uint8_t u8_Temp= 0;
    switch(u8_Icon)
    {
        case LCD_ICON_CELCIUS:  u8_Temp= LCD_GetData(LCD_3RD_BIG_DIGIT);
                                u8_Temp= u8_Temp | 32;
                                LCD_SetData(u8_Temp , LCD_3RD_BIG_DIGIT);
                                break;
                                
        default:                break;
    }
}


/*
 * @param u8_Data       Data to send to the LCD
 * @param u8_Position   Position of the data in the RAM
 * @return 
 */
static uint8_t LCD_SetData(uint8_t u8_Data, uint8_t u8_Position)
{
    if(u8_Position < SIZE_OF_LCD_RAM)
    {
        // The first two bytes are commands
        u8_LCD_Data[0]= NEXTCMD | u8_LCD_DeviceSelect;
        u8_LCD_Data[1]= LASTCMD | LOADDATAPOINTER_INIT;
        u8_LCD_Data[u8_Position+COMMAND_OFFSET]= u8_Data;   
        return LCD_STATUS_OK;
    }
    else
    {
        return LCD_STATUS_ERROR;
    }
}

/* Returns the data in the array send to the LCD 
 * @note: This is not the that is contained in the driver IC! */
static uint8_t LCD_GetData(uint8_t u8_Position)
{
    if(u8_Position < SIZE_OF_LCD_RAM)
    {
        return u8_LCD_Data[u8_Position+2];
    }
    else
    {
        return 0;
    }
}


/* Clears the LCD buffer */
void LCD_Clear()
{
    uint8_t u8_Temp= 0;
    for(; u8_Temp < (SIZE_OF_LCD_RAM+1); ++u8_Temp)
    {
        LCD_SetData(0, u8_Temp);
    }
}

/* Call this function every time the LCD has to show new data */
inline void LCD_Update()
{
    if(u8_LCD_State == I2C_STATE_IDLE)
    {
        u8_LCD_State= I2C_STATE_START;
    }
}

/* Handles the I2C communication with LCD-Driver chip PCF8576 */
void LCD_Task()
{
    static uint8_t u8_LCD_DataCounter= 0;
    static uint8_t u8_Status= 0; 
    static bool bFlag_SecondaryData= false;

    switch(u8_LCD_State)
    {
        case I2C_STATE_START:       u8_Status= I2C_Start(I2C_ADDRESS_PCF8576);
                                    if(u8_Status == I2C_TIMEOUT_MS)
                                    {
                                        u8_LCD_State= I2C_STATE_START;
                                    }
                                    else
                                    {
                                        u8_LCD_State= I2C_STATE_SEND_DATA;
                                    }
                                    break;

        case I2C_STATE_SEND_DATA:   
                                    if(bFlag_SecondaryData == false)
                                    {
                                        u8_Status= I2C_SendData(u8_LCD_Data[u8_LCD_DataCounter]);
                                    }
                                    else
                                    {
                                        u8_Status= I2C_SendData(u8_LCD_Data_Ext[u8_LCD_DataCounter]);
                                    }
                                    if(u8_Status == I2C_STATUS_ACK)
                                    {
                                        ++u8_LCD_DataCounter;
                                        if(u8_LCD_DataCounter >= SIZE_OF_LCD_RAM)
                                        {
                                            u8_LCD_DataCounter= 0;
                                            u8_LCD_State= I2C_STATE_STOP;
                                        }
                                    }
                                    break;

        case I2C_STATE_STOP:        if(u8_Status == I2C_STATUS_ACK)
                                    {
                                        I2C_Stop();
                                        u8_LCD_State= I2C_STATE_IDLE;
                                    }
                                    break;
    }
}