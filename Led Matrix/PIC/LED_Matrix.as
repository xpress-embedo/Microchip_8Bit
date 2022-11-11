opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 56723"

opt pagewidth 120

	opt lm

	processor	18F4550
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
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
	movf postdec1,w
	movf indf1,w
endm
popf macro arg1
	movf postdec1,w
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 49 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 68 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 144 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 217 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
SPPCON equ 0F65h ;# 
# 242 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UFRM equ 0F66h ;# 
# 248 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UFRML equ 0F66h ;# 
# 325 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UFRMH equ 0F67h ;# 
# 364 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UIR equ 0F68h ;# 
# 419 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UIE equ 0F69h ;# 
# 474 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 524 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 574 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 633 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UCON equ 0F6Dh ;# 
# 683 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 746 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 827 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP0 equ 0F70h ;# 
# 958 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1089 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1220 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1351 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1482 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1613 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1744 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1875 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1962 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP9 equ 0F79h ;# 
# 2049 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 2136 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2223 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2310 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2397 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2484 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2571 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PORTA equ 0F80h ;# 
# 2727 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PORTB equ 0F81h ;# 
# 2836 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PORTC equ 0F82h ;# 
# 2989 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PORTD equ 0F83h ;# 
# 3109 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PORTE equ 0F84h ;# 
# 3360 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
LATA equ 0F89h ;# 
# 3495 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3627 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3742 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3874 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3976 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TRISA equ 0F92h ;# 
# 3981 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
DDRA equ 0F92h ;# 
# 4173 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TRISB equ 0F93h ;# 
# 4178 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
DDRB equ 0F93h ;# 
# 4394 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TRISC equ 0F94h ;# 
# 4399 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
DDRC equ 0F94h ;# 
# 4565 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TRISD equ 0F95h ;# 
# 4570 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
DDRD equ 0F95h ;# 
# 4786 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TRISE equ 0F96h ;# 
# 4791 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
DDRE equ 0F96h ;# 
# 4887 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4945 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 5033 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 5121 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 5209 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 5279 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 5349 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 5419 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 5484 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 5490 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 5496 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
EEADR equ 0FA9h ;# 
# 5502 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
RCSTA equ 0FABh ;# 
# 5507 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5711 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5716 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 6008 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TXREG equ 0FADh ;# 
# 6013 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 6019 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
RCREG equ 0FAEh ;# 
# 6024 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 6030 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 6035 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 6041 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 6047 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
T3CON equ 0FB1h ;# 
# 6169 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 6175 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 6181 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 6187 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
CMCON equ 0FB4h ;# 
# 6282 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 6366 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 6371 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 6527 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 6532 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6664 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6669 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6843 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6906 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6912 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6918 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6924 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6929 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 7085 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 7091 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 7097 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 7103 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 7173 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 7263 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 7385 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
ADRES equ 0FC3h ;# 
# 7391 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 7397 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 7403 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 7464 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 7533 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7799 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7805 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7811 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7908 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7913 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 8017 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 8023 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
T1CON equ 0FCDh ;# 
# 8127 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 8133 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 8139 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 8145 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
RCON equ 0FD0h ;# 
# 8293 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 8320 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 8325 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 8589 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8671 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8740 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8746 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8752 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8758 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8836 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8842 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8848 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8854 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8860 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8866 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8872 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8878 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8884 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
BSR equ 0FE0h ;# 
# 8890 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8896 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8902 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8908 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8914 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8920 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8932 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8938 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
WREG equ 0FE8h ;# 
# 8944 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8950 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8956 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8962 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8968 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8974 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8980 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8986 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8992 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 9083 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 9159 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
INTCON equ 0FF2h ;# 
# 9295 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PROD equ 0FF3h ;# 
# 9301 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PRODL equ 0FF3h ;# 
# 9307 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PRODH equ 0FF4h ;# 
# 9313 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 9321 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 9327 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 9333 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 9339 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 9347 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 9354 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PC equ 0FF9h ;# 
# 9360 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PCL equ 0FF9h ;# 
# 9366 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 9372 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 9378 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 9453 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TOS equ 0FFDh ;# 
# 9459 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TOSL equ 0FFDh ;# 
# 9465 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TOSH equ 0FFEh ;# 
# 9471 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TOSU equ 0FFFh ;# 
# 49 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 68 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 144 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 217 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
SPPCON equ 0F65h ;# 
# 242 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UFRM equ 0F66h ;# 
# 248 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UFRML equ 0F66h ;# 
# 325 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UFRMH equ 0F67h ;# 
# 364 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UIR equ 0F68h ;# 
# 419 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UIE equ 0F69h ;# 
# 474 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 524 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 574 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 633 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UCON equ 0F6Dh ;# 
# 683 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 746 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 827 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP0 equ 0F70h ;# 
# 958 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1089 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1220 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1351 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1482 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1613 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1744 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1875 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1962 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP9 equ 0F79h ;# 
# 2049 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 2136 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2223 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2310 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2397 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2484 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2571 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PORTA equ 0F80h ;# 
# 2727 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PORTB equ 0F81h ;# 
# 2836 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PORTC equ 0F82h ;# 
# 2989 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PORTD equ 0F83h ;# 
# 3109 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PORTE equ 0F84h ;# 
# 3360 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
LATA equ 0F89h ;# 
# 3495 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3627 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3742 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3874 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3976 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TRISA equ 0F92h ;# 
# 3981 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
DDRA equ 0F92h ;# 
# 4173 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TRISB equ 0F93h ;# 
# 4178 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
DDRB equ 0F93h ;# 
# 4394 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TRISC equ 0F94h ;# 
# 4399 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
DDRC equ 0F94h ;# 
# 4565 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TRISD equ 0F95h ;# 
# 4570 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
DDRD equ 0F95h ;# 
# 4786 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TRISE equ 0F96h ;# 
# 4791 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
DDRE equ 0F96h ;# 
# 4887 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4945 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 5033 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 5121 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 5209 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 5279 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 5349 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 5419 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 5484 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 5490 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 5496 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
EEADR equ 0FA9h ;# 
# 5502 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
RCSTA equ 0FABh ;# 
# 5507 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5711 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5716 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 6008 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TXREG equ 0FADh ;# 
# 6013 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 6019 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
RCREG equ 0FAEh ;# 
# 6024 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 6030 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 6035 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 6041 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 6047 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
T3CON equ 0FB1h ;# 
# 6169 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 6175 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 6181 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 6187 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
CMCON equ 0FB4h ;# 
# 6282 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 6366 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 6371 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 6527 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 6532 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6664 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6669 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6843 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6906 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6912 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6918 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6924 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6929 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 7085 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 7091 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 7097 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 7103 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 7173 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 7263 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 7385 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
ADRES equ 0FC3h ;# 
# 7391 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 7397 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 7403 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 7464 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 7533 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7799 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7805 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7811 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7908 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7913 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 8017 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 8023 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
T1CON equ 0FCDh ;# 
# 8127 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 8133 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 8139 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 8145 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
RCON equ 0FD0h ;# 
# 8293 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 8320 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 8325 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 8589 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8671 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8740 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8746 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8752 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8758 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8836 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8842 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8848 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8854 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8860 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8866 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8872 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8878 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8884 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
BSR equ 0FE0h ;# 
# 8890 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8896 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8902 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8908 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8914 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8920 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8932 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8938 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
WREG equ 0FE8h ;# 
# 8944 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8950 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8956 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8962 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8968 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8974 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8980 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8986 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8992 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 9083 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 9159 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
INTCON equ 0FF2h ;# 
# 9295 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PROD equ 0FF3h ;# 
# 9301 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PRODL equ 0FF3h ;# 
# 9307 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PRODH equ 0FF4h ;# 
# 9313 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 9321 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 9327 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 9333 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 9339 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 9347 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 9354 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PC equ 0FF9h ;# 
# 9360 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PCL equ 0FF9h ;# 
# 9366 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 9372 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 9378 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 9453 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TOS equ 0FFDh ;# 
# 9459 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TOSL equ 0FFDh ;# 
# 9465 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TOSH equ 0FFEh ;# 
# 9471 "C:\Program Files\Microchip\xc8\v1.31\include\pic18f4550.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_ShiftRegisterInit
	FNCALL	_main,_ShiftRegisterWrite
	FNCALL	_main,_UART_Init
	FNCALL	_main,_UART_Write_Text
	FNCALL	_main,___awdiv
	FNCALL	_main,_strlen
	FNCALL	_UART_Write_Text,_UART_Write
	FNCALL	_UART_Write_Text,_UART_Write_Busy
	FNCALL	_UART_Write,_Correct_UART_Errors
	FNROOT	_main
	FNCALL	_Interrupt_Handler_High,i1_UART_Write_Text
	FNCALL	i1_UART_Write_Text,i1_UART_Write
	FNCALL	i1_UART_Write_Text,i1_UART_Write_Busy
	FNCALL	i1_UART_Write,i1_Correct_UART_Errors
	FNCALL	intlevel1,_Interrupt_Handler_High
	global	intlevel1
	FNROOT	intlevel1
	global	_CharData
psect	mediumconst,class=MEDIUMCONST,space=0,reloc=2,noexec
global __pmediumconst
__pmediumconst:
	db	0
	file	"D:\LED Matrix\Micro-Controller Code\ConfigurationFile.h"
	line	126
