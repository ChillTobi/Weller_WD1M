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
 * File: lcd.h   
 * Description: Library for PCF8576 LCD-Driver
 * Author: T. Hensle
 * Revision history: 1.0
 * Date: 07/08/18
 */

// This is a guard condition so that contents of this file are not included
// more than once.  
#ifndef XC_HEADER_LCD_H
#define	XC_HEADER_LCD_H

#include <xc.h> 
#include "../hal/i2c.h"
#include <stdint.h>
#include <stdbool.h>


#define NEXTCMD 128     // Issue when there will be more commands after this one
#define LASTCMD 0       // Issue when when this is the last command before ending transmission

/* Constants and default settings for the PCF */
// MODE SET
#define MODESET 64
#define MODE_NORMAL 0
#define MODE_POWERSAVING 16
#define DISPLAY_DISABLED 0
#define DISPLAY_ENABLED 8
#define BIAS_THIRD 0
#define BIAS_HALF 4
#define DRIVE_STATIC 1
#define DRIVE_2 2
#define DRIVE_3 3
#define DRIVE_4 0

//BLINK
#define BLINK  112
#define BLINKING_NORMAL 0
#define BLINKING_ALTERNATION 4
#define BLINK_FREQUENCY_OFF 0
#define BLINK_FREQUENCY2 1
#define BLINK_FREQUENCY1 2
#define BLINK_FREQUENCY05 3

//BANK SELECT
#define BANKSELECT 120
#define BANKSELECT_O1_RAM0 0
#define BANKSELECT_O1_RAM2 2
#define BANKSELECT_O2_RAM0 0
#define BANKSELECT_O2_RAM2 1

#define DEVICE_SELECT 96
  
// This is the address of the PCF on the i2c bus
#define I2C_ADDRESS_PCF8576 0b01110000   

//LOADDATAPOINTER
#define LOADDATAPOINTER_INIT  0
#define LOADDATAPOINTER_EXT   2
// RAM ADDRESSES
#define SIZE_OF_LCD_RAM     14
#define COMMAND_OFFSET      2

/*************************************************/

#define LCD_BIG_DIGIT       0
#define LCD_SMALL_DIGIT     1
#define LCD_SMALL_DIGIT_REV 2

#define LCD_1ST_BIG_DIGIT  0
#define LCD_2ND_BIG_DIGIT  1
#define LCD_3RD_BIG_DIGIT  2

#define LCD_NUM_OF_PRESET_VALUES    3
#define LCD_PRESET_1        3
#define LCD_PRESET_2        6
#define LCD_PRESET_3        9

#define LCD_STATUS_ERROR    0
#define LCD_STATUS_OK       1

/*************************************************/
// Font table

#define LCD_7SEG_ZERO           0b11010111

#define LCD_7SEG_ONE            0b11000000
#define LCD_SMALL_7SEG_ONE      0b00000011

#define LCD_7SEG_TWO            0b10011101
#define LCD_SMALL_7SEG_TWO      0b01011110

#define LCD_7SEG_THREE          0b11011100
#define LCD_SMALL_7SEG_THREE    0b00011111

#define LCD_7SEG_FOUR           0b11001010
#define LCD_SMALL_7SEG_FOUR     0b01001011
#define LCD_SMALL2_7SEG_FOUR    0b11001001

#define LCD_7SEG_FIVE           0b01011110 
#define LCD_SMALL_7SEG_FIVE     0b10011101

#define LCD_7SEG_SIX            0b01011111
#define LCD_SMALL_7SEG_SIX      0b11011110
#define LCD_SMALL2_SEG_SIX      0b10011111

#define LCD_7SEG_SEVEN          0b11010000
#define LCD_SMALL_7SEG_SEVEN    0b00000111
#define LCD_SMALL2_7SEG_SEVEN   0b11000100

#define LCD_7SEG_EIGHT          0b11011111

#define LCD_7SEG_NINE           0b11011110
#define LCD_SMALL_7SEG_NINE     0b01011111
#define LCD_SMALL2_7SEG_NINE    0b11011101

#define LCD_7SEG_E              0b00011111
#define LCD_7SEG_F              0b00011011
#define LCD_SMALL_7SEG_S        0b01011110
#define LCD_SMALL_7SEG_E        0b11011100
#define LCD_SMALL_7SEG_L        0b11010000
#define LCD_SMALL_7SEG_C        0b11010100
#define LCD_SMALL_7SEG_A        0b11001111
#define LCD_SMALL_7SEG_N        0b11000111
#define LCD_SMALL_7SEG_T        0b11011000
#define LCD_7SEG_O              0b11010111
#define LCD_7SEG_R              0b00001001
#define LCD_7SEG_U              0b11001111
#define LCD_7SEG_N              0b01001001
#define LCD_7SEG_LINE           0b00001000
#define LCD_7SEG_NONE           0
                 
#define LCD_NUMBER              true
#define LCD_LETTER              false

/*************************************************/
// ICONS
#define LCD_ICON_CELCIUS        0
#define LCD_ICON_ARROW_LEFT     1
#define LCD_ICON_ARROW_MIDDLE   2
#define LCD_ICON_ARROW_RIGHT    3
#define LCD_ICON_OFF            4
#define LCD_ICON_STANDBY        5


/*************************************************/
// MENU
#define LCD_WORD_SELECT         0
#define LCD_WORD_CANCEL         1
#define LCD_WORD_ESCAPE         2
#define LCD_WORD_ENTER          3
#define LCD_WORD_LINES          4
#define LCD_WORD_ERROR          5
#define LCD_WORD_OFF            6


//void LCD_Init();
void LCD_Init();
void LCD_SetMainDigits(uint16_t, bool);
void LCD_Dec2Bcd(uint16_t, uint8_t*);
void LCD_Test();
void LCD_Clear();
void LCD_Task();
inline void LCD_Update();
static uint8_t LCD_SetData(uint8_t, uint8_t);
static uint8_t LCD_GetData(uint8_t);
static uint8_t LCD_Bcd2Segment(uint8_t, uint8_t);
void LCD_SetPresetDigits(uint16_t, uint8_t, bool u8_Number);
void LCD_SetIcons(uint8_t u8_Icon);





#endif	/* XC_HEADER_LCD_H */

