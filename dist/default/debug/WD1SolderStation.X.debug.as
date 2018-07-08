opt subtitle "Microchip Technology Omniscient Code Generator v1.45 (Free mode) build 201711160504"

opt pagewidth 120

	opt lm

	processor	18F4620
opt include "C:\Program Files (x86)\Microchip\xc8\v1.45\include\18f4620.cgen.inc"
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 360 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1104 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1216 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1328 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1380 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1385 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1602 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1607 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 1824 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 1829 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2051 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2268 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2273 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2432 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2497 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2574 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2651 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2728 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 2794 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 2926 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 2992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 2999 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3006 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3013 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3230 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3235 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3486 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3503 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3510 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3515 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3522 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3641 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 3752 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 3913 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 3988 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4155 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4234 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4248 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4352 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4359 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4373 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4444 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4669 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 4731 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 4801 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5029 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5036 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5112 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5217 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5224 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5327 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5334 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5341 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5348 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5481 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5509 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5514 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 5779 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 5940 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 5947 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 5954 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6039 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6053 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6067 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6074 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6095 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6102 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6109 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6116 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6123 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6130 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6137 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6144 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6156 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6163 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6170 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6177 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6184 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6191 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6198 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6205 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6212 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6374 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6505 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6512 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6521 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6528 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6542 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6551 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6558 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6572 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6579 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6692 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6699 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6713 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 360 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1104 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1216 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1328 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1380 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1385 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1602 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1607 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 1824 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 1829 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2051 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2268 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2273 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2432 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2497 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2574 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2651 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2728 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 2794 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 2926 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 2992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 2999 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3006 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3013 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3230 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3235 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3486 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3503 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3510 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3515 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3522 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3641 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 3752 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 3913 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 3988 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4155 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4234 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4248 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4352 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4359 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4373 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4444 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4669 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 4731 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 4801 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5029 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5036 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5112 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5217 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5224 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5327 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5334 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5341 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5348 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5481 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5509 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5514 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 5779 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 5940 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 5947 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 5954 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6039 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6053 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6067 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6074 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6095 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6102 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6109 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6116 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6123 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6130 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6137 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6144 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6156 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6163 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6170 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6177 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6184 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6191 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6198 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6205 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6212 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6374 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6505 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6512 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6521 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6528 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6542 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6551 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6558 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6572 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6579 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6692 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6699 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6713 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 360 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1104 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1216 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1328 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1380 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1385 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1602 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1607 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 1824 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 1829 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2051 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2268 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2273 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2432 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2497 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2574 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2651 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2728 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 2794 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 2926 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 2992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 2999 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3006 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3013 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3230 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3235 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3486 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3503 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3510 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3515 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3522 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3641 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 3752 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 3913 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 3988 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4155 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4234 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4248 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4352 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4359 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4373 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4444 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4669 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 4731 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 4801 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5029 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5036 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5112 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5217 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5224 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5327 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5334 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5341 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5348 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5481 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5509 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5514 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 5779 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 5940 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 5947 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 5954 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6039 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6053 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6067 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6074 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6095 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6102 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6109 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6116 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6123 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6130 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6137 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6144 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6156 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6163 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6170 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6177 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6184 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6191 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6198 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6205 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6212 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6374 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6505 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6512 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6521 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6528 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6542 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6551 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6558 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6572 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6579 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6692 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6699 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6713 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 360 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1104 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1216 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1328 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1380 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1385 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1602 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1607 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 1824 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 1829 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2051 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2268 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2273 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2432 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2497 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2574 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2651 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2728 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 2794 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 2926 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 2992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 2999 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3006 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3013 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3230 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3235 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3486 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3503 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3510 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3515 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3522 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3641 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 3752 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 3913 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 3988 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4155 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4234 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4248 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4352 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4359 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4373 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4444 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4669 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 4731 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 4801 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5029 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5036 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5112 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5217 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5224 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5327 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5334 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5341 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5348 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5481 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5509 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5514 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 5779 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 5940 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 5947 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 5954 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6039 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6053 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6067 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6074 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6095 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6102 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6109 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6116 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6123 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6130 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6137 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6144 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6156 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6163 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6170 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6177 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6184 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6191 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6198 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6205 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6212 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6374 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6505 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6512 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6521 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6528 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6542 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6551 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6558 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6572 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6579 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6692 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6699 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6713 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 360 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1104 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1216 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1328 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1380 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1385 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1602 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1607 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 1824 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 1829 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2051 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2268 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2273 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2432 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2497 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2574 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2651 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2728 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 2794 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 2926 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 2992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 2999 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3006 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3013 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3230 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3235 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3486 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3503 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3510 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3515 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3522 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3641 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 3752 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 3913 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 3988 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4155 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4234 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4248 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4352 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4359 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4373 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4444 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4669 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 4731 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 4801 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5029 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5036 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5112 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5217 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5224 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5327 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5334 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5341 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5348 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5481 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5509 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5514 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 5779 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 5940 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 5947 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 5954 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6039 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6053 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6067 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6074 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6095 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6102 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6109 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6116 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6123 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6130 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6137 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6144 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6156 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6163 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6170 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6177 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6184 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6191 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6198 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6205 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6212 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6374 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6505 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6512 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6521 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6528 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6542 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6551 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6558 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6572 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6579 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6692 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6699 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6713 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 360 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1104 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1216 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1328 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1380 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1385 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1602 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1607 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 1824 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 1829 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2051 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2268 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2273 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2432 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2497 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2574 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2651 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2728 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 2794 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 2926 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 2992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 2999 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3006 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3013 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3230 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3235 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3486 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3503 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3510 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3515 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3522 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3641 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 3752 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 3913 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 3988 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4155 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4234 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4248 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4352 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4359 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4373 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4444 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4669 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 4731 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 4801 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5029 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5036 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5112 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5217 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5224 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5327 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5334 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5341 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5348 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5481 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5509 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5514 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 5779 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 5940 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 5947 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 5954 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6039 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6053 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6067 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6074 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6095 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6102 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6109 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6116 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6123 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6130 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6137 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6144 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6156 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6163 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6170 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6177 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6184 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6191 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6198 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6205 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6212 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6374 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6505 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6512 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6521 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6528 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6542 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6551 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6558 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6572 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6579 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6692 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6699 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6713 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 360 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1104 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1216 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1328 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1380 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1385 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1602 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1607 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 1824 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 1829 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2051 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2268 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2273 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2432 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2497 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2574 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2651 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2728 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 2794 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 2926 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 2992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 2999 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3006 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3013 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3230 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3235 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3486 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3503 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3510 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3515 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3522 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3641 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 3752 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 3913 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 3988 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4155 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4234 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4248 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4352 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4359 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4373 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4444 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4669 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 4731 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 4801 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5029 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5036 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5112 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5217 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5224 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5327 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5334 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5341 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5348 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5481 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5509 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5514 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 5779 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 5940 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 5947 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 5954 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6039 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6053 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6067 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6074 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6095 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6102 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6109 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6116 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6123 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6130 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6137 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6144 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6156 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6163 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6170 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6177 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6184 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6191 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6198 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6205 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6212 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6374 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6505 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6512 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6521 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6528 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6542 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6551 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6558 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6572 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6579 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6692 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6699 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6713 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 360 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1104 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1216 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1328 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1380 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1385 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1602 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1607 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 1824 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 1829 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2051 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2268 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2273 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2432 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2497 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2574 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2651 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2728 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 2794 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 2926 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 2992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 2999 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3006 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3013 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3230 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3235 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3486 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3503 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3510 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3515 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3522 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3641 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 3752 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 3913 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 3988 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4155 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4234 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4248 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4352 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4359 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4373 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4444 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4669 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 4731 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 4801 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5029 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5036 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5112 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5217 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5224 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5327 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5334 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5341 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5348 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5481 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5509 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5514 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 5779 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 5940 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 5947 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 5954 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6039 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6053 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6067 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6074 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6095 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6102 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6109 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6116 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6123 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6130 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6137 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6144 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6156 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6163 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6170 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6177 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6184 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6191 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6198 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6205 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6212 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6374 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6505 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6512 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6521 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6528 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6542 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6551 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6558 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6572 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6579 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6692 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6699 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6713 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 360 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1104 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1216 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1328 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1380 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1385 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1602 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1607 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 1824 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 1829 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2051 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2268 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2273 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2432 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2497 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2574 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2651 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2728 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 2794 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 2926 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 2992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 2999 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3006 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3013 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3230 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3235 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3486 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3503 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3510 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3515 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3522 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3641 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 3752 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 3913 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 3988 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4155 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4234 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4248 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4352 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4359 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4373 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4444 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4669 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 4731 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 4801 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5029 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5036 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5112 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5217 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5224 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5327 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5334 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5341 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5348 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5481 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5509 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5514 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 5779 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 5940 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 5947 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 5954 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6039 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6053 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6067 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6074 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6095 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6102 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6109 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6116 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6123 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6130 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6137 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6144 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6156 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6163 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6170 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6177 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6184 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6191 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6198 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6205 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6212 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6374 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6505 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6512 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6521 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6528 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6542 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6551 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6558 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6572 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6579 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6692 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6699 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6713 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 360 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1104 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1216 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1328 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1380 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1385 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1602 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1607 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 1824 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 1829 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2051 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2268 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2273 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2432 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2497 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2574 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2651 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2728 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 2794 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 2926 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 2992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 2999 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3006 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3013 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3230 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3235 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3486 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3503 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3510 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3515 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3522 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3641 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 3752 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 3913 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 3988 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4155 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4234 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4248 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4352 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4359 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4373 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4444 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4669 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 4731 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 4801 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5029 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5036 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5112 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5217 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5224 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5327 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5334 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5341 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5348 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5481 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5509 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5514 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 5779 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 5940 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 5947 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 5954 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6039 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6053 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6067 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6074 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6095 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6102 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6109 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6116 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6123 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6130 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6137 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6144 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6156 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6163 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6170 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6177 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6184 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6191 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6198 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6205 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6212 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6374 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6505 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6512 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6521 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6528 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6542 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6551 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6558 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6572 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6579 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6692 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6699 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6713 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 360 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1104 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1216 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1328 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1380 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1385 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1602 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1607 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 1824 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 1829 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2051 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2268 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2273 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2432 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2497 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2574 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2651 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2728 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 2794 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 2926 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 2992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 2999 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3006 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3013 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3230 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3235 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3486 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3503 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3510 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3515 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3522 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3641 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 3752 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 3913 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 3988 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4155 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4234 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4248 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4352 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4359 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4373 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4444 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4669 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 4731 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 4801 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5029 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5036 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5112 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5217 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5224 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5327 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5334 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5341 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5348 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5481 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5509 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5514 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 5779 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 5940 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 5947 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 5954 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6039 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6053 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6067 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6074 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6095 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6102 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6109 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6116 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6123 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6130 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6137 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6144 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6156 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6163 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6170 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6177 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6184 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6191 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6198 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6205 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6212 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6374 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6505 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6512 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6521 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6528 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6542 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6551 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6558 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6572 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6579 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6692 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6699 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6713 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 360 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1104 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1216 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1328 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1380 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1385 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1602 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1607 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 1824 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 1829 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2051 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2268 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2273 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2432 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2497 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2574 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2651 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2728 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 2794 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 2926 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 2992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 2999 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3006 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3013 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3230 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3235 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3486 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3503 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3510 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3515 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3522 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3641 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 3752 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 3913 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 3988 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4155 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4234 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4248 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4352 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4359 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4373 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4444 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4669 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 4731 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 4801 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5029 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5036 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5112 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5217 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5224 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5327 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5334 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5341 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5348 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5481 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5509 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5514 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 5779 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 5940 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 5947 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 5954 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6039 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6053 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6067 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6074 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6095 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6102 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6109 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6116 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6123 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6130 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6137 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6144 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6156 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6163 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6170 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6177 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6184 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6191 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6198 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6205 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6212 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6374 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6505 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6512 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6521 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6528 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6542 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6551 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6558 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6572 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6579 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6692 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6699 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6713 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
# 52 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTA equ 0F80h ;# 
# 189 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTB equ 0F81h ;# 
# 360 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTC equ 0F82h ;# 
# 535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTD equ 0F83h ;# 
# 677 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PORTE equ 0F84h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATA equ 0F89h ;# 
# 992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATB equ 0F8Ah ;# 
# 1104 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATC equ 0F8Bh ;# 
# 1216 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATD equ 0F8Ch ;# 
# 1328 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LATE equ 0F8Dh ;# 
# 1380 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISA equ 0F92h ;# 
# 1385 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRA equ 0F92h ;# 
# 1602 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISB equ 0F93h ;# 
# 1607 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRB equ 0F93h ;# 
# 1824 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISC equ 0F94h ;# 
# 1829 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRC equ 0F94h ;# 
# 2046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISD equ 0F95h ;# 
# 2051 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRD equ 0F95h ;# 
# 2268 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TRISE equ 0F96h ;# 
# 2273 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
DDRE equ 0F96h ;# 
# 2432 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCTUNE equ 0F9Bh ;# 
# 2497 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE1 equ 0F9Dh ;# 
# 2574 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR1 equ 0F9Eh ;# 
# 2651 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR1 equ 0F9Fh ;# 
# 2728 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIE2 equ 0FA0h ;# 
# 2794 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PIR2 equ 0FA1h ;# 
# 2860 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
IPR2 equ 0FA2h ;# 
# 2926 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON1 equ 0FA6h ;# 
# 2992 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EECON2 equ 0FA7h ;# 
# 2999 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEDATA equ 0FA8h ;# 
# 3006 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADR equ 0FA9h ;# 
# 3013 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
EEADRH equ 0FAAh ;# 
# 3020 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA equ 0FABh ;# 
# 3025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCSTA1 equ 0FABh ;# 
# 3230 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA equ 0FACh ;# 
# 3235 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXSTA1 equ 0FACh ;# 
# 3486 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG equ 0FADh ;# 
# 3491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TXREG1 equ 0FADh ;# 
# 3498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG equ 0FAEh ;# 
# 3503 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCREG1 equ 0FAEh ;# 
# 3510 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG equ 0FAFh ;# 
# 3515 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRG1 equ 0FAFh ;# 
# 3522 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SPBRGH equ 0FB0h ;# 
# 3529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T3CON equ 0FB1h ;# 
# 3641 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3 equ 0FB2h ;# 
# 3648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3L equ 0FB2h ;# 
# 3655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR3H equ 0FB3h ;# 
# 3662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CMCON equ 0FB4h ;# 
# 3752 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CVRCON equ 0FB5h ;# 
# 3831 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ECCP1AS equ 0FB6h ;# 
# 3913 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PWM1CON equ 0FB7h ;# 
# 3983 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCON equ 0FB8h ;# 
# 3988 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BAUDCTL equ 0FB8h ;# 
# 4155 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP2CON equ 0FBAh ;# 
# 4234 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2 equ 0FBBh ;# 
# 4241 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2L equ 0FBBh ;# 
# 4248 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR2H equ 0FBCh ;# 
# 4255 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCP1CON equ 0FBDh ;# 
# 4352 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1 equ 0FBEh ;# 
# 4359 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1L equ 0FBEh ;# 
# 4366 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
CCPR1H equ 0FBFh ;# 
# 4373 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON2 equ 0FC0h ;# 
# 4444 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON1 equ 0FC1h ;# 
# 4529 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADCON0 equ 0FC2h ;# 
# 4648 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRES equ 0FC3h ;# 
# 4655 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESL equ 0FC3h ;# 
# 4662 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
ADRESH equ 0FC4h ;# 
# 4669 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON2 equ 0FC5h ;# 
# 4731 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPCON1 equ 0FC6h ;# 
# 4801 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPSTAT equ 0FC7h ;# 
# 5022 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPADD equ 0FC8h ;# 
# 5029 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
SSPBUF equ 0FC9h ;# 
# 5036 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T2CON equ 0FCAh ;# 
# 5107 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PR2 equ 0FCBh ;# 
# 5112 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
MEMCON equ 0FCBh ;# 
# 5217 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR2 equ 0FCCh ;# 
# 5224 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T1CON equ 0FCDh ;# 
# 5327 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1 equ 0FCEh ;# 
# 5334 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1L equ 0FCEh ;# 
# 5341 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR1H equ 0FCFh ;# 
# 5348 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
RCON equ 0FD0h ;# 
# 5481 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WDTCON equ 0FD1h ;# 
# 5509 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
HLVDCON equ 0FD2h ;# 
# 5514 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
LVDCON equ 0FD2h ;# 
# 5779 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
OSCCON equ 0FD3h ;# 
# 5856 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
T0CON equ 0FD5h ;# 
# 5933 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0 equ 0FD6h ;# 
# 5940 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0L equ 0FD6h ;# 
# 5947 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TMR0H equ 0FD7h ;# 
# 5954 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STATUS equ 0FD8h ;# 
# 6025 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2 equ 0FD9h ;# 
# 6032 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2L equ 0FD9h ;# 
# 6039 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR2H equ 0FDAh ;# 
# 6046 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW2 equ 0FDBh ;# 
# 6053 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC2 equ 0FDCh ;# 
# 6060 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC2 equ 0FDDh ;# 
# 6067 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC2 equ 0FDEh ;# 
# 6074 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF2 equ 0FDFh ;# 
# 6081 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
BSR equ 0FE0h ;# 
# 6088 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1 equ 0FE1h ;# 
# 6095 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1L equ 0FE1h ;# 
# 6102 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR1H equ 0FE2h ;# 
# 6109 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW1 equ 0FE3h ;# 
# 6116 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC1 equ 0FE4h ;# 
# 6123 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC1 equ 0FE5h ;# 
# 6130 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC1 equ 0FE6h ;# 
# 6137 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF1 equ 0FE7h ;# 
# 6144 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
WREG equ 0FE8h ;# 
# 6156 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0 equ 0FE9h ;# 
# 6163 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0L equ 0FE9h ;# 
# 6170 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
FSR0H equ 0FEAh ;# 
# 6177 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PLUSW0 equ 0FEBh ;# 
# 6184 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PREINC0 equ 0FECh ;# 
# 6191 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTDEC0 equ 0FEDh ;# 
# 6198 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
POSTINC0 equ 0FEEh ;# 
# 6205 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INDF0 equ 0FEFh ;# 
# 6212 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON3 equ 0FF0h ;# 
# 6304 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON2 equ 0FF1h ;# 
# 6374 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
INTCON equ 0FF2h ;# 
# 6491 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PROD equ 0FF3h ;# 
# 6498 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODL equ 0FF3h ;# 
# 6505 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PRODH equ 0FF4h ;# 
# 6512 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TABLAT equ 0FF5h ;# 
# 6521 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTR equ 0FF6h ;# 
# 6528 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRL equ 0FF6h ;# 
# 6535 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRH equ 0FF7h ;# 
# 6542 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TBLPTRU equ 0FF8h ;# 
# 6551 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLAT equ 0FF9h ;# 
# 6558 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PC equ 0FF9h ;# 
# 6565 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCL equ 0FF9h ;# 
# 6572 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATH equ 0FFAh ;# 
# 6579 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
PCLATU equ 0FFBh ;# 
# 6586 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
STKPTR equ 0FFCh ;# 
# 6692 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOS equ 0FFDh ;# 
# 6699 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSL equ 0FFDh ;# 
# 6706 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSH equ 0FFEh ;# 
# 6713 "C:\Program Files (x86)\Microchip\xc8\v1.45\include\pic18f4620.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_ADC_Init
	FNCALL	_main,_ADC_Task
	FNCALL	_main,_BUTTONS_Task
	FNCALL	_main,_GPIO_Init
	FNCALL	_main,_I2C_Init
	FNCALL	_main,_LCD_Init
	FNCALL	_main,_LCD_Task
	FNCALL	_main,_LCD_Update
	FNCALL	_main,_NVM_Init
	FNCALL	_main,_NVM_Task
	FNCALL	_main,_PWM_Task
	FNCALL	_main,_SYSTEM_EnableInterrupts
	FNCALL	_main,_SYSTEM_Init
	FNCALL	_main,_TIMER_GetSysTickFlag
	FNCALL	_main,_TIMER_Init
	FNCALL	_main,_TIMER_ResetSysTickFlag
	FNCALL	_main,_USER_Init
	FNCALL	_main,_USER_Task
	FNCALL	_USER_Task,_ADC_GetVoltageMV
	FNCALL	_USER_Task,_BUTTONS_GetState
	FNCALL	_USER_Task,_LCD_Clear
	FNCALL	_USER_Task,_LCD_SetIcons
	FNCALL	_USER_Task,_LCD_SetMainDigits
	FNCALL	_USER_Task,_LCD_SetPresetDigits
	FNCALL	_USER_Task,_NVM_Read
	FNCALL	_USER_Task,_NVM_Write
	FNCALL	_USER_Task,_PWM_SetDutyCycle
	FNCALL	_USER_Task,_USER_DecrementSetpoint
	FNCALL	_USER_Task,_USER_FastDecrementSetpoint
	FNCALL	_USER_Task,_USER_FastIncrementSetpoint
	FNCALL	_USER_Task,_USER_IncrementSetpoint
	FNCALL	_USER_Task,_USER_TemperatureFilter
	FNCALL	_USER_TemperatureFilter,_ADC_GetTemperature
	FNCALL	_LCD_SetMainDigits,_LCD_Bcd2Segment
	FNCALL	_LCD_SetMainDigits,_LCD_Dec2Bcd
	FNCALL	_LCD_SetMainDigits,_LCD_SetData
	FNCALL	_USER_Init,_LCD_Clear
	FNCALL	_USER_Init,_LCD_SetIcons
	FNCALL	_USER_Init,_LCD_SetPresetDigits
	FNCALL	_USER_Init,_LCD_Update
	FNCALL	_USER_Init,_NVM_Read
	FNCALL	_LCD_SetPresetDigits,_LCD_Bcd2Segment
	FNCALL	_LCD_SetPresetDigits,_LCD_Dec2Bcd
	FNCALL	_LCD_SetPresetDigits,_LCD_SetData
	FNCALL	_LCD_Dec2Bcd,___lwdiv
	FNCALL	_LCD_Dec2Bcd,___lwmod
	FNCALL	_LCD_SetIcons,_LCD_GetData
	FNCALL	_LCD_SetIcons,_LCD_SetData
	FNCALL	_LCD_Clear,_LCD_SetData
	FNCALL	_PWM_Task,_PWM_ResetSyncTrigger
	FNCALL	_NVM_Task,_SYSTEM_DisableInterrupts
	FNCALL	_NVM_Task,_SYSTEM_EnableInterrupts
	FNCALL	_LCD_Task,_I2C_SendData
	FNCALL	_LCD_Task,_I2C_Start
	FNCALL	_LCD_Task,_I2C_Stop
	FNCALL	_LCD_Init,_I2C_SendData
	FNCALL	_LCD_Init,_I2C_Start
	FNCALL	_LCD_Init,_I2C_Stop
	FNCALL	_LCD_Init,_LCD_SetData
	FNCALL	_I2C_Start,_TIMER_GetSysTick
	FNCALL	_ADC_Task,_ADC_GetVoltageFiltered
	FNCALL	_ADC_Task,___aldiv
	FNCALL	_ADC_Task,___lldiv
	FNCALL	_ADC_Task,___lmul
	FNCALL	_ADC_GetVoltageFiltered,___aldiv
	FNCALL	_ADC_GetVoltageFiltered,___lmul
	FNROOT	_main
	FNCALL	_ISR,_PWM_SetSyncTrigger
	FNCALL	_ISR,_TIMER_IncrementSysTick
	FNCALL	_ISR,_TIMER_SetSysTickFlag
	FNCALL	intlevel2,_ISR
	global	intlevel2
	FNROOT	intlevel2
	global	_u32_AdcLsb
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"hal/adc.c"
	line	16
_u32_AdcLsb:
	dw	(01312h) & 0xffff
	dw	highword(01312h)
	global __end_of_u32_AdcLsb
__end_of_u32_AdcLsb:
	global	_si32_TempSensorOffset
psect	smallconst
	file	"hal/adc.h"
	line	86
_si32_TempSensorOffset:
	dw	(-58) & 0xffff
	dw	highword(-58)
	global __end_of_si32_TempSensorOffset
__end_of_si32_TempSensorOffset:
	global	_si32_TempSensorGain
psect	smallconst
	file	"hal/adc.h"
	line	85
_si32_TempSensorGain:
	dw	(07Dh) & 0xffff
	dw	highword(07Dh)
	global __end_of_si32_TempSensorGain
__end_of_si32_TempSensorGain:
psect	smallconst
	file	"apl/user.h"
	line	72
	global	_u8_SoftwareVersion
_u8_SoftwareVersion:
	db	low(01h)
	db	low(0)
	global __end_of_u8_SoftwareVersion
__end_of_u8_SoftwareVersion:
psect	smallconst
	file	"mid/lcd.c"
	line	21
	global	_u8_LCD_BankSelect
_u8_LCD_BankSelect:
	db	low(078h)
	global __end_of_u8_LCD_BankSelect
__end_of_u8_LCD_BankSelect:
	global	_u8_LCD_Blink
psect	smallconst
	file	"mid/lcd.c"
	line	20
_u8_LCD_Blink:
	db	low(070h)
	global __end_of_u8_LCD_Blink
__end_of_u8_LCD_Blink:
	global	_u8_LCD_ModeSet
psect	smallconst
	file	"mid/lcd.c"
	line	19
_u8_LCD_ModeSet:
	db	low(04Bh)
	global __end_of_u8_LCD_ModeSet
__end_of_u8_LCD_ModeSet:
	global	_u8_LCD_DeviceSelect
psect	smallconst
	file	"mid/lcd.c"
	line	22
_u8_LCD_DeviceSelect:
	db	low(060h)
	global __end_of_u8_LCD_DeviceSelect
__end_of_u8_LCD_DeviceSelect:
	global	_u32_AdcLsb
	global	_si32_TempSensorOffset
	global	_si32_TempSensorGain
	global	_u8_LCD_Blink
	global	_u8_LCD_ModeSet
	global	_u8_LCD_DeviceSelect
	global	_t_Temperatures
	global	_u8_ButtonSignal
	global	USER_Task@u32_WatchdogCounter
	global	_s16_TemperatureCelcius
	global	_u16_SyncTime
	global	NVM_Task@u16_TempAddress
	global	NVM_Task@u16_TempWriteData
	global	USER_Task@u16_ShowCurrentSettingCounter
	global	USER_Task@u16_SaveCurrentSettingCounter
	global	USER_Task@u16_TemporarySaveSetpoint
	global	USER_Task@u16_TemporaryCurrentTemperature
	global	USER_Task@u16_TemporarySetpoint
	global	CONTROL_Task@s16_prevError
	global	CONTROL_Task@s16_Error
	global	_u16_ControlOutput
	global	_u8_LCD_State
	global	ADC_GetVoltageFiltered@u16_OutputBefore
	global	_u16_AdcVoltageMV
	global	_DebugVariable
	global	PWM_Task@u8_PeriodCount
	global	PWM_Task@u8_PwmCounter
	global	_u8_DutyCycle
	global	_bFlag_SyncTrigger
	global	NVM_Task@u8_TempWriteFlag
	global	NVM_Task@bFlag_StateWriteLowByte
	global	_u8_NVM_WriteRegister
	global	_bFlag_SysTick
	global	USER_FastDecrementSetpoint@u8_FastDecrementCounter
	global	USER_FastIncrementSetpoint@u8_FastIncrementCounter
	global	USER_Task@bFlag_AutoOff
	global	USER_Task@u8_DisplayChangeCounter
	global	USER_Task@u8_ErroState
	global	LCD_Task@bFlag_SecondaryData
	global	LCD_Task@u8_Status
	global	LCD_Task@u8_LCD_DataCounter
	global	_u8_LCD_Datapointer
	global	BUTTONS_Task@u8_ButtonsStatusPressed
	global	_u8_ErrorRegister
	global	_t_Buttons
	global	_u8_LCD_Data_Ext
	global	_u8_LCD_Data
	global	BUTTONS_Task@u16_ButtonsHoldCounter
	global	BUTTONS_Task@u16_ButtonsDebounceCounter
	global	_u16_NVM_WriteBuffer
	global	USER_TemperatureFilter@u16_FilterArray
	global	_u32_SysTickCounter
	global	main@u32_TimeStamp
	global	_PORTCbits
_PORTCbits	set	0xF82
	global	_PORTD
_PORTD	set	0xF83
	global	_LATD
_LATD	set	0xF8C
	global	_TRISD
_TRISD	set	0xF95
	global	_LATC
_LATC	set	0xF8B
	global	_PORTC
_PORTC	set	0xF82
	global	_TRISC
_TRISC	set	0xF94
	global	_PORTB
_PORTB	set	0xF81
	global	_LATB
_LATB	set	0xF8A
	global	_TRISB
_TRISB	set	0xF93
	global	_PORTA
_PORTA	set	0xF80
	global	_LATA
_LATA	set	0xF89
	global	_TRISA
_TRISA	set	0xF92
	global	_LATDbits
_LATDbits	set	0xF8C
	global	_LATAbits
_LATAbits	set	0xF89
	global	_TRISC4
_TRISC4	set	0x7CA4
	global	_TRISC3
_TRISC3	set	0x7CA3
	global	_PLLEN
_PLLEN	set	0x7CDE
	global	_ADRES
_ADRES	set	0xFC3
	global	_EECON2
_EECON2	set	0xFA7
	global	_EEDATA
_EEDATA	set	0xFA8
	global	_EEADR
_EEADR	set	0xFA9
	global	_EECON1bits
_EECON1bits	set	0xFA6
	global	_EECON1
_EECON1	set	0xFA6
	global	_PIE1bits
_PIE1bits	set	0xF9D
	global	_PR2
_PR2	set	0xFCB
	global	_TMR2
_TMR2	set	0xFCC
	global	_T2CON
_T2CON	set	0xFCA
	global	_SSPBUF
_SSPBUF	set	0xFC9
	global	_SSPADD
_SSPADD	set	0xFC8
	global	_SSPCON2
_SSPCON2	set	0xFC5
	global	_SSPCON1
_SSPCON1	set	0xFC6
	global	_SSPSTAT
_SSPSTAT	set	0xFC7
	global	_OSCCON
_OSCCON	set	0xFD3
	global	_ADCON0bits
_ADCON0bits	set	0xFC2
	global	_ADCON2
_ADCON2	set	0xFC0
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_ADCON0
_ADCON0	set	0xFC2
	global	_PIR1bits
_PIR1bits	set	0xF9E
	global	_PEN
_PEN	set	0x7E2A
	global	_SEN
_SEN	set	0x7E28
	global	_TMR2IP
_TMR2IP	set	0x7CF9
	global	_IOFS
_IOFS	set	0x7E9A
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_INTCON3
_INTCON3	set	0xFF0
	global	_INTCON2
_INTCON2	set	0xFF1
	global	_INTCON
_INTCON	set	0xFF2
	global	_INTCON3bits
_INTCON3bits	set	0xFF0
; #config settings
global __CFG_OSC$INTIO67
__CFG_OSC$INTIO67 equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
global __CFG_PWRT$OFF
__CFG_PWRT$OFF equ 0x0
global __CFG_BOREN$OFF
__CFG_BOREN$OFF equ 0x0
global __CFG_BORV$3
__CFG_BORV$3 equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_WDTPS$32768
__CFG_WDTPS$32768 equ 0x0
global __CFG_CCP2MX$PORTC
__CFG_CCP2MX$PORTC equ 0x0
global __CFG_PBADEN$OFF
__CFG_PBADEN$OFF equ 0x0
global __CFG_LPT1OSC$OFF
__CFG_LPT1OSC$OFF equ 0x0
global __CFG_MCLRE$OFF
__CFG_MCLRE$OFF equ 0x0
global __CFG_STVREN$OFF
__CFG_STVREN$OFF equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_XINST$OFF
__CFG_XINST$OFF equ 0x0
global __CFG_CP0$OFF
__CFG_CP0$OFF equ 0x0
global __CFG_CP1$OFF
__CFG_CP1$OFF equ 0x0
global __CFG_CP2$OFF
__CFG_CP2$OFF equ 0x0
global __CFG_CP3$OFF
__CFG_CP3$OFF equ 0x0
global __CFG_CPB$OFF
__CFG_CPB$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT0$OFF
__CFG_WRT0$OFF equ 0x0
global __CFG_WRT1$OFF
__CFG_WRT1$OFF equ 0x0
global __CFG_WRT2$OFF
__CFG_WRT2$OFF equ 0x0
global __CFG_WRT3$OFF
__CFG_WRT3$OFF equ 0x0
global __CFG_WRTC$OFF
__CFG_WRTC$OFF equ 0x0
global __CFG_WRTB$OFF
__CFG_WRTB$OFF equ 0x0
global __CFG_WRTD$OFF
__CFG_WRTD$OFF equ 0x0
global __CFG_EBTR0$OFF
__CFG_EBTR0$OFF equ 0x0
global __CFG_EBTR1$OFF
__CFG_EBTR1$OFF equ 0x0
global __CFG_EBTR2$OFF
__CFG_EBTR2$OFF equ 0x0
global __CFG_EBTR3$OFF
__CFG_EBTR3$OFF equ 0x0
global __CFG_EBTRB$OFF
__CFG_EBTRB$OFF equ 0x0
	file	"dist/default/debug\WD1SolderStation.X.debug.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec,lowdata
global __pbssBANK0
__pbssBANK0:
_t_Temperatures:
       ds      10
_u8_ButtonSignal:
       ds      5
USER_Task@u32_WatchdogCounter:
       ds      4
_s16_TemperatureCelcius:
       ds      4
_u16_SyncTime:
       ds      2
NVM_Task@u16_TempAddress:
       ds      2
NVM_Task@u16_TempWriteData:
       ds      2
USER_Task@u16_ShowCurrentSettingCounter:
       ds      2
USER_Task@u16_SaveCurrentSettingCounter:
       ds      2
USER_Task@u16_TemporarySaveSetpoint:
       ds      2
USER_Task@u16_TemporaryCurrentTemperature:
       ds      2
USER_Task@u16_TemporarySetpoint:
       ds      2
CONTROL_Task@s16_prevError:
       ds      2
CONTROL_Task@s16_Error:
       ds      2
_u16_ControlOutput:
       ds      2
_u8_LCD_State:
       ds      2
ADC_GetVoltageFiltered@u16_OutputBefore:
       ds      2
_u16_AdcVoltageMV:
       ds      2
	global	_DebugVariable
	global	_DebugVariable
_DebugVariable:
       ds      2
PWM_Task@u8_PeriodCount:
       ds      1
PWM_Task@u8_PwmCounter:
       ds      1
_u8_DutyCycle:
       ds      1
_bFlag_SyncTrigger:
       ds      1
NVM_Task@u8_TempWriteFlag:
       ds      1
NVM_Task@bFlag_StateWriteLowByte:
       ds      1
_u8_NVM_WriteRegister:
       ds      1
_bFlag_NVM_Update:
       ds      1
_bFlag_SysTick:
       ds      1
USER_FastDecrementSetpoint@u8_FastDecrementCounter:
       ds      1
USER_FastIncrementSetpoint@u8_FastIncrementCounter:
       ds      1
USER_Task@bFlag_AutoOff:
       ds      1
USER_Task@u8_DisplayChangeCounter:
       ds      1
USER_Task@u8_ErroState:
       ds      1
_bFlag_Menu:
       ds      1
_DebugState:
       ds      1
LCD_Task@bFlag_SecondaryData:
       ds      1
LCD_Task@u8_Status:
       ds      1
LCD_Task@u8_LCD_DataCounter:
       ds      1
	global	_u8_LCD_Datapointer
_u8_LCD_Datapointer:
       ds      1
_u8_I2C_State:
       ds      1
BUTTONS_Task@u8_ButtonsStatusPressed:
       ds      1
_u8_ErrorRegister:
       ds      1
_t_Buttons:
       ds      5
psect	bssBANK1,class=BANK1,space=1,noexec,lowdata
global __pbssBANK1
__pbssBANK1:
_u8_LCD_Data_Ext:
       ds      16
_u8_LCD_Data:
       ds      16
BUTTONS_Task@u16_ButtonsHoldCounter:
       ds      16
BUTTONS_Task@u16_ButtonsDebounceCounter:
       ds      16
_u16_NVM_WriteBuffer:
       ds      10
USER_TemperatureFilter@u16_FilterArray:
       ds      8
_t_Menu:
       ds      5
_u32_SysTickCounter:
       ds      4
main@u32_TimeStamp:
       ds      4
	file	"dist/default/debug\WD1SolderStation.X.debug.as"
	line	#
psect	cinit
; Clear objects allocated to BANK1 (95 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	95
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to BANK0 (81 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	81
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0,c ;clear compiler interrupt flag (level 1)
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
??_ADC_Task:	; 1 bytes @ 0x0
	global	LCD_SetMainDigits@u8_TempArray
LCD_SetMainDigits@u8_TempArray:	; 3 bytes @ 0x0
	global	LCD_SetPresetDigits@u8_TempArray
LCD_SetPresetDigits@u8_TempArray:	; 3 bytes @ 0x0
	ds   3
	global	USER_Init@u16_StartupCounter
USER_Init@u16_StartupCounter:	; 2 bytes @ 0x3
	global	USER_Task@u16_AdcPT20Voltage
USER_Task@u16_AdcPT20Voltage:	; 2 bytes @ 0x3
	ds   1
	global	_ADC_Task$1620
_ADC_Task$1620:	; 4 bytes @ 0x4
	ds   1
	global	USER_Init@u16_TempNvmData
USER_Init@u16_TempNvmData:	; 2 bytes @ 0x5
	ds   3
	global	ADC_Task@u16_AdcResult
ADC_Task@u16_AdcResult:	; 2 bytes @ 0x8
	ds   2
	global	ADC_Task@si32_AdcTemporary
ADC_Task@si32_AdcTemporary:	; 4 bytes @ 0xA
	ds   4
	global	?_main
?_main:	; 2 bytes @ 0xE
main@argc:	; 2 bytes @ 0xE
	ds   2
main@argv:	; 3 bytes @ 0x10
	ds   3
	global	main@u8_TaskCounter100ms
main@u8_TaskCounter100ms:	; 1 bytes @ 0x13
	ds   1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_TIMER_IncrementSysTick:	; 1 bytes @ 0x0
??_TIMER_SetSysTickFlag:	; 1 bytes @ 0x0
??_PWM_SetSyncTrigger:	; 1 bytes @ 0x0
??_ISR:	; 1 bytes @ 0x0
	ds   18
??_SYSTEM_Init:	; 1 bytes @ 0x12
??_GPIO_Init:	; 1 bytes @ 0x12
??_TIMER_Init:	; 1 bytes @ 0x12
??_ADC_Init:	; 1 bytes @ 0x12
??_I2C_Init:	; 1 bytes @ 0x12
??_NVM_Init:	; 1 bytes @ 0x12
??_SYSTEM_EnableInterrupts:	; 1 bytes @ 0x12
??_TIMER_GetSysTickFlag:	; 1 bytes @ 0x12
??_TIMER_ResetSysTickFlag:	; 1 bytes @ 0x12
??_PWM_Task:	; 1 bytes @ 0x12
??_BUTTONS_Task:	; 1 bytes @ 0x12
??_LCD_Update:	; 1 bytes @ 0x12
??_NVM_Task:	; 1 bytes @ 0x12
?_LCD_SetData:	; 1 bytes @ 0x12
?_LCD_Dec2Bcd:	; 1 bytes @ 0x12
?_LCD_Bcd2Segment:	; 1 bytes @ 0x12
??_LCD_GetData:	; 1 bytes @ 0x12
?_PWM_SetDutyCycle:	; 1 bytes @ 0x12
??_USER_IncrementSetpoint:	; 1 bytes @ 0x12
??_USER_FastIncrementSetpoint:	; 1 bytes @ 0x12
??_USER_DecrementSetpoint:	; 1 bytes @ 0x12
??_USER_FastDecrementSetpoint:	; 1 bytes @ 0x12
?_NVM_Write:	; 1 bytes @ 0x12
??_PWM_ResetSyncTrigger:	; 1 bytes @ 0x12
??_SYSTEM_DisableInterrupts:	; 1 bytes @ 0x12
?_BUTTONS_GetState:	; 1 bytes @ 0x12
??_I2C_SendData:	; 1 bytes @ 0x12
??_I2C_Stop:	; 1 bytes @ 0x12
	global	?_NVM_Read
?_NVM_Read:	; 2 bytes @ 0x12
	global	?_ADC_GetTemperature
?_ADC_GetTemperature:	; 2 bytes @ 0x12
	global	?_ADC_GetVoltageMV
?_ADC_GetVoltageMV:	; 2 bytes @ 0x12
	global	?_ADC_GetVoltageFiltered
?_ADC_GetVoltageFiltered:	; 2 bytes @ 0x12
	global	?_TIMER_GetSysTick
?_TIMER_GetSysTick:	; 4 bytes @ 0x12
	global	BUTTONS_Task@u8_ButtonsTemporaryInput
BUTTONS_Task@u8_ButtonsTemporaryInput:	; 1 bytes @ 0x12
	global	LCD_Bcd2Segment@u8_DigitType
LCD_Bcd2Segment@u8_DigitType:	; 1 bytes @ 0x12
	global	LCD_SetData@u8_Position
LCD_SetData@u8_Position:	; 1 bytes @ 0x12
	global	ADC_GetVoltageFiltered@u16_Input
ADC_GetVoltageFiltered@u16_Input:	; 2 bytes @ 0x12
	global	BUTTONS_GetState@t_Buttons
BUTTONS_GetState@t_Buttons:	; 2 bytes @ 0x12
	global	LCD_Dec2Bcd@u16_DecimalData
LCD_Dec2Bcd@u16_DecimalData:	; 2 bytes @ 0x12
	global	NVM_Init@u16_TempData
NVM_Init@u16_TempData:	; 2 bytes @ 0x12
	global	NVM_Write@u16_Data
NVM_Write@u16_Data:	; 2 bytes @ 0x12
	global	NVM_Read@u16_Address
NVM_Read@u16_Address:	; 2 bytes @ 0x12
	global	PWM_SetDutyCycle@u16_DutyCycle
PWM_SetDutyCycle@u16_DutyCycle:	; 2 bytes @ 0x12
	ds   1
??_LCD_SetData:	; 1 bytes @ 0x13
??_LCD_Bcd2Segment:	; 1 bytes @ 0x13
	global	I2C_SendData@u8_Data
I2C_SendData@u8_Data:	; 1 bytes @ 0x13
	global	LCD_Bcd2Segment@u8_Data
LCD_Bcd2Segment@u8_Data:	; 1 bytes @ 0x13
	ds   1
??_PWM_SetDutyCycle:	; 1 bytes @ 0x14
??_NVM_Read:	; 1 bytes @ 0x14
??_NVM_Write:	; 1 bytes @ 0x14
??_ADC_GetTemperature:	; 1 bytes @ 0x14
??_ADC_GetVoltageMV:	; 1 bytes @ 0x14
??_ADC_GetVoltageFiltered:	; 1 bytes @ 0x14
??_BUTTONS_GetState:	; 1 bytes @ 0x14
	global	?_USER_TemperatureFilter
?_USER_TemperatureFilter:	; 2 bytes @ 0x14
	global	LCD_GetData@u8_Position
LCD_GetData@u8_Position:	; 1 bytes @ 0x14
	global	LCD_Dec2Bcd@ptrBCD
LCD_Dec2Bcd@ptrBCD:	; 2 bytes @ 0x14
	global	NVM_Read@u16_Temp
NVM_Read@u16_Temp:	; 2 bytes @ 0x14
	ds   1
	global	LCD_SetData@u8_Data
LCD_SetData@u8_Data:	; 1 bytes @ 0x15
	ds   1
??_TIMER_GetSysTick:	; 1 bytes @ 0x16
??_LCD_Clear:	; 1 bytes @ 0x16
??_LCD_Dec2Bcd:	; 1 bytes @ 0x16
??_USER_TemperatureFilter:	; 1 bytes @ 0x16
??_I2C_Start:	; 1 bytes @ 0x16
?_LCD_SetMainDigits:	; 1 bytes @ 0x16
?_LCD_SetPresetDigits:	; 1 bytes @ 0x16
??_LCD_SetIcons:	; 1 bytes @ 0x16
	global	LCD_SetIcons@u8_Icon
LCD_SetIcons@u8_Icon:	; 1 bytes @ 0x16
	global	LCD_Clear@u8_Temp
LCD_Clear@u8_Temp:	; 1 bytes @ 0x16
	global	NVM_Write@u8_Address
NVM_Write@u8_Address:	; 1 bytes @ 0x16
	global	LCD_SetMainDigits@u16_MainData
LCD_SetMainDigits@u16_MainData:	; 2 bytes @ 0x16
	global	LCD_SetPresetDigits@u16_PresetData
LCD_SetPresetDigits@u16_PresetData:	; 2 bytes @ 0x16
	global	USER_TemperatureFilter@u16_FilterTemporary
USER_TemperatureFilter@u16_FilterTemporary:	; 2 bytes @ 0x16
	global	ADC_GetVoltageFiltered@s32_FilterTemporary
ADC_GetVoltageFiltered@s32_FilterTemporary:	; 4 bytes @ 0x16
	ds   1
	global	LCD_SetIcons@u8_Temp
LCD_SetIcons@u8_Temp:	; 1 bytes @ 0x17
	ds   1
	global	I2C_Start@u8_Address
I2C_Start@u8_Address:	; 1 bytes @ 0x18
	global	LCD_SetMainDigits@bFlag_Number
LCD_SetMainDigits@bFlag_Number:	; 1 bytes @ 0x18
	global	LCD_SetPresetDigits@u8_Preset
LCD_SetPresetDigits@u8_Preset:	; 1 bytes @ 0x18
	ds   1
??_LCD_SetMainDigits:	; 1 bytes @ 0x19
	global	LCD_SetPresetDigits@bFlag_Number
LCD_SetPresetDigits@bFlag_Number:	; 1 bytes @ 0x19
	global	I2C_Start@u16_Timeout
I2C_Start@u16_Timeout:	; 2 bytes @ 0x19
	ds   1
??_LCD_SetPresetDigits:	; 1 bytes @ 0x1A
	ds   1
??_LCD_Init:	; 1 bytes @ 0x1B
??_LCD_Task:	; 1 bytes @ 0x1B
	ds   1
??_USER_Init:	; 1 bytes @ 0x1C
??_USER_Task:	; 1 bytes @ 0x1C
	global	LCD_Init@u8_Temp
LCD_Init@u8_Temp:	; 1 bytes @ 0x1C
	ds   1
??_main:	; 1 bytes @ 0x1D
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_SYSTEM_Init:	; 1 bytes @ 0x0
?_GPIO_Init:	; 1 bytes @ 0x0
?_TIMER_Init:	; 1 bytes @ 0x0
?_ADC_Init:	; 1 bytes @ 0x0
?_I2C_Init:	; 1 bytes @ 0x0
?_LCD_Init:	; 1 bytes @ 0x0
?_NVM_Init:	; 1 bytes @ 0x0
?_SYSTEM_EnableInterrupts:	; 1 bytes @ 0x0
?_USER_Init:	; 1 bytes @ 0x0
?_TIMER_GetSysTickFlag:	; 1 bytes @ 0x0
?_TIMER_ResetSysTickFlag:	; 1 bytes @ 0x0
?_PWM_Task:	; 1 bytes @ 0x0
?_BUTTONS_Task:	; 1 bytes @ 0x0
?_USER_Task:	; 1 bytes @ 0x0
?_ADC_Task:	; 1 bytes @ 0x0
?_LCD_Update:	; 1 bytes @ 0x0
?_LCD_Task:	; 1 bytes @ 0x0
?_NVM_Task:	; 1 bytes @ 0x0
?_TIMER_IncrementSysTick:	; 1 bytes @ 0x0
?_TIMER_SetSysTickFlag:	; 1 bytes @ 0x0
?_PWM_SetSyncTrigger:	; 1 bytes @ 0x0
?_LCD_Clear:	; 1 bytes @ 0x0
?_LCD_GetData:	; 1 bytes @ 0x0
?_USER_IncrementSetpoint:	; 1 bytes @ 0x0
?_USER_FastIncrementSetpoint:	; 1 bytes @ 0x0
?_USER_DecrementSetpoint:	; 1 bytes @ 0x0
?_USER_FastDecrementSetpoint:	; 1 bytes @ 0x0
?_PWM_ResetSyncTrigger:	; 1 bytes @ 0x0
?_ISR:	; 1 bytes @ 0x0
?_SYSTEM_DisableInterrupts:	; 1 bytes @ 0x0
?_I2C_Start:	; 1 bytes @ 0x0
?_I2C_SendData:	; 1 bytes @ 0x0
?_I2C_Stop:	; 1 bytes @ 0x0
?_LCD_SetIcons:	; 1 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	ds   2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	ds   2
??___lwdiv:	; 1 bytes @ 0x4
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	ds   1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds   2
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x7
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x7
	ds   1
??___lmul:	; 1 bytes @ 0x8
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x8
	ds   1
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x9
	ds   2
??___lwmod:	; 1 bytes @ 0xB
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0xB
	ds   1
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0xC
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0xC
	ds   4
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x10
	ds   4
??___aldiv:	; 1 bytes @ 0x14
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x14
	ds   1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x15
	ds   1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x16
	ds   4
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x1A
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x1A
	ds   4
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x1E
	ds   4
??___lldiv:	; 1 bytes @ 0x22
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x22
	ds   4
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x26
	ds   1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    18
;!    Data        0
;!    BSS         176
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM          126     39      39
;!    BANK0           128     29     110
;!    BANK1           256     20     115
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0
;!    BANK8           256      0       0
;!    BANK9           256      0       0
;!    BANK10          256      0       0
;!    BANK11          256      0       0
;!    BANK12          256      0       0
;!    BANK13          256      0       0
;!    BANK14          239      0       0
;!    BANK15          128      0       0

;!
;!Pointer List with Targets:
;!
;!    LCD_Dec2Bcd@ptrBCD	PTR unsigned char  size(2) Largest target is 3
;!		 -> LCD_SetPresetDigits@u8_TempArray(BANK1[3]), LCD_SetMainDigits@u8_TempArray(BANK1[3]), 
;!
;!    BUTTONS_GetState@t_Buttons	PTR struct . size(2) Largest target is 5
;!		 -> t_Buttons(BANK0[5]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _LCD_Dec2Bcd->___lwmod
;!    ___lwmod->___lwdiv
;!    _ADC_Task->___lldiv
;!    _ADC_GetVoltageFiltered->___aldiv
;!    ___aldiv->___lmul
;!
;!Critical Paths under _ISR in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_LCD_Init
;!    _main->_LCD_Task
;!    _USER_Task->_LCD_SetPresetDigits
;!    _USER_TemperatureFilter->_ADC_GetTemperature
;!    _LCD_SetMainDigits->_LCD_Dec2Bcd
;!    _LCD_SetMainDigits->_LCD_SetData
;!    _USER_Init->_LCD_SetPresetDigits
;!    _LCD_SetPresetDigits->_LCD_Dec2Bcd
;!    _LCD_SetPresetDigits->_LCD_SetData
;!    _LCD_SetIcons->_LCD_SetData
;!    _LCD_Clear->_LCD_SetData
;!    _LCD_Task->_I2C_Start
;!    _LCD_Init->_I2C_Start
;!    _I2C_Start->_TIMER_GetSysTick
;!    _ADC_Task->_ADC_GetVoltageFiltered
;!    ___lldiv->_ADC_GetVoltageFiltered
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_ADC_Task
;!    _USER_Task->_LCD_SetMainDigits
;!    _USER_Task->_LCD_SetPresetDigits
;!    _USER_Init->_LCD_SetPresetDigits
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK12
;!
;!    None.
;!
;!Critical Paths under _main in BANK13
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK13
;!
;!    None.
;!
;!Critical Paths under _main in BANK14
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK14
;!
;!    None.
;!
;!Critical Paths under _main in BANK15
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK15
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 6     1      5   49382
;!                                             14 BANK1      6     1      5
;!                           _ADC_Init
;!                           _ADC_Task
;!                       _BUTTONS_Task
;!                          _GPIO_Init
;!                           _I2C_Init
;!                           _LCD_Init
;!                           _LCD_Task
;!                         _LCD_Update
;!                           _NVM_Init
;!                           _NVM_Task
;!                           _PWM_Task
;!            _SYSTEM_EnableInterrupts
;!                        _SYSTEM_Init
;!               _TIMER_GetSysTickFlag
;!                         _TIMER_Init
;!             _TIMER_ResetSysTickFlag
;!                          _USER_Init
;!                          _USER_Task
;! ---------------------------------------------------------------------------------
;! (1) _USER_Task                                            2     2      0   24322
;!                                              3 BANK1      2     2      0
;!                   _ADC_GetVoltageMV
;!                   _BUTTONS_GetState
;!                          _LCD_Clear
;!                       _LCD_SetIcons
;!                  _LCD_SetMainDigits
;!                _LCD_SetPresetDigits
;!                           _NVM_Read
;!                          _NVM_Write
;!                   _PWM_SetDutyCycle
;!             _USER_DecrementSetpoint
;!         _USER_FastDecrementSetpoint
;!         _USER_FastIncrementSetpoint
;!             _USER_IncrementSetpoint
;!             _USER_TemperatureFilter
;! ---------------------------------------------------------------------------------
;! (2) _USER_TemperatureFilter                               4     2      2      40
;!                                             20 BANK0      4     2      2
;!                 _ADC_GetTemperature
;! ---------------------------------------------------------------------------------
;! (3) _ADC_GetTemperature                                   2     0      2       0
;!                                             18 BANK0      2     0      2
;! ---------------------------------------------------------------------------------
;! (2) _USER_IncrementSetpoint                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _USER_FastIncrementSetpoint                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _USER_FastDecrementSetpoint                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _USER_DecrementSetpoint                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _PWM_SetDutyCycle                                     2     0      2     335
;!                                             18 BANK0      2     0      2
;! ---------------------------------------------------------------------------------
;! (2) _NVM_Write                                            5     3      2     453
;!                                             18 BANK0      5     3      2
;! ---------------------------------------------------------------------------------
;! (2) _LCD_SetMainDigits                                    8     5      3    7384
;!                                             22 BANK0      5     2      3
;!                                              0 BANK1      3     3      0
;!                    _LCD_Bcd2Segment
;!                        _LCD_Dec2Bcd
;!                        _LCD_SetData
;! ---------------------------------------------------------------------------------
;! (2) _BUTTONS_GetState                                     2     0      2     245
;!                                             18 BANK0      2     0      2
;! ---------------------------------------------------------------------------------
;! (2) _ADC_GetVoltageMV                                     2     0      2       0
;!                                             18 BANK0      2     0      2
;! ---------------------------------------------------------------------------------
;! (1) _USER_Init                                            4     4      0   16063
;!                                              3 BANK1      4     4      0
;!                          _LCD_Clear
;!                       _LCD_SetIcons
;!                _LCD_SetPresetDigits
;!                         _LCD_Update
;!                           _NVM_Read
;! ---------------------------------------------------------------------------------
;! (2) _NVM_Read                                             4     2      2     797
;!                                             18 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (2) _LCD_Update                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _LCD_SetPresetDigits                                  9     5      4    8971
;!                                             22 BANK0      6     2      4
;!                                              0 BANK1      3     3      0
;!                    _LCD_Bcd2Segment
;!                        _LCD_Dec2Bcd
;!                        _LCD_SetData
;! ---------------------------------------------------------------------------------
;! (3) _LCD_Dec2Bcd                                          4     0      4    1779
;!                                             18 BANK0      4     0      4
;!                            ___lwdiv
;!                            ___lwmod
;! ---------------------------------------------------------------------------------
;! (4) ___lwmod                                              5     1      4     592
;!                                              7 COMRAM     5     1      4
;!                            ___lwdiv (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___lwdiv                                              7     3      4     601
;!                                              0 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (3) _LCD_Bcd2Segment                                      2     1      1    1303
;!                                             18 BANK0      2     1      1
;! ---------------------------------------------------------------------------------
;! (2) _LCD_SetIcons                                         2     2      0    3047
;!                                             22 BANK0      2     2      0
;!                        _LCD_GetData
;!                        _LCD_SetData
;! ---------------------------------------------------------------------------------
;! (3) _LCD_GetData                                          3     3      0      62
;!                                             18 BANK0      3     3      0
;! ---------------------------------------------------------------------------------
;! (2) _LCD_Clear                                            1     1      0    2982
;!                                             22 BANK0      1     1      0
;!                        _LCD_SetData
;! ---------------------------------------------------------------------------------
;! (1) _TIMER_ResetSysTickFlag                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _TIMER_Init                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _TIMER_GetSysTickFlag                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _SYSTEM_Init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _PWM_Task                                             5     5      0       0
;!                                             18 BANK0      5     5      0
;!               _PWM_ResetSyncTrigger
;! ---------------------------------------------------------------------------------
;! (2) _PWM_ResetSyncTrigger                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _NVM_Task                                             2     2      0       0
;!                                             18 BANK0      2     2      0
;!           _SYSTEM_DisableInterrupts
;!            _SYSTEM_EnableInterrupts
;! ---------------------------------------------------------------------------------
;! (1) _SYSTEM_EnableInterrupts                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _SYSTEM_DisableInterrupts                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _NVM_Init                                             2     2      0     102
;!                                             18 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Task                                             2     2      0     130
;!                                             27 BANK0      2     2      0
;!                       _I2C_SendData
;!                          _I2C_Start
;!                           _I2C_Stop
;! ---------------------------------------------------------------------------------
;! (1) _LCD_Init                                             2     2      0    3211
;!                                             27 BANK0      2     2      0
;!                       _I2C_SendData
;!                          _I2C_Start
;!                           _I2C_Stop
;!                        _LCD_SetData
;! ---------------------------------------------------------------------------------
;! (3) _LCD_SetData                                          4     3      1    2883
;!                                             18 BANK0      4     3      1
;! ---------------------------------------------------------------------------------
;! (2) _I2C_Stop                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _I2C_Start                                            5     5      0      99
;!                                             22 BANK0      5     5      0
;!                   _TIMER_GetSysTick
;! ---------------------------------------------------------------------------------
;! (3) _TIMER_GetSysTick                                     4     0      4       0
;!                                             18 BANK0      4     0      4
;! ---------------------------------------------------------------------------------
;! (2) _I2C_SendData                                         2     2      0      31
;!                                             18 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _GPIO_Init                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _BUTTONS_Task                                         1     1      0     192
;!                                             18 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _ADC_Task                                            14    14      0    5322
;!                                              0 BANK1     14    14      0
;!             _ADC_GetVoltageFiltered
;!                            ___aldiv
;!                            ___lldiv
;!                             ___lmul
;! ---------------------------------------------------------------------------------
;! (2) ___lldiv                                             13     5      8     601
;!                                             26 COMRAM    13     5      8
;!             _ADC_GetVoltageFiltered (ARG)
;!                             ___lmul (ARG)
;! ---------------------------------------------------------------------------------
;! (2) _ADC_GetVoltageFiltered                               8     6      2    2353
;!                                             18 BANK0      8     6      2
;!                            ___aldiv
;!                             ___lmul
;! ---------------------------------------------------------------------------------
;! (2) ___lmul                                              12     4      8    1176
;!                                              0 COMRAM    12     4      8
;! ---------------------------------------------------------------------------------
;! (2) ___aldiv                                             14     6      8     985
;!                                             12 COMRAM    14     6      8
;!                             ___lmul (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _ADC_Init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (5) _ISR                                                 18    18      0       0
;!                                              0 BANK0     18    18      0
;!                 _PWM_SetSyncTrigger
;!             _TIMER_IncrementSysTick
;!               _TIMER_SetSysTickFlag
;! ---------------------------------------------------------------------------------
;! (6) _TIMER_SetSysTickFlag                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _TIMER_IncrementSysTick                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) _PWM_SetSyncTrigger                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _ADC_Init
;!   _ADC_Task
;!     _ADC_GetVoltageFiltered
;!       ___aldiv
;!         ___lmul (ARG)
;!       ___lmul
;!     ___aldiv
;!       ___lmul (ARG)
;!     ___lldiv
;!       _ADC_GetVoltageFiltered (ARG)
;!         ___aldiv
;!           ___lmul (ARG)
;!         ___lmul
;!       ___lmul (ARG)
;!     ___lmul
;!   _BUTTONS_Task
;!   _GPIO_Init
;!   _I2C_Init
;!   _LCD_Init
;!     _I2C_SendData
;!     _I2C_Start
;!       _TIMER_GetSysTick
;!     _I2C_Stop
;!     _LCD_SetData
;!   _LCD_Task
;!     _I2C_SendData
;!     _I2C_Start
;!       _TIMER_GetSysTick
;!     _I2C_Stop
;!   _LCD_Update
;!   _NVM_Init
;!   _NVM_Task
;!     _SYSTEM_DisableInterrupts
;!     _SYSTEM_EnableInterrupts
;!   _PWM_Task
;!     _PWM_ResetSyncTrigger
;!   _SYSTEM_EnableInterrupts
;!   _SYSTEM_Init
;!   _TIMER_GetSysTickFlag
;!   _TIMER_Init
;!   _TIMER_ResetSysTickFlag
;!   _USER_Init
;!     _LCD_Clear
;!       _LCD_SetData
;!     _LCD_SetIcons
;!       _LCD_GetData
;!       _LCD_SetData
;!     _LCD_SetPresetDigits
;!       _LCD_Bcd2Segment
;!       _LCD_Dec2Bcd
;!         ___lwdiv
;!         ___lwmod
;!           ___lwdiv (ARG)
;!       _LCD_SetData
;!     _LCD_Update
;!     _NVM_Read
;!   _USER_Task
;!     _ADC_GetVoltageMV
;!     _BUTTONS_GetState
;!     _LCD_Clear
;!       _LCD_SetData
;!     _LCD_SetIcons
;!       _LCD_GetData
;!       _LCD_SetData
;!     _LCD_SetMainDigits
;!       _LCD_Bcd2Segment
;!       _LCD_Dec2Bcd
;!         ___lwdiv
;!         ___lwmod
;!           ___lwdiv (ARG)
;!       _LCD_SetData
;!     _LCD_SetPresetDigits
;!       _LCD_Bcd2Segment
;!       _LCD_Dec2Bcd
;!         ___lwdiv
;!         ___lwmod
;!           ___lwdiv (ARG)
;!       _LCD_SetData
;!     _NVM_Read
;!     _NVM_Write
;!     _PWM_SetDutyCycle
;!     _USER_DecrementSetpoint
;!     _USER_FastDecrementSetpoint
;!     _USER_FastIncrementSetpoint
;!     _USER_IncrementSetpoint
;!     _USER_TemperatureFilter
;!       _ADC_GetTemperature
;!
;! _ISR (ROOT)
;!   _PWM_SetSyncTrigger
;!   _TIMER_IncrementSysTick
;!   _TIMER_SetSysTickFlag
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             EEE      0       0      38        0.0%
;!EEDATA             400      0       0       0        0.0%
;!BITBANK13          100      0       0      31        0.0%
;!BANK13             100      0       0      32        0.0%
;!BITBANK12          100      0       0      29        0.0%
;!BANK12             100      0       0      30        0.0%
;!BITBANK11          100      0       0      27        0.0%
;!BANK11             100      0       0      28        0.0%
;!BITBANK10          100      0       0      25        0.0%
;!BANK10             100      0       0      26        0.0%
;!BITBANK9           100      0       0      23        0.0%
;!BANK9              100      0       0      24        0.0%
;!BITBANK8           100      0       0      21        0.0%
;!BANK8              100      0       0      22        0.0%
;!BITBANK7           100      0       0      19        0.0%
;!BANK7              100      0       0      20        0.0%
;!BITBANK6           100      0       0      17        0.0%
;!BANK6              100      0       0      18        0.0%
;!BITBANK5           100      0       0      15        0.0%
;!BANK5              100      0       0      16        0.0%
;!BITBANK4           100      0       0      13        0.0%
;!BANK4              100      0       0      14        0.0%
;!BITBANK3           100      0       0      11        0.0%
;!BANK3              100      0       0      12        0.0%
;!BITBANK2           100      0       0       9        0.0%
;!BANK2              100      0       0      10        0.0%
;!BITBANK1           100      0       0       7        0.0%
;!BANK1              100     14      73       8       44.9%
;!BITBANK14           EF      0       0      33        0.0%
;!BANK14              EF      0       0      34        0.0%
;!BITBANK15           80      0       0      35        0.0%
;!BANK15              80      0       0      36        0.0%
;!BITBANK0            80      0       0       4        0.0%
;!BANK0               80     1D      6E       5       85.9%
;!BIGRAM_1            80      0       0      37        0.0%
;!BITCOMRAM           7E      0       0       0        0.0%
;!COMRAM              7E     27      27       1       31.0%
;!BITSFR_5             0      0       0     200        0.0%
;!SFR_5                0      0       0     200        0.0%
;!BITSFR_4             0      0       0     200        0.0%
;!SFR_4                0      0       0     200        0.0%
;!BITSFR_3             0      0       0     200        0.0%
;!SFR_3                0      0       0     200        0.0%
;!BITSFR_2             0      0       0     200        0.0%
;!SFR_2                0      0       0     200        0.0%
;!BITSFR_1             0      0       0     200        0.0%
;!SFR_1                0      0       0     200        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     108       6        0.0%
;!DATA                 0      0     108       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 25 in file "main.c"
;; Parameters:    Size  Location     Type
;;  argc            2   14[BANK1 ] int 
;;  argv            3   16[BANK1 ] PTR PTR unsigned char 
;; Auto vars:     Size  Location     Type
;;  u8_TaskCount    1   19[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   14[BANK1 ] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       5       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       1       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       6       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_ADC_Init
;;		_ADC_Task
;;		_BUTTONS_Task
;;		_GPIO_Init
;;		_I2C_Init
;;		_LCD_Init
;;		_LCD_Task
;;		_LCD_Update
;;		_NVM_Init
;;		_NVM_Task
;;		_PWM_Task
;;		_SYSTEM_EnableInterrupts
;;		_SYSTEM_Init
;;		_TIMER_GetSysTickFlag
;;		_TIMER_Init
;;		_TIMER_ResetSysTickFlag
;;		_USER_Init
;;		_USER_Task
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0,minocg
	file	"main.c"
	line	25
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	25
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 25
	line	31
	
l5534:
;main.c: 29: static volatile uint32_t u32_TimeStamp= 0;
;main.c: 31: uint8_t u8_TaskCounter100ms= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	((main@u8_TaskCounter100ms))&0ffh
	line	35
	
l5536:; BSR set to: 1

;main.c: 35: SYSTEM_Init();
	call	_SYSTEM_Init	;wreg free
	line	36
	
l5538:
;main.c: 36: GPIO_Init();
	call	_GPIO_Init	;wreg free
	line	37
	
l5540:
;main.c: 37: TIMER_Init();
	call	_TIMER_Init	;wreg free
	line	38
	
l5542:
;main.c: 38: ADC_Init();
	call	_ADC_Init	;wreg free
	line	39
	
l5544:
;main.c: 39: I2C_Init();
	call	_I2C_Init	;wreg free
	line	40
	
l5546:
;main.c: 40: LCD_Init();
	call	_LCD_Init	;wreg free
	line	41
	
l5548:
;main.c: 41: NVM_Init();
	call	_NVM_Init	;wreg free
	line	43
	
l5550:
;main.c: 43: SYSTEM_EnableInterrupts();
	call	_SYSTEM_EnableInterrupts	;wreg free
	line	44
	
l5552:
;main.c: 44: USER_Init();
	call	_USER_Init	;wreg free
	goto	l5554
	line	47
;main.c: 47: while(1)
	
l63:
	line	51
	
l5554:
;main.c: 48: {
;main.c: 51: if(TIMER_GetSysTickFlag() == 1)
	call	_TIMER_GetSysTickFlag	;wreg free
	decf	wreg
	btfss	status,2
	goto	u5751
	goto	u5750
u5751:
	goto	l5566
u5750:
	line	53
	
l5556:
;main.c: 52: {
;main.c: 53: TIMER_ResetSysTickFlag();
	call	_TIMER_ResetSysTickFlag	;wreg free
	line	54
	
l5558:
;main.c: 54: PWM_Task();
	call	_PWM_Task	;wreg free
	line	55
	
l5560:
;main.c: 55: BUTTONS_Task();
	call	_BUTTONS_Task	;wreg free
	line	56
	
l5562:
;main.c: 56: USER_Task();
	call	_USER_Task	;wreg free
	line	58
	
l5564:
;main.c: 58: ++u8_TaskCounter100ms;
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	incf	((main@u8_TaskCounter100ms))&0ffh
	goto	l5566
	line	59
	
l64:; BSR set to: 1

	line	62
	
l5566:
;main.c: 59: }
;main.c: 62: if(u8_TaskCounter100ms > ((uint32_t)99-1))
		movlw	063h-1
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	cpfsgt	((main@u8_TaskCounter100ms))&0ffh
	goto	u5761
	goto	u5760

u5761:
	goto	l5574
u5760:
	line	64
	
l5568:; BSR set to: 1

;main.c: 63: {
;main.c: 64: ADC_Task();
	call	_ADC_Task	;wreg free
	line	69
	
l5570:
;main.c: 69: LCD_Update();
	call	_LCD_Update	;wreg free
	line	70
	
l5572:
;main.c: 70: u8_TaskCounter100ms= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	((main@u8_TaskCounter100ms))&0ffh
	goto	l5574
	line	71
	
l65:; BSR set to: 1

	line	72
	
l5574:; BSR set to: 1

;main.c: 71: }
;main.c: 72: LCD_Task();
	call	_LCD_Task	;wreg free
	line	73
	
l5576:
;main.c: 73: NVM_Task();
	call	_NVM_Task	;wreg free
	goto	l5554
	line	74
	
l66:
	line	47
	goto	l5554
	
l67:
	line	75
	
l5578:
;main.c: 74: }
;main.c: 75: return (0);
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	((?_main+1))&0ffh
	movlw	low(0)
	movwf	((?_main))&0ffh
	goto	l68
	
l5580:; BSR set to: 1

	line	76
	
l68:; BSR set to: 1

	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,8314
	global	_USER_Task

;; *************** function _USER_Task *****************
;; Defined at:
;;		line 86 in file "apl/user.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  u16_AdcPT20V    2    3[BANK1 ] volatile unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_ADC_GetVoltageMV
;;		_BUTTONS_GetState
;;		_LCD_Clear
;;		_LCD_SetIcons
;;		_LCD_SetMainDigits
;;		_LCD_SetPresetDigits
;;		_NVM_Read
;;		_NVM_Write
;;		_PWM_SetDutyCycle
;;		_USER_DecrementSetpoint
;;		_USER_FastDecrementSetpoint
;;		_USER_FastIncrementSetpoint
;;		_USER_IncrementSetpoint
;;		_USER_TemperatureFilter
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0,minocg
	file	"apl/user.c"
	line	86
global __ptext1
__ptext1:
psect	text1
	file	"apl/user.c"
	line	86
	global	__size_of_USER_Task
	__size_of_USER_Task	equ	__end_of_USER_Task-_USER_Task
	
_USER_Task:; BSR set to: 1

;incstack = 0
	opt	stack 25
	line	101
	
l5246:
;user.c: 88: static uint8_t u8_ErroState= 0;
;user.c: 89: static uint16_t u16_TemporarySetpoint= 0;
;user.c: 90: static uint16_t u16_TemporaryCurrentTemperature= 0;
;user.c: 92: static uint16_t u16_TemporarySaveSetpoint= 0;
;user.c: 93: static uint16_t u16_SaveCurrentSettingCounter= 0;
;user.c: 95: static uint16_t u16_ShowCurrentSettingCounter= 0;
;user.c: 96: static uint8_t u8_DisplayChangeCounter= 0;
;user.c: 98: volatile static uint32_t u32_WatchdogCounter= 0;
;user.c: 99: static bool bFlag_AutoOff= 0;
;user.c: 101: volatile uint16_t u16_AdcPT20Voltage= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	((USER_Task@u16_AdcPT20Voltage+1))&0ffh	;volatile
	movlw	low(0)
	movwf	((USER_Task@u16_AdcPT20Voltage))&0ffh	;volatile
	line	103
;user.c: 103: if(bFlag_AutoOff == 0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((USER_Task@bFlag_AutoOff))&0ffh,w
	btfss	status,2
	goto	u5231
	goto	u5230
u5231:
	goto	l5364
u5230:
	line	107
	
l5248:; BSR set to: 0

;user.c: 104: {
;user.c: 107: u16_AdcPT20Voltage= ADC_GetVoltageMV();
	call	_ADC_GetVoltageMV	;wreg free
	movff	0+?_ADC_GetVoltageMV,(USER_Task@u16_AdcPT20Voltage)	;volatile
	movff	1+?_ADC_GetVoltageMV,(USER_Task@u16_AdcPT20Voltage+1)	;volatile
	line	109
	
l5250:
;user.c: 109: if(u16_AdcPT20Voltage > (uint16_t)4850)
		movlw	243
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	subwf	 ((USER_Task@u16_AdcPT20Voltage))&0ffh,w	;volatile
	movlw	18
	subwfb	((USER_Task@u16_AdcPT20Voltage+1))&0ffh,w	;volatile
	btfss	status,0
	goto	u5241
	goto	u5240

u5241:
	goto	l5254
u5240:
	goto	l5260
	line	112
	
l5252:; BSR set to: 1

;user.c: 112: }
	goto	l5260
	line	113
	
l620:; BSR set to: 1

	
l5254:; BSR set to: 1

;user.c: 113: else if(u16_AdcPT20Voltage < (uint16_t)1000)
		movlw	232
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	subwf	 ((USER_Task@u16_AdcPT20Voltage))&0ffh,w	;volatile
	movlw	3
	subwfb	((USER_Task@u16_AdcPT20Voltage+1))&0ffh,w	;volatile
	btfsc	status,0
	goto	u5251
	goto	u5250

u5251:
	goto	l622
u5250:
	goto	l5260
	line	116
	
l5256:; BSR set to: 1

;user.c: 114: {
;user.c: 115: ;
;user.c: 116: }
	goto	l5260
	line	117
	
l622:; BSR set to: 1

	line	119
;user.c: 120: {
;user.c: 121: u8_ErroState&= ~0;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	
	btfss	((USER_Task@u8_ErroState))&0ffh,(0)&7
	goto	u5261
	goto	u5260
u5261:
	goto	l5260
u5260:
	line	122
	
l5258:; BSR set to: 0

;user.c: 122: t_Temperatures.SetpointTemperature= u16_TemporarySetpoint;
	movff	(USER_Task@u16_TemporarySetpoint),0+(_t_Temperatures+02h)
	movff	(USER_Task@u16_TemporarySetpoint+1),1+(_t_Temperatures+02h)
	goto	l5260
	line	123
	
l624:; BSR set to: 0

	goto	l5260
	line	124
	
l623:; BSR set to: 0

	goto	l5260
	
l621:; BSR set to: 0

	line	126
	
l5260:
;user.c: 123: }
;user.c: 124: }
;user.c: 126: if(!u8_ErroState)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((USER_Task@u8_ErroState))&0ffh,w
	btfss	status,2
	goto	u5271
	goto	u5270
u5271:
	goto	l625
u5270:
	line	128
	
l5262:; BSR set to: 0

;user.c: 127: {
;user.c: 128: if(t_Temperatures.SetpointTemperature != u16_TemporarySetpoint)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((USER_Task@u16_TemporarySetpoint))&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
xorwf	(0+(_t_Temperatures+02h))&0ffh,w
	bnz	u5280
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
movf	((USER_Task@u16_TemporarySetpoint+1))&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
xorwf	(1+(_t_Temperatures+02h))&0ffh,w
	btfsc	status,2
	goto	u5281
	goto	u5280

u5281:
	goto	l5274
u5280:
	line	130
	
l5264:; BSR set to: 0

;user.c: 129: {
;user.c: 130: if(t_Temperatures.SetpointTemperature > 450 )
		movlw	195
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	subwf	 (0+(_t_Temperatures+02h))&0ffh,w
	movlw	1
	subwfb	(1+(_t_Temperatures+02h))&0ffh,w
	btfss	status,0
	goto	u5291
	goto	u5290

u5291:
	goto	l5268
u5290:
	line	132
	
l5266:; BSR set to: 0

;user.c: 131: {
;user.c: 132: t_Temperatures.SetpointTemperature= 450;
	movlw	high(01C2h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(1+(_t_Temperatures+02h))&0ffh
	movlw	low(01C2h)
	movwf	(0+(_t_Temperatures+02h))&0ffh
	goto	l5268
	line	133
	
l627:; BSR set to: 0

	line	135
	
l5268:; BSR set to: 0

;user.c: 133: }
;user.c: 135: LCD_SetMainDigits(t_Temperatures.SetpointTemperature, 1);
	movff	0+(_t_Temperatures+02h),(LCD_SetMainDigits@u16_MainData)
	movff	1+(_t_Temperatures+02h),(LCD_SetMainDigits@u16_MainData+1)
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetMainDigits@bFlag_Number))&0ffh
	call	_LCD_SetMainDigits	;wreg free
	line	136
	
l5270:
;user.c: 136: LCD_SetIcons(0);
	movlw	(0)&0ffh
	
	call	_LCD_SetIcons
	line	137
	
l5272:
;user.c: 137: u16_TemporarySetpoint= t_Temperatures.SetpointTemperature;
	movff	0+(_t_Temperatures+02h),(USER_Task@u16_TemporarySetpoint)
	movff	1+(_t_Temperatures+02h),(USER_Task@u16_TemporarySetpoint+1)
	line	138
;user.c: 138: u16_ShowCurrentSettingCounter= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((USER_Task@u16_ShowCurrentSettingCounter+1))&0ffh
	movlw	low(0)
	movwf	((USER_Task@u16_ShowCurrentSettingCounter))&0ffh
	line	139
;user.c: 139: }
	goto	l5304
	line	140
	
l626:; BSR set to: 0

	line	142
	
l5274:; BSR set to: 0

;user.c: 140: else
;user.c: 141: {
;user.c: 142: if(u16_ShowCurrentSettingCounter < 2000)
		movlw	208
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	subwf	 ((USER_Task@u16_ShowCurrentSettingCounter))&0ffh,w
	movlw	7
	subwfb	((USER_Task@u16_ShowCurrentSettingCounter+1))&0ffh,w
	btfsc	status,0
	goto	u5301
	goto	u5300

u5301:
	goto	l5278
u5300:
	line	144
	
l5276:; BSR set to: 0

;user.c: 143: {
;user.c: 144: ++u16_ShowCurrentSettingCounter;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	infsnz	((USER_Task@u16_ShowCurrentSettingCounter))&0ffh
	incf	((USER_Task@u16_ShowCurrentSettingCounter+1))&0ffh
	line	145
;user.c: 145: }
	goto	l5304
	line	146
	
l629:; BSR set to: 0

	line	148
	
l5278:; BSR set to: 0

;user.c: 146: else
;user.c: 147: {
;user.c: 148: if(u8_DisplayChangeCounter > 250)
		movlw	0FBh-1
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	cpfsgt	((USER_Task@u8_DisplayChangeCounter))&0ffh
	goto	u5311
	goto	u5310

u5311:
	goto	l5290
u5310:
	line	150
	
l5280:; BSR set to: 0

;user.c: 149: {
;user.c: 150: t_Temperatures.CurrentTemperature= USER_TemperatureFilter();
	call	_USER_TemperatureFilter	;wreg free
	movff	0+?_USER_TemperatureFilter,(_t_Temperatures)
	movff	1+?_USER_TemperatureFilter,(_t_Temperatures+1)
	line	151
	
l5282:
;user.c: 151: LCD_SetMainDigits(t_Temperatures.CurrentTemperature,1);
	movff	(_t_Temperatures),(LCD_SetMainDigits@u16_MainData)
	movff	(_t_Temperatures+1),(LCD_SetMainDigits@u16_MainData+1)
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetMainDigits@bFlag_Number))&0ffh
	call	_LCD_SetMainDigits	;wreg free
	line	152
	
l5284:
;user.c: 152: LCD_SetIcons(0);
	movlw	(0)&0ffh
	
	call	_LCD_SetIcons
	line	154
	
l5286:
;user.c: 154: u16_TemporaryCurrentTemperature= t_Temperatures.CurrentTemperature;
	movff	(_t_Temperatures),(USER_Task@u16_TemporaryCurrentTemperature)
	movff	(_t_Temperatures+1),(USER_Task@u16_TemporaryCurrentTemperature+1)
	line	155
	
l5288:
;user.c: 155: u8_DisplayChangeCounter= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((USER_Task@u8_DisplayChangeCounter))&0ffh
	line	156
;user.c: 156: }
	goto	l5304
	line	157
	
l631:; BSR set to: 0

	line	159
	
l5290:; BSR set to: 0

;user.c: 157: else
;user.c: 158: {
;user.c: 159: ++u8_DisplayChangeCounter;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	incf	((USER_Task@u8_DisplayChangeCounter))&0ffh
	goto	l5304
	line	160
	
l632:; BSR set to: 0

	goto	l5304
	line	161
	
l630:; BSR set to: 0

	goto	l5304
	line	162
	
l628:; BSR set to: 0

	line	163
;user.c: 160: }
;user.c: 161: }
;user.c: 162: }
;user.c: 163: }
	goto	l5304
	line	164
	
l625:; BSR set to: 0

	line	166
;user.c: 164: else
;user.c: 165: {
;user.c: 166: if(u8_ErroState & (1<< 0))
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	
	btfss	((USER_Task@u8_ErroState))&0ffh,(0)&7
	goto	u5321
	goto	u5320
u5321:
	goto	l634
u5320:
	line	168
	
l5292:; BSR set to: 0

;user.c: 167: {
;user.c: 168: u16_TemporarySetpoint= t_Temperatures.SetpointTemperature;
	movff	0+(_t_Temperatures+02h),(USER_Task@u16_TemporarySetpoint)
	movff	1+(_t_Temperatures+02h),(USER_Task@u16_TemporarySetpoint+1)
	line	169
	
l5294:; BSR set to: 0

;user.c: 169: t_Temperatures.SetpointTemperature= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(1+(_t_Temperatures+02h))&0ffh
	movlw	low(0)
	movwf	(0+(_t_Temperatures+02h))&0ffh
	line	170
	
l5296:; BSR set to: 0

;user.c: 170: LCD_SetMainDigits(4,0);
	movlw	high(04h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetMainDigits@u16_MainData+1))&0ffh
	movlw	low(04h)
	movwf	((LCD_SetMainDigits@u16_MainData))&0ffh
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetMainDigits@bFlag_Number))&0ffh
	call	_LCD_SetMainDigits	;wreg free
	line	171
;user.c: 171: }
	goto	l5304
	line	172
	
l634:; BSR set to: 0

;user.c: 172: else if(u8_ErroState & (1<< 1))
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	
	btfss	((USER_Task@u8_ErroState))&0ffh,(1)&7
	goto	u5331
	goto	u5330
u5331:
	goto	l5304
u5330:
	line	174
	
l5298:; BSR set to: 0

;user.c: 173: {
;user.c: 174: t_Temperatures.SetpointTemperature= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(1+(_t_Temperatures+02h))&0ffh
	movlw	low(0)
	movwf	(0+(_t_Temperatures+02h))&0ffh
	line	175
	
l5300:; BSR set to: 0

;user.c: 175: PWM_SetDutyCycle(0);
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((PWM_SetDutyCycle@u16_DutyCycle+1))&0ffh
	movlw	low(0)
	movwf	((PWM_SetDutyCycle@u16_DutyCycle))&0ffh
	call	_PWM_SetDutyCycle	;wreg free
	line	176
	
l5302:
;user.c: 176: LCD_SetMainDigits(5,0);
	movlw	high(05h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetMainDigits@u16_MainData+1))&0ffh
	movlw	low(05h)
	movwf	((LCD_SetMainDigits@u16_MainData))&0ffh
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetMainDigits@bFlag_Number))&0ffh
	call	_LCD_SetMainDigits	;wreg free
	goto	l5304
	line	177
	
l636:
	goto	l5304
	line	178
	
l635:
	goto	l5304
	
l633:
	line	181
	
l5304:
;user.c: 177: }
;user.c: 178: }
;user.c: 181: BUTTONS_GetState(&t_Buttons);
		movlw	low(_t_Buttons)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((BUTTONS_GetState@t_Buttons))&0ffh
	movlw	high(_t_Buttons)
	movwf	((BUTTONS_GetState@t_Buttons+1))&0ffh

	call	_BUTTONS_GetState	;wreg free
	line	190
	
l5306:
;user.c: 190: if(t_Buttons.Up == 1)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		decf	((_t_Buttons))&0ffh,w
	btfss	status,2
	goto	u5341
	goto	u5340

u5341:
	goto	l5310
u5340:
	line	192
	
l5308:; BSR set to: 0

;user.c: 191: {
;user.c: 192: USER_IncrementSetpoint();
	call	_USER_IncrementSetpoint	;wreg free
	line	193
;user.c: 193: }
	goto	l5314
	line	194
	
l637:
	
l5310:
;user.c: 194: else if(t_Buttons.Up == 2)
		movlw	2
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	xorwf	((_t_Buttons))&0ffh,w
	btfss	status,2
	goto	u5351
	goto	u5350

u5351:
	goto	l5314
u5350:
	line	196
	
l5312:; BSR set to: 0

;user.c: 195: {
;user.c: 196: USER_FastIncrementSetpoint();
	call	_USER_FastIncrementSetpoint	;wreg free
	goto	l5314
	line	197
	
l639:
	goto	l5314
	line	200
	
l638:
	
l5314:
;user.c: 197: }
;user.c: 200: if(t_Buttons.Down == 1)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		decf	(0+(_t_Buttons+01h))&0ffh,w
	btfss	status,2
	goto	u5361
	goto	u5360

u5361:
	goto	l5318
u5360:
	line	202
	
l5316:; BSR set to: 0

;user.c: 201: {
;user.c: 202: USER_DecrementSetpoint();
	call	_USER_DecrementSetpoint	;wreg free
	line	203
;user.c: 203: }
	goto	l5322
	line	204
	
l640:
	
l5318:
;user.c: 204: else if(t_Buttons.Down == 2)
		movlw	2
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	xorwf	(0+(_t_Buttons+01h))&0ffh,w
	btfss	status,2
	goto	u5371
	goto	u5370

u5371:
	goto	l5322
u5370:
	line	206
	
l5320:; BSR set to: 0

;user.c: 205: {
;user.c: 206: USER_FastDecrementSetpoint();
	call	_USER_FastDecrementSetpoint	;wreg free
	goto	l5322
	line	207
	
l642:
	goto	l5322
	line	211
	
l641:
	
l5322:
;user.c: 207: }
;user.c: 211: if(t_Buttons.Temp1 == 1)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		decf	(0+(_t_Buttons+02h))&0ffh,w
	btfss	status,2
	goto	u5381
	goto	u5380

u5381:
	goto	l5328
u5380:
	line	213
	
l5324:; BSR set to: 0

;user.c: 212: {
;user.c: 213: t_Temperatures.PresetTemperature1= NVM_Read(0x0002);
	movlw	high(02h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Read@u16_Address+1))&0ffh
	movlw	low(02h)
	movwf	((NVM_Read@u16_Address))&0ffh
	call	_NVM_Read	;wreg free
	movff	0+?_NVM_Read,0+(_t_Temperatures+04h)
	movff	1+?_NVM_Read,1+(_t_Temperatures+04h)
	line	214
	
l5326:
;user.c: 214: t_Temperatures.SetpointTemperature= t_Temperatures.PresetTemperature1;
	movff	0+(_t_Temperatures+04h),0+(_t_Temperatures+02h)
	movff	1+(_t_Temperatures+04h),1+(_t_Temperatures+02h)
	line	215
;user.c: 215: }
	goto	l5336
	line	216
	
l643:
	
l5328:
;user.c: 216: else if(t_Buttons.Temp1 == 2)
		movlw	2
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	xorwf	(0+(_t_Buttons+02h))&0ffh,w
	btfss	status,2
	goto	u5391
	goto	u5390

u5391:
	goto	l5336
u5390:
	line	218
	
l5330:; BSR set to: 0

;user.c: 217: {
;user.c: 218: t_Temperatures.PresetTemperature1= t_Temperatures.SetpointTemperature;
	movff	0+(_t_Temperatures+02h),0+(_t_Temperatures+04h)
	movff	1+(_t_Temperatures+02h),1+(_t_Temperatures+04h)
	line	219
	
l5332:; BSR set to: 0

;user.c: 219: LCD_SetPresetDigits(t_Temperatures.PresetTemperature1,3, 1);
	movff	0+(_t_Temperatures+04h),(LCD_SetPresetDigits@u16_PresetData)
	movff	1+(_t_Temperatures+04h),(LCD_SetPresetDigits@u16_PresetData+1)
	movlw	low(03h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetPresetDigits@u8_Preset))&0ffh
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetPresetDigits@bFlag_Number))&0ffh
	call	_LCD_SetPresetDigits	;wreg free
	line	220
	
l5334:
;user.c: 220: NVM_Write(1, t_Temperatures.PresetTemperature1);
	movff	0+(_t_Temperatures+04h),(NVM_Write@u16_Data)
	movff	1+(_t_Temperatures+04h),(NVM_Write@u16_Data+1)
	movlw	(01h)&0ffh
	
	call	_NVM_Write
	goto	l5336
	line	221
	
l645:
	goto	l5336
	line	223
	
l644:
	
l5336:
;user.c: 221: }
;user.c: 223: if(t_Buttons.Temp2 == 1)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		decf	(0+(_t_Buttons+03h))&0ffh,w
	btfss	status,2
	goto	u5401
	goto	u5400

u5401:
	goto	l5342
u5400:
	line	225
	
l5338:; BSR set to: 0

;user.c: 224: {
;user.c: 225: t_Temperatures.PresetTemperature2= NVM_Read(0x0004);
	movlw	high(04h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Read@u16_Address+1))&0ffh
	movlw	low(04h)
	movwf	((NVM_Read@u16_Address))&0ffh
	call	_NVM_Read	;wreg free
	movff	0+?_NVM_Read,0+(_t_Temperatures+06h)
	movff	1+?_NVM_Read,1+(_t_Temperatures+06h)
	line	226
	
l5340:
;user.c: 226: t_Temperatures.SetpointTemperature= t_Temperatures.PresetTemperature2;
	movff	0+(_t_Temperatures+06h),0+(_t_Temperatures+02h)
	movff	1+(_t_Temperatures+06h),1+(_t_Temperatures+02h)
	line	227
;user.c: 227: }
	goto	l5350
	line	228
	
l646:
	
l5342:
;user.c: 228: else if(t_Buttons.Temp2 == 2)
		movlw	2
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	xorwf	(0+(_t_Buttons+03h))&0ffh,w
	btfss	status,2
	goto	u5411
	goto	u5410

u5411:
	goto	l5350
u5410:
	line	230
	
l5344:; BSR set to: 0

;user.c: 229: {
;user.c: 230: t_Temperatures.PresetTemperature2= t_Temperatures.SetpointTemperature;
	movff	0+(_t_Temperatures+02h),0+(_t_Temperatures+06h)
	movff	1+(_t_Temperatures+02h),1+(_t_Temperatures+06h)
	line	231
	
l5346:; BSR set to: 0

;user.c: 231: LCD_SetPresetDigits(t_Temperatures.PresetTemperature2,6, 1);
	movff	0+(_t_Temperatures+06h),(LCD_SetPresetDigits@u16_PresetData)
	movff	1+(_t_Temperatures+06h),(LCD_SetPresetDigits@u16_PresetData+1)
	movlw	low(06h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetPresetDigits@u8_Preset))&0ffh
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetPresetDigits@bFlag_Number))&0ffh
	call	_LCD_SetPresetDigits	;wreg free
	line	232
	
l5348:
;user.c: 232: NVM_Write(2, t_Temperatures.PresetTemperature2);
	movff	0+(_t_Temperatures+06h),(NVM_Write@u16_Data)
	movff	1+(_t_Temperatures+06h),(NVM_Write@u16_Data+1)
	movlw	(02h)&0ffh
	
	call	_NVM_Write
	goto	l5350
	line	233
	
l648:
	goto	l5350
	line	235
	
l647:
	
l5350:
;user.c: 233: }
;user.c: 235: if(t_Buttons.Temp3 == 1)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		decf	(0+(_t_Buttons+04h))&0ffh,w
	btfss	status,2
	goto	u5421
	goto	u5420

u5421:
	goto	l5356
u5420:
	line	237
	
l5352:; BSR set to: 0

;user.c: 236: {
;user.c: 237: t_Temperatures.PresetTemperature3= NVM_Read(0x0006);
	movlw	high(06h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Read@u16_Address+1))&0ffh
	movlw	low(06h)
	movwf	((NVM_Read@u16_Address))&0ffh
	call	_NVM_Read	;wreg free
	movff	0+?_NVM_Read,0+(_t_Temperatures+08h)
	movff	1+?_NVM_Read,1+(_t_Temperatures+08h)
	line	238
	
l5354:
;user.c: 238: t_Temperatures.SetpointTemperature= t_Temperatures.PresetTemperature3;
	movff	0+(_t_Temperatures+08h),0+(_t_Temperatures+02h)
	movff	1+(_t_Temperatures+08h),1+(_t_Temperatures+02h)
	line	239
;user.c: 239: }
	goto	l5364
	line	240
	
l649:
	
l5356:
;user.c: 240: else if(t_Buttons.Temp3 == 2)
		movlw	2
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	xorwf	(0+(_t_Buttons+04h))&0ffh,w
	btfss	status,2
	goto	u5431
	goto	u5430

u5431:
	goto	l5364
u5430:
	line	242
	
l5358:; BSR set to: 0

;user.c: 241: {
;user.c: 242: t_Temperatures.PresetTemperature3= t_Temperatures.SetpointTemperature;
	movff	0+(_t_Temperatures+02h),0+(_t_Temperatures+08h)
	movff	1+(_t_Temperatures+02h),1+(_t_Temperatures+08h)
	line	243
	
l5360:; BSR set to: 0

;user.c: 243: LCD_SetPresetDigits(t_Temperatures.PresetTemperature3,9, 1);
	movff	0+(_t_Temperatures+08h),(LCD_SetPresetDigits@u16_PresetData)
	movff	1+(_t_Temperatures+08h),(LCD_SetPresetDigits@u16_PresetData+1)
	movlw	low(09h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetPresetDigits@u8_Preset))&0ffh
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetPresetDigits@bFlag_Number))&0ffh
	call	_LCD_SetPresetDigits	;wreg free
	line	244
	
l5362:
;user.c: 244: NVM_Write(3, t_Temperatures.PresetTemperature3);
	movff	0+(_t_Temperatures+08h),(NVM_Write@u16_Data)
	movff	1+(_t_Temperatures+08h),(NVM_Write@u16_Data+1)
	movlw	(03h)&0ffh
	
	call	_NVM_Write
	goto	l5364
	line	245
	
l651:
	goto	l5364
	line	246
	
l650:
	goto	l5364
	
l619:
	line	250
	
l5364:
;user.c: 245: }
;user.c: 246: }
;user.c: 250: if(u16_SaveCurrentSettingCounter > 20000)
		movlw	33
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	subwf	 ((USER_Task@u16_SaveCurrentSettingCounter))&0ffh,w
	movlw	78
	subwfb	((USER_Task@u16_SaveCurrentSettingCounter+1))&0ffh,w
	btfss	status,0
	goto	u5441
	goto	u5440

u5441:
	goto	l5370
u5440:
	line	252
	
l5366:; BSR set to: 0

;user.c: 251: {
;user.c: 252: u16_SaveCurrentSettingCounter= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((USER_Task@u16_SaveCurrentSettingCounter+1))&0ffh
	movlw	low(0)
	movwf	((USER_Task@u16_SaveCurrentSettingCounter))&0ffh
	line	253
	
l5368:; BSR set to: 0

;user.c: 253: NVM_Write(0x000E, t_Temperatures.SetpointTemperature);
	movff	0+(_t_Temperatures+02h),(NVM_Write@u16_Data)
	movff	1+(_t_Temperatures+02h),(NVM_Write@u16_Data+1)
	movlw	(0Eh)&0ffh
	
	call	_NVM_Write
	line	254
;user.c: 254: }
	goto	l5376
	line	255
	
l652:
	line	257
	
l5370:
;user.c: 255: else
;user.c: 256: {
;user.c: 257: if(u16_TemporarySaveSetpoint == t_Temperatures.SetpointTemperature)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((USER_Task@u16_TemporarySaveSetpoint))&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
xorwf	(0+(_t_Temperatures+02h))&0ffh,w
	bnz	u5451
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
movf	((USER_Task@u16_TemporarySaveSetpoint+1))&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
xorwf	(1+(_t_Temperatures+02h))&0ffh,w
	btfss	status,2
	goto	u5451
	goto	u5450

u5451:
	goto	l5374
u5450:
	line	259
	
l5372:; BSR set to: 0

;user.c: 258: {
;user.c: 259: ++u16_SaveCurrentSettingCounter;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	infsnz	((USER_Task@u16_SaveCurrentSettingCounter))&0ffh
	incf	((USER_Task@u16_SaveCurrentSettingCounter+1))&0ffh
	line	260
;user.c: 260: }
	goto	l5376
	line	261
	
l654:; BSR set to: 0

	line	263
	
l5374:; BSR set to: 0

;user.c: 261: else
;user.c: 262: {
;user.c: 263: u16_SaveCurrentSettingCounter= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((USER_Task@u16_SaveCurrentSettingCounter+1))&0ffh
	movlw	low(0)
	movwf	((USER_Task@u16_SaveCurrentSettingCounter))&0ffh
	goto	l5376
	line	264
	
l655:; BSR set to: 0

	goto	l5376
	line	265
	
l653:; BSR set to: 0

	line	266
	
l5376:
;user.c: 264: }
;user.c: 265: }
;user.c: 266: u16_TemporarySaveSetpoint= t_Temperatures.SetpointTemperature;
	movff	0+(_t_Temperatures+02h),(USER_Task@u16_TemporarySaveSetpoint)
	movff	1+(_t_Temperatures+02h),(USER_Task@u16_TemporarySaveSetpoint+1)
	line	275
;user.c: 270: if( (t_Buttons.Up == 0) &&
;user.c: 271: (t_Buttons.Down == 0) &&
;user.c: 272: (t_Buttons.Temp1 == 0) &&
;user.c: 273: (t_Buttons.Temp2 == 0) &&
;user.c: 274: (t_Buttons.Temp3 == 0) &&
;user.c: 275: (bFlag_AutoOff == 0) )
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((_t_Buttons))&0ffh,w
	btfss	status,2
	goto	u5461
	goto	u5460
u5461:
	goto	l5402
u5460:
	
l5378:; BSR set to: 0

opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	(0+(_t_Buttons+01h))&0ffh,w
	btfss	status,2
	goto	u5471
	goto	u5470
u5471:
	goto	l5402
u5470:
	
l5380:; BSR set to: 0

opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	(0+(_t_Buttons+02h))&0ffh,w
	btfss	status,2
	goto	u5481
	goto	u5480
u5481:
	goto	l5402
u5480:
	
l5382:; BSR set to: 0

opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	(0+(_t_Buttons+03h))&0ffh,w
	btfss	status,2
	goto	u5491
	goto	u5490
u5491:
	goto	l5402
u5490:
	
l5384:; BSR set to: 0

opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	(0+(_t_Buttons+04h))&0ffh,w
	btfss	status,2
	goto	u5501
	goto	u5500
u5501:
	goto	l5402
u5500:
	
l5386:; BSR set to: 0

opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((USER_Task@bFlag_AutoOff))&0ffh,w
	btfss	status,2
	goto	u5511
	goto	u5510
u5511:
	goto	l5402
u5510:
	line	277
	
l5388:; BSR set to: 0

;user.c: 276: {
;user.c: 277: ++u32_WatchdogCounter;
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	addwf	((USER_Task@u32_WatchdogCounter))&0ffh	;volatile
	movlw	0
	addwfc	((USER_Task@u32_WatchdogCounter+1))&0ffh	;volatile
	addwfc	((USER_Task@u32_WatchdogCounter+2))&0ffh	;volatile
	addwfc	((USER_Task@u32_WatchdogCounter+3))&0ffh	;volatile
	line	278
;user.c: 278: if(u32_WatchdogCounter > (uint32_t)60000)
		movf	((USER_Task@u32_WatchdogCounter+3))&0ffh,w	;volatile
	iorwf	((USER_Task@u32_WatchdogCounter+2))&0ffh,w	;volatile
	bnz	u5520
	movlw	97
	subwf	 ((USER_Task@u32_WatchdogCounter))&0ffh,w	;volatile
	movlw	234
	subwfb	((USER_Task@u32_WatchdogCounter+1))&0ffh,w	;volatile
	btfss	status,0
	goto	u5521
	goto	u5520

u5521:
	goto	l5392
u5520:
	line	280
	
l5390:; BSR set to: 0

;user.c: 279: {
;user.c: 280: t_Temperatures.SetpointTemperature= 120;
	movlw	high(078h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(1+(_t_Temperatures+02h))&0ffh
	movlw	low(078h)
	movwf	(0+(_t_Temperatures+02h))&0ffh
	goto	l5392
	line	281
	
l657:; BSR set to: 0

	line	283
	
l5392:; BSR set to: 0

;user.c: 281: }
;user.c: 283: if(u32_WatchdogCounter > (uint32_t)80000)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		movf	((USER_Task@u32_WatchdogCounter+3))&0ffh,w	;volatile
	bnz	u5530
	movlw	129
	subwf	 ((USER_Task@u32_WatchdogCounter))&0ffh,w	;volatile
	movlw	56
	subwfb	((USER_Task@u32_WatchdogCounter+1))&0ffh,w	;volatile
	movlw	1
	subwfb	((USER_Task@u32_WatchdogCounter+2))&0ffh,w	;volatile
	btfss	status,0
	goto	u5531
	goto	u5530

u5531:
	goto	l660
u5530:
	line	285
	
l5394:; BSR set to: 0

;user.c: 284: {
;user.c: 285: bFlag_AutoOff= 1;
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((USER_Task@bFlag_AutoOff))&0ffh
	line	286
;user.c: 286: t_Temperatures.SetpointTemperature= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(1+(_t_Temperatures+02h))&0ffh
	movlw	low(0)
	movwf	(0+(_t_Temperatures+02h))&0ffh
	line	287
	
l5396:; BSR set to: 0

;user.c: 287: PWM_SetDutyCycle(0);
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((PWM_SetDutyCycle@u16_DutyCycle+1))&0ffh
	movlw	low(0)
	movwf	((PWM_SetDutyCycle@u16_DutyCycle))&0ffh
	call	_PWM_SetDutyCycle	;wreg free
	line	288
	
l5398:
;user.c: 288: LCD_Clear();
	call	_LCD_Clear	;wreg free
	line	289
	
l5400:
;user.c: 289: LCD_SetMainDigits(6,0);
	movlw	high(06h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetMainDigits@u16_MainData+1))&0ffh
	movlw	low(06h)
	movwf	((LCD_SetMainDigits@u16_MainData))&0ffh
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetMainDigits@bFlag_Number))&0ffh
	call	_LCD_SetMainDigits	;wreg free
	goto	l660
	line	290
	
l658:
	line	291
;user.c: 290: }
;user.c: 291: }
	goto	l660
	line	292
	
l656:
	line	294
	
l5402:
;user.c: 292: else
;user.c: 293: {
;user.c: 294: u32_WatchdogCounter= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((USER_Task@u32_WatchdogCounter))&0ffh	;volatile
	movlw	high(0)
	movwf	((USER_Task@u32_WatchdogCounter+1))&0ffh	;volatile
	movlw	low highword(0)
	movwf	((USER_Task@u32_WatchdogCounter+2))&0ffh	;volatile
	movlw	high highword(0)
	movwf	((USER_Task@u32_WatchdogCounter+3))&0ffh	;volatile
	goto	l660
	line	295
	
l659:; BSR set to: 0

	line	297
	
l660:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USER_Task
	__end_of_USER_Task:
	signat	_USER_Task,89
	global	_USER_TemperatureFilter

;; *************** function _USER_TemperatureFilter *****************
;; Defined at:
;;		line 370 in file "apl/user.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  u16_FilterTe    2   22[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   20[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ADC_GetTemperature
;; This function is called by:
;;		_USER_Task
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0,minocg
	line	370
global __ptext2
__ptext2:
psect	text2
	file	"apl/user.c"
	line	370
	global	__size_of_USER_TemperatureFilter
	__size_of_USER_TemperatureFilter	equ	__end_of_USER_TemperatureFilter-_USER_TemperatureFilter
	
_USER_TemperatureFilter:
;incstack = 0
	opt	stack 26
	line	373
	
l4858:
;user.c: 372: static uint16_t u16_FilterArray[4];
;user.c: 373: uint16_t u16_FilterTemporary= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((USER_TemperatureFilter@u16_FilterTemporary+1))&0ffh
	movlw	low(0)
	movwf	((USER_TemperatureFilter@u16_FilterTemporary))&0ffh
	line	374
	
l4860:; BSR set to: 0

;user.c: 374: u16_FilterTemporary= ADC_GetTemperature() + u16_FilterArray[1] + u16_FilterArray[2] + u16_FilterArray[3];
	call	_ADC_GetTemperature	;wreg free
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	(0+(USER_TemperatureFilter@u16_FilterArray+02h))&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	addwf	(0+?_ADC_GetTemperature)&0ffh
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	(1+(USER_TemperatureFilter@u16_FilterArray+02h))&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	addwfc	(1+?_ADC_GetTemperature)&0ffh
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	(0+(USER_TemperatureFilter@u16_FilterArray+04h))&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	addwf	(0+?_ADC_GetTemperature)&0ffh
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	(1+(USER_TemperatureFilter@u16_FilterArray+04h))&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	addwfc	(1+?_ADC_GetTemperature)&0ffh
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	(0+(USER_TemperatureFilter@u16_FilterArray+06h))&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	addwf	(0+?_ADC_GetTemperature)&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((USER_TemperatureFilter@u16_FilterTemporary))&0ffh
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	(1+(USER_TemperatureFilter@u16_FilterArray+06h))&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	addwfc	(1+?_ADC_GetTemperature)&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	1+((USER_TemperatureFilter@u16_FilterTemporary))&0ffh
	line	375
	
l4862:; BSR set to: 0

;user.c: 375: u16_FilterTemporary/= 4;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	bcf	status,0
	rrcf	((USER_TemperatureFilter@u16_FilterTemporary+1))&0ffh
	rrcf	((USER_TemperatureFilter@u16_FilterTemporary))&0ffh
	bcf	status,0
	rrcf	((USER_TemperatureFilter@u16_FilterTemporary+1))&0ffh
	rrcf	((USER_TemperatureFilter@u16_FilterTemporary))&0ffh
	line	376
	
l4864:; BSR set to: 0

;user.c: 376: u16_FilterArray[3]= u16_FilterArray[2];
	movff	0+(USER_TemperatureFilter@u16_FilterArray+04h),0+(USER_TemperatureFilter@u16_FilterArray+06h)
	movff	1+(USER_TemperatureFilter@u16_FilterArray+04h),1+(USER_TemperatureFilter@u16_FilterArray+06h)
	line	377
	
l4866:; BSR set to: 0

;user.c: 377: u16_FilterArray[2]= u16_FilterArray[1];
	movff	0+(USER_TemperatureFilter@u16_FilterArray+02h),0+(USER_TemperatureFilter@u16_FilterArray+04h)
	movff	1+(USER_TemperatureFilter@u16_FilterArray+02h),1+(USER_TemperatureFilter@u16_FilterArray+04h)
	line	378
	
l4868:; BSR set to: 0

;user.c: 378: u16_FilterArray[1]= ADC_GetTemperature();
	call	_ADC_GetTemperature	;wreg free
	movff	0+?_ADC_GetTemperature,0+(USER_TemperatureFilter@u16_FilterArray+02h)
	movff	1+?_ADC_GetTemperature,1+(USER_TemperatureFilter@u16_FilterArray+02h)
	line	380
	
l4870:
;user.c: 380: return u16_FilterTemporary;
	movff	(USER_TemperatureFilter@u16_FilterTemporary),(?_USER_TemperatureFilter)
	movff	(USER_TemperatureFilter@u16_FilterTemporary+1),(?_USER_TemperatureFilter+1)
	goto	l694
	
l4872:
	line	381
	
l694:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USER_TemperatureFilter
	__end_of_USER_TemperatureFilter:
	signat	_USER_TemperatureFilter,90
	global	_ADC_GetTemperature

;; *************** function _ADC_GetTemperature *****************
;; Defined at:
;;		line 42 in file "hal/adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   18[BANK0 ] unsigned int 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USER_TemperatureFilter
;;		_CONTROL_Task
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0,minocg
	file	"hal/adc.c"
	line	42
global __ptext3
__ptext3:
psect	text3
	file	"hal/adc.c"
	line	42
	global	__size_of_ADC_GetTemperature
	__size_of_ADC_GetTemperature	equ	__end_of_ADC_GetTemperature-_ADC_GetTemperature
	
_ADC_GetTemperature:
;incstack = 0
	opt	stack 26
	line	44
	
l4358:
;adc.c: 44: return s16_TemperatureCelcius;
	movff	(_s16_TemperatureCelcius),(?_ADC_GetTemperature)
	movff	(_s16_TemperatureCelcius+1),(?_ADC_GetTemperature+1)
	line	45
	
l105:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ADC_GetTemperature
	__end_of_ADC_GetTemperature:
	signat	_ADC_GetTemperature,90
	global	_USER_IncrementSetpoint

;; *************** function _USER_IncrementSetpoint *****************
;; Defined at:
;;		line 318 in file "apl/user.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USER_Task
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=0,minocg
	file	"apl/user.c"
	line	318
global __ptext4
__ptext4:
psect	text4
	file	"apl/user.c"
	line	318
	global	__size_of_USER_IncrementSetpoint
	__size_of_USER_IncrementSetpoint	equ	__end_of_USER_IncrementSetpoint-_USER_IncrementSetpoint
	
_USER_IncrementSetpoint:
;incstack = 0
	opt	stack 27
	line	320
	
l4874:
;user.c: 320: ++t_Temperatures.SetpointTemperature;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	infsnz	(0+(_t_Temperatures+02h))&0ffh
	incf	(1+(_t_Temperatures+02h))&0ffh
	line	321
	
l4876:; BSR set to: 0

;user.c: 321: if(t_Temperatures.SetpointTemperature > 450)
		movlw	195
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	subwf	 (0+(_t_Temperatures+02h))&0ffh,w
	movlw	1
	subwfb	(1+(_t_Temperatures+02h))&0ffh,w
	btfss	status,0
	goto	u4541
	goto	u4540

u4541:
	goto	l671
u4540:
	line	323
	
l4878:; BSR set to: 0

;user.c: 322: {
;user.c: 323: t_Temperatures.SetpointTemperature= 450;
	movlw	high(01C2h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(1+(_t_Temperatures+02h))&0ffh
	movlw	low(01C2h)
	movwf	(0+(_t_Temperatures+02h))&0ffh
	goto	l671
	line	324
	
l670:; BSR set to: 0

	line	325
	
l671:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_USER_IncrementSetpoint
	__end_of_USER_IncrementSetpoint:
	signat	_USER_IncrementSetpoint,89
	global	_USER_FastIncrementSetpoint

;; *************** function _USER_FastIncrementSetpoint *****************
;; Defined at:
;;		line 337 in file "apl/user.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USER_Task
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=0,minocg
	line	337
global __ptext5
__ptext5:
psect	text5
	file	"apl/user.c"
	line	337
	global	__size_of_USER_FastIncrementSetpoint
	__size_of_USER_FastIncrementSetpoint	equ	__end_of_USER_FastIncrementSetpoint-_USER_FastIncrementSetpoint
	
_USER_FastIncrementSetpoint:; BSR set to: 0

;incstack = 0
	opt	stack 27
	line	340
	
l4880:
;user.c: 339: static uint8_t u8_FastIncrementCounter= 0;
;user.c: 340: ++u8_FastIncrementCounter;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	incf	((USER_FastIncrementSetpoint@u8_FastIncrementCounter))&0ffh
	line	341
	
l4882:; BSR set to: 0

;user.c: 341: if(u8_FastIncrementCounter > 20)
		movlw	015h-1
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	cpfsgt	((USER_FastIncrementSetpoint@u8_FastIncrementCounter))&0ffh
	goto	u4551
	goto	u4550

u4551:
	goto	l682
u4550:
	line	343
	
l4884:; BSR set to: 0

;user.c: 342: {
;user.c: 343: u8_FastIncrementCounter= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((USER_FastIncrementSetpoint@u8_FastIncrementCounter))&0ffh
	line	344
	
l4886:; BSR set to: 0

;user.c: 344: ++t_Temperatures.SetpointTemperature;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	infsnz	(0+(_t_Temperatures+02h))&0ffh
	incf	(1+(_t_Temperatures+02h))&0ffh
	line	346
	
l4888:; BSR set to: 0

;user.c: 346: if(t_Temperatures.SetpointTemperature > 450)
		movlw	195
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	subwf	 (0+(_t_Temperatures+02h))&0ffh,w
	movlw	1
	subwfb	(1+(_t_Temperatures+02h))&0ffh,w
	btfss	status,0
	goto	u4561
	goto	u4560

u4561:
	goto	l682
u4560:
	line	348
	
l4890:; BSR set to: 0

;user.c: 347: {
;user.c: 348: t_Temperatures.SetpointTemperature= 450;
	movlw	high(01C2h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(1+(_t_Temperatures+02h))&0ffh
	movlw	low(01C2h)
	movwf	(0+(_t_Temperatures+02h))&0ffh
	goto	l682
	line	349
	
l681:; BSR set to: 0

	goto	l682
	line	350
	
l680:; BSR set to: 0

	line	351
	
l682:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_USER_FastIncrementSetpoint
	__end_of_USER_FastIncrementSetpoint:
	signat	_USER_FastIncrementSetpoint,89
	global	_USER_FastDecrementSetpoint

;; *************** function _USER_FastDecrementSetpoint *****************
;; Defined at:
;;		line 354 in file "apl/user.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USER_Task
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=0,minocg
	line	354
global __ptext6
__ptext6:
psect	text6
	file	"apl/user.c"
	line	354
	global	__size_of_USER_FastDecrementSetpoint
	__size_of_USER_FastDecrementSetpoint	equ	__end_of_USER_FastDecrementSetpoint-_USER_FastDecrementSetpoint
	
_USER_FastDecrementSetpoint:; BSR set to: 0

;incstack = 0
	opt	stack 27
	line	357
	
l4896:
;user.c: 356: static uint8_t u8_FastDecrementCounter= 0;
;user.c: 357: ++u8_FastDecrementCounter;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	incf	((USER_FastDecrementSetpoint@u8_FastDecrementCounter))&0ffh
	line	358
	
l4898:; BSR set to: 0

;user.c: 358: if(u8_FastDecrementCounter > 20)
		movlw	015h-1
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	cpfsgt	((USER_FastDecrementSetpoint@u8_FastDecrementCounter))&0ffh
	goto	u4581
	goto	u4580

u4581:
	goto	l689
u4580:
	line	360
	
l4900:; BSR set to: 0

;user.c: 359: {
;user.c: 360: if(t_Temperatures.SetpointTemperature > 50)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		movf	(1+(_t_Temperatures+02h))&0ffh,w
	bnz	u4590
	movlw	51
	subwf	 (0+(_t_Temperatures+02h))&0ffh,w
	btfss	status,0
	goto	u4591
	goto	u4590

u4591:
	goto	l689
u4590:
	line	362
	
l4902:; BSR set to: 0

;user.c: 361: {
;user.c: 362: u8_FastDecrementCounter= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((USER_FastDecrementSetpoint@u8_FastDecrementCounter))&0ffh
	line	363
	
l4904:; BSR set to: 0

;user.c: 363: --t_Temperatures.SetpointTemperature;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	decf	(0+(_t_Temperatures+02h))&0ffh
	btfss	status,0
	decf	(1+(_t_Temperatures+02h))&0ffh
	goto	l689
	line	364
	
l688:; BSR set to: 0

	goto	l689
	line	365
	
l687:; BSR set to: 0

	line	366
	
l689:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_USER_FastDecrementSetpoint
	__end_of_USER_FastDecrementSetpoint:
	signat	_USER_FastDecrementSetpoint,89
	global	_USER_DecrementSetpoint

;; *************** function _USER_DecrementSetpoint *****************
;; Defined at:
;;		line 328 in file "apl/user.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USER_Task
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2,group=0,minocg
	line	328
global __ptext7
__ptext7:
psect	text7
	file	"apl/user.c"
	line	328
	global	__size_of_USER_DecrementSetpoint
	__size_of_USER_DecrementSetpoint	equ	__end_of_USER_DecrementSetpoint-_USER_DecrementSetpoint
	
_USER_DecrementSetpoint:; BSR set to: 0

;incstack = 0
	opt	stack 27
	line	330
	
l4892:
;user.c: 330: if(t_Temperatures.SetpointTemperature > 50)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		movf	(1+(_t_Temperatures+02h))&0ffh,w
	bnz	u4570
	movlw	51
	subwf	 (0+(_t_Temperatures+02h))&0ffh,w
	btfss	status,0
	goto	u4571
	goto	u4570

u4571:
	goto	l675
u4570:
	line	332
	
l4894:; BSR set to: 0

;user.c: 331: {
;user.c: 332: --t_Temperatures.SetpointTemperature;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	decf	(0+(_t_Temperatures+02h))&0ffh
	btfss	status,0
	decf	(1+(_t_Temperatures+02h))&0ffh
	goto	l675
	line	333
	
l674:; BSR set to: 0

	line	334
	
l675:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_USER_DecrementSetpoint
	__end_of_USER_DecrementSetpoint:
	signat	_USER_DecrementSetpoint,89
	global	_PWM_SetDutyCycle

;; *************** function _PWM_SetDutyCycle *****************
;; Defined at:
;;		line 57 in file "hal/pwm.c"
;; Parameters:    Size  Location     Type
;;  u16_DutyCycl    2   18[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USER_Task
;;		_CONTROL_Task
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=0,minocg
	file	"hal/pwm.c"
	line	57
global __ptext8
__ptext8:
psect	text8
	file	"hal/pwm.c"
	line	57
	global	__size_of_PWM_SetDutyCycle
	__size_of_PWM_SetDutyCycle	equ	__end_of_PWM_SetDutyCycle-_PWM_SetDutyCycle
	
_PWM_SetDutyCycle:; BSR set to: 0

;incstack = 0
	opt	stack 27
	line	59
	
l4830:
;pwm.c: 59: if(u16_DutyCycle > 10)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		movf	((PWM_SetDutyCycle@u16_DutyCycle+1))&0ffh,w
	bnz	u4520
	movlw	11
	subwf	 ((PWM_SetDutyCycle@u16_DutyCycle))&0ffh,w
	btfss	status,0
	goto	u4521
	goto	u4520

u4521:
	goto	l4834
u4520:
	line	61
	
l4832:; BSR set to: 0

;pwm.c: 60: {
;pwm.c: 61: u16_DutyCycle= 10;
	movlw	high(0Ah)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((PWM_SetDutyCycle@u16_DutyCycle+1))&0ffh
	movlw	low(0Ah)
	movwf	((PWM_SetDutyCycle@u16_DutyCycle))&0ffh
	goto	l4834
	line	62
	
l816:; BSR set to: 0

	line	64
	
l4834:; BSR set to: 0

;pwm.c: 62: }
;pwm.c: 64: u8_DutyCycle= (uint8_t) u16_DutyCycle;
	movff	(PWM_SetDutyCycle@u16_DutyCycle),(_u8_DutyCycle)
	line	66
	
l817:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_PWM_SetDutyCycle
	__end_of_PWM_SetDutyCycle:
	signat	_PWM_SetDutyCycle,4217
	global	_NVM_Write

;; *************** function _NVM_Write *****************
;; Defined at:
;;		line 140 in file "hal/nvm.c"
;; Parameters:    Size  Location     Type
;;  u8_Address      1    wreg     unsigned char 
;;  u16_Data        2   18[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  u8_Address      1   22[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USER_Task
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=0,minocg
	file	"hal/nvm.c"
	line	140
global __ptext9
__ptext9:
psect	text9
	file	"hal/nvm.c"
	line	140
	global	__size_of_NVM_Write
	__size_of_NVM_Write	equ	__end_of_NVM_Write-_NVM_Write
	
_NVM_Write:; BSR set to: 0

;incstack = 0
	opt	stack 27
;NVM_Write@u8_Address stored from wreg
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Write@u8_Address))&0ffh
	line	142
	
l4906:
;nvm.c: 142: u16_NVM_WriteBuffer[u8_Address]= u16_Data;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((NVM_Write@u8_Address))&0ffh,w
	mullw	02h
	movlw	low(_u16_NVM_WriteBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_u16_NVM_WriteBuffer)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(NVM_Write@u16_Data),postinc2
	movff	(NVM_Write@u16_Data+1),postdec2
	line	143
	
l4908:; BSR set to: 0

;nvm.c: 143: u8_NVM_WriteRegister|= (1<<u8_Address);
	movff	(NVM_Write@u8_Address),??_NVM_Write+0+0
	movlw	(01h)&0ffh
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(??_NVM_Write+1+0)&0ffh
	incf	(??_NVM_Write+0+0)&0ffh
	goto	u4604
u4605:
	bcf	status,0
	rlcf	((??_NVM_Write+1+0))&0ffh
u4604:
	decfsz	(??_NVM_Write+0+0)&0ffh
	goto	u4605
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((??_NVM_Write+1+0))&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	iorwf	((_u8_NVM_WriteRegister))&0ffh
	line	144
	
l788:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_NVM_Write
	__end_of_NVM_Write:
	signat	_NVM_Write,8313
	global	_LCD_SetMainDigits

;; *************** function _LCD_SetMainDigits *****************
;; Defined at:
;;		line 109 in file "mid/lcd.c"
;; Parameters:    Size  Location     Type
;;  u16_MainData    2   22[BANK0 ] unsigned int 
;;  bFlag_Number    1   24[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  u8_TempArray    3    0[BANK1 ] unsigned char [3]
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       3       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       3       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCD_Bcd2Segment
;;		_LCD_Dec2Bcd
;;		_LCD_SetData
;; This function is called by:
;;		_USER_Task
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=0,minocg
	file	"mid/lcd.c"
	line	109
global __ptext10
__ptext10:
psect	text10
	file	"mid/lcd.c"
	line	109
	global	__size_of_LCD_SetMainDigits
	__size_of_LCD_SetMainDigits	equ	__end_of_LCD_SetMainDigits-_LCD_SetMainDigits
	
_LCD_SetMainDigits:; BSR set to: 0

;incstack = 0
	opt	stack 25
	line	112
	
l4720:
;lcd.c: 111: uint8_t u8_TempArray[3];
;lcd.c: 112: LCD_Dec2Bcd(u16_MainData, &u8_TempArray[0]);
	movff	(LCD_SetMainDigits@u16_MainData),(LCD_Dec2Bcd@u16_DecimalData)
	movff	(LCD_SetMainDigits@u16_MainData+1),(LCD_Dec2Bcd@u16_DecimalData+1)
		movlw	low(LCD_SetMainDigits@u8_TempArray)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_Dec2Bcd@ptrBCD))&0ffh
	movlw	high(LCD_SetMainDigits@u8_TempArray)
	movwf	((LCD_Dec2Bcd@ptrBCD+1))&0ffh

	call	_LCD_Dec2Bcd	;wreg free
	line	114
	
l4722:
;lcd.c: 114: if(bFlag_Number == 1)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		decf	((LCD_SetMainDigits@bFlag_Number))&0ffh,w
	btfss	status,2
	goto	u4401
	goto	u4400

u4401:
	goto	l4752
u4400:
	line	117
	
l4724:; BSR set to: 0

;lcd.c: 115: {
;lcd.c: 117: if(u16_MainData > 99)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		movf	((LCD_SetMainDigits@u16_MainData+1))&0ffh,w
	bnz	u4410
	movlw	100
	subwf	 ((LCD_SetMainDigits@u16_MainData))&0ffh,w
	btfss	status,0
	goto	u4411
	goto	u4410

u4411:
	goto	l4728
u4410:
	line	119
	
l4726:; BSR set to: 0

;lcd.c: 118: {
;lcd.c: 119: u8_TempArray[0]= LCD_Bcd2Segment(u8_TempArray[0],0);
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_Bcd2Segment@u8_DigitType))&0ffh
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	((LCD_SetMainDigits@u8_TempArray))&0ffh,w
	
	call	_LCD_Bcd2Segment
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	((LCD_SetMainDigits@u8_TempArray))&0ffh
	line	120
;lcd.c: 120: }
	goto	l4730
	line	121
	
l376:; BSR set to: 1

	line	123
	
l4728:
;lcd.c: 121: else
;lcd.c: 122: {
;lcd.c: 123: u8_TempArray[0]= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	((LCD_SetMainDigits@u8_TempArray))&0ffh
	goto	l4730
	line	124
	
l377:; BSR set to: 1

	line	127
	
l4730:; BSR set to: 1

;lcd.c: 124: }
;lcd.c: 127: if(u16_MainData > 9)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		movf	((LCD_SetMainDigits@u16_MainData+1))&0ffh,w
	bnz	u4420
	movlw	10
	subwf	 ((LCD_SetMainDigits@u16_MainData))&0ffh,w
	btfss	status,0
	goto	u4421
	goto	u4420

u4421:
	goto	l4734
u4420:
	line	129
	
l4732:; BSR set to: 0

;lcd.c: 128: {
;lcd.c: 129: u8_TempArray[1]= LCD_Bcd2Segment(u8_TempArray[1],0);
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_Bcd2Segment@u8_DigitType))&0ffh
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	(0+(LCD_SetMainDigits@u8_TempArray+01h))&0ffh,w
	
	call	_LCD_Bcd2Segment
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	(0+(LCD_SetMainDigits@u8_TempArray+01h))&0ffh
	line	130
;lcd.c: 130: }
	goto	l4736
	line	131
	
l378:; BSR set to: 1

	line	133
	
l4734:
;lcd.c: 131: else
;lcd.c: 132: {
;lcd.c: 133: u8_TempArray[1]= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	(0+(LCD_SetMainDigits@u8_TempArray+01h))&0ffh
	goto	l4736
	line	134
	
l379:; BSR set to: 1

	line	136
	
l4736:; BSR set to: 1

;lcd.c: 134: }
;lcd.c: 136: u8_TempArray[2]= LCD_Bcd2Segment(u8_TempArray[2],0);
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_Bcd2Segment@u8_DigitType))&0ffh
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	(0+(LCD_SetMainDigits@u8_TempArray+02h))&0ffh,w
	
	call	_LCD_Bcd2Segment
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	(0+(LCD_SetMainDigits@u8_TempArray+02h))&0ffh
	line	138
	
l4738:; BSR set to: 1

;lcd.c: 138: LCD_SetData(u8_TempArray[0],0);
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetData@u8_Position))&0ffh
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	((LCD_SetMainDigits@u8_TempArray))&0ffh,w
	
	call	_LCD_SetData
	line	139
	
l4740:
;lcd.c: 139: LCD_SetData(u8_TempArray[1],1);
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetData@u8_Position))&0ffh
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	(0+(LCD_SetMainDigits@u8_TempArray+01h))&0ffh,w
	
	call	_LCD_SetData
	line	140
	
l4742:
;lcd.c: 140: LCD_SetData(u8_TempArray[2],2);
	movlw	low(02h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetData@u8_Position))&0ffh
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	(0+(LCD_SetMainDigits@u8_TempArray+02h))&0ffh,w
	
	call	_LCD_SetData
	line	142
;lcd.c: 142: }
	goto	l387
	line	143
	
l375:
	line	145
;lcd.c: 143: else
;lcd.c: 144: {
;lcd.c: 145: switch(u16_MainData)
	goto	l4752
	line	147
;lcd.c: 146: {
;lcd.c: 147: case 4:
	
l382:
	line	148
	
l4744:
;lcd.c: 148: LCD_SetData(0b00001000,0);
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetData@u8_Position))&0ffh
	movlw	(08h)&0ffh
	
	call	_LCD_SetData
	line	149
;lcd.c: 149: LCD_SetData(0b00001000,1);
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetData@u8_Position))&0ffh
	movlw	(08h)&0ffh
	
	call	_LCD_SetData
	line	150
;lcd.c: 150: LCD_SetData(0b00001000,2);
	movlw	low(02h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetData@u8_Position))&0ffh
	movlw	(08h)&0ffh
	
	call	_LCD_SetData
	line	151
;lcd.c: 151: break;
	goto	l387
	line	153
;lcd.c: 153: case 5:
	
l384:
	line	154
	
l4746:
;lcd.c: 154: LCD_SetData(0b00011111,0);
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetData@u8_Position))&0ffh
	movlw	(01Fh)&0ffh
	
	call	_LCD_SetData
	line	155
;lcd.c: 155: LCD_SetData(0b00001001,1);
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetData@u8_Position))&0ffh
	movlw	(09h)&0ffh
	
	call	_LCD_SetData
	line	156
;lcd.c: 156: LCD_SetData(0b00001001,2);
	movlw	low(02h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetData@u8_Position))&0ffh
	movlw	(09h)&0ffh
	
	call	_LCD_SetData
	line	157
;lcd.c: 157: break;
	goto	l387
	line	159
;lcd.c: 159: case 6:
	
l385:
	line	160
	
l4748:
;lcd.c: 160: LCD_SetData(0b11010111,0);
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetData@u8_Position))&0ffh
	movlw	(0D7h)&0ffh
	
	call	_LCD_SetData
	line	161
;lcd.c: 161: LCD_SetData(0b00011011,1);
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetData@u8_Position))&0ffh
	movlw	(01Bh)&0ffh
	
	call	_LCD_SetData
	line	162
;lcd.c: 162: LCD_SetData(0b00011011,2);
	movlw	low(02h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetData@u8_Position))&0ffh
	movlw	(01Bh)&0ffh
	
	call	_LCD_SetData
	line	163
;lcd.c: 163: break;
	goto	l387
	line	165
;lcd.c: 165: default: break;
	
l386:
	goto	l387
	line	166
	
l4750:
;lcd.c: 166: }
	goto	l387
	line	145
	
l381:
	
l4752:
	movff	(LCD_SetMainDigits@u16_MainData),??_LCD_SetMainDigits+0+0
	movff	(LCD_SetMainDigits@u16_MainData+1),??_LCD_SetMainDigits+0+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf ??_LCD_SetMainDigits+0+1&0ffh,w
	xorlw	0^0	; case 0
	skipnz
	goto	l5726
	goto	l387
	
l5726:; BSR set to: 0

; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 4 to 6
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	movf ??_LCD_SetMainDigits+0+0&0ffh,w
	xorlw	4^0	; case 4
	skipnz
	goto	l4744
	xorlw	5^4	; case 5
	skipnz
	goto	l4746
	xorlw	6^5	; case 6
	skipnz
	goto	l4748
	goto	l387

	line	166
	
l383:; BSR set to: 0

	goto	l387
	line	167
	
l380:; BSR set to: 0

	line	168
	
l387:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_LCD_SetMainDigits
	__end_of_LCD_SetMainDigits:
	signat	_LCD_SetMainDigits,8313
	global	_BUTTONS_GetState

;; *************** function _BUTTONS_GetState *****************
;; Defined at:
;;		line 19 in file "mid/buttons.c"
;; Parameters:    Size  Location     Type
;;  t_Buttons       2   18[BANK0 ] PTR struct .
;;		 -> t_Buttons(5), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USER_Task
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2,group=0,minocg
	file	"mid/buttons.c"
	line	19
global __ptext11
__ptext11:
psect	text11
	file	"mid/buttons.c"
	line	19
	global	__size_of_BUTTONS_GetState
	__size_of_BUTTONS_GetState	equ	__end_of_BUTTONS_GetState-_BUTTONS_GetState
	
_BUTTONS_GetState:
;incstack = 0
	opt	stack 27
	line	21
	
l4652:
;buttons.c: 21: t_Buttons->Up= u8_ButtonSignal[0];
	movff	(BUTTONS_GetState@t_Buttons),fsr2l
	movff	(BUTTONS_GetState@t_Buttons+1),fsr2h
	movff	(_u8_ButtonSignal),indf2

	line	22
	
l4654:
;buttons.c: 22: t_Buttons->Down= u8_ButtonSignal[1];
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	lfsr	2,01h
	movf	((BUTTONS_GetState@t_Buttons))&0ffh,w
	addwf	fsr2l
	movf	((BUTTONS_GetState@t_Buttons+1))&0ffh,w
	addwfc	fsr2h
	movff	0+(_u8_ButtonSignal+01h),indf2

	line	23
	
l4656:; BSR set to: 0

;buttons.c: 23: t_Buttons->Temp1= u8_ButtonSignal[2];
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	lfsr	2,02h
	movf	((BUTTONS_GetState@t_Buttons))&0ffh,w
	addwf	fsr2l
	movf	((BUTTONS_GetState@t_Buttons+1))&0ffh,w
	addwfc	fsr2h
	movff	0+(_u8_ButtonSignal+02h),indf2

	line	24
	
l4658:; BSR set to: 0

;buttons.c: 24: t_Buttons->Temp2= u8_ButtonSignal[3];
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	lfsr	2,03h
	movf	((BUTTONS_GetState@t_Buttons))&0ffh,w
	addwf	fsr2l
	movf	((BUTTONS_GetState@t_Buttons+1))&0ffh,w
	addwfc	fsr2h
	movff	0+(_u8_ButtonSignal+03h),indf2

	line	25
	
l4660:; BSR set to: 0

;buttons.c: 25: t_Buttons->Temp3= u8_ButtonSignal[4];
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	lfsr	2,04h
	movf	((BUTTONS_GetState@t_Buttons))&0ffh,w
	addwf	fsr2l
	movf	((BUTTONS_GetState@t_Buttons+1))&0ffh,w
	addwfc	fsr2h
	movff	0+(_u8_ButtonSignal+04h),indf2

	line	26
	
l196:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_BUTTONS_GetState
	__end_of_BUTTONS_GetState:
	signat	_BUTTONS_GetState,4217
	global	_ADC_GetVoltageMV

;; *************** function _ADC_GetVoltageMV *****************
;; Defined at:
;;		line 47 in file "hal/adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   18[BANK0 ] unsigned int 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USER_Task
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=0,minocg
	file	"hal/adc.c"
	line	47
global __ptext12
__ptext12:
psect	text12
	file	"hal/adc.c"
	line	47
	global	__size_of_ADC_GetVoltageMV
	__size_of_ADC_GetVoltageMV	equ	__end_of_ADC_GetVoltageMV-_ADC_GetVoltageMV
	
_ADC_GetVoltageMV:; BSR set to: 0

;incstack = 0
	opt	stack 27
	line	49
	
l4636:
;adc.c: 49: return u16_AdcVoltageMV;
	movff	(_u16_AdcVoltageMV),(?_ADC_GetVoltageMV)
	movff	(_u16_AdcVoltageMV+1),(?_ADC_GetVoltageMV+1)
	line	50
	
l108:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ADC_GetVoltageMV
	__end_of_ADC_GetVoltageMV:
	signat	_ADC_GetVoltageMV,90
	global	_USER_Init

;; *************** function _USER_Init *****************
;; Defined at:
;;		line 20 in file "apl/user.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  u16_TempNvmD    2    5[BANK1 ] unsigned int 
;;  u16_StartupC    2    3[BANK1 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       4       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       4       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCD_Clear
;;		_LCD_SetIcons
;;		_LCD_SetPresetDigits
;;		_LCD_Update
;;		_NVM_Read
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=0,minocg
	file	"apl/user.c"
	line	20
global __ptext13
__ptext13:
psect	text13
	file	"apl/user.c"
	line	20
	global	__size_of_USER_Init
	__size_of_USER_Init	equ	__end_of_USER_Init-_USER_Init
	
_USER_Init:
;incstack = 0
	opt	stack 25
	line	22
	
l5046:
;user.c: 22: uint16_t u16_StartupCounter= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	((USER_Init@u16_StartupCounter+1))&0ffh
	movlw	low(0)
	movwf	((USER_Init@u16_StartupCounter))&0ffh
	line	23
;user.c: 23: uint16_t u16_TempNvmData= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	((USER_Init@u16_TempNvmData+1))&0ffh
	movlw	low(0)
	movwf	((USER_Init@u16_TempNvmData))&0ffh
	line	26
	
l5048:; BSR set to: 1

;user.c: 26: u16_TempNvmData= NVM_Read(0x000E);
	movlw	high(0Eh)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Read@u16_Address+1))&0ffh
	movlw	low(0Eh)
	movwf	((NVM_Read@u16_Address))&0ffh
	call	_NVM_Read	;wreg free
	movff	0+?_NVM_Read,(USER_Init@u16_TempNvmData)
	movff	1+?_NVM_Read,(USER_Init@u16_TempNvmData+1)
	line	27
	
l5050:
;user.c: 27: if(u16_TempNvmData <= 450)
		movlw	195
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	subwf	 ((USER_Init@u16_TempNvmData))&0ffh,w
	movlw	1
	subwfb	((USER_Init@u16_TempNvmData+1))&0ffh,w
	btfsc	status,0
	goto	u4941
	goto	u4940

u4941:
	goto	l5054
u4940:
	line	29
	
l5052:; BSR set to: 1

;user.c: 28: {
;user.c: 29: t_Temperatures.SetpointTemperature= u16_TempNvmData;
	movff	(USER_Init@u16_TempNvmData),0+(_t_Temperatures+02h)
	movff	(USER_Init@u16_TempNvmData+1),1+(_t_Temperatures+02h)
	line	30
;user.c: 30: }
	goto	l5056
	line	31
	
l590:; BSR set to: 1

	line	33
	
l5054:; BSR set to: 1

;user.c: 31: else
;user.c: 32: {
;user.c: 33: t_Temperatures.SetpointTemperature= 360;
	movlw	high(0168h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(1+(_t_Temperatures+02h))&0ffh
	movlw	low(0168h)
	movwf	(0+(_t_Temperatures+02h))&0ffh
	goto	l5056
	line	34
	
l591:; BSR set to: 0

	line	36
	
l5056:
;user.c: 34: }
;user.c: 36: u16_TempNvmData= NVM_Read(0x0002);
	movlw	high(02h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Read@u16_Address+1))&0ffh
	movlw	low(02h)
	movwf	((NVM_Read@u16_Address))&0ffh
	call	_NVM_Read	;wreg free
	movff	0+?_NVM_Read,(USER_Init@u16_TempNvmData)
	movff	1+?_NVM_Read,(USER_Init@u16_TempNvmData+1)
	line	37
	
l5058:
;user.c: 37: if(u16_TempNvmData <= 450)
		movlw	195
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	subwf	 ((USER_Init@u16_TempNvmData))&0ffh,w
	movlw	1
	subwfb	((USER_Init@u16_TempNvmData+1))&0ffh,w
	btfsc	status,0
	goto	u4951
	goto	u4950

u4951:
	goto	l5062
u4950:
	line	39
	
l5060:; BSR set to: 1

;user.c: 38: {
;user.c: 39: t_Temperatures.PresetTemperature1= u16_TempNvmData;
	movff	(USER_Init@u16_TempNvmData),0+(_t_Temperatures+04h)
	movff	(USER_Init@u16_TempNvmData+1),1+(_t_Temperatures+04h)
	line	40
;user.c: 40: }
	goto	l5064
	line	41
	
l592:; BSR set to: 1

	line	43
	
l5062:; BSR set to: 1

;user.c: 41: else
;user.c: 42: {
;user.c: 43: t_Temperatures.PresetTemperature1= 250;
	movlw	high(0FAh)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(1+(_t_Temperatures+04h))&0ffh
	movlw	low(0FAh)
	movwf	(0+(_t_Temperatures+04h))&0ffh
	goto	l5064
	line	44
	
l593:; BSR set to: 0

	line	46
	
l5064:
;user.c: 44: }
;user.c: 46: u16_TempNvmData= NVM_Read(0x0004);
	movlw	high(04h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Read@u16_Address+1))&0ffh
	movlw	low(04h)
	movwf	((NVM_Read@u16_Address))&0ffh
	call	_NVM_Read	;wreg free
	movff	0+?_NVM_Read,(USER_Init@u16_TempNvmData)
	movff	1+?_NVM_Read,(USER_Init@u16_TempNvmData+1)
	line	47
	
l5066:
;user.c: 47: if(u16_TempNvmData <= 450)
		movlw	195
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	subwf	 ((USER_Init@u16_TempNvmData))&0ffh,w
	movlw	1
	subwfb	((USER_Init@u16_TempNvmData+1))&0ffh,w
	btfsc	status,0
	goto	u4961
	goto	u4960

u4961:
	goto	l5070
u4960:
	line	49
	
l5068:; BSR set to: 1

;user.c: 48: {
;user.c: 49: t_Temperatures.PresetTemperature2= u16_TempNvmData;
	movff	(USER_Init@u16_TempNvmData),0+(_t_Temperatures+06h)
	movff	(USER_Init@u16_TempNvmData+1),1+(_t_Temperatures+06h)
	line	50
;user.c: 50: }
	goto	l5072
	line	51
	
l594:; BSR set to: 1

	line	53
	
l5070:; BSR set to: 1

;user.c: 51: else
;user.c: 52: {
;user.c: 53: t_Temperatures.PresetTemperature2= 360;
	movlw	high(0168h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(1+(_t_Temperatures+06h))&0ffh
	movlw	low(0168h)
	movwf	(0+(_t_Temperatures+06h))&0ffh
	goto	l5072
	line	54
	
l595:; BSR set to: 0

	line	56
	
l5072:
;user.c: 54: }
;user.c: 56: u16_TempNvmData= NVM_Read(0x0006);
	movlw	high(06h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Read@u16_Address+1))&0ffh
	movlw	low(06h)
	movwf	((NVM_Read@u16_Address))&0ffh
	call	_NVM_Read	;wreg free
	movff	0+?_NVM_Read,(USER_Init@u16_TempNvmData)
	movff	1+?_NVM_Read,(USER_Init@u16_TempNvmData+1)
	line	57
	
l5074:
;user.c: 57: if(u16_TempNvmData <= 450)
		movlw	195
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	subwf	 ((USER_Init@u16_TempNvmData))&0ffh,w
	movlw	1
	subwfb	((USER_Init@u16_TempNvmData+1))&0ffh,w
	btfsc	status,0
	goto	u4971
	goto	u4970

u4971:
	goto	l5078
u4970:
	line	59
	
l5076:; BSR set to: 1

;user.c: 58: {
;user.c: 59: t_Temperatures.PresetTemperature3= u16_TempNvmData;
	movff	(USER_Init@u16_TempNvmData),0+(_t_Temperatures+08h)
	movff	(USER_Init@u16_TempNvmData+1),1+(_t_Temperatures+08h)
	line	60
;user.c: 60: }
	goto	l5080
	line	61
	
l596:; BSR set to: 1

	line	63
	
l5078:; BSR set to: 1

;user.c: 61: else
;user.c: 62: {
;user.c: 63: t_Temperatures.PresetTemperature3= 420;
	movlw	high(01A4h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(1+(_t_Temperatures+08h))&0ffh
	movlw	low(01A4h)
	movwf	(0+(_t_Temperatures+08h))&0ffh
	goto	l5080
	line	64
	
l597:; BSR set to: 0

	line	78
	
l5080:
;user.c: 64: }
;user.c: 78: LCD_Clear();
	call	_LCD_Clear	;wreg free
	line	79
	
l5082:
;user.c: 79: LCD_SetPresetDigits(t_Temperatures.PresetTemperature1,3, 1);
	movff	0+(_t_Temperatures+04h),(LCD_SetPresetDigits@u16_PresetData)
	movff	1+(_t_Temperatures+04h),(LCD_SetPresetDigits@u16_PresetData+1)
	movlw	low(03h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetPresetDigits@u8_Preset))&0ffh
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetPresetDigits@bFlag_Number))&0ffh
	call	_LCD_SetPresetDigits	;wreg free
	line	80
	
l5084:
;user.c: 80: LCD_SetPresetDigits(t_Temperatures.PresetTemperature2,6, 1);
	movff	0+(_t_Temperatures+06h),(LCD_SetPresetDigits@u16_PresetData)
	movff	1+(_t_Temperatures+06h),(LCD_SetPresetDigits@u16_PresetData+1)
	movlw	low(06h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetPresetDigits@u8_Preset))&0ffh
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetPresetDigits@bFlag_Number))&0ffh
	call	_LCD_SetPresetDigits	;wreg free
	line	81
	
l5086:
;user.c: 81: LCD_SetPresetDigits(t_Temperatures.PresetTemperature3,9, 1);
	movff	0+(_t_Temperatures+08h),(LCD_SetPresetDigits@u16_PresetData)
	movff	1+(_t_Temperatures+08h),(LCD_SetPresetDigits@u16_PresetData+1)
	movlw	low(09h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetPresetDigits@u8_Preset))&0ffh
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetPresetDigits@bFlag_Number))&0ffh
	call	_LCD_SetPresetDigits	;wreg free
	line	82
	
l5088:
;user.c: 82: LCD_SetIcons(0);
	movlw	(0)&0ffh
	
	call	_LCD_SetIcons
	line	83
	
l5090:
;user.c: 83: LCD_Update();
	call	_LCD_Update	;wreg free
	line	84
	
l598:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_USER_Init
	__end_of_USER_Init:
	signat	_USER_Init,89
	global	_NVM_Read

;; *************** function _NVM_Read *****************
;; Defined at:
;;		line 148 in file "hal/nvm.c"
;; Parameters:    Size  Location     Type
;;  u16_Address     2   18[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  u16_Temp        2   20[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   18[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_USER_Init
;;		_USER_Task
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=0,minocg
	file	"hal/nvm.c"
	line	148
global __ptext14
__ptext14:
psect	text14
	file	"hal/nvm.c"
	line	148
	global	__size_of_NVM_Read
	__size_of_NVM_Read	equ	__end_of_NVM_Read-_NVM_Read
	
_NVM_Read:
;incstack = 0
	opt	stack 27
	line	150
	
l4836:
;nvm.c: 150: uint16_t u16_Temp= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Read@u16_Temp+1))&0ffh
	movlw	low(0)
	movwf	((NVM_Read@u16_Temp))&0ffh
	line	151
	
l4838:; BSR set to: 0

;nvm.c: 151: if(u16_Address < 0x03FF)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		incf	((NVM_Read@u16_Address))&0ffh,w
	movlw	3
	subwfb	((NVM_Read@u16_Address+1))&0ffh,w
	btfsc	status,0
	goto	u4531
	goto	u4530

u4531:
	goto	l4854
u4530:
	line	153
	
l4840:; BSR set to: 0

;nvm.c: 152: {
;nvm.c: 153: EEADR= u16_Address;
	movff	(NVM_Read@u16_Address),(4009)	;volatile
	line	154
;nvm.c: 154: EECON1bits.EEPGD= 0;
	bcf	((4006)),c,7	;volsfr
	line	155
;nvm.c: 155: EECON1bits.CFGS= 0;
	bcf	((4006)),c,6	;volsfr
	line	156
;nvm.c: 156: EECON1bits.RD= 1;
	bsf	((4006)),c,0	;volsfr
	line	157
;nvm.c: 157: u16_Temp= EEDATA;
	movff	(4008),(NVM_Read@u16_Temp)	;volatile
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	clrf	((NVM_Read@u16_Temp+1))&0ffh
	line	158
	
l4842:; BSR set to: 0

;nvm.c: 158: u16_Temp= u16_Temp << 8;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((NVM_Read@u16_Temp))&0ffh,w
	movwf	((NVM_Read@u16_Temp+1))&0ffh
	clrf	((NVM_Read@u16_Temp))&0ffh
	line	160
	
l4844:; BSR set to: 0

;nvm.c: 160: EEADR= u16_Address+1;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	incf	((NVM_Read@u16_Address))&0ffh,w
	movwf	((4009)),c	;volatile
	line	161
	
l4846:; BSR set to: 0

;nvm.c: 161: EECON1bits.RD= 1;
	bsf	((4006)),c,0	;volsfr
	line	162
	
l4848:; BSR set to: 0

;nvm.c: 162: u16_Temp|= EEDATA & 0x00ff;
	movf	((4008)),c,w	;volatile
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	iorwf	((NVM_Read@u16_Temp))&0ffh
	line	164
	
l4850:; BSR set to: 0

;nvm.c: 164: return u16_Temp;
	movff	(NVM_Read@u16_Temp),(?_NVM_Read)
	movff	(NVM_Read@u16_Temp+1),(?_NVM_Read+1)
	goto	l792
	
l4852:; BSR set to: 0

	goto	l792
	line	165
	
l791:; BSR set to: 0

	line	166
	
l4854:; BSR set to: 0

;nvm.c: 165: }
;nvm.c: 166: return 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((?_NVM_Read+1))&0ffh
	movlw	low(0)
	movwf	((?_NVM_Read))&0ffh
	goto	l792
	
l4856:; BSR set to: 0

	line	167
	
l792:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_NVM_Read
	__end_of_NVM_Read:
	signat	_NVM_Read,4218
	global	_LCD_Update

;; *************** function _LCD_Update *****************
;; Defined at:
;;		line 487 in file "mid/lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_USER_Init
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,inline,group=0,minocg
	file	"mid/lcd.c"
	line	487
global __ptext15
__ptext15:
psect	text15
	file	"mid/lcd.c"
	line	487
	global	__size_of_LCD_Update
	__size_of_LCD_Update	equ	__end_of_LCD_Update-_LCD_Update
	
_LCD_Update:; BSR set to: 0

;incstack = 0
	opt	stack 27
	line	489
	
l4632:
;lcd.c: 489: if(u8_LCD_State == 0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((_u8_LCD_State))&0ffh,w
iorwf	((_u8_LCD_State+1))&0ffh,w
	btfss	status,2
	goto	u4301
	goto	u4300

u4301:
	goto	l487
u4300:
	line	491
	
l4634:; BSR set to: 0

;lcd.c: 490: {
;lcd.c: 491: u8_LCD_State= 1;
	movlw	high(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((_u8_LCD_State+1))&0ffh
	movlw	low(01h)
	movwf	((_u8_LCD_State))&0ffh
	goto	l487
	line	492
	
l486:; BSR set to: 0

	line	493
	
l487:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_LCD_Update
	__end_of_LCD_Update:
	signat	_LCD_Update,89
	global	_LCD_SetPresetDigits

;; *************** function _LCD_SetPresetDigits *****************
;; Defined at:
;;		line 172 in file "mid/lcd.c"
;; Parameters:    Size  Location     Type
;;  u16_PresetDa    2   22[BANK0 ] unsigned int 
;;  u8_Preset       1   24[BANK0 ] unsigned char 
;;  bFlag_Number    1   25[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  u8_TempArray    3    0[BANK1 ] unsigned char [3]
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       3       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       3       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCD_Bcd2Segment
;;		_LCD_Dec2Bcd
;;		_LCD_SetData
;; This function is called by:
;;		_USER_Init
;;		_USER_Task
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2,group=0,minocg
	line	172
global __ptext16
__ptext16:
psect	text16
	file	"mid/lcd.c"
	line	172
	global	__size_of_LCD_SetPresetDigits
	__size_of_LCD_SetPresetDigits	equ	__end_of_LCD_SetPresetDigits-_LCD_SetPresetDigits
	
_LCD_SetPresetDigits:; BSR set to: 0

;incstack = 0
	opt	stack 25
	line	176
	
l4758:
;lcd.c: 174: uint8_t u8_TempArray[3];
;lcd.c: 176: if(bFlag_Number == 1)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		decf	((LCD_SetPresetDigits@bFlag_Number))&0ffh,w
	btfss	status,2
	goto	u4431
	goto	u4430

u4431:
	goto	l4812
u4430:
	line	178
	
l4760:; BSR set to: 0

;lcd.c: 177: {
;lcd.c: 178: LCD_Dec2Bcd(u16_PresetData, &u8_TempArray[0]);
	movff	(LCD_SetPresetDigits@u16_PresetData),(LCD_Dec2Bcd@u16_DecimalData)
	movff	(LCD_SetPresetDigits@u16_PresetData+1),(LCD_Dec2Bcd@u16_DecimalData+1)
		movlw	low(LCD_SetPresetDigits@u8_TempArray)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_Dec2Bcd@ptrBCD))&0ffh
	movlw	high(LCD_SetPresetDigits@u8_TempArray)
	movwf	((LCD_Dec2Bcd@ptrBCD+1))&0ffh

	call	_LCD_Dec2Bcd	;wreg free
	line	181
	
l4762:
;lcd.c: 181: if(u16_PresetData > 99)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		movf	((LCD_SetPresetDigits@u16_PresetData+1))&0ffh,w
	bnz	u4440
	movlw	100
	subwf	 ((LCD_SetPresetDigits@u16_PresetData))&0ffh,w
	btfss	status,0
	goto	u4441
	goto	u4440

u4441:
	goto	l4776
u4440:
	line	185
	
l4764:; BSR set to: 0

;lcd.c: 182: {
;lcd.c: 185: if(u8_Preset == 3)
		movlw	3
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	xorwf	((LCD_SetPresetDigits@u8_Preset))&0ffh,w
	btfss	status,2
	goto	u4451
	goto	u4450

u4451:
	goto	l4774
u4450:
	line	188
	
l4766:; BSR set to: 0

;lcd.c: 186: {
;lcd.c: 188: if(!((u8_TempArray[0] == 0) || (u8_TempArray[0] == 8)))
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	((LCD_SetPresetDigits@u8_TempArray))&0ffh,w
	btfsc	status,2
	goto	u4461
	goto	u4460
u4461:
	goto	l4772
u4460:
	
l4768:; BSR set to: 1

		movlw	8
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	xorwf	((LCD_SetPresetDigits@u8_TempArray))&0ffh,w
	btfsc	status,2
	goto	u4471
	goto	u4470

u4471:
	goto	l4772
u4470:
	line	190
	
l4770:; BSR set to: 1

;lcd.c: 189: {
;lcd.c: 190: u8_TempArray[0]= LCD_Bcd2Segment(u8_TempArray[0],2);
	movlw	low(02h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_Bcd2Segment@u8_DigitType))&0ffh
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	((LCD_SetPresetDigits@u8_TempArray))&0ffh,w
	
	call	_LCD_Bcd2Segment
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	((LCD_SetPresetDigits@u8_TempArray))&0ffh
	line	191
;lcd.c: 191: }
	goto	l4778
	line	192
	
l393:; BSR set to: 1

	line	194
	
l4772:; BSR set to: 1

;lcd.c: 192: else
;lcd.c: 193: {
;lcd.c: 194: u8_TempArray[0]= LCD_Bcd2Segment(u8_TempArray[0],1);
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_Bcd2Segment@u8_DigitType))&0ffh
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	((LCD_SetPresetDigits@u8_TempArray))&0ffh,w
	
	call	_LCD_Bcd2Segment
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	((LCD_SetPresetDigits@u8_TempArray))&0ffh
	goto	l4778
	line	195
	
l394:; BSR set to: 1

	line	196
;lcd.c: 195: }
;lcd.c: 196: }
	goto	l4778
	line	197
	
l392:; BSR set to: 1

	line	199
	
l4774:
;lcd.c: 197: else
;lcd.c: 198: {
;lcd.c: 199: u8_TempArray[0]= LCD_Bcd2Segment(u8_TempArray[0],1);
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_Bcd2Segment@u8_DigitType))&0ffh
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	((LCD_SetPresetDigits@u8_TempArray))&0ffh,w
	
	call	_LCD_Bcd2Segment
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	((LCD_SetPresetDigits@u8_TempArray))&0ffh
	goto	l4778
	line	201
	
l395:; BSR set to: 1

	line	202
;lcd.c: 201: }
;lcd.c: 202: }
	goto	l4778
	line	203
	
l391:; BSR set to: 1

	line	205
	
l4776:
;lcd.c: 203: else
;lcd.c: 204: {
;lcd.c: 205: u8_TempArray[0]= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	((LCD_SetPresetDigits@u8_TempArray))&0ffh
	goto	l4778
	line	206
	
l396:; BSR set to: 1

	line	209
	
l4778:; BSR set to: 1

;lcd.c: 206: }
;lcd.c: 209: if(u16_PresetData > 9)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		movf	((LCD_SetPresetDigits@u16_PresetData+1))&0ffh,w
	bnz	u4480
	movlw	10
	subwf	 ((LCD_SetPresetDigits@u16_PresetData))&0ffh,w
	btfss	status,0
	goto	u4481
	goto	u4480

u4481:
	goto	l4792
u4480:
	line	211
	
l4780:; BSR set to: 0

;lcd.c: 210: {
;lcd.c: 211: if(u8_Preset == 3)
		movlw	3
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	xorwf	((LCD_SetPresetDigits@u8_Preset))&0ffh,w
	btfss	status,2
	goto	u4491
	goto	u4490

u4491:
	goto	l4790
u4490:
	line	213
	
l4782:; BSR set to: 0

;lcd.c: 212: {
;lcd.c: 213: if(!((u8_TempArray[1] == 0) || (u8_TempArray[1] == 8)))
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	(0+(LCD_SetPresetDigits@u8_TempArray+01h))&0ffh,w
	btfsc	status,2
	goto	u4501
	goto	u4500
u4501:
	goto	l4788
u4500:
	
l4784:; BSR set to: 1

		movlw	8
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	xorwf	(0+(LCD_SetPresetDigits@u8_TempArray+01h))&0ffh,w
	btfsc	status,2
	goto	u4511
	goto	u4510

u4511:
	goto	l4788
u4510:
	line	215
	
l4786:; BSR set to: 1

;lcd.c: 214: {
;lcd.c: 215: u8_TempArray[1]= LCD_Bcd2Segment(u8_TempArray[1],2);
	movlw	low(02h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_Bcd2Segment@u8_DigitType))&0ffh
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	(0+(LCD_SetPresetDigits@u8_TempArray+01h))&0ffh,w
	
	call	_LCD_Bcd2Segment
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	(0+(LCD_SetPresetDigits@u8_TempArray+01h))&0ffh
	line	216
;lcd.c: 216: }
	goto	l4794
	line	217
	
l399:; BSR set to: 1

	line	219
	
l4788:; BSR set to: 1

;lcd.c: 217: else
;lcd.c: 218: {
;lcd.c: 219: u8_TempArray[1]= LCD_Bcd2Segment(u8_TempArray[1],1);
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_Bcd2Segment@u8_DigitType))&0ffh
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	(0+(LCD_SetPresetDigits@u8_TempArray+01h))&0ffh,w
	
	call	_LCD_Bcd2Segment
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	(0+(LCD_SetPresetDigits@u8_TempArray+01h))&0ffh
	goto	l4794
	line	220
	
l400:; BSR set to: 1

	line	221
;lcd.c: 220: }
;lcd.c: 221: }
	goto	l4794
	line	222
	
l398:; BSR set to: 1

	line	224
	
l4790:
;lcd.c: 222: else
;lcd.c: 223: {
;lcd.c: 224: u8_TempArray[1]= LCD_Bcd2Segment(u8_TempArray[1],1);
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_Bcd2Segment@u8_DigitType))&0ffh
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	(0+(LCD_SetPresetDigits@u8_TempArray+01h))&0ffh,w
	
	call	_LCD_Bcd2Segment
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	(0+(LCD_SetPresetDigits@u8_TempArray+01h))&0ffh
	goto	l4794
	line	225
	
l401:; BSR set to: 1

	line	226
;lcd.c: 225: }
;lcd.c: 226: }
	goto	l4794
	line	227
	
l397:; BSR set to: 1

	line	229
	
l4792:
;lcd.c: 227: else
;lcd.c: 228: {
;lcd.c: 229: u8_TempArray[1]= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	(0+(LCD_SetPresetDigits@u8_TempArray+01h))&0ffh
	goto	l4794
	line	230
	
l402:; BSR set to: 1

	line	232
	
l4794:; BSR set to: 1

;lcd.c: 230: }
;lcd.c: 232: u8_TempArray[2]= LCD_Bcd2Segment(u8_TempArray[2],1);
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_Bcd2Segment@u8_DigitType))&0ffh
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	(0+(LCD_SetPresetDigits@u8_TempArray+02h))&0ffh,w
	
	call	_LCD_Bcd2Segment
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	(0+(LCD_SetPresetDigits@u8_TempArray+02h))&0ffh
	line	234
	
l4796:; BSR set to: 1

;lcd.c: 234: LCD_SetData(u8_TempArray[0],u8_Preset);
	movff	(LCD_SetPresetDigits@u8_Preset),(LCD_SetData@u8_Position)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	((LCD_SetPresetDigits@u8_TempArray))&0ffh,w
	
	call	_LCD_SetData
	line	235
	
l4798:
;lcd.c: 235: LCD_SetData(u8_TempArray[1],u8_Preset+1);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	incf	((LCD_SetPresetDigits@u8_Preset))&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetData@u8_Position))&0ffh
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	(0+(LCD_SetPresetDigits@u8_TempArray+01h))&0ffh,w
	
	call	_LCD_SetData
	line	236
	
l4800:
;lcd.c: 236: LCD_SetData(u8_TempArray[2],u8_Preset+2);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((LCD_SetPresetDigits@u8_Preset))&0ffh,w
	addlw	low(02h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetData@u8_Position))&0ffh
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	(0+(LCD_SetPresetDigits@u8_TempArray+02h))&0ffh,w
	
	call	_LCD_SetData
	line	237
;lcd.c: 237: }
	goto	l411
	line	238
	
l390:
	line	240
;lcd.c: 238: else
;lcd.c: 239: {
;lcd.c: 240: switch(u16_PresetData)
	goto	l4812
	line	242
;lcd.c: 241: {
;lcd.c: 242: case 0: LCD_SetData(0b01011110,u8_Preset);
	
l405:
	
l4802:
	movff	(LCD_SetPresetDigits@u8_Preset),(LCD_SetData@u8_Position)
	movlw	(05Eh)&0ffh
	
	call	_LCD_SetData
	line	243
;lcd.c: 243: LCD_SetData(0b11011100,u8_Preset+1);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	incf	((LCD_SetPresetDigits@u8_Preset))&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetData@u8_Position))&0ffh
	movlw	(0DCh)&0ffh
	
	call	_LCD_SetData
	line	244
;lcd.c: 244: LCD_SetData(0b11010000,u8_Preset+2);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((LCD_SetPresetDigits@u8_Preset))&0ffh,w
	addlw	low(02h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetData@u8_Position))&0ffh
	movlw	(0D0h)&0ffh
	
	call	_LCD_SetData
	line	245
;lcd.c: 245: break;
	goto	l411
	line	247
;lcd.c: 247: case 1: LCD_SetData(0b11010100,u8_Preset);
	
l407:
	
l4804:
	movff	(LCD_SetPresetDigits@u8_Preset),(LCD_SetData@u8_Position)
	movlw	(0D4h)&0ffh
	
	call	_LCD_SetData
	line	248
;lcd.c: 248: LCD_SetData(0b11001111,u8_Preset+1);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	incf	((LCD_SetPresetDigits@u8_Preset))&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetData@u8_Position))&0ffh
	movlw	(0CFh)&0ffh
	
	call	_LCD_SetData
	line	249
;lcd.c: 249: LCD_SetData(0b11000111,u8_Preset+2);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((LCD_SetPresetDigits@u8_Preset))&0ffh,w
	addlw	low(02h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetData@u8_Position))&0ffh
	movlw	(0C7h)&0ffh
	
	call	_LCD_SetData
	line	250
;lcd.c: 250: break;
	goto	l411
	line	252
;lcd.c: 252: case 2: LCD_SetData(0b11011100,u8_Preset);
	
l408:
	
l4806:
	movff	(LCD_SetPresetDigits@u8_Preset),(LCD_SetData@u8_Position)
	movlw	(0DCh)&0ffh
	
	call	_LCD_SetData
	line	253
;lcd.c: 253: LCD_SetData(0b01011110,u8_Preset+1);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	incf	((LCD_SetPresetDigits@u8_Preset))&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetData@u8_Position))&0ffh
	movlw	(05Eh)&0ffh
	
	call	_LCD_SetData
	line	254
;lcd.c: 254: LCD_SetData(0b11010100,u8_Preset+2);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((LCD_SetPresetDigits@u8_Preset))&0ffh,w
	addlw	low(02h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetData@u8_Position))&0ffh
	movlw	(0D4h)&0ffh
	
	call	_LCD_SetData
	line	255
;lcd.c: 255: break;
	goto	l411
	line	257
;lcd.c: 257: case 3: LCD_SetData(0b11011100,u8_Preset);
	
l409:
	
l4808:
	movff	(LCD_SetPresetDigits@u8_Preset),(LCD_SetData@u8_Position)
	movlw	(0DCh)&0ffh
	
	call	_LCD_SetData
	line	258
;lcd.c: 258: LCD_SetData(0b11000111,u8_Preset+1);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	incf	((LCD_SetPresetDigits@u8_Preset))&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetData@u8_Position))&0ffh
	movlw	(0C7h)&0ffh
	
	call	_LCD_SetData
	line	259
;lcd.c: 259: LCD_SetData(0b11011000,u8_Preset+2);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((LCD_SetPresetDigits@u8_Preset))&0ffh,w
	addlw	low(02h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetData@u8_Position))&0ffh
	movlw	(0D8h)&0ffh
	
	call	_LCD_SetData
	line	260
;lcd.c: 260: break;
	goto	l411
	line	262
;lcd.c: 262: default: break;
	
l410:
	goto	l411
	line	263
	
l4810:
;lcd.c: 263: }
	goto	l411
	line	240
	
l404:
	
l4812:
	movff	(LCD_SetPresetDigits@u16_PresetData),??_LCD_SetPresetDigits+0+0
	movff	(LCD_SetPresetDigits@u16_PresetData+1),??_LCD_SetPresetDigits+0+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf ??_LCD_SetPresetDigits+0+1&0ffh,w
	xorlw	0^0	; case 0
	skipnz
	goto	l5728
	goto	l411
	
l5728:; BSR set to: 0

; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
;	Chosen strategy is simple_byte

	movf ??_LCD_SetPresetDigits+0+0&0ffh,w
	xorlw	0^0	; case 0
	skipnz
	goto	l4802
	xorlw	1^0	; case 1
	skipnz
	goto	l4804
	xorlw	2^1	; case 2
	skipnz
	goto	l4806
	xorlw	3^2	; case 3
	skipnz
	goto	l4808
	goto	l411

	line	263
	
l406:; BSR set to: 0

	goto	l411
	line	264
	
l403:; BSR set to: 0

	line	266
	
l411:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_LCD_SetPresetDigits
	__end_of_LCD_SetPresetDigits:
	signat	_LCD_SetPresetDigits,12409
	global	_LCD_Dec2Bcd

;; *************** function _LCD_Dec2Bcd *****************
;; Defined at:
;;		line 390 in file "mid/lcd.c"
;; Parameters:    Size  Location     Type
;;  u16_DecimalD    2   18[BANK0 ] unsigned int 
;;  ptrBCD          2   20[BANK0 ] PTR unsigned char 
;;		 -> LCD_SetPresetDigits@u8_TempArray(3), LCD_SetMainDigits@u8_TempArray(3), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwdiv
;;		___lwmod
;; This function is called by:
;;		_LCD_SetMainDigits
;;		_LCD_SetPresetDigits
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2,group=0,minocg
	line	390
global __ptext17
__ptext17:
psect	text17
	file	"mid/lcd.c"
	line	390
	global	__size_of_LCD_Dec2Bcd
	__size_of_LCD_Dec2Bcd	equ	__end_of_LCD_Dec2Bcd-_LCD_Dec2Bcd
	
_LCD_Dec2Bcd:
;incstack = 0
	opt	stack 25
	line	392
	
l4380:
;lcd.c: 392: if(u16_DecimalData > 999)
		movlw	232
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	subwf	 ((LCD_Dec2Bcd@u16_DecimalData))&0ffh,w
	movlw	3
	subwfb	((LCD_Dec2Bcd@u16_DecimalData+1))&0ffh,w
	btfss	status,0
	goto	u4081
	goto	u4080

u4081:
	goto	l4384
u4080:
	line	394
	
l4382:; BSR set to: 0

;lcd.c: 393: {
;lcd.c: 394: u16_DecimalData= 999;
	movlw	high(03E7h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_Dec2Bcd@u16_DecimalData+1))&0ffh
	movlw	low(03E7h)
	movwf	((LCD_Dec2Bcd@u16_DecimalData))&0ffh
	goto	l4384
	line	395
	
l460:; BSR set to: 0

	line	397
	
l4384:; BSR set to: 0

;lcd.c: 395: }
;lcd.c: 397: *ptrBCD= u16_DecimalData / 100;
	movff	(LCD_Dec2Bcd@u16_DecimalData),(___lwdiv@dividend)
	movff	(LCD_Dec2Bcd@u16_DecimalData+1),(___lwdiv@dividend+1)
	movlw	high(064h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((___lwdiv@divisor+1))&0ffh
	movlw	low(064h)
	movwf	((___lwdiv@divisor))&0ffh
	call	___lwdiv	;wreg free
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	(0+?___lwdiv)&0ffh,w
	movff	(LCD_Dec2Bcd@ptrBCD),fsr2l
	movff	(LCD_Dec2Bcd@ptrBCD+1),fsr2h
	movwf	indf2,c

	line	398
	
l4386:; BSR set to: 0

;lcd.c: 398: ++ptrBCD;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	infsnz	((LCD_Dec2Bcd@ptrBCD))&0ffh
	incf	((LCD_Dec2Bcd@ptrBCD+1))&0ffh
	line	400
	
l4388:; BSR set to: 0

;lcd.c: 400: *ptrBCD= (u16_DecimalData / 10) % 10;
	movlw	high(0Ah)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((___lwdiv@divisor+1))&0ffh
	movlw	low(0Ah)
	movwf	((___lwdiv@divisor))&0ffh
	movff	(LCD_Dec2Bcd@u16_DecimalData),(___lwdiv@dividend)
	movff	(LCD_Dec2Bcd@u16_DecimalData+1),(___lwdiv@dividend+1)
	call	___lwdiv	;wreg free
	movff	0+?___lwdiv,(___lwmod@dividend)
	movff	1+?___lwdiv,(___lwmod@dividend+1)
	movlw	high(0Ah)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((___lwmod@divisor+1))&0ffh
	movlw	low(0Ah)
	movwf	((___lwmod@divisor))&0ffh
	call	___lwmod	;wreg free
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	(0+?___lwmod)&0ffh,w
	movff	(LCD_Dec2Bcd@ptrBCD),fsr2l
	movff	(LCD_Dec2Bcd@ptrBCD+1),fsr2h
	movwf	indf2,c

	line	401
	
l4390:; BSR set to: 0

;lcd.c: 401: ++ptrBCD;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	infsnz	((LCD_Dec2Bcd@ptrBCD))&0ffh
	incf	((LCD_Dec2Bcd@ptrBCD+1))&0ffh
	line	403
	
l4392:; BSR set to: 0

;lcd.c: 403: *ptrBCD= u16_DecimalData % 10;
	movff	(LCD_Dec2Bcd@u16_DecimalData),(___lwmod@dividend)
	movff	(LCD_Dec2Bcd@u16_DecimalData+1),(___lwmod@dividend+1)
	movlw	high(0Ah)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((___lwmod@divisor+1))&0ffh
	movlw	low(0Ah)
	movwf	((___lwmod@divisor))&0ffh
	call	___lwmod	;wreg free
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	(0+?___lwmod)&0ffh,w
	movff	(LCD_Dec2Bcd@ptrBCD),fsr2l
	movff	(LCD_Dec2Bcd@ptrBCD+1),fsr2h
	movwf	indf2,c

	line	404
	
l461:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_LCD_Dec2Bcd
	__end_of_LCD_Dec2Bcd:
	signat	_LCD_Dec2Bcd,8313
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    7[COMRAM] unsigned int 
;;  divisor         2    9[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_Dec2Bcd
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lwmod.c"
	line	8
global __ptext18
__ptext18:
psect	text18
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lwmod.c"
	line	8
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:; BSR set to: 0

;incstack = 0
	opt	stack 25
	line	13
	
l4342:
	movf	((c:___lwmod@divisor)),c,w
iorwf	((c:___lwmod@divisor+1)),c,w
	btfsc	status,2
	goto	u4041
	goto	u4040

u4041:
	goto	l1245
u4040:
	line	14
	
l4344:
	movlw	low(01h)
	movwf	((c:___lwmod@counter)),c
	line	15
	goto	l4348
	
l1247:
	line	16
	
l4346:
	bcf	status,0
	rlcf	((c:___lwmod@divisor)),c
	rlcf	((c:___lwmod@divisor+1)),c
	line	17
	incf	((c:___lwmod@counter)),c
	goto	l4348
	line	18
	
l1246:
	line	15
	
l4348:
	
	btfss	((c:___lwmod@divisor+1)),c,(15)&7
	goto	u4051
	goto	u4050
u4051:
	goto	l4346
u4050:
	goto	l4350
	
l1248:
	goto	l4350
	line	19
	
l1249:
	line	20
	
l4350:
		movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c,w
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c,w
	btfss	status,0
	goto	u4061
	goto	u4060

u4061:
	goto	l4354
u4060:
	line	21
	
l4352:
	movf	((c:___lwmod@divisor)),c,w
	subwf	((c:___lwmod@dividend)),c
	movf	((c:___lwmod@divisor+1)),c,w
	subwfb	((c:___lwmod@dividend+1)),c

	goto	l4354
	
l1250:
	line	22
	
l4354:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1)),c
	rrcf	((c:___lwmod@divisor)),c
	line	23
	
l4356:
	decfsz	((c:___lwmod@counter)),c
	
	goto	l4350
	goto	l1245
	
l1251:
	line	24
	
l1245:
	line	25
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	26
	
l1252:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] unsigned int 
;;  divisor         2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMRAM] unsigned int 
;;  counter         1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_Dec2Bcd
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lwdiv.c"
	line	8
global __ptext19
__ptext19:
psect	text19
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lwdiv.c"
	line	8
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:
;incstack = 0
	opt	stack 25
	line	14
	
l4320:
	movlw	high(0)
	movwf	((c:___lwdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___lwdiv@quotient)),c
	line	15
	
l4322:
	movf	((c:___lwdiv@divisor)),c,w
iorwf	((c:___lwdiv@divisor+1)),c,w
	btfsc	status,2
	goto	u4011
	goto	u4010

u4011:
	goto	l1235
u4010:
	line	16
	
l4324:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter)),c
	line	17
	goto	l4328
	
l1237:
	line	18
	
l4326:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor)),c
	rlcf	((c:___lwdiv@divisor+1)),c
	line	19
	incf	((c:___lwdiv@counter)),c
	goto	l4328
	line	20
	
l1236:
	line	17
	
l4328:
	
	btfss	((c:___lwdiv@divisor+1)),c,(15)&7
	goto	u4021
	goto	u4020
u4021:
	goto	l4326
u4020:
	goto	l4330
	
l1238:
	goto	l4330
	line	21
	
l1239:
	line	22
	
l4330:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient)),c
	rlcf	((c:___lwdiv@quotient+1)),c
	line	23
	
l4332:
		movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c,w
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c,w
	btfss	status,0
	goto	u4031
	goto	u4030

u4031:
	goto	l4338
u4030:
	line	24
	
l4334:
	movf	((c:___lwdiv@divisor)),c,w
	subwf	((c:___lwdiv@dividend)),c
	movf	((c:___lwdiv@divisor+1)),c,w
	subwfb	((c:___lwdiv@dividend+1)),c

	line	25
	
l4336:
	bsf	(0+(0/8)+(c:___lwdiv@quotient)),c,(0)&7
	goto	l4338
	line	26
	
l1240:
	line	27
	
l4338:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1)),c
	rrcf	((c:___lwdiv@divisor)),c
	line	28
	
l4340:
	decfsz	((c:___lwdiv@counter)),c
	
	goto	l4330
	goto	l1235
	
l1241:
	line	29
	
l1235:
	line	30
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	31
	
l1242:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_LCD_Bcd2Segment

;; *************** function _LCD_Bcd2Segment *****************
;; Defined at:
;;		line 276 in file "mid/lcd.c"
;; Parameters:    Size  Location     Type
;;  u8_Data         1    wreg     unsigned char 
;;  u8_DigitType    1   18[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  u8_Data         1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_SetMainDigits
;;		_LCD_SetPresetDigits
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2,group=0,minocg
	file	"mid/lcd.c"
	line	276
global __ptext20
__ptext20:
psect	text20
	file	"mid/lcd.c"
	line	276
	global	__size_of_LCD_Bcd2Segment
	__size_of_LCD_Bcd2Segment	equ	__end_of_LCD_Bcd2Segment-_LCD_Bcd2Segment
	
_LCD_Bcd2Segment:
;incstack = 0
	opt	stack 26
;LCD_Bcd2Segment@u8_Data stored from wreg
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_Bcd2Segment@u8_Data))&0ffh
	line	278
	
l4394:
;lcd.c: 278: switch(u8_Data)
	goto	l4562
	line	280
;lcd.c: 279: {
;lcd.c: 280: case 0: return 0b11010111;
	
l415:
	
l4396:
	movlw	(0D7h)&0ffh
	goto	l416
	
l4398:
	goto	l416
	line	281
;lcd.c: 281: case 1: if(u8_DigitType == 1)
	
l417:
	
l4400:
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		decf	((LCD_Bcd2Segment@u8_DigitType))&0ffh,w
	btfss	status,2
	goto	u4091
	goto	u4090

u4091:
	goto	l4408
u4090:
	line	283
	
l4402:; BSR set to: 0

;lcd.c: 282: {
;lcd.c: 283: return 0b00000011;
	movlw	(03h)&0ffh
	goto	l416
	
l4404:; BSR set to: 0

	goto	l416
	line	284
	
l4406:; BSR set to: 0

;lcd.c: 284: }
	goto	l4412
	line	285
	
l418:; BSR set to: 0

	line	287
	
l4408:; BSR set to: 0

;lcd.c: 285: else
;lcd.c: 286: {
;lcd.c: 287: return 0b11000000;
	movlw	(0C0h)&0ffh
	goto	l416
	
l4410:; BSR set to: 0

	goto	l416
	line	288
	
l419:; BSR set to: 0

	goto	l4412
	line	290
;lcd.c: 288: }
;lcd.c: 290: case 2: if(u8_DigitType == 2)
	
l420:; BSR set to: 0

	
l4412:; BSR set to: 0

		movlw	2
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	xorwf	((LCD_Bcd2Segment@u8_DigitType))&0ffh,w
	btfss	status,2
	goto	u4101
	goto	u4100

u4101:
	goto	l4420
u4100:
	line	292
	
l4414:; BSR set to: 0

;lcd.c: 291: {
;lcd.c: 292: return 0b01011110;
	movlw	(05Eh)&0ffh
	goto	l416
	
l4416:; BSR set to: 0

	goto	l416
	line	293
	
l4418:; BSR set to: 0

;lcd.c: 293: }
	goto	l4424
	line	294
	
l421:; BSR set to: 0

	line	296
	
l4420:; BSR set to: 0

;lcd.c: 294: else
;lcd.c: 295: {
;lcd.c: 296: return 0b10011101;
	movlw	(09Dh)&0ffh
	goto	l416
	
l4422:; BSR set to: 0

	goto	l416
	line	297
	
l422:; BSR set to: 0

	goto	l4424
	line	299
;lcd.c: 297: }
;lcd.c: 299: case 3: if(u8_DigitType == 1)
	
l423:; BSR set to: 0

	
l4424:; BSR set to: 0

opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		decf	((LCD_Bcd2Segment@u8_DigitType))&0ffh,w
	btfss	status,2
	goto	u4111
	goto	u4110

u4111:
	goto	l4432
u4110:
	line	301
	
l4426:; BSR set to: 0

;lcd.c: 300: {
;lcd.c: 301: return 0b00011111;
	movlw	(01Fh)&0ffh
	goto	l416
	
l4428:; BSR set to: 0

	goto	l416
	line	302
	
l4430:; BSR set to: 0

;lcd.c: 302: }
	goto	l4436
	line	303
	
l424:; BSR set to: 0

	line	305
	
l4432:; BSR set to: 0

;lcd.c: 303: else
;lcd.c: 304: {
;lcd.c: 305: return 0b11011100;
	movlw	(0DCh)&0ffh
	goto	l416
	
l4434:; BSR set to: 0

	goto	l416
	line	306
	
l425:; BSR set to: 0

	goto	l4436
	line	308
;lcd.c: 306: }
;lcd.c: 308: case 4: if(u8_DigitType == 1)
	
l426:; BSR set to: 0

	
l4436:; BSR set to: 0

opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		decf	((LCD_Bcd2Segment@u8_DigitType))&0ffh,w
	btfss	status,2
	goto	u4121
	goto	u4120

u4121:
	goto	l4444
u4120:
	line	310
	
l4438:; BSR set to: 0

;lcd.c: 309: {
;lcd.c: 310: return 0b01001011;
	movlw	(04Bh)&0ffh
	goto	l416
	
l4440:; BSR set to: 0

	goto	l416
	line	311
	
l4442:; BSR set to: 0

;lcd.c: 311: }
	goto	l4456
	line	312
	
l427:; BSR set to: 0

	
l4444:; BSR set to: 0

;lcd.c: 312: else if(u8_DigitType == 2)
		movlw	2
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	xorwf	((LCD_Bcd2Segment@u8_DigitType))&0ffh,w
	btfss	status,2
	goto	u4131
	goto	u4130

u4131:
	goto	l4452
u4130:
	line	314
	
l4446:; BSR set to: 0

;lcd.c: 313: {
;lcd.c: 314: return 0b11001001;
	movlw	(0C9h)&0ffh
	goto	l416
	
l4448:; BSR set to: 0

	goto	l416
	line	315
	
l4450:; BSR set to: 0

;lcd.c: 315: }
	goto	l4456
	line	316
	
l429:; BSR set to: 0

	line	318
	
l4452:; BSR set to: 0

;lcd.c: 316: else
;lcd.c: 317: {
;lcd.c: 318: return 0b11001010;
	movlw	(0CAh)&0ffh
	goto	l416
	
l4454:; BSR set to: 0

	goto	l416
	line	319
	
l430:; BSR set to: 0

	goto	l4456
	
l428:; BSR set to: 0

	goto	l4456
	line	322
;lcd.c: 319: }
;lcd.c: 322: case 5: if(u8_DigitType == 2)
	
l431:; BSR set to: 0

	
l4456:; BSR set to: 0

		movlw	2
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	xorwf	((LCD_Bcd2Segment@u8_DigitType))&0ffh,w
	btfss	status,2
	goto	u4141
	goto	u4140

u4141:
	goto	l4464
u4140:
	line	324
	
l4458:; BSR set to: 0

;lcd.c: 323: {
;lcd.c: 324: return 0b10011101;
	movlw	(09Dh)&0ffh
	goto	l416
	
l4460:; BSR set to: 0

	goto	l416
	line	325
	
l4462:; BSR set to: 0

;lcd.c: 325: }
	goto	l4468
	line	326
	
l432:; BSR set to: 0

	line	328
	
l4464:; BSR set to: 0

;lcd.c: 326: else
;lcd.c: 327: {
;lcd.c: 328: return 0b01011110;
	movlw	(05Eh)&0ffh
	goto	l416
	
l4466:; BSR set to: 0

	goto	l416
	line	329
	
l433:; BSR set to: 0

	goto	l4468
	line	331
;lcd.c: 329: }
;lcd.c: 331: case 6: if(u8_DigitType == 1)
	
l434:; BSR set to: 0

	
l4468:; BSR set to: 0

opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		decf	((LCD_Bcd2Segment@u8_DigitType))&0ffh,w
	btfss	status,2
	goto	u4151
	goto	u4150

u4151:
	goto	l4476
u4150:
	line	333
	
l4470:; BSR set to: 0

;lcd.c: 332: {
;lcd.c: 333: return 0b11011110;
	movlw	(0DEh)&0ffh
	goto	l416
	
l4472:; BSR set to: 0

	goto	l416
	line	334
	
l4474:; BSR set to: 0

;lcd.c: 334: }
	goto	l4488
	line	335
	
l435:; BSR set to: 0

	
l4476:; BSR set to: 0

;lcd.c: 335: else if(u8_DigitType == 2)
		movlw	2
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	xorwf	((LCD_Bcd2Segment@u8_DigitType))&0ffh,w
	btfss	status,2
	goto	u4161
	goto	u4160

u4161:
	goto	l4484
u4160:
	line	337
	
l4478:; BSR set to: 0

;lcd.c: 336: {
;lcd.c: 337: return 0b10011111;
	movlw	(09Fh)&0ffh
	goto	l416
	
l4480:; BSR set to: 0

	goto	l416
	line	338
	
l4482:; BSR set to: 0

;lcd.c: 338: }
	goto	l4488
	line	339
	
l437:; BSR set to: 0

	line	341
	
l4484:; BSR set to: 0

;lcd.c: 339: else
;lcd.c: 340: {
;lcd.c: 341: return 0b01011111;
	movlw	(05Fh)&0ffh
	goto	l416
	
l4486:; BSR set to: 0

	goto	l416
	line	342
	
l438:; BSR set to: 0

	goto	l4488
	
l436:; BSR set to: 0

	goto	l4488
	line	344
;lcd.c: 342: }
;lcd.c: 344: case 7: if(u8_DigitType == 1)
	
l439:; BSR set to: 0

	
l4488:; BSR set to: 0

opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		decf	((LCD_Bcd2Segment@u8_DigitType))&0ffh,w
	btfss	status,2
	goto	u4171
	goto	u4170

u4171:
	goto	l4496
u4170:
	line	346
	
l4490:; BSR set to: 0

;lcd.c: 345: {
;lcd.c: 346: return 0b00000111;
	movlw	(07h)&0ffh
	goto	l416
	
l4492:; BSR set to: 0

	goto	l416
	line	347
	
l4494:; BSR set to: 0

;lcd.c: 347: }
	goto	l4508
	line	348
	
l440:; BSR set to: 0

	
l4496:; BSR set to: 0

;lcd.c: 348: else if(u8_DigitType == 2)
		movlw	2
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	xorwf	((LCD_Bcd2Segment@u8_DigitType))&0ffh,w
	btfss	status,2
	goto	u4181
	goto	u4180

u4181:
	goto	l4504
u4180:
	line	350
	
l4498:; BSR set to: 0

;lcd.c: 349: {
;lcd.c: 350: return 0b11000100;
	movlw	(0C4h)&0ffh
	goto	l416
	
l4500:; BSR set to: 0

	goto	l416
	line	351
	
l4502:; BSR set to: 0

;lcd.c: 351: }
	goto	l4508
	line	352
	
l442:; BSR set to: 0

	line	354
	
l4504:; BSR set to: 0

;lcd.c: 352: else
;lcd.c: 353: {
;lcd.c: 354: return 0b11010000;
	movlw	(0D0h)&0ffh
	goto	l416
	
l4506:; BSR set to: 0

	goto	l416
	line	355
	
l443:; BSR set to: 0

	goto	l4508
	
l441:; BSR set to: 0

	goto	l4508
	line	357
;lcd.c: 355: }
;lcd.c: 357: case 8: return 0b11011111;
	
l444:; BSR set to: 0

	
l4508:; BSR set to: 0

	movlw	(0DFh)&0ffh
	goto	l416
	
l4510:; BSR set to: 0

	goto	l416
	line	359
;lcd.c: 359: case 9: if(u8_DigitType == 1)
	
l445:; BSR set to: 0

	
l4512:; BSR set to: 0

opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		decf	((LCD_Bcd2Segment@u8_DigitType))&0ffh,w
	btfss	status,2
	goto	u4191
	goto	u4190

u4191:
	goto	l4520
u4190:
	line	361
	
l4514:; BSR set to: 0

;lcd.c: 360: {
;lcd.c: 361: return 0b01011111;
	movlw	(05Fh)&0ffh
	goto	l416
	
l4516:; BSR set to: 0

	goto	l416
	line	362
	
l4518:; BSR set to: 0

;lcd.c: 362: }
	goto	l4532
	line	363
	
l446:; BSR set to: 0

	
l4520:; BSR set to: 0

;lcd.c: 363: else if(u8_DigitType == 2)
		movlw	2
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	xorwf	((LCD_Bcd2Segment@u8_DigitType))&0ffh,w
	btfss	status,2
	goto	u4201
	goto	u4200

u4201:
	goto	l4528
u4200:
	line	365
	
l4522:; BSR set to: 0

;lcd.c: 364: {
;lcd.c: 365: return 0b11011101;
	movlw	(0DDh)&0ffh
	goto	l416
	
l4524:; BSR set to: 0

	goto	l416
	line	366
	
l4526:; BSR set to: 0

;lcd.c: 366: }
	goto	l4532
	line	367
	
l448:; BSR set to: 0

	line	369
	
l4528:; BSR set to: 0

;lcd.c: 367: else
;lcd.c: 368: {
;lcd.c: 369: return 0b11011110;
	movlw	(0DEh)&0ffh
	goto	l416
	
l4530:; BSR set to: 0

	goto	l416
	line	370
	
l449:; BSR set to: 0

	goto	l4532
	
l447:; BSR set to: 0

	goto	l4532
	line	372
;lcd.c: 370: }
;lcd.c: 372: case 10: return 0b00001000;
	
l450:; BSR set to: 0

	
l4532:; BSR set to: 0

	movlw	(08h)&0ffh
	goto	l416
	
l4534:; BSR set to: 0

	goto	l416
	line	373
;lcd.c: 373: case 11: return 0b00001001;
	
l451:; BSR set to: 0

	
l4536:; BSR set to: 0

	movlw	(09h)&0ffh
	goto	l416
	
l4538:; BSR set to: 0

	goto	l416
	line	374
;lcd.c: 374: case 12: return 0b11001111;
	
l452:; BSR set to: 0

	
l4540:; BSR set to: 0

	movlw	(0CFh)&0ffh
	goto	l416
	
l4542:; BSR set to: 0

	goto	l416
	line	375
;lcd.c: 375: case 13: return 0b01001001;
	
l453:; BSR set to: 0

	
l4544:; BSR set to: 0

	movlw	(049h)&0ffh
	goto	l416
	
l4546:; BSR set to: 0

	goto	l416
	line	376
;lcd.c: 376: case 14: return 0b00011111;
	
l454:; BSR set to: 0

	
l4548:; BSR set to: 0

	movlw	(01Fh)&0ffh
	goto	l416
	
l4550:; BSR set to: 0

	goto	l416
	line	377
;lcd.c: 377: case 15: return 0b00011011;
	
l455:; BSR set to: 0

	
l4552:; BSR set to: 0

	movlw	(01Bh)&0ffh
	goto	l416
	
l4554:; BSR set to: 0

	goto	l416
	line	380
;lcd.c: 380: default: return 0b00011111;
	
l456:; BSR set to: 0

	
l4556:; BSR set to: 0

	movlw	(01Fh)&0ffh
	goto	l416
	
l4558:; BSR set to: 0

	goto	l416
	line	381
	
l4560:; BSR set to: 0

;lcd.c: 381: }
	goto	l416
	line	278
	
l414:; BSR set to: 0

	
l4562:
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((LCD_Bcd2Segment@u8_Data))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 16, Range of values is 0 to 15
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           49    25 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l4396
	xorlw	1^0	; case 1
	skipnz
	goto	l4400
	xorlw	2^1	; case 2
	skipnz
	goto	l4412
	xorlw	3^2	; case 3
	skipnz
	goto	l4424
	xorlw	4^3	; case 4
	skipnz
	goto	l4436
	xorlw	5^4	; case 5
	skipnz
	goto	l4456
	xorlw	6^5	; case 6
	skipnz
	goto	l4468
	xorlw	7^6	; case 7
	skipnz
	goto	l4488
	xorlw	8^7	; case 8
	skipnz
	goto	l4508
	xorlw	9^8	; case 9
	skipnz
	goto	l4512
	xorlw	10^9	; case 10
	skipnz
	goto	l4532
	xorlw	11^10	; case 11
	skipnz
	goto	l4536
	xorlw	12^11	; case 12
	skipnz
	goto	l4540
	xorlw	13^12	; case 13
	skipnz
	goto	l4544
	xorlw	14^13	; case 14
	skipnz
	goto	l4548
	xorlw	15^14	; case 15
	skipnz
	goto	l4552
	goto	l4556

	line	381
	
l457:; BSR set to: 0

	line	382
	
l416:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_LCD_Bcd2Segment
	__end_of_LCD_Bcd2Segment:
	signat	_LCD_Bcd2Segment,8313
	global	_LCD_SetIcons

;; *************** function _LCD_SetIcons *****************
;; Defined at:
;;		line 410 in file "mid/lcd.c"
;; Parameters:    Size  Location     Type
;;  u8_Icon         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  u8_Icon         1   22[BANK0 ] unsigned char 
;;  u8_Temp         1   23[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCD_GetData
;;		_LCD_SetData
;; This function is called by:
;;		_USER_Init
;;		_USER_Task
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2,group=0,minocg
	line	410
global __ptext21
__ptext21:
psect	text21
	file	"mid/lcd.c"
	line	410
	global	__size_of_LCD_SetIcons
	__size_of_LCD_SetIcons	equ	__end_of_LCD_SetIcons-_LCD_SetIcons
	
_LCD_SetIcons:
;incstack = 0
	opt	stack 26
;LCD_SetIcons@u8_Icon stored from wreg
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetIcons@u8_Icon))&0ffh
	line	412
	
l4818:
;lcd.c: 412: uint8_t u8_Temp= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetIcons@u8_Temp))&0ffh
	line	413
;lcd.c: 413: switch(u8_Icon)
	goto	l4828
	line	415
;lcd.c: 414: {
;lcd.c: 415: case 0: u8_Temp= LCD_GetData(2);
	
l465:; BSR set to: 0

	
l4820:; BSR set to: 0

	movlw	(02h)&0ffh
	
	call	_LCD_GetData
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetIcons@u8_Temp))&0ffh
	line	416
	
l4822:; BSR set to: 0

;lcd.c: 416: u8_Temp= u8_Temp | 32;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((LCD_SetIcons@u8_Temp))&0ffh,w
	iorlw	low(020h)
	movwf	((LCD_SetIcons@u8_Temp))&0ffh
	line	417
	
l4824:; BSR set to: 0

;lcd.c: 417: LCD_SetData(u8_Temp , 2);
	movlw	low(02h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetData@u8_Position))&0ffh
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((LCD_SetIcons@u8_Temp))&0ffh,w
	
	call	_LCD_SetData
	line	418
;lcd.c: 418: break;
	goto	l468
	line	420
;lcd.c: 420: default: break;
	
l467:
	goto	l468
	line	421
	
l4826:
;lcd.c: 421: }
	goto	l468
	line	413
	
l464:
	
l4828:
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((LCD_SetIcons@u8_Icon))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l4820
	goto	l468

	line	421
	
l466:; BSR set to: 0

	line	422
	
l468:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_LCD_SetIcons
	__end_of_LCD_SetIcons:
	signat	_LCD_SetIcons,4217
	global	_LCD_GetData

;; *************** function _LCD_GetData *****************
;; Defined at:
;;		line 461 in file "mid/lcd.c"
;; Parameters:    Size  Location     Type
;;  u8_Position     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  u8_Position     1   20[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_SetIcons
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2,group=0,minocg
	line	461
global __ptext22
__ptext22:
psect	text22
	file	"mid/lcd.c"
	line	461
	global	__size_of_LCD_GetData
	__size_of_LCD_GetData	equ	__end_of_LCD_GetData-_LCD_GetData
	
_LCD_GetData:
;incstack = 0
	opt	stack 26
;LCD_GetData@u8_Position stored from wreg
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_GetData@u8_Position))&0ffh
	line	463
	
l4564:
;lcd.c: 463: if(u8_Position < 14)
		movlw	0Eh-0
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	cpfslt	((LCD_GetData@u8_Position))&0ffh
	goto	u4211
	goto	u4210

u4211:
	goto	l4572
u4210:
	line	465
	
l4566:; BSR set to: 0

;lcd.c: 464: {
;lcd.c: 465: return u8_LCD_Data[u8_Position+2];
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((LCD_GetData@u8_Position))&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(??_LCD_GetData+0+0)&0ffh
	clrf	(??_LCD_GetData+0+0+1)&0ffh

	movlw	02h
	addwf	(??_LCD_GetData+0+0)&0ffh
	movlw	0
	addwfc	(??_LCD_GetData+0+1)&0ffh
	movlw	low(_u8_LCD_Data)
	addwf	(??_LCD_GetData+0+0)&0ffh,w
	movwf	c:fsr2l
	movlw	high(_u8_LCD_Data)
	addwfc	(??_LCD_GetData+0+1)&0ffh,w
	movwf	1+c:fsr2l
	movf	indf2,w
	goto	l477
	
l4568:; BSR set to: 0

	goto	l477
	line	466
	
l4570:; BSR set to: 0

;lcd.c: 466: }
	goto	l477
	line	467
	
l476:; BSR set to: 0

	line	469
	
l4572:; BSR set to: 0

;lcd.c: 467: else
;lcd.c: 468: {
;lcd.c: 469: return 0;
	movlw	(0)&0ffh
	goto	l477
	
l4574:; BSR set to: 0

	goto	l477
	line	470
	
l478:; BSR set to: 0

	line	471
	
l477:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_LCD_GetData
	__end_of_LCD_GetData:
	signat	_LCD_GetData,4217
	global	_LCD_Clear

;; *************** function _LCD_Clear *****************
;; Defined at:
;;		line 477 in file "mid/lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  u8_Temp         1   22[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCD_SetData
;; This function is called by:
;;		_USER_Init
;;		_USER_Task
;;		_LCD_Test
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2,group=0,minocg
	line	477
global __ptext23
__ptext23:
psect	text23
	file	"mid/lcd.c"
	line	477
	global	__size_of_LCD_Clear
	__size_of_LCD_Clear	equ	__end_of_LCD_Clear-_LCD_Clear
	
_LCD_Clear:; BSR set to: 0

;incstack = 0
	opt	stack 26
	line	479
	
l4708:
;lcd.c: 479: uint8_t u8_Temp= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_Clear@u8_Temp))&0ffh
	line	480
	
l4710:; BSR set to: 0

;lcd.c: 480: for(; u8_Temp < (14+1); ++u8_Temp)
		movlw	0Fh-1
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	cpfsgt	((LCD_Clear@u8_Temp))&0ffh
	goto	u4381
	goto	u4380

u4381:
	goto	l4714
u4380:
	goto	l483
	
l4712:; BSR set to: 0

	goto	l483
	line	481
	
l481:; BSR set to: 0

	line	482
	
l4714:; BSR set to: 0

;lcd.c: 481: {
;lcd.c: 482: LCD_SetData(0, u8_Temp);
	movff	(LCD_Clear@u8_Temp),(LCD_SetData@u8_Position)
	movlw	(0)&0ffh
	
	call	_LCD_SetData
	line	480
	
l4716:
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	incf	((LCD_Clear@u8_Temp))&0ffh
	
l4718:; BSR set to: 0

		movlw	0Fh-1
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	cpfsgt	((LCD_Clear@u8_Temp))&0ffh
	goto	u4391
	goto	u4390

u4391:
	goto	l4714
u4390:
	goto	l483
	
l482:; BSR set to: 0

	line	484
	
l483:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_LCD_Clear
	__end_of_LCD_Clear:
	signat	_LCD_Clear,89
	global	_TIMER_ResetSysTickFlag

;; *************** function _TIMER_ResetSysTickFlag *****************
;; Defined at:
;;		line 62 in file "hal/timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2,group=0,minocg
	file	"hal/timer.c"
	line	62
global __ptext24
__ptext24:
psect	text24
	file	"hal/timer.c"
	line	62
	global	__size_of_TIMER_ResetSysTickFlag
	__size_of_TIMER_ResetSysTickFlag	equ	__end_of_TIMER_ResetSysTickFlag-_TIMER_ResetSysTickFlag
	
_TIMER_ResetSysTickFlag:; BSR set to: 0

;incstack = 0
	opt	stack 28
	line	64
	
l5096:
;timer.c: 64: bFlag_SysTick= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((_bFlag_SysTick))&0ffh
	line	65
	
l724:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_TIMER_ResetSysTickFlag
	__end_of_TIMER_ResetSysTickFlag:
	signat	_TIMER_ResetSysTickFlag,89
	global	_TIMER_Init

;; *************** function _TIMER_Init *****************
;; Defined at:
;;		line 18 in file "hal/timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2,group=0,minocg
	line	18
global __ptext25
__ptext25:
psect	text25
	file	"hal/timer.c"
	line	18
	global	__size_of_TIMER_Init
	__size_of_TIMER_Init	equ	__end_of_TIMER_Init-_TIMER_Init
	
_TIMER_Init:; BSR set to: 0

;incstack = 0
	opt	stack 28
	line	20
	
l4940:
;timer.c: 20: T2CON= 0;
	movlw	low(0)
	movwf	((4042)),c	;volatile
	line	21
;timer.c: 21: TMR2= 0;
	movlw	low(0)
	movwf	((4044)),c	;volatile
	line	22
;timer.c: 22: PR2= 249;
	movlw	low(0F9h)
	movwf	((4043)),c	;volatile
	line	23
;timer.c: 23: T2CON= 2 | 4 | 0x08;
	movlw	low(0Eh)
	movwf	((4042)),c	;volatile
	line	32
	
l4942:
;timer.c: 32: PIE1bits.TMR2IE= 1;
	bsf	((3997)),c,1	;volatile
	line	33
	
l709:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_TIMER_Init
	__end_of_TIMER_Init:
	signat	_TIMER_Init,89
	global	_TIMER_GetSysTickFlag

;; *************** function _TIMER_GetSysTickFlag *****************
;; Defined at:
;;		line 52 in file "hal/timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2,group=0,minocg
	line	52
global __ptext26
__ptext26:
psect	text26
	file	"hal/timer.c"
	line	52
	global	__size_of_TIMER_GetSysTickFlag
	__size_of_TIMER_GetSysTickFlag	equ	__end_of_TIMER_GetSysTickFlag-_TIMER_GetSysTickFlag
	
_TIMER_GetSysTickFlag:
;incstack = 0
	opt	stack 28
	line	54
	
l5092:
;timer.c: 54: return bFlag_SysTick;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((_bFlag_SysTick))&0ffh,w
	goto	l718
	
l5094:; BSR set to: 0

	line	55
	
l718:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_TIMER_GetSysTickFlag
	__end_of_TIMER_GetSysTickFlag:
	signat	_TIMER_GetSysTickFlag,89
	global	_SYSTEM_Init

;; *************** function _SYSTEM_Init *****************
;; Defined at:
;;		line 16 in file "hal/system.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2,group=0,minocg
	file	"hal/system.c"
	line	16
global __ptext27
__ptext27:
psect	text27
	file	"hal/system.c"
	line	16
	global	__size_of_SYSTEM_Init
	__size_of_SYSTEM_Init	equ	__end_of_SYSTEM_Init-_SYSTEM_Init
	
_SYSTEM_Init:; BSR set to: 0

;incstack = 0
	opt	stack 28
	line	18
	
l4934:
;system.c: 18: OSCCON= 112 | 0 ;
	movlw	low(070h)
	movwf	((4051)),c	;volatile
	line	19
;system.c: 19: while(IOFS == 0);
	goto	l171
	
l172:
	
l171:
	btfss	c:(32410/8),(32410)&7	;volatile
	goto	u4641
	goto	u4640
u4641:
	goto	l171
u4640:
	
l173:
	line	21
;system.c: 21: TMR2IP= 1;
	bsf	c:(31993/8),(31993)&7	;volatile
	line	22
;system.c: 22: PLLEN= 1;
	bsf	c:(31966/8),(31966)&7	;volatile
	line	23
;system.c: 23: while(IOFS == 0);
	goto	l174
	
l175:
	
l174:
	btfss	c:(32410/8),(32410)&7	;volatile
	goto	u4651
	goto	u4650
u4651:
	goto	l174
u4650:
	goto	l177
	
l176:
	line	25
	
l177:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_SYSTEM_Init
	__end_of_SYSTEM_Init:
	signat	_SYSTEM_Init,89
	global	_PWM_Task

;; *************** function _PWM_Task *****************
;; Defined at:
;;		line 29 in file "hal/pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_PWM_ResetSyncTrigger
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2,group=0,minocg
	file	"hal/pwm.c"
	line	29
global __ptext28
__ptext28:
psect	text28
	file	"hal/pwm.c"
	line	29
	global	__size_of_PWM_Task
	__size_of_PWM_Task	equ	__end_of_PWM_Task-_PWM_Task
	
_PWM_Task:
;incstack = 0
	opt	stack 27
	line	34
	
l5098:
;pwm.c: 31: static uint8_t u8_PwmCounter= 0;
;pwm.c: 32: static uint8_t u8_PeriodCount= 0;
;pwm.c: 34: if(bFlag_SyncTrigger == 1)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		decf	((_bFlag_SyncTrigger))&0ffh,w
	btfss	status,2
	goto	u4981
	goto	u4980

u4981:
	goto	l813
u4980:
	line	36
	
l5100:; BSR set to: 0

;pwm.c: 35: {
;pwm.c: 36: ++u8_PwmCounter;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	incf	((PWM_Task@u8_PwmCounter))&0ffh
	line	37
	
l5102:; BSR set to: 0

;pwm.c: 37: if(u8_PwmCounter >= (9-u8_DutyCycle))
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((_u8_DutyCycle))&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(??_PWM_Task+0+0)&0ffh
	clrf	(??_PWM_Task+0+0+1)&0ffh

	comf	(??_PWM_Task+0+0)&0ffh
	comf	(??_PWM_Task+0+1)&0ffh
	infsnz	(??_PWM_Task+0+0)&0ffh
	incf	(??_PWM_Task+0+1)&0ffh
	movlw	09h
	addwf	(??_PWM_Task+0+0)&0ffh
	movlw	0
	addwfc	(??_PWM_Task+0+1)&0ffh
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((PWM_Task@u8_PwmCounter))&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(??_PWM_Task+2+0)&0ffh
	clrf	(??_PWM_Task+2+0+1)&0ffh

		movf	(??_PWM_Task+0+0)&0ffh,w
	subwf	(??_PWM_Task+2+0)&0ffh,w
	movf	(??_PWM_Task+2+1)&0ffh,w
	xorlw	80h
	movwf	(??_PWM_Task+4+0)&0ffh
	movf	(??_PWM_Task+0+1)&0ffh,w
	xorlw	80h
	subwfb	(??_PWM_Task+4+0)&0ffh,w
	btfss	status,0
	goto	u4991
	goto	u4990

u4991:
	goto	l5106
u4990:
	line	39
	
l5104:; BSR set to: 0

;pwm.c: 38: {
;pwm.c: 39: LATAbits.LA6= 0;
	bcf	((3977)),c,6	;volatile
	goto	l5106
	line	40
	
l810:; BSR set to: 0

	line	41
	
l5106:; BSR set to: 0

;pwm.c: 40: }
;pwm.c: 41: if(u8_PwmCounter >= 9)
		movlw	09h-1
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	cpfsgt	((PWM_Task@u8_PwmCounter))&0ffh
	goto	u5001
	goto	u5000

u5001:
	goto	l813
u5000:
	line	43
	
l5108:; BSR set to: 0

;pwm.c: 42: {
;pwm.c: 43: LATAbits.LA6= 1;
	bsf	((3977)),c,6	;volatile
	line	44
	
l5110:; BSR set to: 0

;pwm.c: 44: ++u8_PeriodCount;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	incf	((PWM_Task@u8_PeriodCount))&0ffh
	line	45
	
l5112:; BSR set to: 0

;pwm.c: 45: u8_PwmCounter= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((PWM_Task@u8_PwmCounter))&0ffh
	line	46
	
l5114:; BSR set to: 0

;pwm.c: 46: if(u8_PeriodCount > 1)
		movlw	02h-1
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	cpfsgt	((PWM_Task@u8_PeriodCount))&0ffh
	goto	u5011
	goto	u5010

u5011:
	goto	l813
u5010:
	line	48
	
l5116:; BSR set to: 0

;pwm.c: 47: {
;pwm.c: 48: PWM_ResetSyncTrigger();
	call	_PWM_ResetSyncTrigger	;wreg free
	line	49
	
l5118:
;pwm.c: 49: u8_PeriodCount= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((PWM_Task@u8_PeriodCount))&0ffh
	goto	l813
	line	50
	
l812:; BSR set to: 0

	goto	l813
	line	51
	
l811:; BSR set to: 0

	goto	l813
	line	52
	
l809:; BSR set to: 0

	line	54
	
l813:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_PWM_Task
	__end_of_PWM_Task:
	signat	_PWM_Task,89
	global	_PWM_ResetSyncTrigger

;; *************** function _PWM_ResetSyncTrigger *****************
;; Defined at:
;;		line 79 in file "hal/pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM_Task
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2,group=0,minocg
	line	79
global __ptext29
__ptext29:
psect	text29
	file	"hal/pwm.c"
	line	79
	global	__size_of_PWM_ResetSyncTrigger
	__size_of_PWM_ResetSyncTrigger	equ	__end_of_PWM_ResetSyncTrigger-_PWM_ResetSyncTrigger
	
_PWM_ResetSyncTrigger:; BSR set to: 0

;incstack = 0
	opt	stack 27
	line	81
	
l4910:
;pwm.c: 81: bFlag_SyncTrigger= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((_bFlag_SyncTrigger))&0ffh
	line	82
	
l826:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_PWM_ResetSyncTrigger
	__end_of_PWM_ResetSyncTrigger:
	signat	_PWM_ResetSyncTrigger,89
	global	_NVM_Task

;; *************** function _NVM_Task *****************
;; Defined at:
;;		line 38 in file "hal/nvm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SYSTEM_DisableInterrupts
;;		_SYSTEM_EnableInterrupts
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2,group=0,minocg
	file	"hal/nvm.c"
	line	38
global __ptext30
__ptext30:
psect	text30
	file	"hal/nvm.c"
	line	38
	global	__size_of_NVM_Task
	__size_of_NVM_Task	equ	__end_of_NVM_Task-_NVM_Task
	
_NVM_Task:; BSR set to: 0

;incstack = 0
	opt	stack 27
	line	45
	
l5468:
;nvm.c: 40: static bool bFlag_StateWriteLowByte= 0;
;nvm.c: 41: static uint8_t u8_TempWriteFlag= 0;
;nvm.c: 42: static uint16_t u16_TempWriteData= 0;
;nvm.c: 43: static uint16_t u16_TempAddress= 0;
;nvm.c: 45: if(u8_NVM_WriteRegister > 0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((_u8_NVM_WriteRegister))&0ffh,w
	btfsc	status,2
	goto	u5621
	goto	u5620
u5621:
	goto	l766
u5620:
	line	48
	
l5470:; BSR set to: 0

;nvm.c: 46: {
;nvm.c: 48: if(EECON1bits.WRERR == 1)
	btfss	((4006)),c,3	;volsfr
	goto	u5631
	goto	u5630
u5631:
	goto	l765
u5630:
	goto	l766
	line	50
	
l5472:; BSR set to: 0

;nvm.c: 49: {
;nvm.c: 50: return;
	goto	l766
	line	51
	
l765:; BSR set to: 0

	line	53
;nvm.c: 51: }
;nvm.c: 53: if( !EECON1bits.WR )
	btfsc	((4006)),c,1	;volsfr
	goto	u5641
	goto	u5640
u5641:
	goto	l766
u5640:
	line	55
	
l5474:; BSR set to: 0

;nvm.c: 54: {
;nvm.c: 55: SYSTEM_DisableInterrupts();
	call	_SYSTEM_DisableInterrupts	;wreg free
	line	56
	
l5476:
;nvm.c: 56: EECON1bits.WREN= 1;
	bsf	((4006)),c,2	;volsfr
	line	58
	
l5478:
;nvm.c: 58: if(bFlag_StateWriteLowByte == 0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((NVM_Task@bFlag_StateWriteLowByte))&0ffh,w
	btfss	status,2
	goto	u5651
	goto	u5650
u5651:
	goto	l5518
u5650:
	line	60
	
l5480:; BSR set to: 0

;nvm.c: 59: {
;nvm.c: 60: if(u8_NVM_WriteRegister & (1<<0))
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	
	btfss	((_u8_NVM_WriteRegister))&0ffh,(0)&7
	goto	u5661
	goto	u5660
u5661:
	goto	l769
u5660:
	line	62
	
l5482:; BSR set to: 0

;nvm.c: 61: {
;nvm.c: 62: u16_TempAddress= 0x0000;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Task@u16_TempAddress+1))&0ffh
	movlw	low(0)
	movwf	((NVM_Task@u16_TempAddress))&0ffh
	line	63
	
l5484:; BSR set to: 0

;nvm.c: 63: u16_TempWriteData= u16_NVM_WriteBuffer[0];
	movff	(_u16_NVM_WriteBuffer),(NVM_Task@u16_TempWriteData)
	movff	(_u16_NVM_WriteBuffer+1),(NVM_Task@u16_TempWriteData+1)
	line	64
;nvm.c: 64: u8_TempWriteFlag= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Task@u8_TempWriteFlag))&0ffh
	line	65
;nvm.c: 65: }
	goto	l5514
	line	66
	
l769:; BSR set to: 0

;nvm.c: 66: else if(u8_NVM_WriteRegister & (1<<1))
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	
	btfss	((_u8_NVM_WriteRegister))&0ffh,(1)&7
	goto	u5671
	goto	u5670
u5671:
	goto	l771
u5670:
	line	68
	
l5486:; BSR set to: 0

;nvm.c: 67: {
;nvm.c: 68: u16_TempAddress= 0x0002;
	movlw	high(02h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Task@u16_TempAddress+1))&0ffh
	movlw	low(02h)
	movwf	((NVM_Task@u16_TempAddress))&0ffh
	line	69
	
l5488:; BSR set to: 0

;nvm.c: 69: u16_TempWriteData= u16_NVM_WriteBuffer[1];
	movff	0+(_u16_NVM_WriteBuffer+02h),(NVM_Task@u16_TempWriteData)
	movff	1+(_u16_NVM_WriteBuffer+02h),(NVM_Task@u16_TempWriteData+1)
	line	70
;nvm.c: 70: u8_TempWriteFlag= 1;
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Task@u8_TempWriteFlag))&0ffh
	line	71
;nvm.c: 71: }
	goto	l5514
	line	72
	
l771:; BSR set to: 0

;nvm.c: 72: else if(u8_NVM_WriteRegister & (1<<2))
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	
	btfss	((_u8_NVM_WriteRegister))&0ffh,(2)&7
	goto	u5681
	goto	u5680
u5681:
	goto	l773
u5680:
	line	74
	
l5490:; BSR set to: 0

;nvm.c: 73: {
;nvm.c: 74: u16_TempAddress= 0x0004;
	movlw	high(04h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Task@u16_TempAddress+1))&0ffh
	movlw	low(04h)
	movwf	((NVM_Task@u16_TempAddress))&0ffh
	line	75
	
l5492:; BSR set to: 0

;nvm.c: 75: u16_TempWriteData= u16_NVM_WriteBuffer[2];
	movff	0+(_u16_NVM_WriteBuffer+04h),(NVM_Task@u16_TempWriteData)
	movff	1+(_u16_NVM_WriteBuffer+04h),(NVM_Task@u16_TempWriteData+1)
	line	76
;nvm.c: 76: u8_TempWriteFlag= 2;
	movlw	low(02h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Task@u8_TempWriteFlag))&0ffh
	line	77
;nvm.c: 77: }
	goto	l5514
	line	78
	
l773:; BSR set to: 0

;nvm.c: 78: else if(u8_NVM_WriteRegister & (1<<3))
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	
	btfss	((_u8_NVM_WriteRegister))&0ffh,(3)&7
	goto	u5691
	goto	u5690
u5691:
	goto	l775
u5690:
	line	80
	
l5494:; BSR set to: 0

;nvm.c: 79: {
;nvm.c: 80: u16_TempAddress= 0x0006;
	movlw	high(06h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Task@u16_TempAddress+1))&0ffh
	movlw	low(06h)
	movwf	((NVM_Task@u16_TempAddress))&0ffh
	line	81
	
l5496:; BSR set to: 0

;nvm.c: 81: u16_TempWriteData= u16_NVM_WriteBuffer[3];
	movff	0+(_u16_NVM_WriteBuffer+06h),(NVM_Task@u16_TempWriteData)
	movff	1+(_u16_NVM_WriteBuffer+06h),(NVM_Task@u16_TempWriteData+1)
	line	82
;nvm.c: 82: u8_TempWriteFlag= 3;
	movlw	low(03h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Task@u8_TempWriteFlag))&0ffh
	line	83
;nvm.c: 83: }
	goto	l5514
	line	84
	
l775:; BSR set to: 0

;nvm.c: 84: else if(u8_NVM_WriteRegister & (1<<4))
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	
	btfss	((_u8_NVM_WriteRegister))&0ffh,(4)&7
	goto	u5701
	goto	u5700
u5701:
	goto	l777
u5700:
	line	86
	
l5498:; BSR set to: 0

;nvm.c: 85: {
;nvm.c: 86: u16_TempAddress= 0x0008;
	movlw	high(08h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Task@u16_TempAddress+1))&0ffh
	movlw	low(08h)
	movwf	((NVM_Task@u16_TempAddress))&0ffh
	line	87
	
l5500:; BSR set to: 0

;nvm.c: 87: u16_TempWriteData= u16_NVM_WriteBuffer[4];
	movff	0+(_u16_NVM_WriteBuffer+08h),(NVM_Task@u16_TempWriteData)
	movff	1+(_u16_NVM_WriteBuffer+08h),(NVM_Task@u16_TempWriteData+1)
	line	88
;nvm.c: 88: u8_TempWriteFlag= 4;
	movlw	low(04h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Task@u8_TempWriteFlag))&0ffh
	line	89
;nvm.c: 89: }
	goto	l5514
	line	90
	
l777:; BSR set to: 0

;nvm.c: 90: else if(u8_NVM_WriteRegister & (1<<5))
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	
	btfss	((_u8_NVM_WriteRegister))&0ffh,(5)&7
	goto	u5711
	goto	u5710
u5711:
	goto	l779
u5710:
	line	92
	
l5502:; BSR set to: 0

;nvm.c: 91: {
;nvm.c: 92: u16_TempAddress= 0x000A;
	movlw	high(0Ah)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Task@u16_TempAddress+1))&0ffh
	movlw	low(0Ah)
	movwf	((NVM_Task@u16_TempAddress))&0ffh
	line	93
	
l5504:; BSR set to: 0

;nvm.c: 93: u16_TempWriteData= u16_NVM_WriteBuffer[5];
	movff	0+(_u16_NVM_WriteBuffer+0Ah),(NVM_Task@u16_TempWriteData)
	movff	1+(_u16_NVM_WriteBuffer+0Ah),(NVM_Task@u16_TempWriteData+1)
	line	94
;nvm.c: 94: u8_TempWriteFlag= 5;
	movlw	low(05h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Task@u8_TempWriteFlag))&0ffh
	line	95
;nvm.c: 95: }
	goto	l5514
	line	96
	
l779:; BSR set to: 0

;nvm.c: 96: else if(u8_NVM_WriteRegister & (1<<6))
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	
	btfss	((_u8_NVM_WriteRegister))&0ffh,(6)&7
	goto	u5721
	goto	u5720
u5721:
	goto	l781
u5720:
	line	98
	
l5506:; BSR set to: 0

;nvm.c: 97: {
;nvm.c: 98: u16_TempAddress= 0x000C;
	movlw	high(0Ch)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Task@u16_TempAddress+1))&0ffh
	movlw	low(0Ch)
	movwf	((NVM_Task@u16_TempAddress))&0ffh
	line	99
	
l5508:; BSR set to: 0

;nvm.c: 99: u16_TempWriteData= u16_NVM_WriteBuffer[6];
	movff	0+(_u16_NVM_WriteBuffer+0Ch),(NVM_Task@u16_TempWriteData)
	movff	1+(_u16_NVM_WriteBuffer+0Ch),(NVM_Task@u16_TempWriteData+1)
	line	100
;nvm.c: 100: u8_TempWriteFlag= 6;
	movlw	low(06h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Task@u8_TempWriteFlag))&0ffh
	line	101
;nvm.c: 101: }
	goto	l5514
	line	102
	
l781:; BSR set to: 0

;nvm.c: 102: else if(u8_NVM_WriteRegister & (1<<7))
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	
	btfss	((_u8_NVM_WriteRegister))&0ffh,(7)&7
	goto	u5731
	goto	u5730
u5731:
	goto	l5514
u5730:
	line	104
	
l5510:; BSR set to: 0

;nvm.c: 103: {
;nvm.c: 104: u16_TempAddress= 0x000E;
	movlw	high(0Eh)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Task@u16_TempAddress+1))&0ffh
	movlw	low(0Eh)
	movwf	((NVM_Task@u16_TempAddress))&0ffh
	line	105
	
l5512:; BSR set to: 0

;nvm.c: 105: u16_TempWriteData= u16_NVM_WriteBuffer[7];
	movff	0+(_u16_NVM_WriteBuffer+0Eh),(NVM_Task@u16_TempWriteData)
	movff	1+(_u16_NVM_WriteBuffer+0Eh),(NVM_Task@u16_TempWriteData+1)
	line	106
;nvm.c: 106: u8_TempWriteFlag= 7;
	movlw	low(07h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Task@u8_TempWriteFlag))&0ffh
	line	107
;nvm.c: 107: }
	goto	l5514
	line	109
	
l783:; BSR set to: 0

	goto	l5514
	line	112
;nvm.c: 109: else
;nvm.c: 110: {
;nvm.c: 111: ;
	
l784:; BSR set to: 0

	goto	l5514
	
l782:; BSR set to: 0

	goto	l5514
	
l780:; BSR set to: 0

	goto	l5514
	
l778:; BSR set to: 0

	goto	l5514
	
l776:; BSR set to: 0

	goto	l5514
	
l774:; BSR set to: 0

	goto	l5514
	
l772:; BSR set to: 0

	goto	l5514
	
l770:; BSR set to: 0

	line	113
	
l5514:; BSR set to: 0

;nvm.c: 112: }
;nvm.c: 113: bFlag_StateWriteLowByte= 1;
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Task@bFlag_StateWriteLowByte))&0ffh
	line	114
	
l5516:; BSR set to: 0

;nvm.c: 114: EEADR= u16_TempAddress;
	movff	(NVM_Task@u16_TempAddress),(4009)	;volatile
	line	115
;nvm.c: 115: EEDATA= (u16_TempWriteData >> 8) & 0x00ff;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((NVM_Task@u16_TempWriteData+1))&0ffh,w
	movwf	((4008)),c	;volatile
	line	116
;nvm.c: 116: }
	goto	l5526
	line	117
	
l768:; BSR set to: 0

	line	119
	
l5518:; BSR set to: 0

;nvm.c: 117: else
;nvm.c: 118: {
;nvm.c: 119: bFlag_StateWriteLowByte= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Task@bFlag_StateWriteLowByte))&0ffh
	line	120
	
l5520:; BSR set to: 0

;nvm.c: 120: u8_NVM_WriteRegister&= ~(1<<u8_TempWriteFlag);
	movff	(NVM_Task@u8_TempWriteFlag),??_NVM_Task+0+0
	movlw	(01h)&0ffh
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(??_NVM_Task+1+0)&0ffh
	incf	(??_NVM_Task+0+0)&0ffh
	goto	u5744
u5745:
	bcf	status,0
	rlcf	((??_NVM_Task+1+0))&0ffh
u5744:
	decfsz	(??_NVM_Task+0+0)&0ffh
	goto	u5745
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((??_NVM_Task+1+0))&0ffh,w
	xorlw	0ffh
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	andwf	((_u8_NVM_WriteRegister))&0ffh
	line	121
	
l5522:; BSR set to: 0

;nvm.c: 121: EEADR= u16_TempAddress + 0x0001;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	incf	((NVM_Task@u16_TempAddress))&0ffh,w
	movwf	((4009)),c	;volatile
	line	122
	
l5524:; BSR set to: 0

;nvm.c: 122: EEDATA= u16_TempWriteData & 0x00ff;
	movff	(NVM_Task@u16_TempWriteData),(4008)	;volatile
	line	123
;nvm.c: 123: u16_TempWriteData= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Task@u16_TempWriteData+1))&0ffh
	movlw	low(0)
	movwf	((NVM_Task@u16_TempWriteData))&0ffh
	goto	l5526
	line	124
	
l785:; BSR set to: 0

	line	126
	
l5526:; BSR set to: 0

;nvm.c: 124: }
;nvm.c: 126: EECON1bits.EEPGD= 0;
	bcf	((4006)),c,7	;volsfr
	line	127
	
l5528:; BSR set to: 0

;nvm.c: 127: EECON1bits.CFGS= 0;
	bcf	((4006)),c,6	;volsfr
	line	128
;nvm.c: 128: EECON2= 0x55;
	movlw	low(055h)
	movwf	((4007)),c	;volsfr
	line	129
;nvm.c: 129: EECON2= 0x0AA;
	movlw	low(0AAh)
	movwf	((4007)),c	;volsfr
	line	130
	
l5530:; BSR set to: 0

;nvm.c: 130: EECON1bits.WR= 1;
	bsf	((4006)),c,1	;volsfr
	line	132
	
l5532:; BSR set to: 0

;nvm.c: 132: SYSTEM_EnableInterrupts();
	call	_SYSTEM_EnableInterrupts	;wreg free
	goto	l766
	line	133
	
l767:
	goto	l766
	line	134
	
l764:
	line	135
	
l766:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_NVM_Task
	__end_of_NVM_Task:
	signat	_NVM_Task,89
	global	_SYSTEM_EnableInterrupts

;; *************** function _SYSTEM_EnableInterrupts *****************
;; Defined at:
;;		line 27 in file "hal/system.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_NVM_Task
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2,group=0,minocg
	file	"hal/system.c"
	line	27
global __ptext31
__ptext31:
psect	text31
	file	"hal/system.c"
	line	27
	global	__size_of_SYSTEM_EnableInterrupts
	__size_of_SYSTEM_EnableInterrupts	equ	__end_of_SYSTEM_EnableInterrupts-_SYSTEM_EnableInterrupts
	
_SYSTEM_EnableInterrupts:
;incstack = 0
	opt	stack 28
	line	29
	
l4630:
;system.c: 29: INTCONbits.GIE= 1;
	bsf	((4082)),c,7	;volatile
	line	30
;system.c: 30: INTCONbits.PEIE= 1;
	bsf	((4082)),c,6	;volatile
	line	31
	
l180:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_SYSTEM_EnableInterrupts
	__end_of_SYSTEM_EnableInterrupts:
	signat	_SYSTEM_EnableInterrupts,89
	global	_SYSTEM_DisableInterrupts

;; *************** function _SYSTEM_DisableInterrupts *****************
;; Defined at:
;;		line 33 in file "hal/system.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_NVM_Task
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2,group=0,minocg
	line	33
global __ptext32
__ptext32:
psect	text32
	file	"hal/system.c"
	line	33
	global	__size_of_SYSTEM_DisableInterrupts
	__size_of_SYSTEM_DisableInterrupts	equ	__end_of_SYSTEM_DisableInterrupts-_SYSTEM_DisableInterrupts
	
_SYSTEM_DisableInterrupts:
;incstack = 0
	opt	stack 27
	line	35
	
l4650:
;system.c: 35: INTCONbits.GIE= 0;
	bcf	((4082)),c,7	;volatile
	line	36
;system.c: 36: INTCONbits.PEIE= 0;
	bcf	((4082)),c,6	;volatile
	line	37
	
l183:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_SYSTEM_DisableInterrupts
	__end_of_SYSTEM_DisableInterrupts:
	signat	_SYSTEM_DisableInterrupts,89
	global	_NVM_Init

;; *************** function _NVM_Init *****************
;; Defined at:
;;		line 20 in file "hal/nvm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  u16_TempData    2   18[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2,group=0,minocg
	file	"hal/nvm.c"
	line	20
global __ptext33
__ptext33:
psect	text33
	file	"hal/nvm.c"
	line	20
	global	__size_of_NVM_Init
	__size_of_NVM_Init	equ	__end_of_NVM_Init-_NVM_Init
	
_NVM_Init:
;incstack = 0
	opt	stack 28
	line	22
	
l5032:
;nvm.c: 22: uint16_t u16_TempData= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Init@u16_TempData+1))&0ffh
	movlw	low(0)
	movwf	((NVM_Init@u16_TempData))&0ffh
	line	24
	
l5034:; BSR set to: 0

;nvm.c: 24: for(;u16_TempData < 5; ++u16_TempData)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		movf	((NVM_Init@u16_TempData+1))&0ffh,w
	bnz	u4920
	movlw	5
	subwf	 ((NVM_Init@u16_TempData))&0ffh,w
	btfss	status,0
	goto	u4921
	goto	u4920

u4921:
	goto	l5038
u4920:
	goto	l5044
	
l5036:; BSR set to: 0

	goto	l5044
	line	25
	
l751:; BSR set to: 0

	line	26
	
l5038:; BSR set to: 0

;nvm.c: 25: {
;nvm.c: 26: u16_NVM_WriteBuffer[u16_TempData]= 0;
	bcf	status,0
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	rlcf	((NVM_Init@u16_TempData))&0ffh,w
	movwf	fsr2l
	rlcf	((NVM_Init@u16_TempData+1))&0ffh,w
	movwf	fsr2h
	movlw	low(_u16_NVM_WriteBuffer)
	addwf	fsr2l
	movlw	high(_u16_NVM_WriteBuffer)
	addwfc	fsr2h
	movlw	low(0)
	movwf	postinc2,c
	movlw	high(0)
	movwf	postdec2,c
	line	24
	
l5040:; BSR set to: 0

opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	infsnz	((NVM_Init@u16_TempData))&0ffh
	incf	((NVM_Init@u16_TempData+1))&0ffh
	
l5042:; BSR set to: 0

opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		movf	((NVM_Init@u16_TempData+1))&0ffh,w
	bnz	u4930
	movlw	5
	subwf	 ((NVM_Init@u16_TempData))&0ffh,w
	btfss	status,0
	goto	u4931
	goto	u4930

u4931:
	goto	l5038
u4930:
	goto	l5044
	
l752:; BSR set to: 0

	line	28
	
l5044:; BSR set to: 0

;nvm.c: 27: }
;nvm.c: 28: u16_TempData= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((NVM_Init@u16_TempData+1))&0ffh
	movlw	low(0)
	movwf	((NVM_Init@u16_TempData))&0ffh
	line	30
;nvm.c: 30: EECON1= 0;
	movlw	low(0)
	movwf	((4006)),c	;volsfr
	line	31
	
l753:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_NVM_Init
	__end_of_NVM_Init:
	signat	_NVM_Init,89
	global	_LCD_Task

;; *************** function _LCD_Task *****************
;; Defined at:
;;		line 496 in file "mid/lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_I2C_SendData
;;		_I2C_Start
;;		_I2C_Stop
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2,group=0,minocg
	file	"mid/lcd.c"
	line	496
global __ptext34
__ptext34:
psect	text34
	file	"mid/lcd.c"
	line	496
	global	__size_of_LCD_Task
	__size_of_LCD_Task	equ	__end_of_LCD_Task-_LCD_Task
	
_LCD_Task:; BSR set to: 0

;incstack = 0
	opt	stack 26
	line	502
	
l5430:
;lcd.c: 498: static uint8_t u8_LCD_DataCounter= 0;
;lcd.c: 499: static uint8_t u8_Status= 0;
;lcd.c: 500: static bool bFlag_SecondaryData= 0;
;lcd.c: 502: switch(u8_LCD_State)
	goto	l5462
	line	504
;lcd.c: 503: {
;lcd.c: 504: case 1: u8_Status= I2C_Start(0b01110000);
	
l497:
	
l5432:
	movlw	(070h)&0ffh
	
	call	_I2C_Start
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_Task@u8_Status))&0ffh
	line	505
	
l5434:; BSR set to: 0

;lcd.c: 505: if(u8_Status == 10)
		movlw	10
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	xorwf	((LCD_Task@u8_Status))&0ffh,w
	btfss	status,2
	goto	u5571
	goto	u5570

u5571:
	goto	l5438
u5570:
	line	507
	
l5436:; BSR set to: 0

;lcd.c: 506: {
;lcd.c: 507: u8_LCD_State= 1;
	movlw	high(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((_u8_LCD_State+1))&0ffh
	movlw	low(01h)
	movwf	((_u8_LCD_State))&0ffh
	line	508
;lcd.c: 508: }
	goto	l508
	line	509
	
l498:; BSR set to: 0

	line	511
	
l5438:; BSR set to: 0

;lcd.c: 509: else
;lcd.c: 510: {
;lcd.c: 511: u8_LCD_State= 3;
	movlw	high(03h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((_u8_LCD_State+1))&0ffh
	movlw	low(03h)
	movwf	((_u8_LCD_State))&0ffh
	goto	l508
	line	512
	
l499:; BSR set to: 0

	line	513
;lcd.c: 512: }
;lcd.c: 513: break;
	goto	l508
	line	515
;lcd.c: 515: case 3:
	
l501:; BSR set to: 0

	line	516
	
l5440:; BSR set to: 0

;lcd.c: 516: if(bFlag_SecondaryData == 0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((LCD_Task@bFlag_SecondaryData))&0ffh,w
	btfss	status,2
	goto	u5581
	goto	u5580
u5581:
	goto	l5444
u5580:
	line	518
	
l5442:; BSR set to: 0

;lcd.c: 517: {
;lcd.c: 518: u8_Status= I2C_SendData(u8_LCD_Data[u8_LCD_DataCounter]);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((LCD_Task@u8_LCD_DataCounter))&0ffh,w
	mullw	01h
	movlw	low(_u8_LCD_Data)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_u8_LCD_Data)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	
	call	_I2C_SendData
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_Task@u8_Status))&0ffh
	line	519
;lcd.c: 519: }
	goto	l5446
	line	520
	
l502:; BSR set to: 0

	line	522
	
l5444:; BSR set to: 0

;lcd.c: 520: else
;lcd.c: 521: {
;lcd.c: 522: u8_Status= I2C_SendData(u8_LCD_Data_Ext[u8_LCD_DataCounter]);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((LCD_Task@u8_LCD_DataCounter))&0ffh,w
	mullw	01h
	movlw	low(_u8_LCD_Data_Ext)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlw	high(_u8_LCD_Data_Ext)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	
	call	_I2C_SendData
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_Task@u8_Status))&0ffh
	goto	l5446
	line	523
	
l503:; BSR set to: 0

	line	524
	
l5446:; BSR set to: 0

;lcd.c: 523: }
;lcd.c: 524: if(u8_Status == 2)
		movlw	2
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	xorwf	((LCD_Task@u8_Status))&0ffh,w
	btfss	status,2
	goto	u5591
	goto	u5590

u5591:
	goto	l508
u5590:
	line	526
	
l5448:; BSR set to: 0

;lcd.c: 525: {
;lcd.c: 526: ++u8_LCD_DataCounter;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	incf	((LCD_Task@u8_LCD_DataCounter))&0ffh
	line	527
	
l5450:; BSR set to: 0

;lcd.c: 527: if(u8_LCD_DataCounter >= 14)
		movlw	0Eh-1
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	cpfsgt	((LCD_Task@u8_LCD_DataCounter))&0ffh
	goto	u5601
	goto	u5600

u5601:
	goto	l508
u5600:
	line	529
	
l5452:; BSR set to: 0

;lcd.c: 528: {
;lcd.c: 529: u8_LCD_DataCounter= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_Task@u8_LCD_DataCounter))&0ffh
	line	530
;lcd.c: 530: u8_LCD_State= 4;
	movlw	high(04h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((_u8_LCD_State+1))&0ffh
	movlw	low(04h)
	movwf	((_u8_LCD_State))&0ffh
	goto	l508
	line	531
	
l505:; BSR set to: 0

	goto	l508
	line	532
	
l504:; BSR set to: 0

	line	533
;lcd.c: 531: }
;lcd.c: 532: }
;lcd.c: 533: break;
	goto	l508
	line	535
;lcd.c: 535: case 4: if(u8_Status == 2)
	
l506:; BSR set to: 0

	
l5454:; BSR set to: 0

		movlw	2
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	xorwf	((LCD_Task@u8_Status))&0ffh,w
	btfss	status,2
	goto	u5611
	goto	u5610

u5611:
	goto	l508
u5610:
	line	537
	
l5456:; BSR set to: 0

;lcd.c: 536: {
;lcd.c: 537: I2C_Stop();
	call	_I2C_Stop	;wreg free
	line	538
	
l5458:
;lcd.c: 538: u8_LCD_State= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((_u8_LCD_State+1))&0ffh
	movlw	low(0)
	movwf	((_u8_LCD_State))&0ffh
	goto	l508
	line	539
	
l507:; BSR set to: 0

	line	540
;lcd.c: 539: }
;lcd.c: 540: break;
	goto	l508
	line	541
	
l5460:; BSR set to: 0

;lcd.c: 541: }
	goto	l508
	line	502
	
l496:; BSR set to: 0

	
l5462:
	movff	(_u8_LCD_State),??_LCD_Task+0+0
	movff	(_u8_LCD_State+1),??_LCD_Task+0+0+1
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf ??_LCD_Task+0+1&0ffh,w
	xorlw	0^0	; case 0
	skipnz
	goto	l5730
	goto	l508
	
l5730:; BSR set to: 0

; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	movf ??_LCD_Task+0+0&0ffh,w
	xorlw	1^0	; case 1
	skipnz
	goto	l5432
	xorlw	3^1	; case 3
	skipnz
	goto	l5440
	xorlw	4^3	; case 4
	skipnz
	goto	l5454
	goto	l508

	line	541
	
l500:; BSR set to: 0

	line	542
	
l508:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_LCD_Task
	__end_of_LCD_Task:
	signat	_LCD_Task,89
	global	_LCD_Init

;; *************** function _LCD_Init *****************
;; Defined at:
;;		line 28 in file "mid/lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  u8_Temp         1   28[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_I2C_SendData
;;		_I2C_Start
;;		_I2C_Stop
;;		_LCD_SetData
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2,group=0,minocg
	line	28
global __ptext35
__ptext35:
psect	text35
	file	"mid/lcd.c"
	line	28
	global	__size_of_LCD_Init
	__size_of_LCD_Init	equ	__end_of_LCD_Init-_LCD_Init
	
_LCD_Init:; BSR set to: 0

;incstack = 0
	opt	stack 26
	line	32
	
l4960:
;lcd.c: 30: uint8_t u8_Temp;
;lcd.c: 32: while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
	goto	l315
	
l316:
	
l315:
	
	btfsc	((4039)),c,(2)&7	;volatile
	goto	u4661
	goto	u4660
u4661:
	goto	l315
u4660:
	
l4962:
	movff	(4037),??_LCD_Init+0+0	;volatile
	movlw	01Fh
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	andwf	(??_LCD_Init+0+0)&0ffh
	btfss	status,2
	goto	u4671
	goto	u4670
u4671:
	goto	l315
u4670:
	goto	l4964
	
l317:; BSR set to: 0

	line	33
	
l4964:; BSR set to: 0

;lcd.c: 33: I2C_Start(0b01110000);
	movlw	(070h)&0ffh
	
	call	_I2C_Start
	line	35
;lcd.c: 35: while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
	goto	l318
	
l319:
	
l318:
	
	btfsc	((4039)),c,(2)&7	;volatile
	goto	u4681
	goto	u4680
u4681:
	goto	l318
u4680:
	
l4966:
	movff	(4037),??_LCD_Init+0+0	;volatile
	movlw	01Fh
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	andwf	(??_LCD_Init+0+0)&0ffh
	btfss	status,2
	goto	u4691
	goto	u4690
u4691:
	goto	l318
u4690:
	goto	l4968
	
l320:; BSR set to: 0

	line	36
	
l4968:; BSR set to: 0

;lcd.c: 36: I2C_SendData(u8_LCD_ModeSet | 128);
	movlw	low((_u8_LCD_ModeSet))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_u8_LCD_ModeSet))
	movwf	tblptrh
	endif
	if	1	;There are 3 active tblptr bytes
	movlw	low highword((_u8_LCD_ModeSet))
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	iorlw	low(080h)
	
	call	_I2C_SendData
	line	38
;lcd.c: 38: while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
	goto	l321
	
l322:
	
l321:
	
	btfsc	((4039)),c,(2)&7	;volatile
	goto	u4701
	goto	u4700
u4701:
	goto	l321
u4700:
	
l4970:
	movff	(4037),??_LCD_Init+0+0	;volatile
	movlw	01Fh
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	andwf	(??_LCD_Init+0+0)&0ffh
	btfss	status,2
	goto	u4711
	goto	u4710
u4711:
	goto	l321
u4710:
	goto	l4972
	
l323:; BSR set to: 0

	line	39
	
l4972:; BSR set to: 0

;lcd.c: 39: I2C_SendData(u8_LCD_DeviceSelect | 128);
	movlw	low((_u8_LCD_DeviceSelect))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_u8_LCD_DeviceSelect))
	movwf	tblptrh
	endif
	if	1	;There are 3 active tblptr bytes
	movlw	low highword((_u8_LCD_DeviceSelect))
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	iorlw	low(080h)
	
	call	_I2C_SendData
	line	41
;lcd.c: 41: while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
	goto	l324
	
l325:
	
l324:
	
	btfsc	((4039)),c,(2)&7	;volatile
	goto	u4721
	goto	u4720
u4721:
	goto	l324
u4720:
	
l4974:
	movff	(4037),??_LCD_Init+0+0	;volatile
	movlw	01Fh
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	andwf	(??_LCD_Init+0+0)&0ffh
	btfss	status,2
	goto	u4731
	goto	u4730
u4731:
	goto	l324
u4730:
	goto	l4976
	
l326:; BSR set to: 0

	line	42
	
l4976:; BSR set to: 0

;lcd.c: 42: I2C_SendData(u8_LCD_Blink | 128);
	movlw	low((_u8_LCD_Blink))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_u8_LCD_Blink))
	movwf	tblptrh
	endif
	if	1	;There are 3 active tblptr bytes
	movlw	low highword((_u8_LCD_Blink))
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	iorlw	low(080h)
	
	call	_I2C_SendData
	line	44
;lcd.c: 44: while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
	goto	l327
	
l328:
	
l327:
	
	btfsc	((4039)),c,(2)&7	;volatile
	goto	u4741
	goto	u4740
u4741:
	goto	l327
u4740:
	
l4978:
	movff	(4037),??_LCD_Init+0+0	;volatile
	movlw	01Fh
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	andwf	(??_LCD_Init+0+0)&0ffh
	btfss	status,2
	goto	u4751
	goto	u4750
u4751:
	goto	l327
u4750:
	goto	l4980
	
l329:; BSR set to: 0

	line	45
	
l4980:; BSR set to: 0

;lcd.c: 45: I2C_SendData(u8_LCD_Datapointer | 0);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((_u8_LCD_Datapointer))&0ffh,w
	
	call	_I2C_SendData
	line	47
	
l4982:
;lcd.c: 47: for(u8_Temp= 0; u8_Temp < 14; ++u8_Temp)
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_Init@u8_Temp))&0ffh
	
l4984:; BSR set to: 0

		movlw	0Eh-1
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	cpfsgt	((LCD_Init@u8_Temp))&0ffh
	goto	u4761
	goto	u4760

u4761:
	goto	l4988
u4760:
	goto	l4998
	
l4986:; BSR set to: 0

	goto	l4998
	line	48
	
l330:; BSR set to: 0

	line	49
	
l4988:; BSR set to: 0

;lcd.c: 48: {
;lcd.c: 49: LCD_SetData(0 ,u8_Temp);
	movff	(LCD_Init@u8_Temp),(LCD_SetData@u8_Position)
	movlw	(0)&0ffh
	
	call	_LCD_SetData
	line	50
;lcd.c: 50: while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
	goto	l332
	
l333:
	
l332:
	
	btfsc	((4039)),c,(2)&7	;volatile
	goto	u4771
	goto	u4770
u4771:
	goto	l332
u4770:
	
l4990:
	movff	(4037),??_LCD_Init+0+0	;volatile
	movlw	01Fh
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	andwf	(??_LCD_Init+0+0)&0ffh
	btfss	status,2
	goto	u4781
	goto	u4780
u4781:
	goto	l332
u4780:
	goto	l4992
	
l334:; BSR set to: 0

	line	51
	
l4992:; BSR set to: 0

;lcd.c: 51: I2C_SendData(0);
	movlw	(0)&0ffh
	
	call	_I2C_SendData
	line	47
	
l4994:
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	incf	((LCD_Init@u8_Temp))&0ffh
	
l4996:; BSR set to: 0

		movlw	0Eh-1
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	cpfsgt	((LCD_Init@u8_Temp))&0ffh
	goto	u4791
	goto	u4790

u4791:
	goto	l4988
u4790:
	goto	l4998
	
l331:; BSR set to: 0

	line	54
	
l4998:; BSR set to: 0

;lcd.c: 52: }
;lcd.c: 54: u8_LCD_Datapointer= 2;
	movlw	low(02h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((_u8_LCD_Datapointer))&0ffh
	line	56
;lcd.c: 56: while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
	goto	l335
	
l336:; BSR set to: 0

	
l335:
	
	btfsc	((4039)),c,(2)&7	;volatile
	goto	u4801
	goto	u4800
u4801:
	goto	l335
u4800:
	
l5000:
	movff	(4037),??_LCD_Init+0+0	;volatile
	movlw	01Fh
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	andwf	(??_LCD_Init+0+0)&0ffh
	btfss	status,2
	goto	u4811
	goto	u4810
u4811:
	goto	l335
u4810:
	goto	l5002
	
l337:; BSR set to: 0

	line	57
	
l5002:; BSR set to: 0

;lcd.c: 57: I2C_Start(0b01110000);
	movlw	(070h)&0ffh
	
	call	_I2C_Start
	line	59
;lcd.c: 59: while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
	goto	l338
	
l339:
	
l338:
	
	btfsc	((4039)),c,(2)&7	;volatile
	goto	u4821
	goto	u4820
u4821:
	goto	l338
u4820:
	
l5004:
	movff	(4037),??_LCD_Init+0+0	;volatile
	movlw	01Fh
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	andwf	(??_LCD_Init+0+0)&0ffh
	btfss	status,2
	goto	u4831
	goto	u4830
u4831:
	goto	l338
u4830:
	goto	l5006
	
l340:; BSR set to: 0

	line	60
	
l5006:; BSR set to: 0

;lcd.c: 60: I2C_SendData(u8_LCD_DeviceSelect | 128);
	movlw	low((_u8_LCD_DeviceSelect))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_u8_LCD_DeviceSelect))
	movwf	tblptrh
	endif
	if	1	;There are 3 active tblptr bytes
	movlw	low highword((_u8_LCD_DeviceSelect))
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	iorlw	low(080h)
	
	call	_I2C_SendData
	line	62
;lcd.c: 62: while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
	goto	l341
	
l342:
	
l341:
	
	btfsc	((4039)),c,(2)&7	;volatile
	goto	u4841
	goto	u4840
u4841:
	goto	l341
u4840:
	
l5008:
	movff	(4037),??_LCD_Init+0+0	;volatile
	movlw	01Fh
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	andwf	(??_LCD_Init+0+0)&0ffh
	btfss	status,2
	goto	u4851
	goto	u4850
u4851:
	goto	l341
u4850:
	goto	l5010
	
l343:; BSR set to: 0

	line	63
	
l5010:; BSR set to: 0

;lcd.c: 63: I2C_SendData(u8_LCD_Datapointer | 0);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((_u8_LCD_Datapointer))&0ffh,w
	
	call	_I2C_SendData
	line	65
	
l5012:
;lcd.c: 65: for(u8_Temp= 0; u8_Temp < 14; ++u8_Temp)
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_Init@u8_Temp))&0ffh
	
l5014:; BSR set to: 0

		movlw	0Eh-1
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	cpfsgt	((LCD_Init@u8_Temp))&0ffh
	goto	u4861
	goto	u4860

u4861:
	goto	l5018
u4860:
	goto	l349
	
l5016:; BSR set to: 0

	goto	l349
	line	66
	
l344:; BSR set to: 0

	line	67
	
l5018:; BSR set to: 0

;lcd.c: 66: {
;lcd.c: 67: LCD_SetData(0 ,u8_Temp);
	movff	(LCD_Init@u8_Temp),(LCD_SetData@u8_Position)
	movlw	(0)&0ffh
	
	call	_LCD_SetData
	line	68
;lcd.c: 68: while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
	goto	l346
	
l347:
	
l346:
	
	btfsc	((4039)),c,(2)&7	;volatile
	goto	u4871
	goto	u4870
u4871:
	goto	l346
u4870:
	
l5020:
	movff	(4037),??_LCD_Init+0+0	;volatile
	movlw	01Fh
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	andwf	(??_LCD_Init+0+0)&0ffh
	btfss	status,2
	goto	u4881
	goto	u4880
u4881:
	goto	l346
u4880:
	goto	l5022
	
l348:; BSR set to: 0

	line	69
	
l5022:; BSR set to: 0

;lcd.c: 69: I2C_SendData(0);
	movlw	(0)&0ffh
	
	call	_I2C_SendData
	line	65
	
l5024:
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	incf	((LCD_Init@u8_Temp))&0ffh
	
l5026:; BSR set to: 0

		movlw	0Eh-1
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	cpfsgt	((LCD_Init@u8_Temp))&0ffh
	goto	u4891
	goto	u4890

u4891:
	goto	l5018
u4890:
	goto	l349
	
l345:; BSR set to: 0

	line	72
;lcd.c: 70: }
;lcd.c: 72: while ((SSPSTAT & 0x04) || (SSPCON2 & 0x1F));
	goto	l349
	
l350:; BSR set to: 0

	
l349:
	
	btfsc	((4039)),c,(2)&7	;volatile
	goto	u4901
	goto	u4900
u4901:
	goto	l349
u4900:
	
l5028:
	movff	(4037),??_LCD_Init+0+0	;volatile
	movlw	01Fh
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	andwf	(??_LCD_Init+0+0)&0ffh
	btfss	status,2
	goto	u4911
	goto	u4910
u4911:
	goto	l349
u4910:
	goto	l5030
	
l351:; BSR set to: 0

	line	73
	
l5030:; BSR set to: 0

;lcd.c: 73: I2C_Stop();
	call	_I2C_Stop	;wreg free
	line	74
	
l352:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_LCD_Init
	__end_of_LCD_Init:
	signat	_LCD_Init,89
	global	_LCD_SetData

;; *************** function _LCD_SetData *****************
;; Defined at:
;;		line 431 in file "mid/lcd.c"
;; Parameters:    Size  Location     Type
;;  u8_Data         1    wreg     unsigned char 
;;  u8_Position     1   18[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  u8_Data         1   21[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_Init
;;		_LCD_SetMainDigits
;;		_LCD_SetPresetDigits
;;		_LCD_SetIcons
;;		_LCD_Clear
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2,group=0,minocg
	line	431
global __ptext36
__ptext36:
psect	text36
	file	"mid/lcd.c"
	line	431
	global	__size_of_LCD_SetData
	__size_of_LCD_SetData	equ	__end_of_LCD_SetData-_LCD_SetData
	
_LCD_SetData:
;incstack = 0
	opt	stack 26
;LCD_SetData@u8_Data stored from wreg
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((LCD_SetData@u8_Data))&0ffh
	line	433
	
l4362:
;lcd.c: 433: if(u8_Position < 14)
		movlw	0Eh-0
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	cpfslt	((LCD_SetData@u8_Position))&0ffh
	goto	u4071
	goto	u4070

u4071:
	goto	l4376
u4070:
	line	436
	
l4364:; BSR set to: 0

;lcd.c: 434: {
;lcd.c: 436: u8_LCD_Data[0]= 128 | u8_LCD_DeviceSelect;
	movlw	low((_u8_LCD_DeviceSelect))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_u8_LCD_DeviceSelect))
	movwf	tblptrh
	endif
	if	1	;There are 3 active tblptr bytes
	movlw	low highword((_u8_LCD_DeviceSelect))
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	iorlw	low(080h)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	((_u8_LCD_Data))&0ffh
	line	437
	
l4366:; BSR set to: 1

;lcd.c: 437: u8_LCD_Data[1]= 0 | 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	(0+(_u8_LCD_Data+01h))&0ffh
	line	442
	
l4368:; BSR set to: 1

;lcd.c: 442: u8_LCD_Data[u8_Position+2]= u8_Data;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((LCD_SetData@u8_Position))&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(??_LCD_SetData+0+0)&0ffh
	clrf	(??_LCD_SetData+0+0+1)&0ffh

	movlw	02h
	addwf	(??_LCD_SetData+0+0)&0ffh
	movlw	0
	addwfc	(??_LCD_SetData+0+1)&0ffh
	movlw	low(_u8_LCD_Data)
	addwf	(??_LCD_SetData+0+0)&0ffh,w
	movwf	c:fsr2l
	movlw	high(_u8_LCD_Data)
	addwfc	(??_LCD_SetData+0+1)&0ffh,w
	movwf	1+c:fsr2l
	movff	(LCD_SetData@u8_Data),indf2

	line	452
	
l4370:; BSR set to: 0

;lcd.c: 452: return 1;
	movlw	(01h)&0ffh
	goto	l472
	
l4372:; BSR set to: 0

	goto	l472
	line	453
	
l4374:; BSR set to: 0

;lcd.c: 453: }
	goto	l472
	line	454
	
l471:; BSR set to: 0

	line	456
	
l4376:; BSR set to: 0

;lcd.c: 454: else
;lcd.c: 455: {
;lcd.c: 456: return 0;
	movlw	(0)&0ffh
	goto	l472
	
l4378:; BSR set to: 0

	goto	l472
	line	457
	
l473:; BSR set to: 0

	line	458
	
l472:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_LCD_SetData
	__end_of_LCD_SetData:
	signat	_LCD_SetData,8313
	global	_I2C_Stop

;; *************** function _I2C_Stop *****************
;; Defined at:
;;		line 73 in file "hal/i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_Init
;;		_LCD_Task
;;		_LCD_Test
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2,group=0,minocg
	file	"hal/i2c.c"
	line	73
global __ptext37
__ptext37:
psect	text37
	file	"hal/i2c.c"
	line	73
	global	__size_of_I2C_Stop
	__size_of_I2C_Stop	equ	__end_of_I2C_Stop-_I2C_Stop
	
_I2C_Stop:; BSR set to: 0

;incstack = 0
	opt	stack 27
	line	75
	
l4706:
;i2c.c: 75: PEN= 1;
	bsf	c:(32298/8),(32298)&7	;volatile
	line	76
	
l276:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_I2C_Stop
	__end_of_I2C_Stop:
	signat	_I2C_Stop,89
	global	_I2C_Start

;; *************** function _I2C_Start *****************
;; Defined at:
;;		line 34 in file "hal/i2c.c"
;; Parameters:    Size  Location     Type
;;  u8_Address      1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  u8_Address      1   24[BANK0 ] unsigned char 
;;  u16_Timeout     2   25[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_TIMER_GetSysTick
;; This function is called by:
;;		_LCD_Init
;;		_LCD_Task
;;		_LCD_Test
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2,group=0,minocg
	line	34
global __ptext38
__ptext38:
psect	text38
	file	"hal/i2c.c"
	line	34
	global	__size_of_I2C_Start
	__size_of_I2C_Start	equ	__end_of_I2C_Start-_I2C_Start
	
_I2C_Start:
;incstack = 0
	opt	stack 26
;I2C_Start@u8_Address stored from wreg
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((I2C_Start@u8_Address))&0ffh
	line	36
	
l4662:
;i2c.c: 36: uint16_t u16_Timeout= TIMER_GetSysTick();
	call	_TIMER_GetSysTick	;wreg free
	movff	0+?_TIMER_GetSysTick,(I2C_Start@u16_Timeout)
	movff	1+?_TIMER_GetSysTick,(I2C_Start@u16_Timeout+1)
	line	37
	
l4664:
;i2c.c: 37: if(!((SSPSTAT & 0x04) || (SSPCON2 & 0x1F)))
	
	btfsc	((4039)),c,(2)&7	;volatile
	goto	u4311
	goto	u4310
u4311:
	goto	l4686
u4310:
	
l4666:
	movff	(4037),??_I2C_Start+0+0	;volatile
	movlw	01Fh
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	andwf	(??_I2C_Start+0+0)&0ffh
	btfss	status,2
	goto	u4321
	goto	u4320
u4321:
	goto	l4686
u4320:
	line	39
	
l4668:; BSR set to: 0

;i2c.c: 38: {
;i2c.c: 39: SEN= 1;
	bsf	c:(32296/8),(32296)&7	;volatile
	line	40
;i2c.c: 40: while((SSPSTAT & 0x04) || (SSPCON2 & 0x1F))
	goto	l263
	
l264:; BSR set to: 0

	line	42
	
l4670:; BSR set to: 0

;i2c.c: 41: {
;i2c.c: 42: u16_Timeout= TIMER_GetSysTick() - u16_Timeout;
	movff	(I2C_Start@u16_Timeout),??_I2C_Start+0+0
	movff	(I2C_Start@u16_Timeout+1),??_I2C_Start+0+0+1
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	comf	(??_I2C_Start+0+0)&0ffh
	comf	(??_I2C_Start+0+1)&0ffh
	infsnz	(??_I2C_Start+0+0)&0ffh
	incf	(??_I2C_Start+0+1)&0ffh
	call	_TIMER_GetSysTick	;wreg free
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	(??_I2C_Start+0+0)&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	addwf	(0+?_TIMER_GetSysTick)&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((I2C_Start@u16_Timeout))&0ffh
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	(??_I2C_Start+0+1)&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	addwfc	(1+?_TIMER_GetSysTick)&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	1+((I2C_Start@u16_Timeout))&0ffh
	line	43
	
l4672:; BSR set to: 0

;i2c.c: 43: if(u16_Timeout > 10)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		movf	((I2C_Start@u16_Timeout+1))&0ffh,w
	bnz	u4330
	movlw	11
	subwf	 ((I2C_Start@u16_Timeout))&0ffh,w
	btfss	status,0
	goto	u4331
	goto	u4330

u4331:
	goto	l263
u4330:
	line	45
	
l4674:; BSR set to: 0

;i2c.c: 44: {
;i2c.c: 45: return 4;
	movlw	(04h)&0ffh
	goto	l266
	
l4676:; BSR set to: 0

	goto	l266
	line	46
	
l265:; BSR set to: 0

	line	47
	
l263:; BSR set to: 0

	line	40
	
	btfsc	((4039)),c,(2)&7	;volatile
	goto	u4341
	goto	u4340
u4341:
	goto	l4670
u4340:
	
l4678:; BSR set to: 0

	movff	(4037),??_I2C_Start+0+0	;volatile
	movlw	01Fh
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	andwf	(??_I2C_Start+0+0)&0ffh
	btfss	status,2
	goto	u4351
	goto	u4350
u4351:
	goto	l4670
u4350:
	
l267:; BSR set to: 0

	line	48
;i2c.c: 46: }
;i2c.c: 47: }
;i2c.c: 48: SSPBUF= u8_Address;
	movff	(I2C_Start@u8_Address),(4041)	;volatile
	line	49
	
l4680:; BSR set to: 0

;i2c.c: 49: return 2;
	movlw	(02h)&0ffh
	goto	l266
	
l4682:; BSR set to: 0

	goto	l266
	line	50
	
l4684:; BSR set to: 0

;i2c.c: 50: }
	goto	l266
	line	51
	
l262:; BSR set to: 0

	line	53
	
l4686:
;i2c.c: 51: else
;i2c.c: 52: {
;i2c.c: 53: return 3;
	movlw	(03h)&0ffh
	goto	l266
	
l4688:
	goto	l266
	line	54
	
l268:
	line	55
	
l266:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_I2C_Start
	__end_of_I2C_Start:
	signat	_I2C_Start,4217
	global	_TIMER_GetSysTick

;; *************** function _TIMER_GetSysTick *****************
;; Defined at:
;;		line 37 in file "hal/timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   18[BANK0 ] unsigned long 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_Start
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2,group=0,minocg
	file	"hal/timer.c"
	line	37
global __ptext39
__ptext39:
psect	text39
	file	"hal/timer.c"
	line	37
	global	__size_of_TIMER_GetSysTick
	__size_of_TIMER_GetSysTick	equ	__end_of_TIMER_GetSysTick-_TIMER_GetSysTick
	
_TIMER_GetSysTick:
;incstack = 0
	opt	stack 26
	line	39
	
l4360:
;timer.c: 39: return u32_SysTickCounter;
	movff	(_u32_SysTickCounter),(?_TIMER_GetSysTick)
	movff	(_u32_SysTickCounter+1),(?_TIMER_GetSysTick+1)
	movff	(_u32_SysTickCounter+2),(?_TIMER_GetSysTick+2)
	movff	(_u32_SysTickCounter+3),(?_TIMER_GetSysTick+3)
	line	40
	
l712:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_TIMER_GetSysTick
	__end_of_TIMER_GetSysTick:
	signat	_TIMER_GetSysTick,92
	global	_I2C_SendData

;; *************** function _I2C_SendData *****************
;; Defined at:
;;		line 58 in file "hal/i2c.c"
;; Parameters:    Size  Location     Type
;;  u8_Data         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  u8_Data         1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_Init
;;		_LCD_Task
;;		_LCD_Test
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2,group=0,minocg
	file	"hal/i2c.c"
	line	58
global __ptext40
__ptext40:
psect	text40
	file	"hal/i2c.c"
	line	58
	global	__size_of_I2C_SendData
	__size_of_I2C_SendData	equ	__end_of_I2C_SendData-_I2C_SendData
	
_I2C_SendData:
;incstack = 0
	opt	stack 27
;I2C_SendData@u8_Data stored from wreg
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((I2C_SendData@u8_Data))&0ffh
	line	60
	
l4690:
;i2c.c: 60: if(!((SSPSTAT & 0x04) || (SSPCON2 & 0x1F)))
	
	btfsc	((4039)),c,(2)&7	;volatile
	goto	u4361
	goto	u4360
u4361:
	goto	l4702
u4360:
	
l4692:
	movff	(4037),??_I2C_SendData+0+0	;volatile
	movlw	01Fh
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	andwf	(??_I2C_SendData+0+0)&0ffh
	btfss	status,2
	goto	u4371
	goto	u4370
u4371:
	goto	l4702
u4370:
	line	62
	
l4694:; BSR set to: 0

;i2c.c: 61: {
;i2c.c: 62: SSPBUF= u8_Data;
	movff	(I2C_SendData@u8_Data),(4041)	;volatile
	line	63
	
l4696:; BSR set to: 0

;i2c.c: 63: return 2;
	movlw	(02h)&0ffh
	goto	l272
	
l4698:; BSR set to: 0

	goto	l272
	line	64
	
l4700:; BSR set to: 0

;i2c.c: 64: }
	goto	l272
	line	65
	
l271:; BSR set to: 0

	line	67
	
l4702:
;i2c.c: 65: else
;i2c.c: 66: {
;i2c.c: 67: return 3;
	movlw	(03h)&0ffh
	goto	l272
	
l4704:
	goto	l272
	line	68
	
l273:
	line	69
	
l272:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_I2C_SendData
	__end_of_I2C_SendData:
	signat	_I2C_SendData,4217
	global	_I2C_Init

;; *************** function _I2C_Init *****************
;; Defined at:
;;		line 18 in file "hal/i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2,group=0,minocg
	line	18
global __ptext41
__ptext41:
psect	text41
	file	"hal/i2c.c"
	line	18
	global	__size_of_I2C_Init
	__size_of_I2C_Init	equ	__end_of_I2C_Init-_I2C_Init
	
_I2C_Init:
;incstack = 0
	opt	stack 28
	line	20
	
l4950:
;i2c.c: 20: SSPSTAT= 0;
	movlw	low(0)
	movwf	((4039)),c	;volatile
	line	21
;i2c.c: 21: SSPCON1= 0x28;
	movlw	low(028h)
	movwf	((4038)),c	;volatile
	line	22
;i2c.c: 22: SSPCON2= 0;
	movlw	low(0)
	movwf	((4037)),c	;volatile
	line	23
;i2c.c: 23: SSPADD= 19;
	movlw	low(013h)
	movwf	((4040)),c	;volatile
	line	24
;i2c.c: 24: SSPSTAT= 0;
	movlw	low(0)
	movwf	((4039)),c	;volatile
	line	25
	
l4952:
;i2c.c: 25: TRISC3= 1;
	bsf	c:(31907/8),(31907)&7	;volatile
	line	26
	
l4954:
;i2c.c: 26: TRISC4= 1;
	bsf	c:(31908/8),(31908)&7	;volatile
	line	27
	
l4956:
;i2c.c: 27: PORTCbits.RC3= 1;
	bsf	((3970)),c,3	;volatile
	line	28
	
l4958:
;i2c.c: 28: PORTCbits.RC4= 1;
	bsf	((3970)),c,4	;volatile
	line	31
	
l259:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_I2C_Init
	__end_of_I2C_Init:
	signat	_I2C_Init,89
	global	_GPIO_Init

;; *************** function _GPIO_Init *****************
;; Defined at:
;;		line 20 in file "hal/dio.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2,group=0,minocg
	file	"hal/dio.c"
	line	20
global __ptext42
__ptext42:
psect	text42
	file	"hal/dio.c"
	line	20
	global	__size_of_GPIO_Init
	__size_of_GPIO_Init	equ	__end_of_GPIO_Init-_GPIO_Init
	
_GPIO_Init:
;incstack = 0
	opt	stack 28
	line	22
	
l4936:
;dio.c: 22: TRISA= 0x3F;
	movlw	low(03Fh)
	movwf	((3986)),c	;volatile
	line	23
;dio.c: 23: LATA= 0x40;
	movlw	low(040h)
	movwf	((3977)),c	;volatile
	line	24
;dio.c: 24: PORTA= 0;
	movlw	low(0)
	movwf	((3968)),c	;volatile
	line	26
;dio.c: 26: TRISB= 0x3F;
	movlw	low(03Fh)
	movwf	((3987)),c	;volatile
	line	27
;dio.c: 27: LATB= 0;
	movlw	low(0)
	movwf	((3978)),c	;volatile
	line	28
;dio.c: 28: PORTB= 0;
	movlw	low(0)
	movwf	((3969)),c	;volatile
	line	30
;dio.c: 30: TRISC= 0x80;
	movlw	low(080h)
	movwf	((3988)),c	;volatile
	line	31
;dio.c: 31: PORTC= 0;
	movlw	low(0)
	movwf	((3970)),c	;volatile
	line	33
;dio.c: 33: LATC= 0;
	movlw	low(0)
	movwf	((3979)),c	;volatile
	line	35
;dio.c: 35: TRISD= 0x00;
	movlw	low(0)
	movwf	((3989)),c	;volatile
	line	36
;dio.c: 36: LATD= 0;
	movlw	low(0)
	movwf	((3980)),c	;volatile
	line	37
;dio.c: 37: PORTD= 0;
	movlw	low(0)
	movwf	((3971)),c	;volatile
	line	42
;dio.c: 42: INTCON= 0;
	movlw	low(0)
	movwf	((4082)),c	;volatile
	line	43
;dio.c: 43: INTCON2= 128;
	movlw	low(080h)
	movwf	((4081)),c	;volatile
	line	45
;dio.c: 45: INTCON3= 0;
	movlw	low(0)
	movwf	((4080)),c	;volatile
	line	48
	
l4938:
;dio.c: 48: LATAbits.LA6= 1;
	bsf	((3977)),c,6	;volatile
	line	50
	
l154:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_GPIO_Init
	__end_of_GPIO_Init:
	signat	_GPIO_Init,89
	global	_BUTTONS_Task

;; *************** function _BUTTONS_Task *****************
;; Defined at:
;;		line 31 in file "mid/buttons.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  u8_ButtonsTe    1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text43,class=CODE,space=0,reloc=2,group=0,minocg
	file	"mid/buttons.c"
	line	31
global __ptext43
__ptext43:
psect	text43
	file	"mid/buttons.c"
	line	31
	global	__size_of_BUTTONS_Task
	__size_of_BUTTONS_Task	equ	__end_of_BUTTONS_Task-_BUTTONS_Task
	
_BUTTONS_Task:
;incstack = 0
	opt	stack 28
	line	38
	
l5120:
;buttons.c: 35: static uint16_t u16_ButtonsDebounceCounter[8];
;buttons.c: 36: static uint16_t u16_ButtonsHoldCounter[8];
;buttons.c: 37: static uint8_t u8_ButtonsStatusPressed= 0;
;buttons.c: 38: uint8_t u8_ButtonsTemporaryInput= 0xff;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	setf	((BUTTONS_Task@u8_ButtonsTemporaryInput))&0ffh
	line	49
	
l5122:; BSR set to: 0

;buttons.c: 49: u8_ButtonsTemporaryInput= (~PORTB) & (1 | 4 | 8 | 16 | 32);
	movf	((3969)),c,w	;volatile
	xorlw	0ffh
	andlw	low(03Dh)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((BUTTONS_Task@u8_ButtonsTemporaryInput))&0ffh
	line	51
	
l5124:; BSR set to: 0

;buttons.c: 51: if(u8_ButtonsTemporaryInput)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((BUTTONS_Task@u8_ButtonsTemporaryInput))&0ffh,w
	btfsc	status,2
	goto	u5021
	goto	u5020
u5021:
	goto	l5186
u5020:
	line	55
	
l5126:; BSR set to: 0

;buttons.c: 52: {
;buttons.c: 55: if(u8_ButtonsTemporaryInput & (1<<4))
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	
	btfss	((BUTTONS_Task@u8_ButtonsTemporaryInput))&0ffh,(4)&7
	goto	u5031
	goto	u5030
u5031:
	goto	l5138
u5030:
	line	57
	
l5128:; BSR set to: 0

;buttons.c: 56: {
;buttons.c: 57: u8_ButtonsStatusPressed|= (1<<4);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	bsf	(0+(4/8)+(BUTTONS_Task@u8_ButtonsStatusPressed))&0ffh,(4)&7
	line	58
;buttons.c: 58: ++u16_ButtonsHoldCounter[4];
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	infsnz	(0+(BUTTONS_Task@u16_ButtonsHoldCounter+08h))&0ffh
	incf	(1+(BUTTONS_Task@u16_ButtonsHoldCounter+08h))&0ffh
	line	59
	
l5130:; BSR set to: 1

;buttons.c: 59: if(u16_ButtonsHoldCounter[4] > 250)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
		movf	(1+(BUTTONS_Task@u16_ButtonsHoldCounter+08h))&0ffh,w
	bnz	u5040
	movlw	251
	subwf	 (0+(BUTTONS_Task@u16_ButtonsHoldCounter+08h))&0ffh,w
	btfss	status,0
	goto	u5041
	goto	u5040

u5041:
	goto	l5138
u5040:
	line	61
	
l5132:; BSR set to: 1

;buttons.c: 60: {
;buttons.c: 61: u8_ButtonSignal[0]= 2;
	movlw	low(02h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((_u8_ButtonSignal))&0ffh
	line	62
	
l5134:; BSR set to: 0

;buttons.c: 62: u8_ButtonsStatusPressed&= ~(1<<4);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	bcf	(0+(4/8)+(BUTTONS_Task@u8_ButtonsStatusPressed))&0ffh,(4)&7
	line	63
	
l5136:; BSR set to: 0

;buttons.c: 63: u16_ButtonsHoldCounter[4]= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	(1+(BUTTONS_Task@u16_ButtonsHoldCounter+08h))&0ffh
	movlw	low(0)
	movwf	(0+(BUTTONS_Task@u16_ButtonsHoldCounter+08h))&0ffh
	goto	l5138
	line	64
	
l207:; BSR set to: 1

	goto	l5138
	line	65
	
l206:; BSR set to: 1

	line	69
	
l5138:
;buttons.c: 64: }
;buttons.c: 65: }
;buttons.c: 69: if(u8_ButtonsTemporaryInput & (1<<5))
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	
	btfss	((BUTTONS_Task@u8_ButtonsTemporaryInput))&0ffh,(5)&7
	goto	u5051
	goto	u5050
u5051:
	goto	l5150
u5050:
	line	71
	
l5140:; BSR set to: 0

;buttons.c: 70: {
;buttons.c: 71: u8_ButtonsStatusPressed|= (1<<5);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	bsf	(0+(5/8)+(BUTTONS_Task@u8_ButtonsStatusPressed))&0ffh,(5)&7
	line	72
;buttons.c: 72: ++u16_ButtonsHoldCounter[5];
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	infsnz	(0+(BUTTONS_Task@u16_ButtonsHoldCounter+0Ah))&0ffh
	incf	(1+(BUTTONS_Task@u16_ButtonsHoldCounter+0Ah))&0ffh
	line	73
	
l5142:; BSR set to: 1

;buttons.c: 73: if(u16_ButtonsHoldCounter[5] > 250)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
		movf	(1+(BUTTONS_Task@u16_ButtonsHoldCounter+0Ah))&0ffh,w
	bnz	u5060
	movlw	251
	subwf	 (0+(BUTTONS_Task@u16_ButtonsHoldCounter+0Ah))&0ffh,w
	btfss	status,0
	goto	u5061
	goto	u5060

u5061:
	goto	l5150
u5060:
	line	75
	
l5144:; BSR set to: 1

;buttons.c: 74: {
;buttons.c: 75: u8_ButtonSignal[1]= 2;
	movlw	low(02h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(0+(_u8_ButtonSignal+01h))&0ffh
	line	76
	
l5146:; BSR set to: 0

;buttons.c: 76: u8_ButtonsStatusPressed&= ~(1<<5);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	bcf	(0+(5/8)+(BUTTONS_Task@u8_ButtonsStatusPressed))&0ffh,(5)&7
	line	77
	
l5148:; BSR set to: 0

;buttons.c: 77: u16_ButtonsHoldCounter[5]= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	(1+(BUTTONS_Task@u16_ButtonsHoldCounter+0Ah))&0ffh
	movlw	low(0)
	movwf	(0+(BUTTONS_Task@u16_ButtonsHoldCounter+0Ah))&0ffh
	goto	l5150
	line	78
	
l209:; BSR set to: 1

	goto	l5150
	line	79
	
l208:; BSR set to: 1

	line	83
	
l5150:
;buttons.c: 78: }
;buttons.c: 79: }
;buttons.c: 83: if(u8_ButtonsTemporaryInput & (1<<0))
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	
	btfss	((BUTTONS_Task@u8_ButtonsTemporaryInput))&0ffh,(0)&7
	goto	u5071
	goto	u5070
u5071:
	goto	l5162
u5070:
	line	85
	
l5152:; BSR set to: 0

;buttons.c: 84: {
;buttons.c: 85: u8_ButtonsStatusPressed|= (1<<0);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	bsf	(0+(0/8)+(BUTTONS_Task@u8_ButtonsStatusPressed))&0ffh,(0)&7
	line	86
;buttons.c: 86: ++u16_ButtonsHoldCounter[0];
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	infsnz	((BUTTONS_Task@u16_ButtonsHoldCounter))&0ffh
	incf	((BUTTONS_Task@u16_ButtonsHoldCounter+1))&0ffh
	line	87
	
l5154:; BSR set to: 1

;buttons.c: 87: if(++u16_ButtonsHoldCounter[0] > 2000)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	infsnz	((BUTTONS_Task@u16_ButtonsHoldCounter))&0ffh
	incf	((BUTTONS_Task@u16_ButtonsHoldCounter+1))&0ffh
		movlw	209
	subwf	 ((BUTTONS_Task@u16_ButtonsHoldCounter))&0ffh,w
	movlw	7
	subwfb	((BUTTONS_Task@u16_ButtonsHoldCounter+1))&0ffh,w
	btfss	status,0
	goto	u5081
	goto	u5080

u5081:
	goto	l5162
u5080:
	line	89
	
l5156:; BSR set to: 1

;buttons.c: 88: {
;buttons.c: 89: u8_ButtonSignal[2]= 2;
	movlw	low(02h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(0+(_u8_ButtonSignal+02h))&0ffh
	line	90
	
l5158:; BSR set to: 0

;buttons.c: 90: u8_ButtonsStatusPressed&= ~(1<<0);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	bcf	(0+(0/8)+(BUTTONS_Task@u8_ButtonsStatusPressed))&0ffh,(0)&7
	line	91
	
l5160:; BSR set to: 0

;buttons.c: 91: u16_ButtonsHoldCounter[0]= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	((BUTTONS_Task@u16_ButtonsHoldCounter+1))&0ffh
	movlw	low(0)
	movwf	((BUTTONS_Task@u16_ButtonsHoldCounter))&0ffh
	goto	l5162
	line	92
	
l211:; BSR set to: 1

	goto	l5162
	line	93
	
l210:; BSR set to: 1

	line	97
	
l5162:
;buttons.c: 92: }
;buttons.c: 93: }
;buttons.c: 97: if(u8_ButtonsTemporaryInput & (1<<2))
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	
	btfss	((BUTTONS_Task@u8_ButtonsTemporaryInput))&0ffh,(2)&7
	goto	u5091
	goto	u5090
u5091:
	goto	l5174
u5090:
	line	99
	
l5164:; BSR set to: 0

;buttons.c: 98: {
;buttons.c: 99: u8_ButtonsStatusPressed|= (1<<2);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	bsf	(0+(2/8)+(BUTTONS_Task@u8_ButtonsStatusPressed))&0ffh,(2)&7
	line	100
;buttons.c: 100: ++u16_ButtonsHoldCounter[2];
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	infsnz	(0+(BUTTONS_Task@u16_ButtonsHoldCounter+04h))&0ffh
	incf	(1+(BUTTONS_Task@u16_ButtonsHoldCounter+04h))&0ffh
	line	101
	
l5166:; BSR set to: 1

;buttons.c: 101: if(u16_ButtonsHoldCounter[2] > 2000)
		movlw	209
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	subwf	 (0+(BUTTONS_Task@u16_ButtonsHoldCounter+04h))&0ffh,w
	movlw	7
	subwfb	(1+(BUTTONS_Task@u16_ButtonsHoldCounter+04h))&0ffh,w
	btfss	status,0
	goto	u5101
	goto	u5100

u5101:
	goto	l5174
u5100:
	line	103
	
l5168:; BSR set to: 1

;buttons.c: 102: {
;buttons.c: 103: u8_ButtonSignal[3]= 2;
	movlw	low(02h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(0+(_u8_ButtonSignal+03h))&0ffh
	line	104
	
l5170:; BSR set to: 0

;buttons.c: 104: u8_ButtonsStatusPressed&= ~(1<<2);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	bcf	(0+(2/8)+(BUTTONS_Task@u8_ButtonsStatusPressed))&0ffh,(2)&7
	line	105
	
l5172:; BSR set to: 0

;buttons.c: 105: u16_ButtonsHoldCounter[2]= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	(1+(BUTTONS_Task@u16_ButtonsHoldCounter+04h))&0ffh
	movlw	low(0)
	movwf	(0+(BUTTONS_Task@u16_ButtonsHoldCounter+04h))&0ffh
	goto	l5174
	line	106
	
l213:; BSR set to: 1

	goto	l5174
	line	107
	
l212:; BSR set to: 1

	line	111
	
l5174:
;buttons.c: 106: }
;buttons.c: 107: }
;buttons.c: 111: if(u8_ButtonsTemporaryInput & (1<<3))
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	
	btfss	((BUTTONS_Task@u8_ButtonsTemporaryInput))&0ffh,(3)&7
	goto	u5111
	goto	u5110
u5111:
	goto	l232
u5110:
	line	113
	
l5176:; BSR set to: 0

;buttons.c: 112: {
;buttons.c: 113: u8_ButtonsStatusPressed|= (1<<3);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	bsf	(0+(3/8)+(BUTTONS_Task@u8_ButtonsStatusPressed))&0ffh,(3)&7
	line	114
;buttons.c: 114: ++u16_ButtonsHoldCounter[3];
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	infsnz	(0+(BUTTONS_Task@u16_ButtonsHoldCounter+06h))&0ffh
	incf	(1+(BUTTONS_Task@u16_ButtonsHoldCounter+06h))&0ffh
	line	115
	
l5178:; BSR set to: 1

;buttons.c: 115: if(u16_ButtonsHoldCounter[3] > 2000)
		movlw	209
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	subwf	 (0+(BUTTONS_Task@u16_ButtonsHoldCounter+06h))&0ffh,w
	movlw	7
	subwfb	(1+(BUTTONS_Task@u16_ButtonsHoldCounter+06h))&0ffh,w
	btfss	status,0
	goto	u5121
	goto	u5120

u5121:
	goto	l232
u5120:
	line	117
	
l5180:; BSR set to: 1

;buttons.c: 116: {
;buttons.c: 117: u8_ButtonSignal[4]= 2;
	movlw	low(02h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(0+(_u8_ButtonSignal+04h))&0ffh
	line	118
	
l5182:; BSR set to: 0

;buttons.c: 118: u8_ButtonsStatusPressed&= ~(1<<3);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	bcf	(0+(3/8)+(BUTTONS_Task@u8_ButtonsStatusPressed))&0ffh,(3)&7
	line	119
	
l5184:; BSR set to: 0

;buttons.c: 119: u16_ButtonsHoldCounter[3]= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	(1+(BUTTONS_Task@u16_ButtonsHoldCounter+06h))&0ffh
	movlw	low(0)
	movwf	(0+(BUTTONS_Task@u16_ButtonsHoldCounter+06h))&0ffh
	goto	l232
	line	120
	
l215:; BSR set to: 1

	goto	l232
	line	121
	
l214:; BSR set to: 1

	line	122
;buttons.c: 120: }
;buttons.c: 121: }
;buttons.c: 122: }
	goto	l232
	line	123
	
l205:; BSR set to: 1

	line	127
	
l5186:
;buttons.c: 123: else
;buttons.c: 124: {
;buttons.c: 127: if(u8_ButtonsStatusPressed == (1<<4))
		movlw	16
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	xorwf	((BUTTONS_Task@u8_ButtonsStatusPressed))&0ffh,w
	btfss	status,2
	goto	u5131
	goto	u5130

u5131:
	goto	l5196
u5130:
	line	129
	
l5188:; BSR set to: 0

;buttons.c: 128: {
;buttons.c: 129: ++u16_ButtonsDebounceCounter[4];
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	infsnz	(0+(BUTTONS_Task@u16_ButtonsDebounceCounter+08h))&0ffh
	incf	(1+(BUTTONS_Task@u16_ButtonsDebounceCounter+08h))&0ffh
	line	130
	
l5190:; BSR set to: 1

;buttons.c: 130: if(u16_ButtonsDebounceCounter[4] > 20)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
		movf	(1+(BUTTONS_Task@u16_ButtonsDebounceCounter+08h))&0ffh,w
	bnz	u5140
	movlw	21
	subwf	 (0+(BUTTONS_Task@u16_ButtonsDebounceCounter+08h))&0ffh,w
	btfss	status,0
	goto	u5141
	goto	u5140

u5141:
	goto	l5198
u5140:
	line	132
	
l5192:; BSR set to: 1

;buttons.c: 131: {
;buttons.c: 132: u8_ButtonSignal[0]= 1;
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((_u8_ButtonSignal))&0ffh
	line	133
;buttons.c: 133: u16_ButtonsDebounceCounter[4]= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	(1+(BUTTONS_Task@u16_ButtonsDebounceCounter+08h))&0ffh
	movlw	low(0)
	movwf	(0+(BUTTONS_Task@u16_ButtonsDebounceCounter+08h))&0ffh
	line	134
;buttons.c: 134: u16_ButtonsHoldCounter[4]= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	(1+(BUTTONS_Task@u16_ButtonsHoldCounter+08h))&0ffh
	movlw	low(0)
	movwf	(0+(BUTTONS_Task@u16_ButtonsHoldCounter+08h))&0ffh
	line	135
	
l5194:; BSR set to: 1

;buttons.c: 135: u8_ButtonsStatusPressed&= ~(1<<4);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	bcf	(0+(4/8)+(BUTTONS_Task@u8_ButtonsStatusPressed))&0ffh,(4)&7
	goto	l5198
	line	136
	
l218:; BSR set to: 0

	line	137
;buttons.c: 136: }
;buttons.c: 137: }
	goto	l5198
	line	138
	
l217:; BSR set to: 0

	line	140
	
l5196:; BSR set to: 0

;buttons.c: 138: else
;buttons.c: 139: {
;buttons.c: 140: u8_ButtonSignal[0]= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((_u8_ButtonSignal))&0ffh
	goto	l5198
	line	141
	
l219:; BSR set to: 0

	line	145
	
l5198:
;buttons.c: 141: }
;buttons.c: 145: if(u8_ButtonsStatusPressed == (1<<5))
		movlw	32
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	xorwf	((BUTTONS_Task@u8_ButtonsStatusPressed))&0ffh,w
	btfss	status,2
	goto	u5151
	goto	u5150

u5151:
	goto	l5208
u5150:
	line	147
	
l5200:; BSR set to: 0

;buttons.c: 146: {
;buttons.c: 147: ++u16_ButtonsDebounceCounter[5];
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	infsnz	(0+(BUTTONS_Task@u16_ButtonsDebounceCounter+0Ah))&0ffh
	incf	(1+(BUTTONS_Task@u16_ButtonsDebounceCounter+0Ah))&0ffh
	line	148
	
l5202:; BSR set to: 1

;buttons.c: 148: if(u16_ButtonsDebounceCounter[5] > 20)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
		movf	(1+(BUTTONS_Task@u16_ButtonsDebounceCounter+0Ah))&0ffh,w
	bnz	u5160
	movlw	21
	subwf	 (0+(BUTTONS_Task@u16_ButtonsDebounceCounter+0Ah))&0ffh,w
	btfss	status,0
	goto	u5161
	goto	u5160

u5161:
	goto	l5210
u5160:
	line	150
	
l5204:; BSR set to: 1

;buttons.c: 149: {
;buttons.c: 150: u8_ButtonSignal[1]= 1;
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(0+(_u8_ButtonSignal+01h))&0ffh
	line	151
;buttons.c: 151: u16_ButtonsDebounceCounter[5]= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	(1+(BUTTONS_Task@u16_ButtonsDebounceCounter+0Ah))&0ffh
	movlw	low(0)
	movwf	(0+(BUTTONS_Task@u16_ButtonsDebounceCounter+0Ah))&0ffh
	line	152
;buttons.c: 152: u16_ButtonsHoldCounter[5]= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	(1+(BUTTONS_Task@u16_ButtonsHoldCounter+0Ah))&0ffh
	movlw	low(0)
	movwf	(0+(BUTTONS_Task@u16_ButtonsHoldCounter+0Ah))&0ffh
	line	153
	
l5206:; BSR set to: 1

;buttons.c: 153: u8_ButtonsStatusPressed&= ~(1<<5);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	bcf	(0+(5/8)+(BUTTONS_Task@u8_ButtonsStatusPressed))&0ffh,(5)&7
	goto	l5210
	line	154
	
l221:; BSR set to: 0

	line	155
;buttons.c: 154: }
;buttons.c: 155: }
	goto	l5210
	line	156
	
l220:; BSR set to: 0

	line	158
	
l5208:; BSR set to: 0

;buttons.c: 156: else
;buttons.c: 157: {
;buttons.c: 158: u8_ButtonSignal[1]= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(0+(_u8_ButtonSignal+01h))&0ffh
	goto	l5210
	line	159
	
l222:; BSR set to: 0

	line	163
	
l5210:
;buttons.c: 159: }
;buttons.c: 163: if(u8_ButtonsStatusPressed == (1<<0))
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
		decf	((BUTTONS_Task@u8_ButtonsStatusPressed))&0ffh,w
	btfss	status,2
	goto	u5171
	goto	u5170

u5171:
	goto	l5220
u5170:
	line	165
	
l5212:; BSR set to: 0

;buttons.c: 164: {
;buttons.c: 165: ++u16_ButtonsDebounceCounter[0];
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	infsnz	((BUTTONS_Task@u16_ButtonsDebounceCounter))&0ffh
	incf	((BUTTONS_Task@u16_ButtonsDebounceCounter+1))&0ffh
	line	166
	
l5214:; BSR set to: 1

;buttons.c: 166: if(u16_ButtonsDebounceCounter[0] > 20)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
		movf	((BUTTONS_Task@u16_ButtonsDebounceCounter+1))&0ffh,w
	bnz	u5180
	movlw	21
	subwf	 ((BUTTONS_Task@u16_ButtonsDebounceCounter))&0ffh,w
	btfss	status,0
	goto	u5181
	goto	u5180

u5181:
	goto	l5222
u5180:
	line	168
	
l5216:; BSR set to: 1

;buttons.c: 167: {
;buttons.c: 168: u8_ButtonSignal[2]= 1;
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(0+(_u8_ButtonSignal+02h))&0ffh
	line	169
;buttons.c: 169: u16_ButtonsDebounceCounter[0]= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	((BUTTONS_Task@u16_ButtonsDebounceCounter+1))&0ffh
	movlw	low(0)
	movwf	((BUTTONS_Task@u16_ButtonsDebounceCounter))&0ffh
	line	170
;buttons.c: 170: u16_ButtonsHoldCounter[0]= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	((BUTTONS_Task@u16_ButtonsHoldCounter+1))&0ffh
	movlw	low(0)
	movwf	((BUTTONS_Task@u16_ButtonsHoldCounter))&0ffh
	line	171
	
l5218:; BSR set to: 1

;buttons.c: 171: u8_ButtonsStatusPressed&= ~(1<<0);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	bcf	(0+(0/8)+(BUTTONS_Task@u8_ButtonsStatusPressed))&0ffh,(0)&7
	goto	l5222
	line	172
	
l224:; BSR set to: 0

	line	173
;buttons.c: 172: }
;buttons.c: 173: }
	goto	l5222
	line	174
	
l223:; BSR set to: 0

	line	176
	
l5220:; BSR set to: 0

;buttons.c: 174: else
;buttons.c: 175: {
;buttons.c: 176: u8_ButtonSignal[2]= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(0+(_u8_ButtonSignal+02h))&0ffh
	line	177
;buttons.c: 177: u16_ButtonsHoldCounter[0]= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	((BUTTONS_Task@u16_ButtonsHoldCounter+1))&0ffh
	movlw	low(0)
	movwf	((BUTTONS_Task@u16_ButtonsHoldCounter))&0ffh
	goto	l5222
	line	178
	
l225:; BSR set to: 1

	line	182
	
l5222:
;buttons.c: 178: }
;buttons.c: 182: if(u8_ButtonsStatusPressed == (1<<2))
		movlw	4
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	xorwf	((BUTTONS_Task@u8_ButtonsStatusPressed))&0ffh,w
	btfss	status,2
	goto	u5191
	goto	u5190

u5191:
	goto	l5232
u5190:
	line	184
	
l5224:; BSR set to: 0

;buttons.c: 183: {
;buttons.c: 184: ++u16_ButtonsDebounceCounter[2];
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	infsnz	(0+(BUTTONS_Task@u16_ButtonsDebounceCounter+04h))&0ffh
	incf	(1+(BUTTONS_Task@u16_ButtonsDebounceCounter+04h))&0ffh
	line	185
	
l5226:; BSR set to: 1

;buttons.c: 185: if(u16_ButtonsDebounceCounter[2] > 20)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
		movf	(1+(BUTTONS_Task@u16_ButtonsDebounceCounter+04h))&0ffh,w
	bnz	u5200
	movlw	21
	subwf	 (0+(BUTTONS_Task@u16_ButtonsDebounceCounter+04h))&0ffh,w
	btfss	status,0
	goto	u5201
	goto	u5200

u5201:
	goto	l5234
u5200:
	line	187
	
l5228:; BSR set to: 1

;buttons.c: 186: {
;buttons.c: 187: u8_ButtonSignal[3]= 1;
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(0+(_u8_ButtonSignal+03h))&0ffh
	line	188
;buttons.c: 188: u16_ButtonsDebounceCounter[2]= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	(1+(BUTTONS_Task@u16_ButtonsDebounceCounter+04h))&0ffh
	movlw	low(0)
	movwf	(0+(BUTTONS_Task@u16_ButtonsDebounceCounter+04h))&0ffh
	line	189
;buttons.c: 189: u16_ButtonsHoldCounter[2]= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	(1+(BUTTONS_Task@u16_ButtonsHoldCounter+04h))&0ffh
	movlw	low(0)
	movwf	(0+(BUTTONS_Task@u16_ButtonsHoldCounter+04h))&0ffh
	line	190
	
l5230:; BSR set to: 1

;buttons.c: 190: u8_ButtonsStatusPressed&= ~(1<<2);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	bcf	(0+(2/8)+(BUTTONS_Task@u8_ButtonsStatusPressed))&0ffh,(2)&7
	goto	l5234
	line	191
	
l227:; BSR set to: 0

	line	192
;buttons.c: 191: }
;buttons.c: 192: }
	goto	l5234
	line	193
	
l226:; BSR set to: 0

	line	195
	
l5232:; BSR set to: 0

;buttons.c: 193: else
;buttons.c: 194: {
;buttons.c: 195: u8_ButtonSignal[3]= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(0+(_u8_ButtonSignal+03h))&0ffh
	line	196
;buttons.c: 196: u16_ButtonsHoldCounter[2]= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	(1+(BUTTONS_Task@u16_ButtonsHoldCounter+04h))&0ffh
	movlw	low(0)
	movwf	(0+(BUTTONS_Task@u16_ButtonsHoldCounter+04h))&0ffh
	goto	l5234
	line	197
	
l228:; BSR set to: 1

	line	201
	
l5234:
;buttons.c: 197: }
;buttons.c: 201: if(u8_ButtonsStatusPressed == (1<<3))
		movlw	8
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	xorwf	((BUTTONS_Task@u8_ButtonsStatusPressed))&0ffh,w
	btfss	status,2
	goto	u5211
	goto	u5210

u5211:
	goto	l5244
u5210:
	line	203
	
l5236:; BSR set to: 0

;buttons.c: 202: {
;buttons.c: 203: ++u16_ButtonsDebounceCounter[3];
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	infsnz	(0+(BUTTONS_Task@u16_ButtonsDebounceCounter+06h))&0ffh
	incf	(1+(BUTTONS_Task@u16_ButtonsDebounceCounter+06h))&0ffh
	line	204
	
l5238:; BSR set to: 1

;buttons.c: 204: if(u16_ButtonsDebounceCounter[3] > 20)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
		movf	(1+(BUTTONS_Task@u16_ButtonsDebounceCounter+06h))&0ffh,w
	bnz	u5220
	movlw	21
	subwf	 (0+(BUTTONS_Task@u16_ButtonsDebounceCounter+06h))&0ffh,w
	btfss	status,0
	goto	u5221
	goto	u5220

u5221:
	goto	l232
u5220:
	line	206
	
l5240:; BSR set to: 1

;buttons.c: 205: {
;buttons.c: 206: u8_ButtonSignal[4]= 1;
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(0+(_u8_ButtonSignal+04h))&0ffh
	line	207
;buttons.c: 207: u16_ButtonsDebounceCounter[3]= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	(1+(BUTTONS_Task@u16_ButtonsDebounceCounter+06h))&0ffh
	movlw	low(0)
	movwf	(0+(BUTTONS_Task@u16_ButtonsDebounceCounter+06h))&0ffh
	line	208
;buttons.c: 208: u16_ButtonsHoldCounter[3]= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	(1+(BUTTONS_Task@u16_ButtonsHoldCounter+06h))&0ffh
	movlw	low(0)
	movwf	(0+(BUTTONS_Task@u16_ButtonsHoldCounter+06h))&0ffh
	line	209
	
l5242:; BSR set to: 1

;buttons.c: 209: u8_ButtonsStatusPressed&= ~(1<<3);
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	bcf	(0+(3/8)+(BUTTONS_Task@u8_ButtonsStatusPressed))&0ffh,(3)&7
	goto	l232
	line	210
	
l230:; BSR set to: 0

	line	211
;buttons.c: 210: }
;buttons.c: 211: }
	goto	l232
	line	212
	
l229:; BSR set to: 0

	line	214
	
l5244:; BSR set to: 0

;buttons.c: 212: else
;buttons.c: 213: {
;buttons.c: 214: u8_ButtonSignal[4]= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	(0+(_u8_ButtonSignal+04h))&0ffh
	line	215
;buttons.c: 215: u16_ButtonsHoldCounter[3]= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	(1+(BUTTONS_Task@u16_ButtonsHoldCounter+06h))&0ffh
	movlw	low(0)
	movwf	(0+(BUTTONS_Task@u16_ButtonsHoldCounter+06h))&0ffh
	goto	l232
	line	216
	
l231:; BSR set to: 1

	goto	l232
	line	217
	
l216:; BSR set to: 1

	line	218
	
l232:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_BUTTONS_Task
	__end_of_BUTTONS_Task:
	signat	_BUTTONS_Task,89
	global	_ADC_Task

;; *************** function _ADC_Task *****************
;; Defined at:
;;		line 66 in file "hal/adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  si32_AdcTemp    4   10[BANK1 ] long 
;;  u16_AdcResul    2    8[BANK1 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0      10       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       4       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0      14       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ADC_GetVoltageFiltered
;;		___aldiv
;;		___lldiv
;;		___lmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text44,class=CODE,space=0,reloc=2,group=0,minocg
	file	"hal/adc.c"
	line	66
global __ptext44
__ptext44:
psect	text44
	file	"hal/adc.c"
	line	66
	global	__size_of_ADC_Task
	__size_of_ADC_Task	equ	__end_of_ADC_Task-_ADC_Task
	
_ADC_Task:
;incstack = 0
	opt	stack 26
	line	68
	
l5404:
;adc.c: 68: int32_t si32_AdcTemporary= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	((ADC_Task@si32_AdcTemporary))&0ffh
	movlw	high(0)
	movwf	((ADC_Task@si32_AdcTemporary+1))&0ffh
	movlw	low highword(0)
	movwf	((ADC_Task@si32_AdcTemporary+2))&0ffh
	movlw	high highword(0)
	movwf	((ADC_Task@si32_AdcTemporary+3))&0ffh
	line	69
;adc.c: 69: uint16_t u16_AdcResult= 0;
	movlw	high(0)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movwf	((ADC_Task@u16_AdcResult+1))&0ffh
	movlw	low(0)
	movwf	((ADC_Task@u16_AdcResult))&0ffh
	line	70
	
l5406:; BSR set to: 1

;adc.c: 70: if(ADCON0bits.GO == 0)
	btfsc	((4034)),c,1	;volatile
	goto	u5541
	goto	u5540
u5541:
	goto	l119
u5540:
	line	72
	
l5408:; BSR set to: 1

;adc.c: 71: {
;adc.c: 72: u16_AdcResult= ADRES;
	movff	(4035),(ADC_Task@u16_AdcResult)	;volatile
	movff	(4035+1),(ADC_Task@u16_AdcResult+1)	;volatile
	line	73
	
l5410:; BSR set to: 1

;adc.c: 73: u16_AdcVoltageMV= (u32_AdcLsb*(uint32_t)ADC_GetVoltageFiltered(u16_AdcResult))/(uint32_t)1000;
	movff	(ADC_Task@u16_AdcResult),(ADC_GetVoltageFiltered@u16_Input)
	movff	(ADC_Task@u16_AdcResult+1),(ADC_GetVoltageFiltered@u16_Input+1)
	call	_ADC_GetVoltageFiltered	;wreg free
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movff	0+?_ADC_GetVoltageFiltered,(_ADC_Task$1620)
	movff	1+?_ADC_GetVoltageFiltered,(_ADC_Task$1620+1)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	clrf	((_ADC_Task$1620+2))&0ffh
	clrf	((_ADC_Task$1620+3))&0ffh

	
l5412:; BSR set to: 1

;adc.c: 73: u16_AdcVoltageMV= (u32_AdcLsb*(uint32_t)ADC_GetVoltageFiltered(u16_AdcResult))/(uint32_t)1000;
	movff	(_ADC_Task$1620),(___lmul@multiplier)
	movff	(_ADC_Task$1620+1),(___lmul@multiplier+1)
	movff	(_ADC_Task$1620+2),(___lmul@multiplier+2)
	movff	(_ADC_Task$1620+3),(___lmul@multiplier+3)
	movlw	low((_u32_AdcLsb))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_u32_AdcLsb))
	movwf	tblptrh
	endif
	if	1	;There are 3 active tblptr bytes
	movlw	low highword((_u32_AdcLsb))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___lmul@multiplicand)
	tblrd*+
	
	movff	tablat,(___lmul@multiplicand+1)
	tblrd*+
	
	movff	tablat,(___lmul@multiplicand+2)
	tblrd*-
	
	movff	tablat,(___lmul@multiplicand+3)
	call	___lmul	;wreg free
	movff	0+?___lmul,(___lldiv@dividend)
	movff	1+?___lmul,(___lldiv@dividend+1)
	movff	2+?___lmul,(___lldiv@dividend+2)
	movff	3+?___lmul,(___lldiv@dividend+3)
	
	movlw	low(03E8h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((___lldiv@divisor))&0ffh
	movlw	high(03E8h)
	movwf	((___lldiv@divisor+1))&0ffh
	movlw	low highword(03E8h)
	movwf	((___lldiv@divisor+2))&0ffh
	movlw	high highword(03E8h)
	movwf	((___lldiv@divisor+3))&0ffh
	call	___lldiv	;wreg free
	movff	0+?___lldiv,(_u16_AdcVoltageMV)
	movff	1+?___lldiv,(_u16_AdcVoltageMV+1)
	line	75
	
l5414:
;adc.c: 75: si32_AdcTemporary= (u32_AdcLsb*(uint32_t)u16_AdcResult)/(uint32_t)1000;
	movff	(ADC_Task@u16_AdcResult),(___lmul@multiplier)
	movff	(ADC_Task@u16_AdcResult+1),(___lmul@multiplier+1)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	clrf	((___lmul@multiplier+2))&0ffh
	clrf	((___lmul@multiplier+3))&0ffh

	movlw	low((_u32_AdcLsb))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_u32_AdcLsb))
	movwf	tblptrh
	endif
	if	1	;There are 3 active tblptr bytes
	movlw	low highword((_u32_AdcLsb))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___lmul@multiplicand)
	tblrd*+
	
	movff	tablat,(___lmul@multiplicand+1)
	tblrd*+
	
	movff	tablat,(___lmul@multiplicand+2)
	tblrd*-
	
	movff	tablat,(___lmul@multiplicand+3)
	call	___lmul	;wreg free
	movff	0+?___lmul,(___lldiv@dividend)
	movff	1+?___lmul,(___lldiv@dividend+1)
	movff	2+?___lmul,(___lldiv@dividend+2)
	movff	3+?___lmul,(___lldiv@dividend+3)
	
	movlw	low(03E8h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((___lldiv@divisor))&0ffh
	movlw	high(03E8h)
	movwf	((___lldiv@divisor+1))&0ffh
	movlw	low highword(03E8h)
	movwf	((___lldiv@divisor+2))&0ffh
	movlw	high highword(03E8h)
	movwf	((___lldiv@divisor+3))&0ffh
	call	___lldiv	;wreg free
	movff	0+?___lldiv,(ADC_Task@si32_AdcTemporary)
	movff	1+?___lldiv,(ADC_Task@si32_AdcTemporary+1)
	movff	2+?___lldiv,(ADC_Task@si32_AdcTemporary+2)
	movff	3+?___lldiv,(ADC_Task@si32_AdcTemporary+3)
	
	line	76
	
l5416:
;adc.c: 76: si32_AdcTemporary= (si32_AdcTemporary * si32_TempSensorGain) / 1000;
	movff	(ADC_Task@si32_AdcTemporary),(___lmul@multiplier)
	movff	(ADC_Task@si32_AdcTemporary+1),(___lmul@multiplier+1)
	movff	(ADC_Task@si32_AdcTemporary+2),(___lmul@multiplier+2)
	movff	(ADC_Task@si32_AdcTemporary+3),(___lmul@multiplier+3)
	movlw	low((_si32_TempSensorGain))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_si32_TempSensorGain))
	movwf	tblptrh
	endif
	if	1	;There are 3 active tblptr bytes
	movlw	low highword((_si32_TempSensorGain))
	movwf	tblptru
	endif
	tblrd*+
	
	movff	tablat,(___lmul@multiplicand)
	tblrd*+
	
	movff	tablat,(___lmul@multiplicand+1)
	tblrd*+
	
	movff	tablat,(___lmul@multiplicand+2)
	tblrd*-
	
	movff	tablat,(___lmul@multiplicand+3)
	call	___lmul	;wreg free
	movff	0+?___lmul,(___aldiv@dividend)
	movff	1+?___lmul,(___aldiv@dividend+1)
	movff	2+?___lmul,(___aldiv@dividend+2)
	movff	3+?___lmul,(___aldiv@dividend+3)
	
	movlw	low(03E8h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((___aldiv@divisor))&0ffh
	movlw	high(03E8h)
	movwf	((___aldiv@divisor+1))&0ffh
	movlw	low highword(03E8h)
	movwf	((___aldiv@divisor+2))&0ffh
	movlw	high highword(03E8h)
	movwf	((___aldiv@divisor+3))&0ffh
	call	___aldiv	;wreg free
	movff	0+?___aldiv,(ADC_Task@si32_AdcTemporary)
	movff	1+?___aldiv,(ADC_Task@si32_AdcTemporary+1)
	movff	2+?___aldiv,(ADC_Task@si32_AdcTemporary+2)
	movff	3+?___aldiv,(ADC_Task@si32_AdcTemporary+3)
	
	line	77
	
l5418:
;adc.c: 77: si32_AdcTemporary= si32_AdcTemporary + si32_TempSensorOffset;
	movlw	low((_si32_TempSensorOffset))
	movwf	tblptrl
	if	1	;There is more than 1 active tblptr byte
	movlw	high((_si32_TempSensorOffset))
	movwf	tblptrh
	endif
	if	1	;There are 3 active tblptr bytes
	movlw	low highword((_si32_TempSensorOffset))
	movwf	tblptru
	endif
	tblrd	*+
	
	movff	tablat,??_ADC_Task+0+0
	tblrd	*+
	
	movff	tablat,??_ADC_Task+0+0+1
	tblrd	*+
	
	movff	tablat,??_ADC_Task+0+0+2
	tblrd	*+
	
	movff	tablat,??_ADC_Task+0+0+3
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	(??_ADC_Task+0+0)&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	addwf	((ADC_Task@si32_AdcTemporary))&0ffh,w
	movwf	((ADC_Task@si32_AdcTemporary))&0ffh
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	(??_ADC_Task+0+1)&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	addwfc	((ADC_Task@si32_AdcTemporary+1))&0ffh,w
	movwf	1+((ADC_Task@si32_AdcTemporary))&0ffh
	
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	(??_ADC_Task+0+2)&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	addwfc	((ADC_Task@si32_AdcTemporary+2))&0ffh,w
	movwf	2+((ADC_Task@si32_AdcTemporary))&0ffh
	
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	movf	(??_ADC_Task+0+3)&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	addwfc	((ADC_Task@si32_AdcTemporary+3))&0ffh,w
	movwf	3+((ADC_Task@si32_AdcTemporary))&0ffh
	line	79
	
l5420:; BSR set to: 1

;adc.c: 79: s16_TemperatureCelcius= si32_AdcTemporary;
	movff	(ADC_Task@si32_AdcTemporary),(_s16_TemperatureCelcius)
	movff	(ADC_Task@si32_AdcTemporary+1),(_s16_TemperatureCelcius+1)
	movff	(ADC_Task@si32_AdcTemporary+2),(_s16_TemperatureCelcius+2)
	movff	(ADC_Task@si32_AdcTemporary+3),(_s16_TemperatureCelcius+3)
	line	81
;adc.c: 81: if(s16_TemperatureCelcius > 460)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	btfsc	((_s16_TemperatureCelcius+3))&0ffh,7
	goto	u5551
	movf	((_s16_TemperatureCelcius+3))&0ffh,w
	iorwf	((_s16_TemperatureCelcius+2))&0ffh,w
	bnz	u5550
	movlw	205
	subwf	 ((_s16_TemperatureCelcius))&0ffh,w
	movlw	1
	subwfb	((_s16_TemperatureCelcius+1))&0ffh,w
	btfss	status,0
	goto	u5551
	goto	u5550

u5551:
	goto	l5424
u5550:
	line	83
	
l5422:; BSR set to: 0

;adc.c: 82: {
;adc.c: 83: u8_ErrorRegister|= 1;
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	bsf	(0+(0/8)+(_u8_ErrorRegister))&0ffh,(0)&7	;volatile
	goto	l5424
	line	84
	
l117:; BSR set to: 0

	line	86
	
l5424:; BSR set to: 0

;adc.c: 84: }
;adc.c: 86: if(s16_TemperatureCelcius < 0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	btfsc	((_s16_TemperatureCelcius+3))&0ffh,7
	goto	u5560
	goto	u5561

u5561:
	goto	l118
u5560:
	line	88
	
l5426:; BSR set to: 0

;adc.c: 87: {
;adc.c: 88: s16_TemperatureCelcius= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((_s16_TemperatureCelcius))&0ffh
	movlw	high(0)
	movwf	((_s16_TemperatureCelcius+1))&0ffh
	movlw	low highword(0)
	movwf	((_s16_TemperatureCelcius+2))&0ffh
	movlw	high highword(0)
	movwf	((_s16_TemperatureCelcius+3))&0ffh
	line	89
	
l118:; BSR set to: 0

	line	91
;adc.c: 89: }
;adc.c: 91: ADCON0= 4 | 1;
	movlw	low(05h)
	movwf	((4034)),c	;volatile
	line	92
	
l5428:; BSR set to: 0

;adc.c: 92: ADCON0bits.GO= 1;
	bsf	((4034)),c,1	;volatile
	goto	l119
	line	93
	
l116:; BSR set to: 0

	line	94
	
l119:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ADC_Task
	__end_of_ADC_Task:
	signat	_ADC_Task,89
	global	___lldiv

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lldiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        4   26[COMRAM] unsigned long 
;;  divisor         4   30[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   34[COMRAM] unsigned long 
;;  counter         1   38[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   26[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        13       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ADC_Task
;; This function uses a non-reentrant model
;;
psect	text45,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lldiv.c"
	line	8
global __ptext45
__ptext45:
psect	text45
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\lldiv.c"
	line	8
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:
;incstack = 0
	opt	stack 27
	line	14
	
l4912:
	movlw	low(0)
	movwf	((c:___lldiv@quotient)),c
	movlw	high(0)
	movwf	((c:___lldiv@quotient+1)),c
	movlw	low highword(0)
	movwf	((c:___lldiv@quotient+2)),c
	movlw	high highword(0)
	movwf	((c:___lldiv@quotient+3)),c
	line	15
	
l4914:
	movf	((c:___lldiv@divisor)),c,w
iorwf	((c:___lldiv@divisor+1)),c,w
iorwf	((c:___lldiv@divisor+2)),c,w
iorwf	((c:___lldiv@divisor+3)),c,w
	btfsc	status,2
	goto	u4611
	goto	u4610

u4611:
	goto	l1182
u4610:
	line	16
	
l4916:
	movlw	low(01h)
	movwf	((c:___lldiv@counter)),c
	line	17
	goto	l4920
	
l1184:
	line	18
	
l4918:
	bcf	status,0
	rlcf	((c:___lldiv@divisor)),c
	rlcf	((c:___lldiv@divisor+1)),c
	rlcf	((c:___lldiv@divisor+2)),c
	rlcf	((c:___lldiv@divisor+3)),c
	line	19
	incf	((c:___lldiv@counter)),c
	goto	l4920
	line	20
	
l1183:
	line	17
	
l4920:
	
	btfss	((c:___lldiv@divisor+3)),c,(31)&7
	goto	u4621
	goto	u4620
u4621:
	goto	l4918
u4620:
	goto	l4922
	
l1185:
	goto	l4922
	line	21
	
l1186:
	line	22
	
l4922:
	bcf	status,0
	rlcf	((c:___lldiv@quotient)),c
	rlcf	((c:___lldiv@quotient+1)),c
	rlcf	((c:___lldiv@quotient+2)),c
	rlcf	((c:___lldiv@quotient+3)),c
	line	23
	
l4924:
		movf	((c:___lldiv@divisor)),c,w
	subwf	((c:___lldiv@dividend)),c,w
	movf	((c:___lldiv@divisor+1)),c,w
	subwfb	((c:___lldiv@dividend+1)),c,w
	movf	((c:___lldiv@divisor+2)),c,w
	subwfb	((c:___lldiv@dividend+2)),c,w
	movf	((c:___lldiv@divisor+3)),c,w
	subwfb	((c:___lldiv@dividend+3)),c,w
	btfss	status,0
	goto	u4631
	goto	u4630

u4631:
	goto	l4930
u4630:
	line	24
	
l4926:
	movf	((c:___lldiv@divisor)),c,w
	subwf	((c:___lldiv@dividend)),c
	movf	((c:___lldiv@divisor+1)),c,w
	subwfb	((c:___lldiv@dividend+1)),c
	movf	((c:___lldiv@divisor+2)),c,w
	subwfb	((c:___lldiv@dividend+2)),c
	movf	((c:___lldiv@divisor+3)),c,w
	subwfb	((c:___lldiv@dividend+3)),c
	line	25
	
l4928:
	bsf	(0+(0/8)+(c:___lldiv@quotient)),c,(0)&7
	goto	l4930
	line	26
	
l1187:
	line	27
	
l4930:
	bcf	status,0
	rrcf	((c:___lldiv@divisor+3)),c
	rrcf	((c:___lldiv@divisor+2)),c
	rrcf	((c:___lldiv@divisor+1)),c
	rrcf	((c:___lldiv@divisor)),c
	line	28
	
l4932:
	decfsz	((c:___lldiv@counter)),c
	
	goto	l4922
	goto	l1182
	
l1188:
	line	29
	
l1182:
	line	30
	movff	(c:___lldiv@quotient),(c:?___lldiv)
	movff	(c:___lldiv@quotient+1),(c:?___lldiv+1)
	movff	(c:___lldiv@quotient+2),(c:?___lldiv+2)
	movff	(c:___lldiv@quotient+3),(c:?___lldiv+3)
	line	31
	
l1189:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	_ADC_GetVoltageFiltered

;; *************** function _ADC_GetVoltageFiltered *****************
;; Defined at:
;;		line 52 in file "hal/adc.c"
;; Parameters:    Size  Location     Type
;;  u16_Input       2   18[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  s32_FilterTe    4   22[BANK0 ] long 
;; Return value:  Size  Location     Type
;;                  2   18[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___aldiv
;;		___lmul
;; This function is called by:
;;		_ADC_Task
;; This function uses a non-reentrant model
;;
psect	text46,class=CODE,space=0,reloc=2,group=0,minocg
	file	"hal/adc.c"
	line	52
global __ptext46
__ptext46:
psect	text46
	file	"hal/adc.c"
	line	52
	global	__size_of_ADC_GetVoltageFiltered
	__size_of_ADC_GetVoltageFiltered	equ	__end_of_ADC_GetVoltageFiltered-_ADC_GetVoltageFiltered
	
_ADC_GetVoltageFiltered:
;incstack = 0
	opt	stack 26
	line	54
	
l4638:
;adc.c: 54: int32_t s32_FilterTemporary= 0;
	movlw	low(0)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((ADC_GetVoltageFiltered@s32_FilterTemporary))&0ffh
	movlw	high(0)
	movwf	((ADC_GetVoltageFiltered@s32_FilterTemporary+1))&0ffh
	movlw	low highword(0)
	movwf	((ADC_GetVoltageFiltered@s32_FilterTemporary+2))&0ffh
	movlw	high highword(0)
	movwf	((ADC_GetVoltageFiltered@s32_FilterTemporary+3))&0ffh
	line	57
	
l4640:; BSR set to: 0

;adc.c: 55: static uint16_t u16_OutputBefore= 0;
;adc.c: 57: s32_FilterTemporary= (int32_t)(u16_Input*1 - u16_OutputBefore) * 160;
	movff	(ADC_GetVoltageFiltered@u16_OutputBefore),??_ADC_GetVoltageFiltered+0+0
	movff	(ADC_GetVoltageFiltered@u16_OutputBefore+1),??_ADC_GetVoltageFiltered+0+0+1
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	comf	(??_ADC_GetVoltageFiltered+0+0)&0ffh
	comf	(??_ADC_GetVoltageFiltered+0+1)&0ffh
	infsnz	(??_ADC_GetVoltageFiltered+0+0)&0ffh
	incf	(??_ADC_GetVoltageFiltered+0+1)&0ffh
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((ADC_GetVoltageFiltered@u16_Input))&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	addwf	(??_ADC_GetVoltageFiltered+0+0)&0ffh
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((ADC_GetVoltageFiltered@u16_Input+1))&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	addwfc	(??_ADC_GetVoltageFiltered+0+1)&0ffh
	movff	??_ADC_GetVoltageFiltered+0+0,(___lmul@multiplier)
	movff	??_ADC_GetVoltageFiltered+0+1,(___lmul@multiplier+1)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	clrf	((___lmul@multiplier+2))&0ffh
	clrf	((___lmul@multiplier+3))&0ffh

	movlw	low(0A0h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((___lmul@multiplicand))&0ffh
	movlw	high(0A0h)
	movwf	((___lmul@multiplicand+1))&0ffh
	movlw	low highword(0A0h)
	movwf	((___lmul@multiplicand+2))&0ffh
	movlw	high highword(0A0h)
	movwf	((___lmul@multiplicand+3))&0ffh
	call	___lmul	;wreg free
	movff	0+?___lmul,(ADC_GetVoltageFiltered@s32_FilterTemporary)
	movff	1+?___lmul,(ADC_GetVoltageFiltered@s32_FilterTemporary+1)
	movff	2+?___lmul,(ADC_GetVoltageFiltered@s32_FilterTemporary+2)
	movff	3+?___lmul,(ADC_GetVoltageFiltered@s32_FilterTemporary+3)
	
	line	58
	
l4642:
;adc.c: 58: s32_FilterTemporary= (s32_FilterTemporary/1000) + u16_OutputBefore;
	movff	(ADC_GetVoltageFiltered@s32_FilterTemporary),(___aldiv@dividend)
	movff	(ADC_GetVoltageFiltered@s32_FilterTemporary+1),(___aldiv@dividend+1)
	movff	(ADC_GetVoltageFiltered@s32_FilterTemporary+2),(___aldiv@dividend+2)
	movff	(ADC_GetVoltageFiltered@s32_FilterTemporary+3),(___aldiv@dividend+3)
	movlw	low(03E8h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((___aldiv@divisor))&0ffh
	movlw	high(03E8h)
	movwf	((___aldiv@divisor+1))&0ffh
	movlw	low highword(03E8h)
	movwf	((___aldiv@divisor+2))&0ffh
	movlw	high highword(03E8h)
	movwf	((___aldiv@divisor+3))&0ffh
	call	___aldiv	;wreg free
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((ADC_GetVoltageFiltered@u16_OutputBefore))&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	addwf	(0+?___aldiv)&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((ADC_GetVoltageFiltered@s32_FilterTemporary))&0ffh
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movf	((ADC_GetVoltageFiltered@u16_OutputBefore+1))&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	addwfc	(1+?___aldiv)&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	1+((ADC_GetVoltageFiltered@s32_FilterTemporary))&0ffh
	
	movlw	0
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	addwfc	(2+?___aldiv)&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	2+((ADC_GetVoltageFiltered@s32_FilterTemporary))&0ffh
	
	movlw	0
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	addwfc	(3+?___aldiv)&0ffh,w
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	3+((ADC_GetVoltageFiltered@s32_FilterTemporary))&0ffh
	line	59
	
l4644:; BSR set to: 0

;adc.c: 59: u16_OutputBefore= (uint16_t) s32_FilterTemporary;
	movff	(ADC_GetVoltageFiltered@s32_FilterTemporary),(ADC_GetVoltageFiltered@u16_OutputBefore)
	movff	(ADC_GetVoltageFiltered@s32_FilterTemporary+1),(ADC_GetVoltageFiltered@u16_OutputBefore+1)
	line	60
	
l4646:; BSR set to: 0

;adc.c: 60: return u16_OutputBefore;
	movff	(ADC_GetVoltageFiltered@u16_OutputBefore),(?_ADC_GetVoltageFiltered)
	movff	(ADC_GetVoltageFiltered@u16_OutputBefore+1),(?_ADC_GetVoltageFiltered+1)
	goto	l113
	
l4648:; BSR set to: 0

	line	61
	
l113:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_ADC_GetVoltageFiltered
	__end_of_ADC_GetVoltageFiltered:
	signat	_ADC_GetVoltageFiltered,4218
	global	___lmul

;; *************** function ___lmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\Umul32.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    0[COMRAM] unsigned long 
;;  multiplicand    4    4[COMRAM] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    8[COMRAM] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[COMRAM] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ADC_GetVoltageFiltered
;;		_ADC_Task
;;		_CONTROL_Task
;; This function uses a non-reentrant model
;;
psect	text47,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\Umul32.c"
	line	15
global __ptext47
__ptext47:
psect	text47
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\Umul32.c"
	line	15
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:; BSR set to: 0

;incstack = 0
	opt	stack 27
	line	119
	
l4576:
	movlw	low(0)
	movwf	((c:___lmul@product)),c
	movlw	high(0)
	movwf	((c:___lmul@product+1)),c
	movlw	low highword(0)
	movwf	((c:___lmul@product+2)),c
	movlw	high highword(0)
	movwf	((c:___lmul@product+3)),c
	goto	l4578
	line	120
	
l844:
	line	121
	
l4578:
	
	btfss	((c:___lmul@multiplier)),c,(0)&7
	goto	u4221
	goto	u4220
u4221:
	goto	l4582
u4220:
	line	122
	
l4580:
	movf	((c:___lmul@multiplicand)),c,w
	addwf	((c:___lmul@product)),c
	movf	((c:___lmul@multiplicand+1)),c,w
	addwfc	((c:___lmul@product+1)),c
	movf	((c:___lmul@multiplicand+2)),c,w
	addwfc	((c:___lmul@product+2)),c
	movf	((c:___lmul@multiplicand+3)),c,w
	addwfc	((c:___lmul@product+3)),c
	goto	l4582
	
l845:
	line	123
	
l4582:
	bcf	status,0
	rlcf	((c:___lmul@multiplicand)),c
	rlcf	((c:___lmul@multiplicand+1)),c
	rlcf	((c:___lmul@multiplicand+2)),c
	rlcf	((c:___lmul@multiplicand+3)),c
	line	124
	
l4584:
	bcf	status,0
	rrcf	((c:___lmul@multiplier+3)),c
	rrcf	((c:___lmul@multiplier+2)),c
	rrcf	((c:___lmul@multiplier+1)),c
	rrcf	((c:___lmul@multiplier)),c
	line	125
	movf	((c:___lmul@multiplier)),c,w
iorwf	((c:___lmul@multiplier+1)),c,w
iorwf	((c:___lmul@multiplier+2)),c,w
iorwf	((c:___lmul@multiplier+3)),c,w
	btfss	status,2
	goto	u4231
	goto	u4230

u4231:
	goto	l4578
u4230:
	
l846:
	line	128
	movff	(c:___lmul@product),(c:?___lmul)
	movff	(c:___lmul@product+1),(c:?___lmul+1)
	movff	(c:___lmul@product+2),(c:?___lmul+2)
	movff	(c:___lmul@product+3),(c:?___lmul+3)
	line	129
	
l847:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	___aldiv

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\aldiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        4   12[COMRAM] long 
;;  divisor         4   16[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   22[COMRAM] long 
;;  sign            1   21[COMRAM] unsigned char 
;;  counter         1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   12[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ADC_GetVoltageFiltered
;;		_ADC_Task
;;		_CONTROL_Task
;; This function uses a non-reentrant model
;;
psect	text48,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\aldiv.c"
	line	8
global __ptext48
__ptext48:
psect	text48
	file	"C:\Program Files (x86)\Microchip\xc8\v1.45\sources\common\aldiv.c"
	line	8
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:
;incstack = 0
	opt	stack 27
	line	14
	
l4586:
	movlw	low(0)
	movwf	((c:___aldiv@sign)),c
	line	15
	
l4588:
	btfsc	((c:___aldiv@divisor+3)),c,7
	goto	u4240
	goto	u4241

u4241:
	goto	l4594
u4240:
	line	16
	
l4590:
	comf	((c:___aldiv@divisor+3)),c
	comf	((c:___aldiv@divisor+2)),c
	comf	((c:___aldiv@divisor+1)),c
	negf	((c:___aldiv@divisor)),c
	movlw	0
	addwfc	((c:___aldiv@divisor+1)),c
	addwfc	((c:___aldiv@divisor+2)),c
	addwfc	((c:___aldiv@divisor+3)),c
	line	17
	
l4592:
	movlw	low(01h)
	movwf	((c:___aldiv@sign)),c
	goto	l4594
	line	18
	
l888:
	line	19
	
l4594:
	btfsc	((c:___aldiv@dividend+3)),c,7
	goto	u4250
	goto	u4251

u4251:
	goto	l4600
u4250:
	line	20
	
l4596:
	comf	((c:___aldiv@dividend+3)),c
	comf	((c:___aldiv@dividend+2)),c
	comf	((c:___aldiv@dividend+1)),c
	negf	((c:___aldiv@dividend)),c
	movlw	0
	addwfc	((c:___aldiv@dividend+1)),c
	addwfc	((c:___aldiv@dividend+2)),c
	addwfc	((c:___aldiv@dividend+3)),c
	line	21
	
l4598:
	movlw	(01h)&0ffh
	xorwf	((c:___aldiv@sign)),c
	goto	l4600
	line	22
	
l889:
	line	23
	
l4600:
	movlw	low(0)
	movwf	((c:___aldiv@quotient)),c
	movlw	high(0)
	movwf	((c:___aldiv@quotient+1)),c
	movlw	low highword(0)
	movwf	((c:___aldiv@quotient+2)),c
	movlw	high highword(0)
	movwf	((c:___aldiv@quotient+3)),c
	line	24
	
l4602:
	movf	((c:___aldiv@divisor)),c,w
iorwf	((c:___aldiv@divisor+1)),c,w
iorwf	((c:___aldiv@divisor+2)),c,w
iorwf	((c:___aldiv@divisor+3)),c,w
	btfsc	status,2
	goto	u4261
	goto	u4260

u4261:
	goto	l4622
u4260:
	line	25
	
l4604:
	movlw	low(01h)
	movwf	((c:___aldiv@counter)),c
	line	26
	goto	l4608
	
l892:
	line	27
	
l4606:
	bcf	status,0
	rlcf	((c:___aldiv@divisor)),c
	rlcf	((c:___aldiv@divisor+1)),c
	rlcf	((c:___aldiv@divisor+2)),c
	rlcf	((c:___aldiv@divisor+3)),c
	line	28
	incf	((c:___aldiv@counter)),c
	goto	l4608
	line	29
	
l891:
	line	26
	
l4608:
	
	btfss	((c:___aldiv@divisor+3)),c,(31)&7
	goto	u4271
	goto	u4270
u4271:
	goto	l4606
u4270:
	goto	l4610
	
l893:
	goto	l4610
	line	30
	
l894:
	line	31
	
l4610:
	bcf	status,0
	rlcf	((c:___aldiv@quotient)),c
	rlcf	((c:___aldiv@quotient+1)),c
	rlcf	((c:___aldiv@quotient+2)),c
	rlcf	((c:___aldiv@quotient+3)),c
	line	32
	
l4612:
		movf	((c:___aldiv@divisor)),c,w
	subwf	((c:___aldiv@dividend)),c,w
	movf	((c:___aldiv@divisor+1)),c,w
	subwfb	((c:___aldiv@dividend+1)),c,w
	movf	((c:___aldiv@divisor+2)),c,w
	subwfb	((c:___aldiv@dividend+2)),c,w
	movf	((c:___aldiv@divisor+3)),c,w
	subwfb	((c:___aldiv@dividend+3)),c,w
	btfss	status,0
	goto	u4281
	goto	u4280

u4281:
	goto	l4618
u4280:
	line	33
	
l4614:
	movf	((c:___aldiv@divisor)),c,w
	subwf	((c:___aldiv@dividend)),c
	movf	((c:___aldiv@divisor+1)),c,w
	subwfb	((c:___aldiv@dividend+1)),c
	movf	((c:___aldiv@divisor+2)),c,w
	subwfb	((c:___aldiv@dividend+2)),c
	movf	((c:___aldiv@divisor+3)),c,w
	subwfb	((c:___aldiv@dividend+3)),c
	line	34
	
l4616:
	bsf	(0+(0/8)+(c:___aldiv@quotient)),c,(0)&7
	goto	l4618
	line	35
	
l895:
	line	36
	
l4618:
	bcf	status,0
	rrcf	((c:___aldiv@divisor+3)),c
	rrcf	((c:___aldiv@divisor+2)),c
	rrcf	((c:___aldiv@divisor+1)),c
	rrcf	((c:___aldiv@divisor)),c
	line	37
	
l4620:
	decfsz	((c:___aldiv@counter)),c
	
	goto	l4610
	goto	l4622
	
l896:
	goto	l4622
	line	38
	
l890:
	line	39
	
l4622:
	movf	((c:___aldiv@sign)),c,w
	btfsc	status,2
	goto	u4291
	goto	u4290
u4291:
	goto	l4626
u4290:
	line	40
	
l4624:
	comf	((c:___aldiv@quotient+3)),c
	comf	((c:___aldiv@quotient+2)),c
	comf	((c:___aldiv@quotient+1)),c
	negf	((c:___aldiv@quotient)),c
	movlw	0
	addwfc	((c:___aldiv@quotient+1)),c
	addwfc	((c:___aldiv@quotient+2)),c
	addwfc	((c:___aldiv@quotient+3)),c
	goto	l4626
	
l897:
	line	41
	
l4626:
	movff	(c:___aldiv@quotient),(c:?___aldiv)
	movff	(c:___aldiv@quotient+1),(c:?___aldiv+1)
	movff	(c:___aldiv@quotient+2),(c:?___aldiv+2)
	movff	(c:___aldiv@quotient+3),(c:?___aldiv+3)
	goto	l898
	
l4628:
	line	42
	
l898:
	return	;funcret
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
	signat	___aldiv,8316
	global	_ADC_Init

;; *************** function _ADC_Init *****************
;; Defined at:
;;		line 25 in file "hal/adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text49,class=CODE,space=0,reloc=2,group=0,minocg
	file	"hal/adc.c"
	line	25
global __ptext49
__ptext49:
psect	text49
	file	"hal/adc.c"
	line	25
	global	__size_of_ADC_Init
	__size_of_ADC_Init	equ	__end_of_ADC_Init-_ADC_Init
	
_ADC_Init:
;incstack = 0
	opt	stack 28
	line	27
	
l4944:
;adc.c: 27: ADCON0= 0;
	movlw	low(0)
	movwf	((4034)),c	;volatile
	line	28
;adc.c: 28: ADCON1= 0x07;
	movlw	low(07h)
	movwf	((4033)),c	;volatile
	line	29
;adc.c: 29: ADCON2= 0;
	movlw	low(0)
	movwf	((4032)),c	;volatile
	line	31
;adc.c: 31: ADCON0= 1 | 4;
	movlw	low(05h)
	movwf	((4034)),c	;volatile
	line	33
;adc.c: 33: ADCON2= 128 | 0 | 7;
	movlw	low(087h)
	movwf	((4032)),c	;volatile
	line	35
	
l4946:
;adc.c: 35: LATDbits.LD7= 1;
	bsf	((3980)),c,7	;volatile
	line	36
;adc.c: 36: ADCON0= 4 | 1;
	movlw	low(05h)
	movwf	((4034)),c	;volatile
	line	37
	
l4948:
;adc.c: 37: ADCON0bits.GO= 1;
	bsf	((4034)),c,1	;volatile
	line	38
	
l102:
	return	;funcret
	opt stack 0
GLOBAL	__end_of_ADC_Init
	__end_of_ADC_Init:
	signat	_ADC_Init,89
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 84 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0      18       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      18       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_PWM_SetSyncTrigger
;;		_TIMER_IncrementSysTick
;;		_TIMER_SetSysTickFlag
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2,minocg
global __pintcode
__pintcode:
psect	intcode
	file	"main.c"
	line	84
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:
;incstack = 0
	opt	stack 25
	bsf int$flags,1,c ;set compiler interrupt flag (level 2)
	global	int_func
	call	int_func,f	;refresh shadow registers
psect	intcode_body,class=CODE,space=0,reloc=2,minocg
global __pintcode_body
__pintcode_body:
int_func:

	pop	; remove dummy address from shadow register refresh
	movff	pclath+0,??_ISR+0
	movff	pclath+1,??_ISR+1
	movff	fsr0l+0,??_ISR+2
	movff	fsr0h+0,??_ISR+3
	movff	fsr1l+0,??_ISR+4
	movff	fsr1h+0,??_ISR+5
	movff	fsr2l+0,??_ISR+6
	movff	fsr2h+0,??_ISR+7
	movff	prodl+0,??_ISR+8
	movff	prodh+0,??_ISR+9
	movff	tblptrl+0,??_ISR+10
	movff	tblptrh+0,??_ISR+11
	movff	tblptru+0,??_ISR+12
	movff	tablat+0,??_ISR+13
	movff	btemp+0,??_ISR+14
	movff	btemp+1+0,??_ISR+15
	movff	btemp+2+0,??_ISR+16
	movff	btemp+3+0,??_ISR+17
	line	87
	
i2l4160:
;main.c: 87: if(PIR1bits.TMR2IF == 1)
	btfss	((3998)),c,1	;volatile
	goto	i2u378_41
	goto	i2u378_40
i2u378_41:
	goto	i2l4168
i2u378_40:
	line	89
	
i2l4162:
;main.c: 88: {
;main.c: 89: PIR1bits.TMR2IF = 0;
	bcf	((3998)),c,1	;volatile
	line	90
	
i2l4164:
;main.c: 90: TIMER_IncrementSysTick();
	call	_TIMER_IncrementSysTick	;wreg free
	line	91
	
i2l4166:
;main.c: 91: TIMER_SetSysTickFlag();
	call	_TIMER_SetSysTickFlag	;wreg free
	goto	i2l4168
	line	92
	
i2l73:
	line	95
	
i2l4168:
;main.c: 92: }
;main.c: 95: if(INTCON3bits.INT1F == 1)
	btfss	((4080)),c,0	;volatile
	goto	i2u379_41
	goto	i2u379_40
i2u379_41:
	goto	i2l75
i2u379_40:
	line	97
	
i2l4170:
;main.c: 96: {
;main.c: 97: INTCON3bits.INT1F= 0;
	bcf	((4080)),c,0	;volatile
	line	98
	
i2l4172:
;main.c: 98: PWM_SetSyncTrigger();
	call	_PWM_SetSyncTrigger	;wreg free
	line	100
	
i2l4174:
;main.c: 100: LATAbits.LA6= 1;
	bsf	((3977)),c,6	;volatile
	goto	i2l75
	line	101
	
i2l74:
	line	102
	
i2l75:
	movff	??_ISR+17,btemp+3+0
	movff	??_ISR+16,btemp+2+0
	movff	??_ISR+15,btemp+1+0
	movff	??_ISR+14,btemp+0
	movff	??_ISR+13,tablat+0
	movff	??_ISR+12,tblptru+0
	movff	??_ISR+11,tblptrh+0
	movff	??_ISR+10,tblptrl+0
	movff	??_ISR+9,prodh+0
	movff	??_ISR+8,prodl+0
	movff	??_ISR+7,fsr2h+0
	movff	??_ISR+6,fsr2l+0
	movff	??_ISR+5,fsr1h+0
	movff	??_ISR+4,fsr1l+0
	movff	??_ISR+3,fsr0h+0
	movff	??_ISR+2,fsr0l+0
	movff	??_ISR+1,pclath+1
	movff	??_ISR+0,pclath+0
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	retfie f
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,89
	global	_TIMER_SetSysTickFlag

;; *************** function _TIMER_SetSysTickFlag *****************
;; Defined at:
;;		line 57 in file "hal/timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text51,class=CODE,space=0,reloc=2,group=0,minocg
	file	"hal/timer.c"
	line	57
global __ptext51
__ptext51:
psect	text51
	file	"hal/timer.c"
	line	57
	global	__size_of_TIMER_SetSysTickFlag
	__size_of_TIMER_SetSysTickFlag	equ	__end_of_TIMER_SetSysTickFlag-_TIMER_SetSysTickFlag
	
_TIMER_SetSysTickFlag:
;incstack = 0
	opt	stack 25
	line	59
	
i2l4108:
;timer.c: 59: bFlag_SysTick= 1;
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((_bFlag_SysTick))&0ffh
	line	60
	
i2l721:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_TIMER_SetSysTickFlag
	__end_of_TIMER_SetSysTickFlag:
	signat	_TIMER_SetSysTickFlag,89
	global	_TIMER_IncrementSysTick

;; *************** function _TIMER_IncrementSysTick *****************
;; Defined at:
;;		line 46 in file "hal/timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text52,class=CODE,space=0,reloc=2,group=0,minocg
	line	46
global __ptext52
__ptext52:
psect	text52
	file	"hal/timer.c"
	line	46
	global	__size_of_TIMER_IncrementSysTick
	__size_of_TIMER_IncrementSysTick	equ	__end_of_TIMER_IncrementSysTick-_TIMER_IncrementSysTick
	
_TIMER_IncrementSysTick:; BSR set to: 0

;incstack = 0
	opt	stack 25
	line	48
	
i2l4106:
;timer.c: 48: ++u32_SysTickCounter;
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	1	; force () banked
opt asmopt_pop
	addwf	((_u32_SysTickCounter))&0ffh
	movlw	0
	addwfc	((_u32_SysTickCounter+1))&0ffh
	addwfc	((_u32_SysTickCounter+2))&0ffh
	addwfc	((_u32_SysTickCounter+3))&0ffh
	line	49
	
i2l715:; BSR set to: 1

	return	;funcret
	opt stack 0
GLOBAL	__end_of_TIMER_IncrementSysTick
	__end_of_TIMER_IncrementSysTick:
	signat	_TIMER_IncrementSysTick,89
	global	_PWM_SetSyncTrigger

;; *************** function _PWM_SetSyncTrigger *****************
;; Defined at:
;;		line 74 in file "hal/pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14  BANK15
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text53,class=CODE,space=0,reloc=2,group=0,minocg
	file	"hal/pwm.c"
	line	74
global __ptext53
__ptext53:
psect	text53
	file	"hal/pwm.c"
	line	74
	global	__size_of_PWM_SetSyncTrigger
	__size_of_PWM_SetSyncTrigger	equ	__end_of_PWM_SetSyncTrigger-_PWM_SetSyncTrigger
	
_PWM_SetSyncTrigger:; BSR set to: 1

;incstack = 0
	opt	stack 25
	line	76
	
i2l4110:
;pwm.c: 76: bFlag_SyncTrigger= 1;
	movlw	low(01h)
opt asmopt_push
opt asmopt_off
	movlb	0	; force () banked
opt asmopt_pop
	movwf	((_bFlag_SyncTrigger))&0ffh
	line	77
	
i2l823:; BSR set to: 0

	return	;funcret
	opt stack 0
GLOBAL	__end_of_PWM_SetSyncTrigger
	__end_of_PWM_SetSyncTrigger:
	signat	_PWM_SetSyncTrigger,89
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	3
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	param0,class=BANK0,space=1,noexec
	GLOBAL	__Lparam0
	FNCONF	param0,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 0
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lparam0, __Hparam0
__Lparam	EQU	__Lparam0
__Hparam	EQU	__Hparam0
       psect   temp,common,ovrld,class=COMRAM,space=1
	global	btemp
btemp:
	ds	1
	global	int$flags
	int$flags	set btemp
	global	wtemp6
	wtemp6 set btemp+1
	end