_CharData:
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(0)&0ffffh
	dw	(04h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(07h)&0ffffh
	dw	(0Ch)&0ffffh
	dw	(014h)&0ffffh
	dw	(0Ch)&0ffffh
	dw	(06h)&0ffffh
	dw	(05h)&0ffffh
	dw	(06h)&0ffffh
	dw	(01Ch)&0ffffh
	dw	(019h)&0ffffh
	dw	(01Ah)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(0Bh)&0ffffh
	dw	(013h)&0ffffh
	dw	(06h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(012h)&0ffffh
	dw	(014h)&0ffffh
	dw	(09h)&0ffffh
	dw	(016h)&0ffffh
	dw	(016h)&0ffffh
	dw	(09h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(04h)&0ffffh
	dw	(02h)&0ffffh
	dw	(08h)&0ffffh
	dw	(04h)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(015h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(015h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(06h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(04h)&0ffffh
	dw	(01h)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(010h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(013h)&0ffffh
	dw	(011h)&0ffffh
	dw	(015h)&0ffffh
	dw	(011h)&0ffffh
	dw	(019h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(04h)&0ffffh
	dw	(0Ch)&0ffffh
	dw	(014h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(010h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(01h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(01h)&0ffffh
	dw	(01h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(014h)&0ffffh
	dw	(014h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(01h)&0ffffh
	dw	(01h)&0ffffh
	dw	(01h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(07h)&0ffffh
	dw	(08h)&0ffffh
	dw	(010h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(01h)&0ffffh
	dw	(01h)&0ffffh
	dw	(01h)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(010h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Fh)&0ffffh
	dw	(01h)&0ffffh
	dw	(01h)&0ffffh
	dw	(01h)&0ffffh
	dw	(01h)&0ffffh
	dw	(0)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(01h)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(04h)&0ffffh
	dw	(02h)&0ffffh
	dw	(01h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(0)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(010h)&0ffffh
	dw	(08h)&0ffffh
	dw	(04h)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(010h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(0)&0ffffh
	dw	(04h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(015h)&0ffffh
	dw	(015h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(07h)&0ffffh
	dw	(08h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(08h)&0ffffh
	dw	(07h)&0ffffh
	dw	(01Ch)&0ffffh
	dw	(012h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(012h)&0ffffh
	dw	(01Ch)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(017h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(014h)&0ffffh
	dw	(08h)&0ffffh
	dw	(011h)&0ffffh
	dw	(012h)&0ffffh
	dw	(014h)&0ffffh
	dw	(018h)&0ffffh
	dw	(014h)&0ffffh
	dw	(012h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(011h)&0ffffh
	dw	(01Bh)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(015h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(019h)&0ffffh
	dw	(019h)&0ffffh
	dw	(015h)&0ffffh
	dw	(015h)&0ffffh
	dw	(013h)&0ffffh
	dw	(013h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(015h)&0ffffh
	dw	(013h)&0ffffh
	dw	(0Fh)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(014h)&0ffffh
	dw	(012h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(010h)&0ffffh
	dw	(08h)&0ffffh
	dw	(06h)&0ffffh
	dw	(01h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(04h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(015h)&0ffffh
	dw	(015h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(01h)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(010h)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(01h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(04h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(011h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(08h)&0ffffh
	dw	(04h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(0Fh)&0ffffh
	dw	(0)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(01Ch)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(01Ch)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(0)&0ffffh
	dw	(01h)&0ffffh
	dw	(01h)&0ffffh
	dw	(01h)&0ffffh
	dw	(07h)&0ffffh
	dw	(09h)&0ffffh
	dw	(09h)&0ffffh
	dw	(07h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(01Ch)&0ffffh
	dw	(012h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(010h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(0)&0ffffh
	dw	(03h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(06h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(0)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(0Ch)&0ffffh
	dw	(0)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(01Ch)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(04h)&0ffffh
	dw	(0)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(0)&0ffffh
	dw	(02h)&0ffffh
	dw	(0)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(0Ch)&0ffffh
	dw	(0)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(014h)&0ffffh
	dw	(018h)&0ffffh
	dw	(018h)&0ffffh
	dw	(014h)&0ffffh
	dw	(010h)&0ffffh
	dw	(0)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(0Ch)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(015h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(014h)&0ffffh
	dw	(01Ah)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0Ch)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(0Ch)&0ffffh
	dw	(0)&0ffffh
	dw	(01Ch)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(01Ch)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(0)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(02h)&0ffffh
	dw	(02h)&0ffffh
	dw	(01h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(0Ch)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0Eh)&0ffffh
	dw	(010h)&0ffffh
	dw	(08h)&0ffffh
	dw	(04h)&0ffffh
	dw	(02h)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(0)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(01Ch)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(010h)&0ffffh
	dw	(0Ch)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(012h)&0ffffh
	dw	(0Ch)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(04h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(011h)&0ffffh
	dw	(015h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(04h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(011h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(011h)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(08h)&0ffffh
	dw	(010h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(01Fh)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(02h)&0ffffh
	dw	(04h)&0ffffh
	dw	(04h)&0ffffh
	dw	(08h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	dw	(0Ah)&0ffffh
	dw	(01Eh)&0ffffh
	dw	(014h)&0ffffh
	dw	(0)&0ffffh
	dw	(0)&0ffffh
	global __end_of_CharData
__end_of_CharData:
	global	_CharData
	global	_HeaderDetected
	global	_PacketLength
	global	_SerialCharacter
	global	_SerialDataIndex
	global	_DisplayBuffer
	global	_PacketValidity
	global	_RequestType
	global	_ShiftSpeed
	global	_SerialData
	global	main@F5388
	global	_BAUDCONbits
_BAUDCONbits	set	0xFB8
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_LATCbits
_LATCbits	set	0xF8B
	global	_LATD
_LATD	set	0xF8C
	global	_PIE1bits
_PIE1bits	set	0xF9D
	global	_PIR1bits
_PIR1bits	set	0xF9E
	global	_RCREG
_RCREG	set	0xFAE
	global	_RCSTAbits
_RCSTAbits	set	0xFAB
	global	_SPBRG
_SPBRG	set	0xFAF
	global	_TRISCbits
_TRISCbits	set	0xF94
	global	_TRISD
_TRISD	set	0xF95
	global	_TXREG
_TXREG	set	0xFAD
	global	_TXSTA
_TXSTA	set	0xFAC
	global	_TXSTAbits
_TXSTAbits	set	0xFAC
	global __stringdata
__stringdata:
	
STR_3:
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	69	;'E'
	db	82	;'R'
	db	32
	db	84	;'T'
	db	72	;'H'
	db	69	;'E'
	db	32
	db	80	;'P'
	db	65	;'A'
	db	67	;'C'
	db	75	;'K'
	db	69	;'E'
	db	84	;'T'
	db	32
	db	84	;'T'
	db	79	;'O'
	db	32
	db	66	;'B'
	db	69	;'E'
	db	32
	db	68	;'D'
	db	73	;'I'
	db	83	;'S'
	db	80	;'P'
	db	76	;'L'
	db	65	;'A'
	db	89	;'Y'
	db	69	;'E'
	db	68	;'D'
	db	32
	db	79	;'O'
	db	78	;'N'
	db	32
	db	76	;'L'
	db	69	;'E'
	db	68	;'D'
	db	32
	db	77	;'M'
	db	65	;'A'
	db	84	;'T'
	db	82	;'R'
	db	73	;'I'
	db	88	;'X'
	db	63	;'?'
	db	63	;'?'
	db	13
	db	10
	db	0
	
STR_2:
	db	76	;'L'
	db	69	;'E'
	db	68	;'D'
	db	32
	db	77	;'M'
	db	65	;'A'
	db	84	;'T'
	db	82	;'R'
	db	73	;'I'
	db	88	;'X'
	db	13
	db	10
	db	0
	
STR_1:
	db	42
	db	69	;'E'
	db	82	;'R'
	db	82	;'R'
	db	79	;'O'
	db	82	;'R'
	db	36
	db	0
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
global __CFG_CPUDIV$OSC1_PLL2
__CFG_CPUDIV$OSC1_PLL2 equ 0x0
global __CFG_PLLDIV$5
__CFG_PLLDIV$5 equ 0x0
global __CFG_USBDIV$2
__CFG_USBDIV$2 equ 0x0
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
global __CFG_FOSC$HSPLL_HS
__CFG_FOSC$HSPLL_HS equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_VREGEN$OFF
__CFG_VREGEN$OFF equ 0x0
global __CFG_BOR$OFF
__CFG_BOR$OFF equ 0x0
global __CFG_BORV$3
__CFG_BORV$3 equ 0x0
global __CFG_PWRT$OFF
__CFG_PWRT$OFF equ 0x0
global __CFG_WDTPS$32768
__CFG_WDTPS$32768 equ 0x0
global __CFG_WDT$OFF
__CFG_WDT$OFF equ 0x0
global __CFG_CCP2MX$ON
__CFG_CCP2MX$ON equ 0x0
global __CFG_PBADEN$OFF
__CFG_PBADEN$OFF equ 0x0
global __CFG_LPT1OSC$OFF
__CFG_LPT1OSC$OFF equ 0x0
global __CFG_MCLRE$ON
__CFG_MCLRE$ON equ 0x0
global __CFG_STVREN$ON
__CFG_STVREN$ON equ 0x0
global __CFG_ICPRT$OFF
__CFG_ICPRT$OFF equ 0x0
global __CFG_XINST$OFF
__CFG_XINST$OFF equ 0x0
global __CFG_LVP$ON
__CFG_LVP$ON equ 0x0
global __CFG_CP0$OFF
__CFG_CP0$OFF equ 0x0
global __CFG_CP1$OFF
__CFG_CP1$OFF equ 0x0
global __CFG_CP2$OFF
__CFG_CP2$OFF equ 0x0
global __CFG_CP3$OFF
__CFG_CP3$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_CPB$OFF
__CFG_CPB$OFF equ 0x0
global __CFG_WRT0$OFF
__CFG_WRT0$OFF equ 0x0
global __CFG_WRT1$OFF
__CFG_WRT1$OFF equ 0x0
global __CFG_WRT2$OFF
__CFG_WRT2$OFF equ 0x0
global __CFG_WRT3$OFF
__CFG_WRT3$OFF equ 0x0
global __CFG_WRTB$OFF
__CFG_WRTB$OFF equ 0x0
global __CFG_WRTC$OFF
__CFG_WRTC$OFF equ 0x0
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
	file	"LED_Matrix.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec
global __pbssCOMRAM
__pbssCOMRAM:
	global	_HeaderDetected
_HeaderDetected:
       ds      1
	global	_PacketLength
_PacketLength:
       ds      1
	global	_SerialCharacter
_SerialCharacter:
       ds      1
	global	_SerialDataIndex
_SerialDataIndex:
       ds      1
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
	global	_DisplayBuffer
_DisplayBuffer:
       ds      64
psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
	global	_PacketValidity
_PacketValidity:
       ds      1
	global	_RequestType
_RequestType:
       ds      1
	global	_ShiftSpeed
_ShiftSpeed:
       ds      1
psect	bssBANK2,class=BANK2,space=1,noexec
global __pbssBANK2
__pbssBANK2:
	global	_SerialData
_SerialData:
       ds      200
psect	bssBANK3,class=BANK3,space=1,noexec
global __pbssBANK3
__pbssBANK3:
main@F5388:
       ds      200
	line	#
psect	cinit
; Clear objects allocated to BANK3 (200 bytes)
	global __pbssBANK3
lfsr	0,__pbssBANK3
movlw	200
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to BANK2 (200 bytes)
	global __pbssBANK2
lfsr	0,__pbssBANK2
movlw	200
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to BANK1 (3 bytes)
	global __pbssBANK1
movlb	1
clrf	(__pbssBANK1+2)&0xffh,b
clrf	(__pbssBANK1+1)&0xffh,b
clrf	(__pbssBANK1+0)&0xffh,b
; Clear objects allocated to BANK0 (64 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	64
clear_2:
clrf	postinc0,c
decf	wreg
bnz	clear_2
; Clear objects allocated to COMRAM (4 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+3)&0xffh,c
clrf	(__pbssCOMRAM+2)&0xffh,c
clrf	(__pbssCOMRAM+1)&0xffh,c
clrf	(__pbssCOMRAM+0)&0xffh,c
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	main@Message
main@Message:	; 200 bytes @ 0x0
	ds   200
	global	main@Repeat
main@Repeat:	; 1 bytes @ 0xC8
	ds   1
	global	main@DisplayType
main@DisplayType:	; 1 bytes @ 0xC9
	ds   1
	global	main@Column
main@Column:	; 1 bytes @ 0xCA
	ds   1
	global	main@length
main@length:	; 1 bytes @ 0xCB
	ds   1
	global	main@scroll
main@scroll:	; 1 bytes @ 0xCC
	ds   1
	global	main@index
main@index:	; 1 bytes @ 0xCD
	ds   1
	global	main@num
main@num:	; 1 bytes @ 0xCE
	ds   1
	global	main@temp
main@temp:	; 1 bytes @ 0xCF
	ds   1
	global	main@i
main@i:	; 2 bytes @ 0xD0
	ds   2
	global	main@shift_step
main@shift_step:	; 1 bytes @ 0xD2
	ds   1
	global	main@row
main@row:	; 1 bytes @ 0xD3
	ds   1
psect	cstackCOMRAM,class=COMRAM,space=1,noexec
global __pcstackCOMRAM
__pcstackCOMRAM:
?_Correct_UART_Errors:	; 0 bytes @ 0x0
?_ShiftRegisterInit:	; 0 bytes @ 0x0
?_ShiftRegisterWrite:	; 0 bytes @ 0x0
?_UART_Init:	; 0 bytes @ 0x0
?_UART_Write:	; 0 bytes @ 0x0
?_Interrupt_Handler_High:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?i1_UART_Write:	; 0 bytes @ 0x0
??i1_UART_Write:	; 0 bytes @ 0x0
??i1_UART_Write_Busy:	; 0 bytes @ 0x0
?i1_Correct_UART_Errors:	; 0 bytes @ 0x0
??i1_Correct_UART_Errors:	; 0 bytes @ 0x0
?_UART_Write_Busy:	; 1 bytes @ 0x0
?i1_UART_Write_Busy:	; 1 bytes @ 0x0
	global	i1UART_Write@data
i1UART_Write@data:	; 1 bytes @ 0x0
	ds   1
?i1_UART_Write_Text:	; 0 bytes @ 0x1
	global	i1UART_Write_Text@msg
i1UART_Write_Text@msg:	; 2 bytes @ 0x1
	ds   2
??_Interrupt_Handler_High:	; 0 bytes @ 0x3
??i1_UART_Write_Text:	; 0 bytes @ 0x3
	ds   18
??_Correct_UART_Errors:	; 0 bytes @ 0x15
??_UART_Write_Busy:	; 0 bytes @ 0x15
??_ShiftRegisterInit:	; 0 bytes @ 0x15
??_ShiftRegisterWrite:	; 0 bytes @ 0x15
??_UART_Init:	; 0 bytes @ 0x15
??_UART_Write:	; 0 bytes @ 0x15
	global	?_strlen
?_strlen:	; 2 bytes @ 0x15
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x15
	global	UART_Write@data
UART_Write@data:	; 1 bytes @ 0x15
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x15
	global	strlen@s
strlen@s:	; 2 bytes @ 0x15
	ds   1
?_UART_Write_Text:	; 0 bytes @ 0x16
	global	UART_Write_Text@msg
UART_Write_Text@msg:	; 2 bytes @ 0x16
	ds   1
??_strlen:	; 0 bytes @ 0x17
	global	ShiftRegisterWrite@Row
ShiftRegisterWrite@Row:	; 1 bytes @ 0x17
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x17
	ds   1
??_UART_Write_Text:	; 0 bytes @ 0x18
	global	ShiftRegisterWrite@Flag
ShiftRegisterWrite@Flag:	; 1 bytes @ 0x18
	ds   1
??___awdiv:	; 0 bytes @ 0x19
	global	ShiftRegisterWrite@Mask
ShiftRegisterWrite@Mask:	; 1 bytes @ 0x19
	global	strlen@cp
strlen@cp:	; 2 bytes @ 0x19
	ds   1
	global	ShiftRegisterWrite@i
ShiftRegisterWrite@i:	; 1 bytes @ 0x1A
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x1A
	ds   1
	global	ShiftRegisterWrite@num
ShiftRegisterWrite@num:	; 1 bytes @ 0x1B
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x1B
	ds   1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x1C
	ds   2
??_main:	; 0 bytes @ 0x1E
	ds   6
;!
;!Data Sizes:
;!    Strings     72
;!    Constant    1520
;!    Data        0
;!    BSS         471
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     36      40
;!    BANK0           160      0      64
;!    BANK1           256    212     215
;!    BANK2           256      0     200
;!    BANK3           256      0     200
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    strlen@s	PTR const unsigned char  size(2) Largest target is 200
;!		 -> main@Message(BANK1[200]), 
;!
;!    strlen@cp	PTR const unsigned char  size(2) Largest target is 200
;!		 -> main@Message(BANK1[200]), 
;!
;!    UART_Write_Text@msg	PTR unsigned char  size(2) Largest target is 51
;!		 -> STR_3(CODE[51]), STR_2(CODE[13]), STR_1(CODE[8]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->___awdiv
;!    _UART_Write_Text->_UART_Write
;!
;!Critical Paths under _Interrupt_Handler_High in COMRAM
;!
;!    _Interrupt_Handler_High->i1_UART_Write_Text
;!    i1_UART_Write_Text->i1_UART_Write
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _Interrupt_Handler_High in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _Interrupt_Handler_High in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _Interrupt_Handler_High in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _Interrupt_Handler_High in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _Interrupt_Handler_High in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _Interrupt_Handler_High in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _Interrupt_Handler_High in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _Interrupt_Handler_High in BANK7
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 6, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                               218   218      0    5518
;!                                             30 COMRAM     6     6      0
;!                                              0 BANK1    212   212      0
;!                  _ShiftRegisterInit
;!                 _ShiftRegisterWrite
;!                          _UART_Init
;!                    _UART_Write_Text
;!                            ___awdiv
;!                             _strlen
;! ---------------------------------------------------------------------------------
;! (1) _strlen                                               6     4      2     143
;!                                             21 COMRAM     6     4      2
;! ---------------------------------------------------------------------------------
;! (1) ___awdiv                                              9     5      4     406
;!                                             21 COMRAM     9     5      4
;! ---------------------------------------------------------------------------------
;! (1) _UART_Write_Text                                      2     0      2     200
;!                                             22 COMRAM     2     0      2
;!                         _UART_Write
;!                    _UART_Write_Busy
;! ---------------------------------------------------------------------------------
;! (2) _UART_Write_Busy                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _UART_Write                                           1     1      0      22
;!                                             21 COMRAM     1     1      0
;!                _Correct_UART_Errors
;! ---------------------------------------------------------------------------------
;! (3) _Correct_UART_Errors                                  0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _UART_Init                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _ShiftRegisterWrite                                   7     7      0     183
;!                                             21 COMRAM     7     7      0
;! ---------------------------------------------------------------------------------
;! (1) _ShiftRegisterInit                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _Interrupt_Handler_High                              18    18      0      93
;!                                              3 COMRAM    18    18      0
;!                  i1_UART_Write_Text
;! ---------------------------------------------------------------------------------
;! (5) i1_UART_Write_Text                                    2     0      2      93
;!                                              1 COMRAM     2     0      2
;!                       i1_UART_Write
;!                  i1_UART_Write_Busy
;! ---------------------------------------------------------------------------------
;! (6) i1_UART_Write_Busy                                    0     0      0       0
;! ---------------------------------------------------------------------------------
;! (6) i1_UART_Write                                         1     1      0      22
;!                                              0 COMRAM     1     1      0
;!              i1_Correct_UART_Errors
;! ---------------------------------------------------------------------------------
;! (7) i1_Correct_UART_Errors                                0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _ShiftRegisterInit
;!   _ShiftRegisterWrite
;!   _UART_Init
;!   _UART_Write_Text
;!     _UART_Write
;!       _Correct_UART_Errors
;!     _UART_Write_Busy
;!   ___awdiv
;!   _strlen
;!
;! _Interrupt_Handler_High (ROOT)
;!   i1_UART_Write_Text
;!     i1_UART_Write
;!       i1_Correct_UART_Errors
;!     i1_UART_Write_Busy
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             7FF      0       0      21        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK7           100      0       0      18        0.0%
;!BANK7              100      0       0      19        0.0%
;!BITBANK6           100      0       0      16        0.0%
;!BANK6              100      0       0      17        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0      C8      11       78.1%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0      C8       9       78.1%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100     D4      D7       7       84.0%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0      40       5       40.0%
;!BITCOMRAM           5F      0       0       0        0.0%
;!COMRAM              5F     24      28       1       42.1%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     2CF      20        0.0%
;!DATA                 0      0     2CF       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 82 in file "D:\LED Matrix\Micro-Controller Code\mainv0.4.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Message       200    0[BANK1 ] unsigned char [200]
;;  i               2  208[BANK1 ] unsigned int 
;;  row             1  211[BANK1 ] unsigned char 
;;  shift_step      1  210[BANK1 ] unsigned char 
;;  temp            1  207[BANK1 ] unsigned char 
;;  num             1  206[BANK1 ] unsigned char 
;;  index           1  205[BANK1 ] unsigned char 
;;  scroll          1  204[BANK1 ] unsigned char 
;;  length          1  203[BANK1 ] unsigned char 
;;  Column          1  202[BANK1 ] unsigned char 
;;  DisplayType     1  201[BANK1 ] unsigned char 
;;  Repeat          1  200[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0     212       0       0       0       0       0       0
;;      Temps:          6       0       0       0       0       0       0       0       0
;;      Totals:         6       0     212       0       0       0       0       0       0
;;Total ram usage:      218 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_ShiftRegisterInit
;;		_ShiftRegisterWrite
;;		_UART_Init
;;		_UART_Write_Text
;;		___awdiv
;;		_strlen
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
	file	"D:\LED Matrix\Micro-Controller Code\mainv0.4.c"
	line	82
global __ptext0
__ptext0:
psect	text0
	file	"D:\LED Matrix\Micro-Controller Code\mainv0.4.c"
	line	82
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:
;incstack = 0
	opt	stack 24
	line	85
	
l1379:
;mainv0.4.c: 84: unsigned int i;
;mainv0.4.c: 85: unsigned char Repeat,Column,num,scroll,shift_step=1,row;
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(01h)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@shift_step))&0ffh
	movf	(??_main+0+0)&0ffh,c,w
	line	86
;mainv0.4.c: 86: unsigned char index=0;
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@index))&0ffh
	movf	(??_main+0+0)&0ffh,c,w
	line	88
	
l1381:; BSR set to: 1

;mainv0.4.c: 87: unsigned char temp,length;
;mainv0.4.c: 88: unsigned char Message[200]={0};
	lfsr	2,(main@F5388)
	lfsr	1,(main@Message)
	movlw	200
u1331:
	movff	postinc2,postinc1
	decfsz	wreg
	goto	u1331
	line	89
	
l1383:; BSR set to: 1

;mainv0.4.c: 89: unsigned char DisplayType = 2;
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(02h)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@DisplayType))&0ffh
	movf	(??_main+0+0)&0ffh,c,w
	line	90
	
l1385:; BSR set to: 1

;mainv0.4.c: 90: TRISD = 0x00;
	movlw	low(0)
	movwf	((c:3989)),c	;volatile
	line	91
	
l1387:; BSR set to: 1

;mainv0.4.c: 91: UART_Init();
	call	_UART_Init	;wreg free
	line	92
	
l1389:
;mainv0.4.c: 92: UART_Write_Text((unsigned char*)"LED MATRIX\r\n");
		movlw	high(STR_2)
	movwf	((c:UART_Write_Text@msg+1)),c
	movlw	low(STR_2)
	movwf	((c:UART_Write_Text@msg)),c

	call	_UART_Write_Text	;wreg free
	line	93
	
l1391:
;mainv0.4.c: 93: UART_Write_Text((unsigned char*)"ENTER THE PACKET TO BE DISPLAYED ON LED MATRIX??\r\n");
		movlw	high(STR_3)
	movwf	((c:UART_Write_Text@msg+1)),c
	movlw	low(STR_3)
	movwf	((c:UART_Write_Text@msg)),c

	call	_UART_Write_Text	;wreg free
	line	95
	
l1393:
;mainv0.4.c: 95: PIE1bits.RCIE=1;
	bsf	((c:3997)),c,5	;volatile
	line	96
	
l1395:
;mainv0.4.c: 96: INTCONbits.PEIE=1;
	bsf	((c:4082)),c,6	;volatile
	line	97
	
l1397:
;mainv0.4.c: 97: INTCONbits.GIE=1;
	bsf	((c:4082)),c,7	;volatile
	line	98
	
l1399:
;mainv0.4.c: 98: ShiftRegisterInit();
	call	_ShiftRegisterInit	;wreg free
	goto	l1401
	line	99
;mainv0.4.c: 99: while(1)
	
l126:
	line	101
	
l1401:
;mainv0.4.c: 100: {
;mainv0.4.c: 101: if(PacketValidity==1)
	movlb	1	; () banked
	movlb	1	; () banked
	decf	((_PacketValidity))&0ffh,w

	btfss	status,2
	goto	u1341
	goto	u1340
u1341:
	goto	l1435
u1340:
	line	103
	
l1403:; BSR set to: 1

;mainv0.4.c: 102: {
;mainv0.4.c: 103: for(i=0;i<200;i++)
	movlw	high(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@i+1))&0ffh
	movlw	low(0)
	movlb	1	; () banked
	movwf	((main@i))&0ffh
	
l1405:; BSR set to: 1

	movlw	0C8h
	movlb	1	; () banked
	movlb	1	; () banked
	subwf	((main@i))&0ffh,w
	movlw	0
	movlb	1	; () banked
	subwfb	((main@i+1))&0ffh,w
	btfss	status,0
	goto	u1351
	goto	u1350
u1351:
	goto	l1409
u1350:
	goto	l1415
	
l1407:; BSR set to: 1

	goto	l1415
	line	104
	
l128:; BSR set to: 1

	line	105
	
l1409:; BSR set to: 1

;mainv0.4.c: 104: {
;mainv0.4.c: 105: Message[i]=0;
	movlb	1	; () banked
	movlw	low(main@Message)
	movlb	1	; () banked
	movlb	1	; () banked
	addwf	((main@i))&0ffh,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(main@Message)
	movlb	1	; () banked
	movlb	1	; () banked
	addwfc	((main@i+1))&0ffh,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	103
	
l1411:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	infsnz	((main@i))&0ffh
	incf	((main@i+1))&0ffh
	
l1413:; BSR set to: 1

	movlw	0C8h
	movlb	1	; () banked
	movlb	1	; () banked
	subwf	((main@i))&0ffh,w
	movlw	0
	movlb	1	; () banked
	subwfb	((main@i+1))&0ffh,w
	btfss	status,0
	goto	u1361
	goto	u1360
u1361:
	goto	l1409
u1360:
	goto	l1415
	
l129:; BSR set to: 1

	line	107
	
l1415:; BSR set to: 1

;mainv0.4.c: 106: }
;mainv0.4.c: 107: for(i=0;i<PacketLength;i++)
	movlw	high(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@i+1))&0ffh
	movlw	low(0)
	movlb	1	; () banked
	movwf	((main@i))&0ffh
	goto	l1421
	line	108
	
l131:; BSR set to: 1

	line	109
	
l1417:; BSR set to: 1

;mainv0.4.c: 108: {
;mainv0.4.c: 109: Message[i]=SerialData[i+4];
	movlw	04h
	movlb	1	; () banked
	movlb	1	; () banked
	addwf	((main@i))&0ffh,w
	movwf	(??_main+0+0)&0ffh,c
	movlw	0
	movlb	1	; () banked
	movlb	1	; () banked
	addwfc	((main@i+1))&0ffh,w
	movwf	(??_main+0+0+1)&0ffh,c
	movlb	2	; () banked
	movlw	low(_SerialData)
	addwf	(??_main+0+0),c,w
	movwf	c:fsr2l
	movlb	2	; () banked
	movlw	high(_SerialData)
	addwfc	(??_main+0+1),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlw	low(main@Message)
	movlb	1	; () banked
	movlb	1	; () banked
	addwf	((main@i))&0ffh,w
	movwf	c:fsr1l
	movlb	1	; () banked
	movlw	high(main@Message)
	movlb	1	; () banked
	movlb	1	; () banked
	addwfc	((main@i+1))&0ffh,w
	movwf	1+c:fsr1l
	movff	indf2,indf1
	line	107
	
l1419:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	infsnz	((main@i))&0ffh
	incf	((main@i+1))&0ffh
	goto	l1421
	
l130:; BSR set to: 1

	
l1421:; BSR set to: 1

	movf	((c:_PacketLength)),c,w
	movwf	(??_main+0+0)&0ffh,c
	clrf	(??_main+0+0+1)&0ffh,c

	movf	(??_main+0+0),c,w
	movlb	1	; () banked
	movlb	1	; () banked
	subwf	((main@i))&0ffh,w
	movf	(??_main+0+1),c,w
	movlb	1	; () banked
	movlb	1	; () banked
	subwfb	((main@i+1))&0ffh,w
	btfss	status,0
	goto	u1371
	goto	u1370
u1371:
	goto	l1417
u1370:
	goto	l1423
	
l132:; BSR set to: 1

	line	111
	
l1423:; BSR set to: 1

;mainv0.4.c: 110: }
;mainv0.4.c: 111: i++;
	movlb	1	; () banked
	movlb	1	; () banked
	infsnz	((main@i))&0ffh
	incf	((main@i+1))&0ffh
	line	112
	
l1425:; BSR set to: 1

;mainv0.4.c: 112: Message[i]=0;
	movlb	1	; () banked
	movlw	low(main@Message)
	movlb	1	; () banked
	movlb	1	; () banked
	addwf	((main@i))&0ffh,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(main@Message)
	movlb	1	; () banked
	movlb	1	; () banked
	addwfc	((main@i+1))&0ffh,w
	movwf	1+c:fsr2l
	movlw	low(0)
	movwf	indf2
	line	113
	
l1427:; BSR set to: 1

;mainv0.4.c: 113: PacketValidity=0;
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((_PacketValidity))&0ffh
	movf	(??_main+0+0)&0ffh,c,w
	line	114
	
l1429:; BSR set to: 1

;mainv0.4.c: 114: DisplayType = RequestType;
	movff	(_RequestType),(main@DisplayType)
	line	115
	
l1431:; BSR set to: 1

;mainv0.4.c: 115: shift_step = ShiftSpeed;
	movff	(_ShiftSpeed),(main@shift_step)
	line	116
	
l1433:; BSR set to: 1

;mainv0.4.c: 116: shift_step=shift_step-0x30;
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@shift_step))&0ffh,w
	addlw	low(0D0h)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@shift_step))&0ffh
	goto	l1435
	line	117
	
l127:; BSR set to: 1

	line	118
	
l1435:; BSR set to: 1

;mainv0.4.c: 117: }
;mainv0.4.c: 118: length = strlen(Message);
	movlb	1	; () banked
		movlw	high(main@Message)
	movwf	((c:strlen@s+1)),c
	movlb	1	; () banked
	movlw	low(main@Message)
	movwf	((c:strlen@s)),c

	call	_strlen	;wreg free
	movf	(0+?_strlen),c,w
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@length))&0ffh
	line	119
	
l1437:; BSR set to: 1

;mainv0.4.c: 119: for(num=0;num<length;num++)
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@num))&0ffh
	movf	(??_main+0+0)&0ffh,c,w
	goto	l1601
	line	120
	
l134:; BSR set to: 1

	line	121
	
l1439:; BSR set to: 1

;mainv0.4.c: 120: {
;mainv0.4.c: 121: if(PacketValidity==1)
	movlb	1	; () banked
	movlb	1	; () banked
	decf	((_PacketValidity))&0ffh,w

	btfss	status,2
	goto	u1381
	goto	u1380
u1381:
	goto	l1443
u1380:
	goto	l1401
	line	123
	
l1441:; BSR set to: 1

;mainv0.4.c: 122: {
;mainv0.4.c: 123: break;
	goto	l1401
	line	124
	
l135:; BSR set to: 1

	line	125
	
l1443:; BSR set to: 1

;mainv0.4.c: 124: }
;mainv0.4.c: 125: for(scroll=0;scroll<8/shift_step;scroll++)
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@scroll))&0ffh
	movf	(??_main+0+0)&0ffh,c,w
	goto	l1597
	line	126
	
l138:; BSR set to: 1

	line	127
	
l1445:; BSR set to: 1

;mainv0.4.c: 126: {
;mainv0.4.c: 127: for(row=0;row<8;row++)
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@row))&0ffh
	movf	(??_main+0+0)&0ffh,c,w
	
l1447:; BSR set to: 1

	movlw	(08h-1)
	movlb	1	; () banked
	movlb	1	; () banked
	cpfsgt	((main@row))&0ffh
	goto	u1391
	goto	u1390
u1391:
	goto	l1539
u1390:
	goto	l1593
	
l1449:; BSR set to: 1

	goto	l1593
	line	128
	
l139:; BSR set to: 1

	line	129
;mainv0.4.c: 128: {
;mainv0.4.c: 129: switch(DisplayType)
	goto	l1539
	line	131
;mainv0.4.c: 130: {
;mainv0.4.c: 131: case '1':
	
l142:; BSR set to: 1

	line	132
	
l1451:; BSR set to: 1

;mainv0.4.c: 132: index = Message[num];
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@num))&0ffh,w
	mullw	01h
	movlb	1	; () banked
	movlw	low(main@Message)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(main@Message)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@index))&0ffh
	line	133
	
l1453:; BSR set to: 1

;mainv0.4.c: 133: temp = CharData[index-32][row];
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	02h
	movlw	low(0FE00h)
	movwf	(??_main+0+0)&0ffh,c
	movlw	high(0FE00h)
	movwf	(??_main+0+0+1)&0ffh,c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@index))&0ffh,w
	movwf	(??_main+2+0)&0ffh,c
	clrf	(??_main+2+0+1)&0ffh,c

	swapf	(??_main+2+0),c
	swapf	(??_main+2+1),c
	movlw	0f0h
	andwf	(??_main+2+1),c
	movf	(??_main+2+0),c,w
	andlw	0fh
	iorwf	(??_main+2+1),c
	movlw	0f0h
	andwf	(??_main+2+0),c
	movf	(??_main+0+0),c,w
	addwf	(??_main+2+0),c
	movf	(??_main+0+1),c,w
	addwfc	(??_main+2+1),c
	movlw	low((_CharData))
	movwf	(??_main+4+0)&0ffh,c
	movlw	high((_CharData))
	movwf	(??_main+4+0+1)&0ffh,c
	movf	(??_main+2+0),c,w
	addwf	(??_main+4+0),c
	movf	(??_main+2+1),c,w
	addwfc	(??_main+4+1),c
	movf	(prodl),c,w
	addwf	(??_main+4+0),c
	movf	(prodh),c,w
	addwfc	(??_main+4+1),c
	movff	??_main+4+0,tblptrl
	movff	??_main+4+1,tblptrh
	tblrd	*
	
	movlb	1	; () banked
	movff	tablat,(main@temp)
	line	134
	
l1455:; BSR set to: 1

;mainv0.4.c: 134: DisplayBuffer[row][6] = (DisplayBuffer[row][6]<<shift_step)|(DisplayBuffer[row][5]>>(8-shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	06h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	05h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+1+0)&0ffh,c
	incf	((??_main+0+0)),c
	goto	u1404
u1405:
	bcf	status,0
	rrcf	((??_main+1+0)),c
u1404:
	decfsz	((??_main+0+0)),c
	goto	u1405
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	06h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1414
u1415:
	bcf	status,0
	rlcf	((??_main+3+0)),c
u1414:
	decfsz	(??_main+2+0),c
	goto	u1415
	movf	((??_main+3+0)),c,w
	iorwf	((??_main+1+0)),c,w
	movwf	indf2,c

	line	135
	
l1457:; BSR set to: 0

;mainv0.4.c: 135: DisplayBuffer[row][5] = (DisplayBuffer[row][5]<<shift_step)|(DisplayBuffer[row][4]>>(8-shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	05h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	04h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+1+0)&0ffh,c
	incf	((??_main+0+0)),c
	goto	u1424
u1425:
	bcf	status,0
	rrcf	((??_main+1+0)),c
u1424:
	decfsz	((??_main+0+0)),c
	goto	u1425
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	05h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1434
u1435:
	bcf	status,0
	rlcf	((??_main+3+0)),c
u1434:
	decfsz	(??_main+2+0),c
	goto	u1435
	movf	((??_main+3+0)),c,w
	iorwf	((??_main+1+0)),c,w
	movwf	indf2,c

	line	136
	
l1459:; BSR set to: 0

;mainv0.4.c: 136: DisplayBuffer[row][4] = (DisplayBuffer[row][4]<<shift_step)|(DisplayBuffer[row][3]>>(8-shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	04h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	03h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+1+0)&0ffh,c
	incf	((??_main+0+0)),c
	goto	u1444
u1445:
	bcf	status,0
	rrcf	((??_main+1+0)),c
u1444:
	decfsz	((??_main+0+0)),c
	goto	u1445
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	04h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1454
u1455:
	bcf	status,0
	rlcf	((??_main+3+0)),c
u1454:
	decfsz	(??_main+2+0),c
	goto	u1455
	movf	((??_main+3+0)),c,w
	iorwf	((??_main+1+0)),c,w
	movwf	indf2,c

	line	137
	
l1461:; BSR set to: 0

;mainv0.4.c: 137: DisplayBuffer[row][3] = (DisplayBuffer[row][3]<<shift_step)|(DisplayBuffer[row][2]>>(8-shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	03h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+1+0)&0ffh,c
	incf	((??_main+0+0)),c
	goto	u1464
u1465:
	bcf	status,0
	rrcf	((??_main+1+0)),c
u1464:
	decfsz	((??_main+0+0)),c
	goto	u1465
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	03h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1474
u1475:
	bcf	status,0
	rlcf	((??_main+3+0)),c
u1474:
	decfsz	(??_main+2+0),c
	goto	u1475
	movf	((??_main+3+0)),c,w
	iorwf	((??_main+1+0)),c,w
	movwf	indf2,c

	line	138
	
l1463:; BSR set to: 0

;mainv0.4.c: 138: DisplayBuffer[row][2] = (DisplayBuffer[row][2]<<shift_step)|(DisplayBuffer[row][1]>>(8-shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	01h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+1+0)&0ffh,c
	incf	((??_main+0+0)),c
	goto	u1484
u1485:
	bcf	status,0
	rrcf	((??_main+1+0)),c
u1484:
	decfsz	((??_main+0+0)),c
	goto	u1485
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1494
u1495:
	bcf	status,0
	rlcf	((??_main+3+0)),c
u1494:
	decfsz	(??_main+2+0),c
	goto	u1495
	movf	((??_main+3+0)),c,w
	iorwf	((??_main+1+0)),c,w
	movwf	indf2,c

	line	139
	
l1465:; BSR set to: 0

;mainv0.4.c: 139: DisplayBuffer[row][1] = (DisplayBuffer[row][1]<<shift_step)|(DisplayBuffer[row][0]>>(8-shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	01h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	prod+1,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+1+0)&0ffh,c
	incf	((??_main+0+0)),c
	goto	u1504
u1505:
	bcf	status,0
	rrcf	((??_main+1+0)),c
u1504:
	decfsz	((??_main+0+0)),c
	goto	u1505
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	01h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1514
u1515:
	bcf	status,0
	rlcf	((??_main+3+0)),c
u1514:
	decfsz	(??_main+2+0),c
	goto	u1515
	movf	((??_main+3+0)),c,w
	iorwf	((??_main+1+0)),c,w
	movwf	indf2,c

	line	140
	
l1467:; BSR set to: 0

;mainv0.4.c: 140: DisplayBuffer[row][0] = (DisplayBuffer[row][0]<<shift_step)|(temp>>((8-shift_step)-scroll*shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@scroll))&0ffh,w
	movlb	1	; () banked
	movlb	1	; () banked
	mulwf	((main@shift_step))&0ffh
	movf	(prodl),c,w
	movlb	1	; () banked
	movlb	1	; () banked
	addwf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movff	(main@temp),??_main+1+0
	incf	((??_main+0+0)),c
	goto	u1524
u1525:
	bcf	status,0
	rrcf	(??_main+1+0),c
u1524:
	decfsz	((??_main+0+0)),c
	goto	u1525
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	prod+1,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1534
u1535:
	bcf	status,0
	rlcf	((??_main+3+0)),c
u1534:
	decfsz	(??_main+2+0),c
	goto	u1535
	movf	((??_main+3+0)),c,w
	iorwf	(??_main+1+0),c,w
	movwf	indf2,c

	line	141
;mainv0.4.c: 141: break;
	goto	l1541
	line	143
;mainv0.4.c: 143: case '2':
	
l144:; BSR set to: 0

	line	144
	
l1469:
;mainv0.4.c: 144: index = Message[length-num-1];
	movlw	low(0FFFFh)
	movwf	(??_main+0+0)&0ffh,c
	movlw	high(0FFFFh)
	movwf	(??_main+0+0+1)&0ffh,c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@num))&0ffh,w
	movwf	(??_main+2+0)&0ffh,c
	clrf	(??_main+2+0+1)&0ffh,c

	comf	(??_main+2+0),c
	comf	(??_main+2+1),c
	infsnz	(??_main+2+0),c
	incf	(??_main+2+1),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@length))&0ffh,w
	movwf	(??_main+4+0)&0ffh,c
	clrf	(??_main+4+0+1)&0ffh,c

	movf	(??_main+2+0),c,w
	addwf	(??_main+4+0),c
	movf	(??_main+2+1),c,w
	addwfc	(??_main+4+1),c
	movf	(??_main+0+0),c,w
	addwf	(??_main+4+0),c
	movf	(??_main+0+1),c,w
	addwfc	(??_main+4+1),c
	movlb	1	; () banked
	movlw	low(main@Message)
	addwf	(??_main+4+0),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(main@Message)
	addwfc	(??_main+4+1),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@index))&0ffh
	line	145
	
l1471:; BSR set to: 1

;mainv0.4.c: 145: temp = CharData[index-32][row];
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	02h
	movlw	low(0FE00h)
	movwf	(??_main+0+0)&0ffh,c
	movlw	high(0FE00h)
	movwf	(??_main+0+0+1)&0ffh,c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@index))&0ffh,w
	movwf	(??_main+2+0)&0ffh,c
	clrf	(??_main+2+0+1)&0ffh,c

	swapf	(??_main+2+0),c
	swapf	(??_main+2+1),c
	movlw	0f0h
	andwf	(??_main+2+1),c
	movf	(??_main+2+0),c,w
	andlw	0fh
	iorwf	(??_main+2+1),c
	movlw	0f0h
	andwf	(??_main+2+0),c
	movf	(??_main+0+0),c,w
	addwf	(??_main+2+0),c
	movf	(??_main+0+1),c,w
	addwfc	(??_main+2+1),c
	movlw	low((_CharData))
	movwf	(??_main+4+0)&0ffh,c
	movlw	high((_CharData))
	movwf	(??_main+4+0+1)&0ffh,c
	movf	(??_main+2+0),c,w
	addwf	(??_main+4+0),c
	movf	(??_main+2+1),c,w
	addwfc	(??_main+4+1),c
	movf	(prodl),c,w
	addwf	(??_main+4+0),c
	movf	(prodh),c,w
	addwfc	(??_main+4+1),c
	movff	??_main+4+0,tblptrl
	movff	??_main+4+1,tblptrh
	tblrd	*
	
	movlb	1	; () banked
	movff	tablat,(main@temp)
	line	146
	
l1473:; BSR set to: 1

;mainv0.4.c: 146: DisplayBuffer[row][0] = (DisplayBuffer[row][0]>>shift_step)|(DisplayBuffer[row][1]<<(8-shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	01h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+1+0)&0ffh,c
	incf	((??_main+0+0)),c
	goto	u1544
u1545:
	bcf	status,0
	rlcf	((??_main+1+0)),c
u1544:
	decfsz	((??_main+0+0)),c
	goto	u1545
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	prod+1,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1554
u1555:
	bcf	status,0
	rrcf	((??_main+3+0)),c
u1554:
	decfsz	(??_main+2+0),c
	goto	u1555
	movf	((??_main+3+0)),c,w
	iorwf	((??_main+1+0)),c,w
	movwf	indf2,c

	line	147
	
l1475:; BSR set to: 0

;mainv0.4.c: 147: DisplayBuffer[row][1] = (DisplayBuffer[row][1]>>shift_step)|(DisplayBuffer[row][2]<<(8-shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	01h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+1+0)&0ffh,c
	incf	((??_main+0+0)),c
	goto	u1564
u1565:
	bcf	status,0
	rlcf	((??_main+1+0)),c
u1564:
	decfsz	((??_main+0+0)),c
	goto	u1565
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	01h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1574
u1575:
	bcf	status,0
	rrcf	((??_main+3+0)),c
u1574:
	decfsz	(??_main+2+0),c
	goto	u1575
	movf	((??_main+3+0)),c,w
	iorwf	((??_main+1+0)),c,w
	movwf	indf2,c

	line	148
	
l1477:; BSR set to: 0

;mainv0.4.c: 148: DisplayBuffer[row][2] = (DisplayBuffer[row][2]>>shift_step)|(DisplayBuffer[row][3]<<(8-shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	03h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+1+0)&0ffh,c
	incf	((??_main+0+0)),c
	goto	u1584
u1585:
	bcf	status,0
	rlcf	((??_main+1+0)),c
u1584:
	decfsz	((??_main+0+0)),c
	goto	u1585
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1594
u1595:
	bcf	status,0
	rrcf	((??_main+3+0)),c
u1594:
	decfsz	(??_main+2+0),c
	goto	u1595
	movf	((??_main+3+0)),c,w
	iorwf	((??_main+1+0)),c,w
	movwf	indf2,c

	line	149
	
l1479:; BSR set to: 0

;mainv0.4.c: 149: DisplayBuffer[row][3] = (DisplayBuffer[row][3]>>shift_step)|(DisplayBuffer[row][4]<<(8-shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	03h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	04h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+1+0)&0ffh,c
	incf	((??_main+0+0)),c
	goto	u1604
u1605:
	bcf	status,0
	rlcf	((??_main+1+0)),c
u1604:
	decfsz	((??_main+0+0)),c
	goto	u1605
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	03h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1614
u1615:
	bcf	status,0
	rrcf	((??_main+3+0)),c
u1614:
	decfsz	(??_main+2+0),c
	goto	u1615
	movf	((??_main+3+0)),c,w
	iorwf	((??_main+1+0)),c,w
	movwf	indf2,c

	line	150
	
l1481:; BSR set to: 0

;mainv0.4.c: 150: DisplayBuffer[row][4] = (DisplayBuffer[row][4]>>shift_step)|(DisplayBuffer[row][5]<<(8-shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	04h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	05h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+1+0)&0ffh,c
	incf	((??_main+0+0)),c
	goto	u1624
u1625:
	bcf	status,0
	rlcf	((??_main+1+0)),c
u1624:
	decfsz	((??_main+0+0)),c
	goto	u1625
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	04h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1634
u1635:
	bcf	status,0
	rrcf	((??_main+3+0)),c
u1634:
	decfsz	(??_main+2+0),c
	goto	u1635
	movf	((??_main+3+0)),c,w
	iorwf	((??_main+1+0)),c,w
	movwf	indf2,c

	line	151
	
l1483:; BSR set to: 0

;mainv0.4.c: 151: DisplayBuffer[row][5] = (DisplayBuffer[row][5]>>shift_step)|(DisplayBuffer[row][6]<<(8-shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	05h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	06h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+1+0)&0ffh,c
	incf	((??_main+0+0)),c
	goto	u1644
u1645:
	bcf	status,0
	rlcf	((??_main+1+0)),c
u1644:
	decfsz	((??_main+0+0)),c
	goto	u1645
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	05h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1654
u1655:
	bcf	status,0
	rrcf	((??_main+3+0)),c
u1654:
	decfsz	(??_main+2+0),c
	goto	u1655
	movf	((??_main+3+0)),c,w
	iorwf	((??_main+1+0)),c,w
	movwf	indf2,c

	line	152
	
l1485:; BSR set to: 0

;mainv0.4.c: 152: DisplayBuffer[row][6] = (DisplayBuffer[row][6]>>shift_step)|(temp<<((8-shift_step)-scroll*shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	06h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@scroll))&0ffh,w
	movlb	1	; () banked
	movlb	1	; () banked
	mulwf	((main@shift_step))&0ffh
	movf	(prodl),c,w
	movlb	1	; () banked
	movlb	1	; () banked
	addwf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movff	(main@temp),??_main+1+0
	incf	((??_main+0+0)),c
	goto	u1664
u1665:
	bcf	status,0
	rlcf	(??_main+1+0),c
u1664:
	decfsz	((??_main+0+0)),c
	goto	u1665
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	06h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1674
u1675:
	bcf	status,0
	rrcf	((??_main+3+0)),c
u1674:
	decfsz	(??_main+2+0),c
	goto	u1675
	movf	((??_main+3+0)),c,w
	iorwf	(??_main+1+0),c,w
	movwf	indf2,c

	line	153
;mainv0.4.c: 153: break;
	goto	l1541
	line	155
;mainv0.4.c: 155: case '3':
	
l145:; BSR set to: 0

	line	156
	
l1487:
;mainv0.4.c: 156: index = Message[num];
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@num))&0ffh,w
	mullw	01h
	movlb	1	; () banked
	movlw	low(main@Message)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(main@Message)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@index))&0ffh
	line	157
	
l1489:; BSR set to: 1

;mainv0.4.c: 157: temp = CharData[index-32][row];
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	02h
	movlw	low(0FE00h)
	movwf	(??_main+0+0)&0ffh,c
	movlw	high(0FE00h)
	movwf	(??_main+0+0+1)&0ffh,c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@index))&0ffh,w
	movwf	(??_main+2+0)&0ffh,c
	clrf	(??_main+2+0+1)&0ffh,c

	swapf	(??_main+2+0),c
	swapf	(??_main+2+1),c
	movlw	0f0h
	andwf	(??_main+2+1),c
	movf	(??_main+2+0),c,w
	andlw	0fh
	iorwf	(??_main+2+1),c
	movlw	0f0h
	andwf	(??_main+2+0),c
	movf	(??_main+0+0),c,w
	addwf	(??_main+2+0),c
	movf	(??_main+0+1),c,w
	addwfc	(??_main+2+1),c
	movlw	low((_CharData))
	movwf	(??_main+4+0)&0ffh,c
	movlw	high((_CharData))
	movwf	(??_main+4+0+1)&0ffh,c
	movf	(??_main+2+0),c,w
	addwf	(??_main+4+0),c
	movf	(??_main+2+1),c,w
	addwfc	(??_main+4+1),c
	movf	(prodl),c,w
	addwf	(??_main+4+0),c
	movf	(prodh),c,w
	addwfc	(??_main+4+1),c
	movff	??_main+4+0,tblptrl
	movff	??_main+4+1,tblptrh
	tblrd	*
	
	movlb	1	; () banked
	movff	tablat,(main@temp)
	line	158
	
l1491:; BSR set to: 1

;mainv0.4.c: 158: temp = ~temp;
	movlb	1	; () banked
	movlb	1	; () banked
	comf	((main@temp))&0ffh
	line	159
	
l1493:; BSR set to: 1

;mainv0.4.c: 159: DisplayBuffer[row][6] = (DisplayBuffer[row][6]<<shift_step)|(DisplayBuffer[row][5]>>(8-shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	06h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	05h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+1+0)&0ffh,c
	incf	((??_main+0+0)),c
	goto	u1684
u1685:
	bcf	status,0
	rrcf	((??_main+1+0)),c
u1684:
	decfsz	((??_main+0+0)),c
	goto	u1685
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	06h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1694
u1695:
	bcf	status,0
	rlcf	((??_main+3+0)),c
u1694:
	decfsz	(??_main+2+0),c
	goto	u1695
	movf	((??_main+3+0)),c,w
	iorwf	((??_main+1+0)),c,w
	movwf	indf2,c

	line	160
	
l1495:; BSR set to: 0

;mainv0.4.c: 160: DisplayBuffer[row][5] = (DisplayBuffer[row][5]<<shift_step)|(DisplayBuffer[row][4]>>(8-shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	05h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	04h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+1+0)&0ffh,c
	incf	((??_main+0+0)),c
	goto	u1704
u1705:
	bcf	status,0
	rrcf	((??_main+1+0)),c
u1704:
	decfsz	((??_main+0+0)),c
	goto	u1705
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	05h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1714
u1715:
	bcf	status,0
	rlcf	((??_main+3+0)),c
u1714:
	decfsz	(??_main+2+0),c
	goto	u1715
	movf	((??_main+3+0)),c,w
	iorwf	((??_main+1+0)),c,w
	movwf	indf2,c

	line	161
	
l1497:; BSR set to: 0

;mainv0.4.c: 161: DisplayBuffer[row][4] = (DisplayBuffer[row][4]<<shift_step)|(DisplayBuffer[row][3]>>(8-shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	04h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	03h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+1+0)&0ffh,c
	incf	((??_main+0+0)),c
	goto	u1724
u1725:
	bcf	status,0
	rrcf	((??_main+1+0)),c
u1724:
	decfsz	((??_main+0+0)),c
	goto	u1725
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	04h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1734
u1735:
	bcf	status,0
	rlcf	((??_main+3+0)),c
u1734:
	decfsz	(??_main+2+0),c
	goto	u1735
	movf	((??_main+3+0)),c,w
	iorwf	((??_main+1+0)),c,w
	movwf	indf2,c

	line	162
	
l1499:; BSR set to: 0

;mainv0.4.c: 162: DisplayBuffer[row][3] = (DisplayBuffer[row][3]<<shift_step)|(DisplayBuffer[row][2]>>(8-shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	03h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+1+0)&0ffh,c
	incf	((??_main+0+0)),c
	goto	u1744
u1745:
	bcf	status,0
	rrcf	((??_main+1+0)),c
u1744:
	decfsz	((??_main+0+0)),c
	goto	u1745
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	03h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1754
u1755:
	bcf	status,0
	rlcf	((??_main+3+0)),c
u1754:
	decfsz	(??_main+2+0),c
	goto	u1755
	movf	((??_main+3+0)),c,w
	iorwf	((??_main+1+0)),c,w
	movwf	indf2,c

	line	163
	
l1501:; BSR set to: 0

;mainv0.4.c: 163: DisplayBuffer[row][2] = (DisplayBuffer[row][2]<<shift_step)|(DisplayBuffer[row][1]>>(8-shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	01h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+1+0)&0ffh,c
	incf	((??_main+0+0)),c
	goto	u1764
u1765:
	bcf	status,0
	rrcf	((??_main+1+0)),c
u1764:
	decfsz	((??_main+0+0)),c
	goto	u1765
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1774
u1775:
	bcf	status,0
	rlcf	((??_main+3+0)),c
u1774:
	decfsz	(??_main+2+0),c
	goto	u1775
	movf	((??_main+3+0)),c,w
	iorwf	((??_main+1+0)),c,w
	movwf	indf2,c

	line	164
	
l1503:; BSR set to: 0

;mainv0.4.c: 164: DisplayBuffer[row][1] = (DisplayBuffer[row][1]<<shift_step)|(DisplayBuffer[row][0]>>(8-shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	01h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	prod+1,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+1+0)&0ffh,c
	incf	((??_main+0+0)),c
	goto	u1784
u1785:
	bcf	status,0
	rrcf	((??_main+1+0)),c
u1784:
	decfsz	((??_main+0+0)),c
	goto	u1785
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	01h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1794
u1795:
	bcf	status,0
	rlcf	((??_main+3+0)),c
u1794:
	decfsz	(??_main+2+0),c
	goto	u1795
	movf	((??_main+3+0)),c,w
	iorwf	((??_main+1+0)),c,w
	movwf	indf2,c

	line	165
	
l1505:; BSR set to: 0

;mainv0.4.c: 165: DisplayBuffer[row][0] = (DisplayBuffer[row][0]<<shift_step)|(temp>>((8-shift_step)-scroll*shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@scroll))&0ffh,w
	movlb	1	; () banked
	movlb	1	; () banked
	mulwf	((main@shift_step))&0ffh
	movf	(prodl),c,w
	movlb	1	; () banked
	movlb	1	; () banked
	addwf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movff	(main@temp),??_main+1+0
	incf	((??_main+0+0)),c
	goto	u1804
u1805:
	bcf	status,0
	rrcf	(??_main+1+0),c
u1804:
	decfsz	((??_main+0+0)),c
	goto	u1805
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	prod+1,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1814
u1815:
	bcf	status,0
	rlcf	((??_main+3+0)),c
u1814:
	decfsz	(??_main+2+0),c
	goto	u1815
	movf	((??_main+3+0)),c,w
	iorwf	(??_main+1+0),c,w
	movwf	indf2,c

	line	166
;mainv0.4.c: 166: break;
	goto	l1541
	line	168
;mainv0.4.c: 168: case '4':
	
l146:; BSR set to: 0

	line	169
	
l1507:
;mainv0.4.c: 169: index = Message[length-num-1];
	movlw	low(0FFFFh)
	movwf	(??_main+0+0)&0ffh,c
	movlw	high(0FFFFh)
	movwf	(??_main+0+0+1)&0ffh,c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@num))&0ffh,w
	movwf	(??_main+2+0)&0ffh,c
	clrf	(??_main+2+0+1)&0ffh,c

	comf	(??_main+2+0),c
	comf	(??_main+2+1),c
	infsnz	(??_main+2+0),c
	incf	(??_main+2+1),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@length))&0ffh,w
	movwf	(??_main+4+0)&0ffh,c
	clrf	(??_main+4+0+1)&0ffh,c

	movf	(??_main+2+0),c,w
	addwf	(??_main+4+0),c
	movf	(??_main+2+1),c,w
	addwfc	(??_main+4+1),c
	movf	(??_main+0+0),c,w
	addwf	(??_main+4+0),c
	movf	(??_main+0+1),c,w
	addwfc	(??_main+4+1),c
	movlb	1	; () banked
	movlw	low(main@Message)
	addwf	(??_main+4+0),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(main@Message)
	addwfc	(??_main+4+1),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@index))&0ffh
	line	170
	
l1509:; BSR set to: 1

;mainv0.4.c: 170: temp = CharData[index-32][row];
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	02h
	movlw	low(0FE00h)
	movwf	(??_main+0+0)&0ffh,c
	movlw	high(0FE00h)
	movwf	(??_main+0+0+1)&0ffh,c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@index))&0ffh,w
	movwf	(??_main+2+0)&0ffh,c
	clrf	(??_main+2+0+1)&0ffh,c

	swapf	(??_main+2+0),c
	swapf	(??_main+2+1),c
	movlw	0f0h
	andwf	(??_main+2+1),c
	movf	(??_main+2+0),c,w
	andlw	0fh
	iorwf	(??_main+2+1),c
	movlw	0f0h
	andwf	(??_main+2+0),c
	movf	(??_main+0+0),c,w
	addwf	(??_main+2+0),c
	movf	(??_main+0+1),c,w
	addwfc	(??_main+2+1),c
	movlw	low((_CharData))
	movwf	(??_main+4+0)&0ffh,c
	movlw	high((_CharData))
	movwf	(??_main+4+0+1)&0ffh,c
	movf	(??_main+2+0),c,w
	addwf	(??_main+4+0),c
	movf	(??_main+2+1),c,w
	addwfc	(??_main+4+1),c
	movf	(prodl),c,w
	addwf	(??_main+4+0),c
	movf	(prodh),c,w
	addwfc	(??_main+4+1),c
	movff	??_main+4+0,tblptrl
	movff	??_main+4+1,tblptrh
	tblrd	*
	
	movlb	1	; () banked
	movff	tablat,(main@temp)
	line	171
	
l1511:; BSR set to: 1

;mainv0.4.c: 171: temp = ~temp;
	movlb	1	; () banked
	movlb	1	; () banked
	comf	((main@temp))&0ffh
	line	172
	
l1513:; BSR set to: 1

;mainv0.4.c: 172: DisplayBuffer[row][0] = (DisplayBuffer[row][0]>>shift_step)|(DisplayBuffer[row][1]<<(8-shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	01h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+1+0)&0ffh,c
	incf	((??_main+0+0)),c
	goto	u1824
u1825:
	bcf	status,0
	rlcf	((??_main+1+0)),c
u1824:
	decfsz	((??_main+0+0)),c
	goto	u1825
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	prod+1,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1834
u1835:
	bcf	status,0
	rrcf	((??_main+3+0)),c
u1834:
	decfsz	(??_main+2+0),c
	goto	u1835
	movf	((??_main+3+0)),c,w
	iorwf	((??_main+1+0)),c,w
	movwf	indf2,c

	line	173
	
l1515:; BSR set to: 0

;mainv0.4.c: 173: DisplayBuffer[row][1] = (DisplayBuffer[row][1]>>shift_step)|(DisplayBuffer[row][2]<<(8-shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	01h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+1+0)&0ffh,c
	incf	((??_main+0+0)),c
	goto	u1844
u1845:
	bcf	status,0
	rlcf	((??_main+1+0)),c
u1844:
	decfsz	((??_main+0+0)),c
	goto	u1845
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	01h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1854
u1855:
	bcf	status,0
	rrcf	((??_main+3+0)),c
u1854:
	decfsz	(??_main+2+0),c
	goto	u1855
	movf	((??_main+3+0)),c,w
	iorwf	((??_main+1+0)),c,w
	movwf	indf2,c

	line	174
	
l1517:; BSR set to: 0

;mainv0.4.c: 174: DisplayBuffer[row][2] = (DisplayBuffer[row][2]>>shift_step)|(DisplayBuffer[row][3]<<(8-shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	03h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+1+0)&0ffh,c
	incf	((??_main+0+0)),c
	goto	u1864
u1865:
	bcf	status,0
	rlcf	((??_main+1+0)),c
u1864:
	decfsz	((??_main+0+0)),c
	goto	u1865
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	02h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1874
u1875:
	bcf	status,0
	rrcf	((??_main+3+0)),c
u1874:
	decfsz	(??_main+2+0),c
	goto	u1875
	movf	((??_main+3+0)),c,w
	iorwf	((??_main+1+0)),c,w
	movwf	indf2,c

	line	175
	
l1519:; BSR set to: 0

;mainv0.4.c: 175: DisplayBuffer[row][3] = (DisplayBuffer[row][3]>>shift_step)|(DisplayBuffer[row][4]<<(8-shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	03h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	04h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+1+0)&0ffh,c
	incf	((??_main+0+0)),c
	goto	u1884
u1885:
	bcf	status,0
	rlcf	((??_main+1+0)),c
u1884:
	decfsz	((??_main+0+0)),c
	goto	u1885
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	03h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1894
u1895:
	bcf	status,0
	rrcf	((??_main+3+0)),c
u1894:
	decfsz	(??_main+2+0),c
	goto	u1895
	movf	((??_main+3+0)),c,w
	iorwf	((??_main+1+0)),c,w
	movwf	indf2,c

	line	176
	
l1521:; BSR set to: 0

;mainv0.4.c: 176: DisplayBuffer[row][4] = (DisplayBuffer[row][4]>>shift_step)|(DisplayBuffer[row][5]<<(8-shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	04h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	05h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+1+0)&0ffh,c
	incf	((??_main+0+0)),c
	goto	u1904
u1905:
	bcf	status,0
	rlcf	((??_main+1+0)),c
u1904:
	decfsz	((??_main+0+0)),c
	goto	u1905
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	04h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1914
u1915:
	bcf	status,0
	rrcf	((??_main+3+0)),c
u1914:
	decfsz	(??_main+2+0),c
	goto	u1915
	movf	((??_main+3+0)),c,w
	iorwf	((??_main+1+0)),c,w
	movwf	indf2,c

	line	177
	
l1523:; BSR set to: 0

;mainv0.4.c: 177: DisplayBuffer[row][5] = (DisplayBuffer[row][5]>>shift_step)|(DisplayBuffer[row][6]<<(8-shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	05h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	06h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+1+0)&0ffh,c
	incf	((??_main+0+0)),c
	goto	u1924
u1925:
	bcf	status,0
	rlcf	((??_main+1+0)),c
u1924:
	decfsz	((??_main+0+0)),c
	goto	u1925
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	05h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1934
u1935:
	bcf	status,0
	rrcf	((??_main+3+0)),c
u1934:
	decfsz	(??_main+2+0),c
	goto	u1935
	movf	((??_main+3+0)),c,w
	iorwf	((??_main+1+0)),c,w
	movwf	indf2,c

	line	178
	
l1525:; BSR set to: 0

;mainv0.4.c: 178: DisplayBuffer[row][6] = (DisplayBuffer[row][6]>>shift_step)|(temp<<((8-shift_step)-scroll*shift_step));
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	06h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@scroll))&0ffh,w
	movlb	1	; () banked
	movlb	1	; () banked
	mulwf	((main@shift_step))&0ffh
	movf	(prodl),c,w
	movlb	1	; () banked
	movlb	1	; () banked
	addwf	((main@shift_step))&0ffh,w
	sublw	0
	movwf	(??_main+0+0)&0ffh,c
	movlw	08h
	addwf	((??_main+0+0)),c
	movff	(main@temp),??_main+1+0
	incf	((??_main+0+0)),c
	goto	u1944
u1945:
	bcf	status,0
	rlcf	(??_main+1+0),c
u1944:
	decfsz	((??_main+0+0)),c
	goto	u1945
	movff	(main@shift_step),??_main+2+0
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlw	06h
	addwf	(prodl),c
	movlw	0
	addwfc	(prodh),c
	movlb	0	; () banked
	movlw	low(_DisplayBuffer)
	addwf	(prodl),c,w
	movwf	c:fsr1l
	movlb	0	; () banked
	movlw	high(_DisplayBuffer)
	addwfc	(prodh),c,w
	movwf	1+c:fsr1l
	movf	indf1,w
	movwf	(??_main+3+0)&0ffh,c
	incf	(??_main+2+0),c
	goto	u1954
u1955:
	bcf	status,0
	rrcf	((??_main+3+0)),c
u1954:
	decfsz	(??_main+2+0),c
	goto	u1955
	movf	((??_main+3+0)),c,w
	iorwf	(??_main+1+0),c,w
	movwf	indf2,c

	line	179
;mainv0.4.c: 179: break;
	goto	l1541
	line	181
;mainv0.4.c: 181: case '5':
	
l147:; BSR set to: 0

	line	182
	
l1527:
;mainv0.4.c: 182: index = Message[num];
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@num))&0ffh,w
	mullw	01h
	movlb	1	; () banked
	movlw	low(main@Message)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	1	; () banked
	movlw	high(main@Message)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@index))&0ffh
	line	183
	
l1529:; BSR set to: 1

;mainv0.4.c: 183: temp = CharData[index-32][row];
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	02h
	movlw	low(0FE00h)
	movwf	(??_main+0+0)&0ffh,c
	movlw	high(0FE00h)
	movwf	(??_main+0+0+1)&0ffh,c
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@index))&0ffh,w
	movwf	(??_main+2+0)&0ffh,c
	clrf	(??_main+2+0+1)&0ffh,c

	swapf	(??_main+2+0),c
	swapf	(??_main+2+1),c
	movlw	0f0h
	andwf	(??_main+2+1),c
	movf	(??_main+2+0),c,w
	andlw	0fh
	iorwf	(??_main+2+1),c
	movlw	0f0h
	andwf	(??_main+2+0),c
	movf	(??_main+0+0),c,w
	addwf	(??_main+2+0),c
	movf	(??_main+0+1),c,w
	addwfc	(??_main+2+1),c
	movlw	low((_CharData))
	movwf	(??_main+4+0)&0ffh,c
	movlw	high((_CharData))
	movwf	(??_main+4+0+1)&0ffh,c
	movf	(??_main+2+0),c,w
	addwf	(??_main+4+0),c
	movf	(??_main+2+1),c,w
	addwfc	(??_main+4+1),c
	movf	(prodl),c,w
	addwf	(??_main+4+0),c
	movf	(prodh),c,w
	addwfc	(??_main+4+1),c
	movff	??_main+4+0,tblptrl
	movff	??_main+4+1,tblptrh
	tblrd	*
	
	movlb	1	; () banked
	movff	tablat,(main@temp)
	line	184
	
l1531:; BSR set to: 1

;mainv0.4.c: 184: DisplayBuffer[row][6-num] = temp;
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@row))&0ffh,w
	mullw	08h
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@num))&0ffh,w
	movwf	(??_main+0+0)&0ffh,c
	clrf	(??_main+0+0+1)&0ffh,c

	comf	(??_main+0+0),c
	comf	(??_main+0+1),c
	infsnz	(??_main+0+0),c
	incf	(??_main+0+1),c
	movlw	06h
	addwf	(??_main+0+0),c
	movlw	0
	addwfc	(??_main+0+1),c
	movlw	low(_DisplayBuffer)
	movwf	(??_main+2+0)&0ffh,c
	movlw	high(_DisplayBuffer)
	movwf	(??_main+2+0+1)&0ffh,c
	movf	(??_main+0+0),c,w
	addwf	(??_main+2+0),c
	movf	(??_main+0+1),c,w
	addwfc	(??_main+2+1),c
	movf	(prodl),c,w
	addwf	(??_main+2+0),c,w
	movwf	c:fsr2l
	movf	(prodh),c,w
	addwfc	(??_main+2+1),c,w
	movwf	1+c:fsr2l
	movlb	1	; () banked
	movff	(main@temp),indf2

	line	185
	
l1533:; BSR set to: 1

;mainv0.4.c: 185: if(num==7)
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@num))&0ffh,w
	xorlw	7

	btfss	status,2
	goto	u1961
	goto	u1960
u1961:
	goto	l1541
u1960:
	line	186
	
l1535:; BSR set to: 1

;mainv0.4.c: 186: num=0;
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@num))&0ffh
	movf	(??_main+0+0)&0ffh,c,w
	goto	l1541
	
l148:; BSR set to: 1

	line	187
;mainv0.4.c: 187: break;
	goto	l1541
	line	188
	
l1537:; BSR set to: 1

;mainv0.4.c: 188: }
	goto	l1541
	line	129
	
l141:; BSR set to: 1

	
l1539:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@DisplayType))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 49 to 53
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	xorlw	49^0	; case 49
	skipnz
	goto	l1451
	xorlw	50^49	; case 50
	skipnz
	goto	l1469
	xorlw	51^50	; case 51
	skipnz
	goto	l1487
	xorlw	52^51	; case 52
	skipnz
	goto	l1507
	xorlw	53^52	; case 53
	skipnz
	goto	l1527
	goto	l1541

	line	188
	
l143:; BSR set to: 1

	line	127
	
l1541:
	movlb	1	; () banked
	movlb	1	; () banked
	incf	((main@row))&0ffh
	
l1543:; BSR set to: 1

	movlw	(08h-1)
	movlb	1	; () banked
	movlb	1	; () banked
	cpfsgt	((main@row))&0ffh
	goto	u1971
	goto	u1970
u1971:
	goto	l1539
u1970:
	goto	l1593
	
l140:; BSR set to: 1

	line	191
;mainv0.4.c: 189: }
;mainv0.4.c: 191: switch(DisplayType)
	goto	l1593
	line	193
;mainv0.4.c: 192: {
;mainv0.4.c: 193: case '5':
	
l150:; BSR set to: 1

	line	194
	
l1545:; BSR set to: 1

;mainv0.4.c: 194: Column = 0x01;
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(01h)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@Column))&0ffh
	movf	(??_main+0+0)&0ffh,c,w
	line	195
	
l1547:; BSR set to: 1

;mainv0.4.c: 195: for(i=0;i<8;i++)
	movlw	high(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@i+1))&0ffh
	movlw	low(0)
	movlb	1	; () banked
	movwf	((main@i))&0ffh
	
l1549:; BSR set to: 1

	movlw	08h
	movlb	1	; () banked
	movlb	1	; () banked
	subwf	((main@i))&0ffh,w
	movlw	0
	movlb	1	; () banked
	subwfb	((main@i+1))&0ffh,w
	btfss	status,0
	goto	u1981
	goto	u1980
u1981:
	goto	l151
u1980:
	goto	l1595
	
l1551:; BSR set to: 1

	goto	l1595
	line	196
	
l151:; BSR set to: 1

	line	197
;mainv0.4.c: 196: {
;mainv0.4.c: 197: LATD = Column;
	movff	(main@Column),(c:3980)	;volatile
	line	198
	
l1553:; BSR set to: 1

;mainv0.4.c: 198: ShiftRegisterWrite(i);
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@i))&0ffh,w
	
	call	_ShiftRegisterWrite
	line	199
	
l1555:
;mainv0.4.c: 199: Column<<=1;
	movlb	1	; () banked
	bcf status,0
	rlcf	((main@Column))&0ffh

	line	200
	
l1557:; BSR set to: 1

;mainv0.4.c: 200: _delay((unsigned long)((1)*(48000000UL/4000.0)));
	movlw	16
movwf	(??_main+0+0)&0ffh,c,f
	movlw	148
u2067:
	decfsz	wreg,f
	goto	u2067
	decfsz	(??_main+0+0)&0ffh,c,f
	goto	u2067
	nop2

	line	195
	
l1559:
	movlb	1	; () banked
	movlb	1	; () banked
	infsnz	((main@i))&0ffh
	incf	((main@i+1))&0ffh
	
l1561:; BSR set to: 1

	movlw	08h
	movlb	1	; () banked
	movlb	1	; () banked
	subwf	((main@i))&0ffh,w
	movlw	0
	movlb	1	; () banked
	subwfb	((main@i+1))&0ffh,w
	btfss	status,0
	goto	u1991
	goto	u1990
u1991:
	goto	l151
u1990:
	goto	l1595
	
l152:; BSR set to: 1

	line	202
;mainv0.4.c: 201: }
;mainv0.4.c: 202: break;
	goto	l1595
	line	204
;mainv0.4.c: 204: case '6':
	
l154:; BSR set to: 1

	line	205
;mainv0.4.c: 205: break;
	goto	l1595
	line	207
;mainv0.4.c: 207: case '1':
	
l155:; BSR set to: 1

	goto	l1563
	line	208
	
l156:; BSR set to: 1

	goto	l1563
	line	209
	
l157:; BSR set to: 1

	goto	l1563
	line	210
	
l158:; BSR set to: 1

	line	211
	
l1563:; BSR set to: 1

;mainv0.4.c: 208: case '2':
;mainv0.4.c: 209: case '3':
;mainv0.4.c: 210: case '4':
;mainv0.4.c: 211: for(Repeat=0;Repeat<20;Repeat++)
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@Repeat))&0ffh
	movf	(??_main+0+0)&0ffh,c,w
	
l1565:; BSR set to: 1

	movlw	(014h-1)
	movlb	1	; () banked
	movlb	1	; () banked
	cpfsgt	((main@Repeat))&0ffh
	goto	u2001
	goto	u2000
u2001:
	goto	l1569
u2000:
	goto	l1595
	
l1567:; BSR set to: 1

	goto	l1595
	line	212
	
l159:; BSR set to: 1

	line	213
	
l1569:; BSR set to: 1

;mainv0.4.c: 212: {
;mainv0.4.c: 213: Column = 0x01;
	movwf	(??_main+0+0)&0ffh,c
	movlw	low(01h)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@Column))&0ffh
	movf	(??_main+0+0)&0ffh,c,w
	line	214
	
l1571:; BSR set to: 1

;mainv0.4.c: 214: for(i=0;i<8;i++)
	movlw	high(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((main@i+1))&0ffh
	movlw	low(0)
	movlb	1	; () banked
	movwf	((main@i))&0ffh
	
l1573:; BSR set to: 1

	movlw	08h
	movlb	1	; () banked
	movlb	1	; () banked
	subwf	((main@i))&0ffh,w
	movlw	0
	movlb	1	; () banked
	subwfb	((main@i+1))&0ffh,w
	btfss	status,0
	goto	u2011
	goto	u2010
u2011:
	goto	l161
u2010:
	goto	l1587
	
l1575:; BSR set to: 1

	goto	l1587
	line	215
	
l161:; BSR set to: 1

	line	216
;mainv0.4.c: 215: {
;mainv0.4.c: 216: LATD = Column;
	movff	(main@Column),(c:3980)	;volatile
	line	217
	
l1577:; BSR set to: 1

;mainv0.4.c: 217: ShiftRegisterWrite(i);
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@i))&0ffh,w
	
	call	_ShiftRegisterWrite
	line	218
	
l1579:
;mainv0.4.c: 218: Column<<=1;
	movlb	1	; () banked
	bcf status,0
	rlcf	((main@Column))&0ffh

	line	219
	
l1581:; BSR set to: 1

;mainv0.4.c: 219: _delay((unsigned long)((1)*(48000000UL/4000.0)));
	movlw	16
movwf	(??_main+0+0)&0ffh,c,f
	movlw	148
u2077:
	decfsz	wreg,f
	goto	u2077
	decfsz	(??_main+0+0)&0ffh,c,f
	goto	u2077
	nop2

	line	214
	
l1583:
	movlb	1	; () banked
	movlb	1	; () banked
	infsnz	((main@i))&0ffh
	incf	((main@i+1))&0ffh
	
l1585:; BSR set to: 1

	movlw	08h
	movlb	1	; () banked
	movlb	1	; () banked
	subwf	((main@i))&0ffh,w
	movlw	0
	movlb	1	; () banked
	subwfb	((main@i+1))&0ffh,w
	btfss	status,0
	goto	u2021
	goto	u2020
u2021:
	goto	l161
u2020:
	goto	l1587
	
l162:; BSR set to: 1

	line	211
	
l1587:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	incf	((main@Repeat))&0ffh
	
l1589:; BSR set to: 1

	movlw	(014h-1)
	movlb	1	; () banked
	movlb	1	; () banked
	cpfsgt	((main@Repeat))&0ffh
	goto	u2031
	goto	u2030
u2031:
	goto	l1569
u2030:
	goto	l1595
	
l160:; BSR set to: 1

	line	222
;mainv0.4.c: 220: }
;mainv0.4.c: 221: }
;mainv0.4.c: 222: break;
	goto	l1595
	line	223
	
