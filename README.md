# Weller_WD1M

Control software for Weller WD1M solder station with PIC18F4620


This project started because of a defect WD1M solder station. First tests showed that the communication to LCD doesn't work anymore and I could even measure a control signal at the TRIACs. 
The LCD is driven by a PCF8576 LCD-Driver chip which communicates over I2C. An Arduino board and some code later, the LCD displayed something. This lead to the result that the microcontroller a PIC18F4620 was dead. 
After replaycing with a new one, the debugger got the correct ID and software could uploaded.


## Functionality

- PID temperature control, tested with WSD80 soldering iron.
- Preset temperatures values can changed by pushing one of the three preset buttons for at least 2 seconds. Standard values are 270°C, 360°C and 420°C, the values are saved in the EEPROM.
- Fixed standyby time, after 15min without pushing a button, the temperature si set to 150°C.
- Fixed shutdown time, after 60min without pushing a button, the solder station turns off (Reset needs to be done).