l1591:; BSR set to: 1

;mainv0.4.c: 223: }
	goto	l1595
	line	191
	
l149:; BSR set to: 1

	
l1593:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@DisplayType))&0ffh,w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 49 to 54
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
;	Chosen strategy is simple_byte

	xorlw	49^0	; case 49
	skipnz
	goto	l1563
	xorlw	50^49	; case 50
	skipnz
	goto	l1563
	xorlw	51^50	; case 51
	skipnz
	goto	l1563
	xorlw	52^51	; case 52
	skipnz
	goto	l1563
	xorlw	53^52	; case 53
	skipnz
	goto	l1545
	xorlw	54^53	; case 54
	skipnz
	goto	l1595
	goto	l1595

	line	223
	
l153:; BSR set to: 1

	line	125
	
l1595:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	incf	((main@scroll))&0ffh
	goto	l1597
	
l137:; BSR set to: 1

	
l1597:; BSR set to: 1

	movlw	high(08h)
	movwf	((c:___awdiv@dividend+1)),c
	movlw	low(08h)
	movwf	((c:___awdiv@dividend)),c
	movlb	1	; () banked
	movff	(main@shift_step),(c:___awdiv@divisor)
	clrf	((c:___awdiv@divisor+1)),c
	call	___awdiv	;wreg free
	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@scroll))&0ffh,w
	movwf	(??_main+0+0)&0ffh,c
	clrf	(??_main+0+0+1)&0ffh,c

	movf	(??_main+0+1),c,w
	xorlw	80h
	movwf	(??_main+2+0)&0ffh,c
	movf	(0+?___awdiv),c,w
	subwf	(??_main+0+0),c,w
	movf	(1+?___awdiv),c,w
	xorlw	80h
	subwfb	(??_main+2+0)&0ffh,c,w
	btfss	status,0
	goto	u2041
	goto	u2040
u2041:
	goto	l1445
u2040:
	goto	l1599
	
l163:; BSR set to: 1

	line	119
	
l1599:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	incf	((main@num))&0ffh
	goto	l1601
	
l133:; BSR set to: 1

	
l1601:; BSR set to: 1

	movlb	1	; () banked
	movlb	1	; () banked
	movf	((main@length))&0ffh,w
	movlb	1	; () banked
	movlb	1	; () banked
	subwf	((main@num))&0ffh,w
	btfss	status,0
	goto	u2051
	goto	u2050
u2051:
	goto	l1439
u2050:
	goto	l1401
	
l136:; BSR set to: 1

	goto	l1401
	line	227
	
l164:; BSR set to: 1

	line	99
	goto	l1401
	
l165:; BSR set to: 1

	line	228
	
l166:; BSR set to: 1

	global	start
	goto	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_strlen

;; *************** function _strlen *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v1.31\sources\common\strlen.c"
;; Parameters:    Size  Location     Type
;;  s               2   21[COMRAM] PTR const unsigned char 
;;		 -> main@Message(200), 
;; Auto vars:     Size  Location     Type
;;  cp              2   25[COMRAM] PTR const unsigned char 
;;		 -> main@Message(200), 
;; Return value:  Size  Location     Type
;;                  2   21[COMRAM] unsigned int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2
	file	"C:\Program Files\Microchip\xc8\v1.31\sources\common\strlen.c"
	line	4
global __ptext1
__ptext1:
psect	text1
	file	"C:\Program Files\Microchip\xc8\v1.31\sources\common\strlen.c"
	line	4
	global	__size_of_strlen
	__size_of_strlen	equ	__end_of_strlen-_strlen
	
_strlen:; BSR set to: 1

;incstack = 0
	opt	stack 26
	line	8
	
l1253:
		movff	(c:strlen@s+1),(c:strlen@cp+1)
	movff	(c:strlen@s),(c:strlen@cp)

	line	9
	goto	l1257
	
l718:
	line	10
	
l1255:
	infsnz	((c:strlen@cp)),c
	incf	((c:strlen@cp+1)),c
	goto	l1257
	line	11
	
l717:
	line	9
	
l1257:
	movff	(c:strlen@cp),fsr2l
	movff	(c:strlen@cp+1),fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u1141
	goto	u1140
u1141:
	goto	l1255
u1140:
	goto	l1259
	
l719:
	line	12
	
l1259:
	movff	(c:strlen@s),??_strlen+0+0
	movff	(c:strlen@s+1),??_strlen+0+0+1
	comf	(??_strlen+0+0),c
	comf	(??_strlen+0+1),c
	infsnz	(??_strlen+0+0),c
	incf	(??_strlen+0+1),c
	movf	((c:strlen@cp)),c,w
	addwf	(??_strlen+0+0),c,w
	
	movwf	((c:?_strlen)),c
	movf	((c:strlen@cp+1)),c,w
	addwfc	(??_strlen+0+1),c,w
	movwf	1+((c:?_strlen)),c
	goto	l720
	
l1261:
	line	13
	
l720:
	return
	opt stack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
	signat	_strlen,4218
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 8 in file "C:\Program Files\Microchip\xc8\v1.31\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2   21[COMRAM] int 
;;  divisor         2   23[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   28[COMRAM] int 
;;  sign            1   27[COMRAM] unsigned char 
;;  counter         1   26[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   21[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0, prodl
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
	file	"C:\Program Files\Microchip\xc8\v1.31\sources\common\awdiv.c"
	line	8
global __ptext2
__ptext2:
psect	text2
	file	"C:\Program Files\Microchip\xc8\v1.31\sources\common\awdiv.c"
	line	8
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:
;incstack = 0
	opt	stack 26
	line	14
	
l1289:
	movwf	(??___awdiv+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:___awdiv@sign)),c
	movf	(??___awdiv+0+0)&0ffh,c,w
	line	15
	
l1291:
	movf	((c:___awdiv@divisor+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awdiv@divisor)),c,w
	btfsc	status,0
	goto	u1201
	goto	u1200
u1201:
	goto	l1297
u1200:
	line	16
	
l1293:
	negf	((c:___awdiv@divisor)),c
	comf	((c:___awdiv@divisor+1)),c
	btfsc	status,0
	incf	((c:___awdiv@divisor+1)),c
	line	17
	
l1295:
	movwf	(??___awdiv+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:___awdiv@sign)),c
	movf	(??___awdiv+0+0)&0ffh,c,w
	goto	l1297
	line	18
	
l346:
	line	19
	
l1297:
	movf	((c:___awdiv@dividend+1)),c,w
	xorlw	80h
	movwf	prodl
	movlw	((0)^80h)
	subwf	prodl,w
	movlw	0
	btfsc	status,2
	subwf	((c:___awdiv@dividend)),c,w
	btfsc	status,0
	goto	u1211
	goto	u1210
u1211:
	goto	l1303
u1210:
	line	20
	
l1299:
	negf	((c:___awdiv@dividend)),c
	comf	((c:___awdiv@dividend+1)),c
	btfsc	status,0
	incf	((c:___awdiv@dividend+1)),c
	line	21
	
l1301:
	movlw	(01h)&0ffh
	xorwf	((c:___awdiv@sign)),c
	goto	l1303
	line	22
	
l347:
	line	23
	
l1303:
	movlw	high(0)
	movwf	((c:___awdiv@quotient+1)),c
	movlw	low(0)
	movwf	((c:___awdiv@quotient)),c
	line	24
	
l1305:
	movf	((c:___awdiv@divisor+1)),c,w
	iorwf ((c:___awdiv@divisor)),c,w

	btfsc	status,2
	goto	u1221
	goto	u1220
u1221:
	goto	l1325
u1220:
	line	25
	
l1307:
	movwf	(??___awdiv+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:___awdiv@counter)),c
	movf	(??___awdiv+0+0)&0ffh,c,w
	line	26
	goto	l1311
	
l350:
	line	27
	
l1309:
	bcf	status,0
	rlcf	((c:___awdiv@divisor)),c
	rlcf	((c:___awdiv@divisor+1)),c
	line	28
	incf	((c:___awdiv@counter)),c
	goto	l1311
	line	29
	
l349:
	line	26
	
l1311:
	
	btfss	((c:___awdiv@divisor+1)),c,(15)&7
	goto	u1231
	goto	u1230
u1231:
	goto	l1309
u1230:
	goto	l1313
	
l351:
	goto	l1313
	line	30
	
l352:
	line	31
	
l1313:
	bcf	status,0
	rlcf	((c:___awdiv@quotient)),c
	rlcf	((c:___awdiv@quotient+1)),c
	line	32
	
l1315:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c,w
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c,w
	btfss	status,0
	goto	u1241
	goto	u1240
u1241:
	goto	l1321
u1240:
	line	33
	
l1317:
	movf	((c:___awdiv@divisor)),c,w
	subwf	((c:___awdiv@dividend)),c
	movf	((c:___awdiv@divisor+1)),c,w
	subwfb	((c:___awdiv@dividend+1)),c

	line	34
	
l1319:
	bsf	(0+(0/8)+(c:___awdiv@quotient)),c,(0)&7
	goto	l1321
	line	35
	
l353:
	line	36
	
l1321:
	bcf	status,0
	rrcf	((c:___awdiv@divisor+1)),c
	rrcf	((c:___awdiv@divisor)),c
	line	37
	
l1323:
	decfsz	((c:___awdiv@counter)),c
	
	goto	l1313
	goto	l1325
	
l354:
	goto	l1325
	line	38
	
l348:
	line	39
	
l1325:
	movf	((c:___awdiv@sign)),c,w
	btfsc	status,2
	goto	u1251
	goto	u1250
u1251:
	goto	l1329
u1250:
	line	40
	
l1327:
	negf	((c:___awdiv@quotient)),c
	comf	((c:___awdiv@quotient+1)),c
	btfsc	status,0
	incf	((c:___awdiv@quotient+1)),c
	goto	l1329
	
l355:
	line	41
	
l1329:
	movff	(c:___awdiv@quotient),(c:?___awdiv)
	movff	(c:___awdiv@quotient+1),(c:?___awdiv+1)
	goto	l356
	
l1331:
	line	42
	
l356:
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_UART_Write_Text

;; *************** function _UART_Write_Text *****************
;; Defined at:
;;		line 25 in file "D:\LED Matrix\Micro-Controller Code\UART.c"
;; Parameters:    Size  Location     Type
;;  msg             2   22[COMRAM] PTR unsigned char 
;;		 -> STR_3(51), STR_2(13), STR_1(8), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_UART_Write
;;		_UART_Write_Busy
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
	file	"D:\LED Matrix\Micro-Controller Code\UART.c"
	line	25
global __ptext3
__ptext3:
psect	text3
	file	"D:\LED Matrix\Micro-Controller Code\UART.c"
	line	25
	global	__size_of_UART_Write_Text
	__size_of_UART_Write_Text	equ	__end_of_UART_Write_Text-_UART_Write_Text
	
_UART_Write_Text:
;incstack = 0
	opt	stack 24
	line	27
	
l1241:
;UART.c: 27: while(*msg)
	goto	l1249
	
l35:
	line	29
	
l1243:
;UART.c: 28: {
;UART.c: 29: UART_Write(*msg);
	movff	(c:UART_Write_Text@msg),tblptrl
	movff	(c:UART_Write_Text@msg+1),tblptrh
	tblrd	*
	
	movf	tablat,w

	
	call	_UART_Write
	line	30
;UART.c: 30: while(!UART_Write_Busy());
	goto	l1245
	
l37:
	goto	l1245
	
l36:
	
l1245:
	call	_UART_Write_Busy	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u1121
	goto	u1120
u1121:
	goto	l1245
u1120:
	goto	l1247
	
l38:
	line	31
	
l1247:
;UART.c: 31: msg++;
	infsnz	((c:UART_Write_Text@msg)),c
	incf	((c:UART_Write_Text@msg+1)),c
	goto	l1249
	line	32
	
l34:
	line	27
	
l1249:
	movff	(c:UART_Write_Text@msg),tblptrl
	movff	(c:UART_Write_Text@msg+1),tblptrh
	tblrd	*
	
	movf	tablat,w

	iorlw	0
	btfss	status,2
	goto	u1131
	goto	u1130
u1131:
	goto	l1243
u1130:
	goto	l40
	
l39:
	line	33
	
l40:
	return
	opt stack 0
GLOBAL	__end_of_UART_Write_Text
	__end_of_UART_Write_Text:
	signat	_UART_Write_Text,4216
	global	_UART_Write_Busy

;; *************** function _UART_Write_Busy *****************
;; Defined at:
;;		line 46 in file "D:\LED Matrix\Micro-Controller Code\UART.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_Write_Text
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
	line	46
global __ptext4
__ptext4:
psect	text4
	file	"D:\LED Matrix\Micro-Controller Code\UART.c"
	line	46
	global	__size_of_UART_Write_Busy
	__size_of_UART_Write_Busy	equ	__end_of_UART_Write_Busy-_UART_Write_Busy
	
_UART_Write_Busy:
;incstack = 0
	opt	stack 25
	line	48
	
l1215:
;UART.c: 48: return(TXSTAbits.TRMT);
	btfsc	((c:4012)),c,1	;volatile
	goto	u1091
	goto	u1090
u1091:
	movlw	1
	goto	u1096
u1090:
	movlw	0
u1096:
	goto	l54
	
l1217:
	line	49
	
l54:
	return
	opt stack 0
GLOBAL	__end_of_UART_Write_Busy
	__end_of_UART_Write_Busy:
	signat	_UART_Write_Busy,89
	global	_UART_Write

;; *************** function _UART_Write *****************
;; Defined at:
;;		line 19 in file "D:\LED Matrix\Micro-Controller Code\UART.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1   21[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_Correct_UART_Errors
;; This function is called by:
;;		_UART_Write_Text
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
	line	19
global __ptext5
__ptext5:
psect	text5
	file	"D:\LED Matrix\Micro-Controller Code\UART.c"
	line	19
	global	__size_of_UART_Write
	__size_of_UART_Write	equ	__end_of_UART_Write-_UART_Write
	
_UART_Write:
;incstack = 0
	opt	stack 24
;UART_Write@data stored from wreg
	movff	wreg,(c:UART_Write@data)
	line	21
	
l1211:
;UART.c: 21: Correct_UART_Errors();
	call	_Correct_UART_Errors	;wreg free
	line	22
;UART.c: 22: while(PIR1bits.TXIF == 0);
	goto	l28
	
l29:
	
l28:
	btfss	((c:3998)),c,4	;volatile
	goto	u1081
	goto	u1080
u1081:
	goto	l28
u1080:
	goto	l1213
	
l30:
	line	23
	
l1213:
;UART.c: 23: TXREG = data;
	movff	(c:UART_Write@data),(c:4013)	;volatile
	line	24
	
l31:
	return
	opt stack 0
GLOBAL	__end_of_UART_Write
	__end_of_UART_Write:
	signat	_UART_Write,4216
	global	_Correct_UART_Errors

;; *************** function _Correct_UART_Errors *****************
;; Defined at:
;;		line 50 in file "D:\LED Matrix\Micro-Controller Code\UART.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_UART_Write
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
	line	50
global __ptext6
__ptext6:
psect	text6
	file	"D:\LED Matrix\Micro-Controller Code\UART.c"
	line	50
	global	__size_of_Correct_UART_Errors
	__size_of_Correct_UART_Errors	equ	__end_of_Correct_UART_Errors-_Correct_UART_Errors
	
_Correct_UART_Errors:
;incstack = 0
	opt	stack 24
	line	52
	
l1203:
;UART.c: 52: if((RCSTAbits.OERR==1) || (RCSTAbits.FERR==1))
	btfsc	((c:4011)),c,1	;volatile
	goto	u1041
	goto	u1040
u1041:
	goto	l59
u1040:
	
l1205:
	btfss	((c:4011)),c,2	;volatile
	goto	u1051
	goto	u1050
u1051:
	goto	l60
u1050:
	
l59:
	line	54
;UART.c: 53: {
;UART.c: 54: RCSTAbits.CREN=0;
	bcf	((c:4011)),c,4	;volatile
	line	55
;UART.c: 55: RCSTAbits.CREN=1;
	bsf	((c:4011)),c,4	;volatile
	goto	l60
	line	56
	
l57:
	line	57
	
l60:
	return
	opt stack 0
GLOBAL	__end_of_Correct_UART_Errors
	__end_of_Correct_UART_Errors:
	signat	_Correct_UART_Errors,88
	global	_UART_Init

;; *************** function _UART_Init *****************
;; Defined at:
;;		line 4 in file "D:\LED Matrix\Micro-Controller Code\UART.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
	line	4
global __ptext7
__ptext7:
psect	text7
	file	"D:\LED Matrix\Micro-Controller Code\UART.c"
	line	4
	global	__size_of_UART_Init
	__size_of_UART_Init	equ	__end_of_UART_Init-_UART_Init
	
_UART_Init:
;incstack = 0
	opt	stack 26
	line	6
	
l1227:
;UART.c: 6: TRISCbits.TRISC7=1;
	bsf	((c:3988)),c,7	;volatile
	line	7
;UART.c: 7: TRISCbits.TRISC6=0;
	bcf	((c:3988)),c,6	;volatile
	line	8
	
l1229:
;UART.c: 8: TXSTA = 0x22;
	movlw	low(022h)
	movwf	((c:4012)),c	;volatile
	line	9
;UART.c: 9: SPBRG = 77;
	movlw	low(04Dh)
	movwf	((c:4015)),c	;volatile
	line	11
	
l1231:
;UART.c: 11: BAUDCONbits.BRG16 = 0;
	bcf	((c:4024)),c,3	;volatile
	line	12
	
l1233:
;UART.c: 12: TXSTAbits.BRGH = 0;
	bcf	((c:4012)),c,2	;volatile
	line	13
;UART.c: 13: SPBRG = 77;
	movlw	low(04Dh)
	movwf	((c:4015)),c	;volatile
	line	15
	
l1235:
;UART.c: 15: TXSTAbits.TXEN = 1;
	bsf	((c:4012)),c,5	;volatile
	line	16
	
l1237:
;UART.c: 16: RCSTAbits.SPEN = 1;
	bsf	((c:4011)),c,7	;volatile
	line	17
	
l1239:
;UART.c: 17: RCSTAbits.CREN = 1;
	bsf	((c:4011)),c,4	;volatile
	line	18
	
l25:
	return
	opt stack 0
GLOBAL	__end_of_UART_Init
	__end_of_UART_Init:
	signat	_UART_Init,88
	global	_ShiftRegisterWrite

;; *************** function _ShiftRegisterWrite *****************
;; Defined at:
;;		line 251 in file "D:\LED Matrix\Micro-Controller Code\mainv0.4.c"
;; Parameters:    Size  Location     Type
;;  Row             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Row             1   23[COMRAM] unsigned char 
;;  num             1   27[COMRAM] unsigned char 
;;  i               1   26[COMRAM] unsigned char 
;;  Mask            1   25[COMRAM] unsigned char 
;;  Flag            1   24[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
	file	"D:\LED Matrix\Micro-Controller Code\mainv0.4.c"
	line	251
global __ptext8
__ptext8:
psect	text8
	file	"D:\LED Matrix\Micro-Controller Code\mainv0.4.c"
	line	251
	global	__size_of_ShiftRegisterWrite
	__size_of_ShiftRegisterWrite	equ	__end_of_ShiftRegisterWrite-_ShiftRegisterWrite
	
_ShiftRegisterWrite:
;incstack = 0
	opt	stack 26
;ShiftRegisterWrite@Row stored from wreg
	movff	wreg,(c:ShiftRegisterWrite@Row)
	line	254
	
l1263:
;mainv0.4.c: 253: unsigned char Flag,Mask,i,num;
;mainv0.4.c: 254: for(num=0;num<7;num++)
	movwf	(??_ShiftRegisterWrite+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:ShiftRegisterWrite@num)),c
	movf	(??_ShiftRegisterWrite+0+0)&0ffh,c,w
	
l1265:
	movlw	(07h-1)
	cpfsgt	((c:ShiftRegisterWrite@num)),c
	goto	u1151
	goto	u1150
u1151:
	goto	l1269
u1150:
	goto	l176
	
l1267:
	goto	l176
	line	255
	
l175:
	line	256
	
l1269:
;mainv0.4.c: 255: {
;mainv0.4.c: 256: Mask = 0x01;
	movwf	(??_ShiftRegisterWrite+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:ShiftRegisterWrite@Mask)),c
	movf	(??_ShiftRegisterWrite+0+0)&0ffh,c,w
	line	257
;mainv0.4.c: 257: for(i=0;i<8;i++)
	movwf	(??_ShiftRegisterWrite+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:ShiftRegisterWrite@i)),c
	movf	(??_ShiftRegisterWrite+0+0)&0ffh,c,w
	
l1271:
	movlw	(08h-1)
	cpfsgt	((c:ShiftRegisterWrite@i)),c
	goto	u1161
	goto	u1160
u1161:
	goto	l1275
u1160:
	goto	l1285
	
l1273:
	goto	l1285
	line	258
	
l177:
	line	259
	
l1275:
;mainv0.4.c: 258: {
;mainv0.4.c: 259: Flag = DisplayBuffer[Row][num] & Mask;
	movf	((c:ShiftRegisterWrite@Row)),c,w
	mullw	08h
	movlw	low(_DisplayBuffer)
	movwf	(??_ShiftRegisterWrite+0+0)&0ffh,c
	movlw	high(_DisplayBuffer)
	movwf	(??_ShiftRegisterWrite+0+0+1)&0ffh,c
	movf	(prodl),c,w
	addwf	(??_ShiftRegisterWrite+0+0),c
	movf	(prodh),c,w
	addwfc	(??_ShiftRegisterWrite+0+1),c
	movf	((c:ShiftRegisterWrite@num)),c,w
	mullw	01h
	movf	(prodl),c,w
	addwf	(??_ShiftRegisterWrite+0+0),c,w
	movwf	c:fsr2l
	movf	(prodh),c,w
	addwfc	(??_ShiftRegisterWrite+0+1),c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	andwf	((c:ShiftRegisterWrite@Mask)),c,w
	movwf	((c:ShiftRegisterWrite@Flag)),c
	line	260
	
l1277:
;mainv0.4.c: 260: if(Flag == 0)
	tstfsz	((c:ShiftRegisterWrite@Flag)),c
	goto	u1171
	goto	u1170
u1171:
	goto	l179
u1170:
	line	262
	
l1279:
;mainv0.4.c: 261: {
;mainv0.4.c: 262: LATCbits.LATC1=0;
	bcf	((c:3979)),c,1	;volatile
	line	263
;mainv0.4.c: 263: }
	goto	l180
	line	264
	
l179:
	line	266
;mainv0.4.c: 264: else
;mainv0.4.c: 265: {
;mainv0.4.c: 266: LATCbits.LATC1=1;
	bsf	((c:3979)),c,1	;volatile
	line	267
	
l180:
	line	268
;mainv0.4.c: 267: }
;mainv0.4.c: 268: LATCbits.LATC0=1;
	bsf	((c:3979)),c,0	;volatile
	line	269
;mainv0.4.c: 269: LATCbits.LATC0=0;
	bcf	((c:3979)),c,0	;volatile
	line	270
	
l1281:
;mainv0.4.c: 270: Mask<<=1;
	bcf status,0
	rlcf	((c:ShiftRegisterWrite@Mask)),c

	line	257
	
l1283:
	incf	((c:ShiftRegisterWrite@i)),c
	movlw	(08h-1)
	cpfsgt	((c:ShiftRegisterWrite@i)),c
	goto	u1181
	goto	u1180
u1181:
	goto	l1275
u1180:
	goto	l1285
	
l178:
	line	254
	
l1285:
	incf	((c:ShiftRegisterWrite@num)),c
	
l1287:
	movlw	(07h-1)
	cpfsgt	((c:ShiftRegisterWrite@num)),c
	goto	u1191
	goto	u1190
u1191:
	goto	l1269
u1190:
	
l176:
	line	273
;mainv0.4.c: 271: }
;mainv0.4.c: 272: }
;mainv0.4.c: 273: LATCbits.LATC2=1;
	bsf	((c:3979)),c,2	;volatile
	line	274
;mainv0.4.c: 274: LATCbits.LATC2=0;
	bcf	((c:3979)),c,2	;volatile
	line	275
	
l181:
	return
	opt stack 0
GLOBAL	__end_of_ShiftRegisterWrite
	__end_of_ShiftRegisterWrite:
	signat	_ShiftRegisterWrite,4216
	global	_ShiftRegisterInit

;; *************** function _ShiftRegisterInit *****************
;; Defined at:
;;		line 242 in file "D:\LED Matrix\Micro-Controller Code\mainv0.4.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
	line	242
global __ptext9
__ptext9:
psect	text9
	file	"D:\LED Matrix\Micro-Controller Code\mainv0.4.c"
	line	242
	global	__size_of_ShiftRegisterInit
	__size_of_ShiftRegisterInit	equ	__end_of_ShiftRegisterInit-_ShiftRegisterInit
	
_ShiftRegisterInit:
;incstack = 0
	opt	stack 26
	line	244
	
l1251:
;mainv0.4.c: 244: TRISCbits.TRISC0 = 0;
	bcf	((c:3988)),c,0	;volatile
	line	245
;mainv0.4.c: 245: TRISCbits.TRISC1 = 0;
	bcf	((c:3988)),c,1	;volatile
	line	246
;mainv0.4.c: 246: TRISCbits.TRISC2 = 0;
	bcf	((c:3988)),c,2	;volatile
	line	247
;mainv0.4.c: 247: LATCbits.LATC0 = 0;
	bcf	((c:3979)),c,0	;volatile
	line	248
;mainv0.4.c: 248: LATCbits.LATC2 = 0;
	bcf	((c:3979)),c,2	;volatile
	line	249
;mainv0.4.c: 249: LATCbits.LATC1 = 0;
	bcf	((c:3979)),c,1	;volatile
	line	250
	
l172:
	return
	opt stack 0
GLOBAL	__end_of_ShiftRegisterInit
	__end_of_ShiftRegisterInit:
	signat	_ShiftRegisterInit,88
	global	_Interrupt_Handler_High

;; *************** function _Interrupt_Handler_High *****************
;; Defined at:
;;		line 41 in file "D:\LED Matrix\Micro-Controller Code\mainv0.4.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:         18       0       0       0       0       0       0       0       0
;;      Totals:        18       0       0       0       0       0       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		i1_UART_Write_Text
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intcodelo,class=CODE,space=0,reloc=2
global __pintcodelo
__pintcodelo:
psect	intcodelo
	file	"D:\LED Matrix\Micro-Controller Code\mainv0.4.c"
	line	41
	global	__size_of_Interrupt_Handler_High
	__size_of_Interrupt_Handler_High	equ	__end_of_Interrupt_Handler_High-_Interrupt_Handler_High
	
_Interrupt_Handler_High:
;incstack = 0
	opt	stack 24
	movff	status+0,??_Interrupt_Handler_High+1
	movff	wreg+0,??_Interrupt_Handler_High+2
	movff	bsr+0,??_Interrupt_Handler_High+3
	movff	pclat+0,??_Interrupt_Handler_High+4
	movff	pclat+1,??_Interrupt_Handler_High+5
	movff	fsr0l+0,??_Interrupt_Handler_High+6
	movff	fsr0h+0,??_Interrupt_Handler_High+7
	movff	fsr1l+0,??_Interrupt_Handler_High+8
	movff	fsr1h+0,??_Interrupt_Handler_High+9
	movff	fsr2l+0,??_Interrupt_Handler_High+10
	movff	fsr2h+0,??_Interrupt_Handler_High+11
	movff	prodl+0,??_Interrupt_Handler_High+12
	movff	prodh+0,??_Interrupt_Handler_High+13
	movff	tblptrl+0,??_Interrupt_Handler_High+14
	movff	tblptrh+0,??_Interrupt_Handler_High+15
	movff	tblptru+0,??_Interrupt_Handler_High+16
	movff	tablat+0,??_Interrupt_Handler_High+17
	line	43
	
i1l1343:
;mainv0.4.c: 43: if(PIE1bits.RCIE&&PIR1bits.RCIF)
	btfss	((c:3997)),c,5	;volatile
	goto	i1u128_21
	goto	i1u128_20
i1u128_21:
	goto	i1l121
i1u128_20:
	
i1l1345:
	btfss	((c:3998)),c,5	;volatile
	goto	i1u129_21
	goto	i1u129_20
i1u129_21:
	goto	i1l121
i1u129_20:
	line	45
	
i1l1347:
;mainv0.4.c: 44: {
;mainv0.4.c: 45: SerialCharacter=RCREG;
	movff	(c:4014),(c:_SerialCharacter)	;volatile
	line	46
;mainv0.4.c: 46: switch(SerialCharacter)
	goto	i1l1377
	line	48
;mainv0.4.c: 47: {
;mainv0.4.c: 48: case 0x01:
	
i1l113:
	line	49
	
i1l1349:
;mainv0.4.c: 49: HeaderDetected=1;
	movwf	(??_Interrupt_Handler_High+0+0)&0ffh,c
	movlw	low(01h)
	movwf	((c:_HeaderDetected)),c
	movf	(??_Interrupt_Handler_High+0+0)&0ffh,c,w
	line	50
;mainv0.4.c: 50: SerialDataIndex=0;
	movwf	(??_Interrupt_Handler_High+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_SerialDataIndex)),c
	movf	(??_Interrupt_Handler_High+0+0)&0ffh,c,w
	line	51
;mainv0.4.c: 51: break;
	goto	i1l114
	line	52
;mainv0.4.c: 52: case 0x04:
	
i1l115:
	line	53
	
i1l1351:
;mainv0.4.c: 53: if(HeaderDetected==1)
	decf	((c:_HeaderDetected)),c,w

	btfss	status,2
	goto	i1u130_21
	goto	i1u130_20
i1u130_21:
	goto	i1l114
i1u130_20:
	line	55
	
i1l1353:
;mainv0.4.c: 54: {
;mainv0.4.c: 55: HeaderDetected=0;
	movwf	(??_Interrupt_Handler_High+0+0)&0ffh,c
	movlw	low(0)
	movwf	((c:_HeaderDetected)),c
	movf	(??_Interrupt_Handler_High+0+0)&0ffh,c,w
	line	56
	
i1l1355:
;mainv0.4.c: 56: PacketLength=(SerialData[0]-0x30)*10+(SerialData[1]-0x30);
	movlb	2	; () banked
	movlb	2	; () banked
	movf	((_SerialData))&0ffh,w
	addlw	low(0D0h)
	mullw	0Ah
	movf	(prodl),c,w
	movlb	2	; () banked
	movlb	2	; () banked
	addwf	(0+(_SerialData+01h))&0ffh,w
	addlw	low(0D0h)
	movwf	((c:_PacketLength)),c
	line	57
	
i1l1357:; BSR set to: 2

;mainv0.4.c: 57: RequestType = SerialData[2];
	movff	0+(_SerialData+02h),(_RequestType)
	line	58
	
i1l1359:; BSR set to: 2

;mainv0.4.c: 58: ShiftSpeed = SerialData[3];
	movff	0+(_SerialData+03h),(_ShiftSpeed)
	line	59
	
i1l1361:; BSR set to: 2

;mainv0.4.c: 59: if(PacketLength == SerialDataIndex)
	movf	((c:_SerialDataIndex)),c,w
	cpfseq	((c:_PacketLength)),c
	goto	i1u131_21
	goto	i1u131_20
i1u131_21:
	goto	i1l1365
i1u131_20:
	line	61
	
i1l1363:; BSR set to: 2

;mainv0.4.c: 60: {
;mainv0.4.c: 61: PacketValidity=1;
	movwf	(??_Interrupt_Handler_High+0+0)&0ffh,c
	movlw	low(01h)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((_PacketValidity))&0ffh
	movf	(??_Interrupt_Handler_High+0+0)&0ffh,c,w
	line	62
;mainv0.4.c: 62: }
	goto	i1l114
	line	63
	
i1l117:; BSR set to: 1

	line	65
	
i1l1365:
;mainv0.4.c: 63: else
;mainv0.4.c: 64: {
;mainv0.4.c: 65: PacketValidity=0;
	movwf	(??_Interrupt_Handler_High+0+0)&0ffh,c
	movlw	low(0)
	movlb	1	; () banked
	movlb	1	; () banked
	movwf	((_PacketValidity))&0ffh
	movf	(??_Interrupt_Handler_High+0+0)&0ffh,c,w
	line	66
	
i1l1367:; BSR set to: 1

;mainv0.4.c: 66: UART_Write_Text((unsigned char*)"*ERROR$");
		movlw	high(STR_1)
	movwf	((c:i1UART_Write_Text@msg+1)),c
	movlw	low(STR_1)
	movwf	((c:i1UART_Write_Text@msg)),c

	call	i1_UART_Write_Text	;wreg free
	goto	i1l114
	line	67
	
i1l118:
	goto	i1l114
	line	68
	
i1l116:
	line	69
;mainv0.4.c: 67: }
;mainv0.4.c: 68: }
;mainv0.4.c: 69: break;
	goto	i1l114
	line	70
;mainv0.4.c: 70: default:
	
i1l119:
	line	71
	
i1l1369:
;mainv0.4.c: 71: if(HeaderDetected==1)
	decf	((c:_HeaderDetected)),c,w

	btfss	status,2
	goto	i1u132_21
	goto	i1u132_20
i1u132_21:
	goto	i1l114
i1u132_20:
	line	73
	
i1l1371:
;mainv0.4.c: 72: {
;mainv0.4.c: 73: SerialData[SerialDataIndex]=SerialCharacter;
	movf	((c:_SerialDataIndex)),c,w
	mullw	01h
	movlb	2	; () banked
	movlw	low(_SerialData)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	movlb	2	; () banked
	movlw	high(_SerialData)
	addwfc	prod+1,w
	movwf	1+c:fsr2l
	movff	(c:_SerialCharacter),indf2

	line	74
	
i1l1373:; BSR set to: 2

;mainv0.4.c: 74: SerialDataIndex++;
	incf	((c:_SerialDataIndex)),c
	goto	i1l114
	line	75
	
i1l120:; BSR set to: 2

	line	76
;mainv0.4.c: 75: }
;mainv0.4.c: 76: break;
	goto	i1l114
	line	77
	
i1l1375:; BSR set to: 2

;mainv0.4.c: 77: }
	goto	i1l114
	line	46
	
i1l112:; BSR set to: 2

	
i1l1377:
	movf	((c:_SerialCharacter)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 1 to 4
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	i1l1349
	xorlw	4^1	; case 4
	skipnz
	goto	i1l1351
	goto	i1l1369

	line	77
	
i1l114:
	line	78
;mainv0.4.c: 78: PIR1bits.RCIF=0;
	bcf	((c:3998)),c,5	;volatile
	goto	i1l121
	line	79
	
i1l111:
	line	80
	
i1l121:
	movff	??_Interrupt_Handler_High+17,tablat+0
	movff	??_Interrupt_Handler_High+16,tblptru+0
	movff	??_Interrupt_Handler_High+15,tblptrh+0
	movff	??_Interrupt_Handler_High+14,tblptrl+0
	movff	??_Interrupt_Handler_High+13,prodh+0
	movff	??_Interrupt_Handler_High+12,prodl+0
	movff	??_Interrupt_Handler_High+11,fsr2h+0
	movff	??_Interrupt_Handler_High+10,fsr2l+0
	movff	??_Interrupt_Handler_High+9,fsr1h+0
	movff	??_Interrupt_Handler_High+8,fsr1l+0
	movff	??_Interrupt_Handler_High+7,fsr0h+0
	movff	??_Interrupt_Handler_High+6,fsr0l+0
	movff	??_Interrupt_Handler_High+5,pclat+1
	movff	??_Interrupt_Handler_High+4,pclat+0
	movff	??_Interrupt_Handler_High+3,bsr+0
	movff	??_Interrupt_Handler_High+2,wreg+0
	movff	??_Interrupt_Handler_High+1,status+0
	retfie
	opt stack 0
GLOBAL	__end_of_Interrupt_Handler_High
	__end_of_Interrupt_Handler_High:
	signat	_Interrupt_Handler_High,1112
	global	i1_UART_Write_Text

;; *************** function i1_UART_Write_Text *****************
;; Defined at:
;;		line 25 in file "D:\LED Matrix\Micro-Controller Code\UART.c"
;; Parameters:    Size  Location     Type
;;  msg             2    1[COMRAM] PTR unsigned char 
;;		 -> STR_3(51), STR_2(13), STR_1(8), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		i1_UART_Write
;;		i1_UART_Write_Busy
;; This function is called by:
;;		_Interrupt_Handler_High
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
	file	"D:\LED Matrix\Micro-Controller Code\UART.c"
	line	25
global __ptext11
__ptext11:
psect	text11
	file	"D:\LED Matrix\Micro-Controller Code\UART.c"
	line	25
	global	__size_ofi1_UART_Write_Text
	__size_ofi1_UART_Write_Text	equ	__end_ofi1_UART_Write_Text-i1_UART_Write_Text
	
i1_UART_Write_Text:
;incstack = 0
	opt	stack 24
	line	27
	
i1l1333:
;UART.c: 27: while(*msg)
	goto	i1l1341
	
i1l35:
	line	29
	
i1l1335:
;UART.c: 28: {
;UART.c: 29: UART_Write(*msg);
	movff	(c:i1UART_Write_Text@msg),tblptrl
	movff	(c:i1UART_Write_Text@msg+1),tblptrh
	tblrd	*
	
	movf	tablat,w

	
	call	i1_UART_Write
	line	30
;UART.c: 30: while(!UART_Write_Busy());
	goto	i1l1337
	
i1l37:
	goto	i1l1337
	
i1l36:
	
i1l1337:
	call	i1_UART_Write_Busy	;wreg free
	iorlw	0
	btfsc	status,2
	goto	i1u126_21
	goto	i1u126_20
i1u126_21:
	goto	i1l1337
i1u126_20:
	goto	i1l1339
	
i1l38:
	line	31
	
i1l1339:
;UART.c: 31: msg++;
	infsnz	((c:i1UART_Write_Text@msg)),c
	incf	((c:i1UART_Write_Text@msg+1)),c
	goto	i1l1341
	line	32
	
i1l34:
	line	27
	
i1l1341:
	movff	(c:i1UART_Write_Text@msg),tblptrl
	movff	(c:i1UART_Write_Text@msg+1),tblptrh
	tblrd	*
	
	movf	tablat,w

	iorlw	0
	btfss	status,2
	goto	i1u127_21
	goto	i1u127_20
i1u127_21:
	goto	i1l1335
i1u127_20:
	goto	i1l40
	
i1l39:
	line	33
	
i1l40:
	return
	opt stack 0
GLOBAL	__end_ofi1_UART_Write_Text
	__end_ofi1_UART_Write_Text:
	signat	i1_UART_Write_Text,88
	global	i1_UART_Write_Busy

;; *************** function i1_UART_Write_Busy *****************
;; Defined at:
;;		line 46 in file "D:\LED Matrix\Micro-Controller Code\UART.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_UART_Write_Text
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
	line	46
global __ptext12
__ptext12:
psect	text12
	file	"D:\LED Matrix\Micro-Controller Code\UART.c"
	line	46
	global	__size_ofi1_UART_Write_Busy
	__size_ofi1_UART_Write_Busy	equ	__end_ofi1_UART_Write_Busy-i1_UART_Write_Busy
	
i1_UART_Write_Busy:
;incstack = 0
	opt	stack 25
	line	48
	
i1l1223:
;UART.c: 48: return(TXSTAbits.TRMT);
	btfsc	((c:4012)),c,1	;volatile
	goto	i1u111_21
	goto	i1u111_20
i1u111_21:
	movlw	1
	goto	i1u111_26
i1u111_20:
	movlw	0
i1u111_26:
	goto	i1l54
	
i1l1225:
	line	49
	
i1l54:
	return
	opt stack 0
GLOBAL	__end_ofi1_UART_Write_Busy
	__end_ofi1_UART_Write_Busy:
	signat	i1_UART_Write_Busy,89
	global	i1_UART_Write

;; *************** function i1_UART_Write *****************
;; Defined at:
;;		line 19 in file "D:\LED Matrix\Micro-Controller Code\UART.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_Correct_UART_Errors
;; This function is called by:
;;		i1_UART_Write_Text
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
	line	19
global __ptext13
__ptext13:
psect	text13
	file	"D:\LED Matrix\Micro-Controller Code\UART.c"
	line	19
	global	__size_ofi1_UART_Write
	__size_ofi1_UART_Write	equ	__end_ofi1_UART_Write-i1_UART_Write
	
i1_UART_Write:
;incstack = 0
	opt	stack 24
;i1UART_Write@data stored from wreg
	movff	wreg,(c:i1UART_Write@data)
	line	21
	
i1l1219:
;UART.c: 21: Correct_UART_Errors();
	call	i1_Correct_UART_Errors	;wreg free
	line	22
;UART.c: 22: while(PIR1bits.TXIF == 0);
	goto	i1l28
	
i1l29:
	
i1l28:
	btfss	((c:3998)),c,4	;volatile
	goto	i1u110_21
	goto	i1u110_20
i1u110_21:
	goto	i1l28
i1u110_20:
	goto	i1l1221
	
i1l30:
	line	23
	
i1l1221:
;UART.c: 23: TXREG = data;
	movff	(c:i1UART_Write@data),(c:4013)	;volatile
	line	24
	
i1l31:
	return
	opt stack 0
GLOBAL	__end_ofi1_UART_Write
	__end_ofi1_UART_Write:
	signat	i1_UART_Write,88
	global	i1_Correct_UART_Errors

;; *************** function i1_Correct_UART_Errors *****************
;; Defined at:
;;		line 50 in file "D:\LED Matrix\Micro-Controller Code\UART.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		i1_UART_Write
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
	line	50
global __ptext14
__ptext14:
psect	text14
	file	"D:\LED Matrix\Micro-Controller Code\UART.c"
	line	50
	global	__size_ofi1_Correct_UART_Errors
	__size_ofi1_Correct_UART_Errors	equ	__end_ofi1_Correct_UART_Errors-i1_Correct_UART_Errors
	
i1_Correct_UART_Errors:
;incstack = 0
	opt	stack 24
	line	52
	
i1l1207:
;UART.c: 52: if((RCSTAbits.OERR==1) || (RCSTAbits.FERR==1))
	btfsc	((c:4011)),c,1	;volatile
	goto	i1u106_21
	goto	i1u106_20
i1u106_21:
	goto	i1l59
i1u106_20:
	
i1l1209:
	btfss	((c:4011)),c,2	;volatile
	goto	i1u107_21
	goto	i1u107_20
i1u107_21:
	goto	i1l60
i1u107_20:
	
i1l59:
	line	54
;UART.c: 53: {
;UART.c: 54: RCSTAbits.CREN=0;
	bcf	((c:4011)),c,4	;volatile
	line	55
;UART.c: 55: RCSTAbits.CREN=1;
	bsf	((c:4011)),c,4	;volatile
	goto	i1l60
	line	56
	
i1l57:
	line	57
	
i1l60:
	return
	opt stack 0
GLOBAL	__end_ofi1_Correct_UART_Errors
	__end_ofi1_Correct_UART_Errors:
	signat	i1_Correct_UART_Errors,88
psect	mediumconst
	db 0	; dummy byte at the end
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
