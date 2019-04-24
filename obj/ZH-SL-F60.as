opt subtitle "Microchip Technology Omniscient Code Generator (PRO mode) build 55553"

opt pagewidth 120

	opt pm

	processor	16F1938
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
pushw	macro
	movwi fsr1++
	endm
popw	macro
	moviw --fsr1
	endm
indf	equ	0
indf0	equ	0
indf1	equ	1
pc	equ	2
pcl	equ	2
status	equ	3
fsr0l	equ	4
fsr0h	equ	5
fsr1l	equ	6
fsr1h	equ	7
bsr	equ	8
wreg	equ	9
intcon	equ	11
c	equ	1
z	equ	0
pclath	equ	10
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 16 "D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
psect eeprom_data,class=EEDATA,delta=2,space=3 ;# 
# 16 "D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
db 0x02,0x58,0x00,0xA2,0x64,0x64,0x64,0x64 ;# 
# 18 "D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
psect eeprom_data,class=EEDATA,delta=2,space=3 ;# 
# 18 "D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
db 0x64,0x01,0x01,0x01,0x05,0x05,0x01,0x01 ;# 
# 20 "D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
psect eeprom_data,class=EEDATA,delta=2,space=3 ;# 
# 20 "D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
db 0x01,0x00,0x00,0x00,0x00,0x00,0x00,0x00 ;# 
# 22 "D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
psect eeprom_data,class=EEDATA,delta=2,space=3 ;# 
# 22 "D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 ;# 
# 24 "D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
psect eeprom_data,class=EEDATA,delta=2,space=3 ;# 
# 24 "D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 ;# 
# 26 "D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
psect eeprom_data,class=EEDATA,delta=2,space=3 ;# 
# 26 "D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 ;# 
# 28 "D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
psect eeprom_data,class=EEDATA,delta=2,space=3 ;# 
# 28 "D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 ;# 
# 30 "D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
psect eeprom_data,class=EEDATA,delta=2,space=3 ;# 
# 30 "D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
db 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00 ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
# 46 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF0 equ 00h ;# 
# 65 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INDF1 equ 01h ;# 
# 84 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCL equ 02h ;# 
# 103 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS equ 03h ;# 
# 166 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L equ 04h ;# 
# 185 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H equ 05h ;# 
# 207 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L equ 06h ;# 
# 226 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H equ 07h ;# 
# 245 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR equ 08h ;# 
# 296 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG equ 09h ;# 
# 315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH equ 0Ah ;# 
# 334 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
INTCON equ 0Bh ;# 
# 411 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTA equ 0Ch ;# 
# 472 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTB equ 0Dh ;# 
# 533 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTC equ 0Eh ;# 
# 594 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PORTE equ 010h ;# 
# 614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR1 equ 011h ;# 
# 675 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR2 equ 012h ;# 
# 731 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIR3 equ 013h ;# 
# 776 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR0 equ 015h ;# 
# 795 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1 equ 016h ;# 
# 801 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1L equ 016h ;# 
# 820 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR1H equ 017h ;# 
# 839 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1CON equ 018h ;# 
# 910 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T1GCON equ 019h ;# 
# 986 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR2 equ 01Ah ;# 
# 1005 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR2 equ 01Bh ;# 
# 1024 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T2CON equ 01Ch ;# 
# 1094 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON0 equ 01Eh ;# 
# 1153 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CPSCON1 equ 01Fh ;# 
# 1192 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISA equ 08Ch ;# 
# 1253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISB equ 08Dh ;# 
# 1314 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISC equ 08Eh ;# 
# 1375 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TRISE equ 090h ;# 
# 1395 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE1 equ 091h ;# 
# 1456 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE2 equ 092h ;# 
# 1512 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PIE3 equ 093h ;# 
# 1557 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OPTION_REG equ 095h ;# 
# 1639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCON equ 096h ;# 
# 1689 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WDTCON equ 097h ;# 
# 1747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCTUNE equ 098h ;# 
# 1804 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCCON equ 099h ;# 
# 1875 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
OSCSTAT equ 09Ah ;# 
# 1936 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRES equ 09Bh ;# 
# 1942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESL equ 09Bh ;# 
# 1961 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADRESH equ 09Ch ;# 
# 1980 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON0 equ 09Dh ;# 
# 2068 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ADCON1 equ 09Eh ;# 
# 2139 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATA equ 010Ch ;# 
# 2200 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATB equ 010Dh ;# 
# 2261 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATC equ 010Eh ;# 
# 2322 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LATE equ 0110h ;# 
# 2342 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON0 equ 0111h ;# 
# 2398 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM1CON1 equ 0112h ;# 
# 2463 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON0 equ 0113h ;# 
# 2519 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CM2CON1 equ 0114h ;# 
# 2584 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CMOUT equ 0115h ;# 
# 2609 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BORCON equ 0116h ;# 
# 2635 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FVRCON equ 0117h ;# 
# 2710 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON0 equ 0118h ;# 
# 2770 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
DACCON1 equ 0119h ;# 
# 2821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON0 equ 011Ah ;# 
# 2891 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SRCON1 equ 011Bh ;# 
# 2952 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
APFCON equ 011Dh ;# 
# 3007 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELA equ 018Ch ;# 
# 3064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ANSELB equ 018Dh ;# 
# 3121 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADR equ 0191h ;# 
# 3127 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRL equ 0191h ;# 
# 3146 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEADRH equ 0192h ;# 
# 3165 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDAT equ 0193h ;# 
# 3171 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATL equ 0193h ;# 
# 3176 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATA equ 0193h ;# 
# 3208 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EEDATH equ 0194h ;# 
# 3227 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON1 equ 0195h ;# 
# 3288 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
EECON2 equ 0196h ;# 
# 3307 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCREG equ 0199h ;# 
# 3326 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXREG equ 019Ah ;# 
# 3345 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRG equ 019Bh ;# 
# 3351 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGL equ 019Bh ;# 
# 3356 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRG equ 019Bh ;# 
# 3360 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGL equ 019Bh ;# 
# 3404 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SP1BRGH equ 019Ch ;# 
# 3409 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SPBRGH equ 019Ch ;# 
# 3441 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
RCSTA equ 019Dh ;# 
# 3502 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TXSTA equ 019Eh ;# 
# 3563 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BAUDCON equ 019Fh ;# 
# 3614 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUB equ 020Dh ;# 
# 3683 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WPUE equ 0210h ;# 
# 3703 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPBUF equ 0211h ;# 
# 3722 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPADD equ 0212h ;# 
# 3741 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPMSK equ 0213h ;# 
# 3760 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPSTAT equ 0214h ;# 
# 3821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON1 equ 0215h ;# 
# 3826 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON equ 0215h ;# 
# 3942 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON2 equ 0216h ;# 
# 4003 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
SSPCON3 equ 0217h ;# 
# 4064 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1 equ 0291h ;# 
# 4070 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1L equ 0291h ;# 
# 4089 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR1H equ 0292h ;# 
# 4108 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1CON equ 0293h ;# 
# 4189 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM1CON equ 0294h ;# 
# 4253 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP1AS equ 0295h ;# 
# 4258 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP1AS equ 0295h ;# 
# 4374 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR1CON equ 0296h ;# 
# 4417 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2 equ 0298h ;# 
# 4423 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2L equ 0298h ;# 
# 4442 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR2H equ 0299h ;# 
# 4461 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2CON equ 029Ah ;# 
# 4542 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM2CON equ 029Bh ;# 
# 4603 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP2AS equ 029Ch ;# 
# 4608 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP2AS equ 029Ch ;# 
# 4724 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR2CON equ 029Dh ;# 
# 4767 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS0 equ 029Eh ;# 
# 4854 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPTMRS1 equ 029Fh ;# 
# 4887 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3 equ 0311h ;# 
# 4893 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3L equ 0311h ;# 
# 4912 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR3H equ 0312h ;# 
# 4931 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3CON equ 0313h ;# 
# 4997 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PWM3CON equ 0314h ;# 
# 5058 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP3AS equ 0315h ;# 
# 5063 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
ECCP3AS equ 0315h ;# 
# 5179 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PSTR3CON equ 0316h ;# 
# 5222 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4 equ 0318h ;# 
# 5228 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4L equ 0318h ;# 
# 5247 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR4H equ 0319h ;# 
# 5266 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP4CON equ 031Ah ;# 
# 5315 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5 equ 031Ch ;# 
# 5321 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5L equ 031Ch ;# 
# 5340 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCPR5H equ 031Dh ;# 
# 5359 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
CCP5CON equ 031Eh ;# 
# 5413 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBP equ 0394h ;# 
# 5482 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBN equ 0395h ;# 
# 5551 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
IOCBF equ 0396h ;# 
# 5620 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR4 equ 0415h ;# 
# 5639 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR4 equ 0416h ;# 
# 5658 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T4CON equ 0417h ;# 
# 5728 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TMR6 equ 041Ch ;# 
# 5747 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PR6 equ 041Dh ;# 
# 5766 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
T6CON equ 041Eh ;# 
# 5836 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCON equ 0791h ;# 
# 5906 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDPS equ 0792h ;# 
# 5975 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDREF equ 0793h ;# 
# 6026 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDCST equ 0794h ;# 
# 6065 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDRL equ 0795h ;# 
# 6142 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE0 equ 0798h ;# 
# 6203 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDSE1 equ 0799h ;# 
# 6264 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA0 equ 07A0h ;# 
# 6325 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA1 equ 07A1h ;# 
# 6386 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA3 equ 07A3h ;# 
# 6447 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA4 equ 07A4h ;# 
# 6508 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA6 equ 07A6h ;# 
# 6569 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA7 equ 07A7h ;# 
# 6630 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA9 equ 07A9h ;# 
# 6691 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
LCDDATA10 equ 07AAh ;# 
# 6752 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STATUS_SHAD equ 0FE4h ;# 
# 6783 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
WREG_SHAD equ 0FE5h ;# 
# 6802 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
BSR_SHAD equ 0FE6h ;# 
# 6821 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
PCLATH_SHAD equ 0FE7h ;# 
# 6840 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0L_SHAD equ 0FE8h ;# 
# 6859 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR0H_SHAD equ 0FE9h ;# 
# 6878 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1L_SHAD equ 0FEAh ;# 
# 6897 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
FSR1H_SHAD equ 0FEBh ;# 
# 6916 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
STKPTR equ 0FEDh ;# 
# 6935 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSL equ 0FEEh ;# 
# 6954 "D:\Program Files (x86)\Microchip\xc8\v1.30\include\pic16f1938.h"
TOSH equ 0FEFh ;# 
DABS 1,1568,48	;_adc_buffer
DABS 1,1440,80	;_adc_buffer
	FNCALL	_main,_Key_Menu
	FNCALL	_main,_application_init
	FNCALL	_main,_driver_init
	FNCALL	_main,_handle_ad_loop
	FNCALL	_main,_handle_task_process
	FNCALL	_main,_handle_uart_rx_buf
	FNCALL	_main,_middle_init
	FNCALL	_middle_init,_auto_system
	FNCALL	_middle_init,_read_param_eeprom
	FNCALL	_read_param_eeprom,___awtofl
	FNCALL	_read_param_eeprom,___fldiv
	FNCALL	_read_param_eeprom,___flmul
	FNCALL	_read_param_eeprom,___lbtofl
	FNCALL	_read_param_eeprom,___lmul
	FNCALL	_read_param_eeprom,_eeprom_read
	FNCALL	_auto_system,___fldiv
	FNCALL	_auto_system,___flge
	FNCALL	_auto_system,___flmul
	FNCALL	_auto_system,___lwtofl
	FNCALL	_auto_system,_delay_ms
	FNCALL	_auto_system,_eeprom_read
	FNCALL	_auto_system,_eeprom_write
	FNCALL	_auto_system,_start_ad_convert
	FNCALL	_handle_uart_rx_buf,_Disable_Bost_Pwm
	FNCALL	_handle_uart_rx_buf,_Disable_Buck_Pwm
	FNCALL	_handle_uart_rx_buf,_Enable_Bost_Pwm
	FNCALL	_handle_uart_rx_buf,_Set_Bost_Pwm_Duty
	FNCALL	_handle_uart_rx_buf,_Set_Buck_Pwm_Duty
	FNCALL	_handle_uart_rx_buf,___awtofl
	FNCALL	_handle_uart_rx_buf,___fldiv
	FNCALL	_handle_uart_rx_buf,___flge
	FNCALL	_handle_uart_rx_buf,___flmul
	FNCALL	_handle_uart_rx_buf,___fltol
	FNCALL	_handle_uart_rx_buf,___lbtofl
	FNCALL	_handle_uart_rx_buf,___lwtofl
	FNCALL	_handle_uart_rx_buf,___wmul
	FNCALL	_handle_uart_rx_buf,_crc16
	FNCALL	_handle_uart_rx_buf,_delay_ms
	FNCALL	_handle_uart_rx_buf,_eeprom_read
	FNCALL	_handle_uart_rx_buf,_eeprom_write
	FNCALL	_handle_uart_rx_buf,_memset
	FNCALL	___lbtofl,___flpack
	FNCALL	_handle_task_process,_Disable_Bost_Pwm
	FNCALL	_handle_task_process,_Disable_Buck_Pwm
	FNCALL	_handle_task_process,_Enable_Bost_Pwm
	FNCALL	_handle_task_process,_Set_Bost_Pwm_Duty
	FNCALL	_handle_task_process,_Set_Buck_Pwm_Duty
	FNCALL	_handle_task_process,___fladd
	FNCALL	_handle_task_process,___fldiv
	FNCALL	_handle_task_process,___flmul
	FNCALL	_handle_task_process,___fltol
	FNCALL	_handle_task_process,_delay_ms
	FNCALL	_handle_task_process,_eeprom_write
	FNCALL	_handle_task_process,_pid_init
	FNCALL	_handle_ad_loop,_Disable_Bost_Pwm
	FNCALL	_handle_ad_loop,_Disable_Buck_Pwm
	FNCALL	_handle_ad_loop,_Enable_Bost_Pwm
	FNCALL	_handle_ad_loop,_Enable_Buck_Pwm
	FNCALL	_handle_ad_loop,_Mppt_Charge
	FNCALL	_handle_ad_loop,_Set_Bost_Pwm_Duty
	FNCALL	_handle_ad_loop,_Set_Buck_Pwm_Duty
	FNCALL	_handle_ad_loop,___awtofl
	FNCALL	_handle_ad_loop,___fladd
	FNCALL	_handle_ad_loop,___fldiv
	FNCALL	_handle_ad_loop,___flge
	FNCALL	_handle_ad_loop,___flmul
	FNCALL	_handle_ad_loop,___fltol
	FNCALL	_handle_ad_loop,___lldiv
	FNCALL	_handle_ad_loop,___lwdiv
	FNCALL	_handle_ad_loop,___lwtofl
	FNCALL	_handle_ad_loop,___wmul
	FNCALL	_handle_ad_loop,_delay_ms
	FNCALL	_handle_ad_loop,_pid_calc
	FNCALL	_handle_ad_loop,_start_ad_convert
	FNCALL	_start_ad_convert,___lwdiv
	FNCALL	_Mppt_Charge,_Set_Buck_Pwm_Duty
	FNCALL	_Mppt_Charge,___fladd
	FNCALL	_Mppt_Charge,___flge
	FNCALL	_Mppt_Charge,___fltol
	FNCALL	_Mppt_Charge,___lwtofl
	FNCALL	_Mppt_Charge,_pid_calc
	FNCALL	_pid_calc,___awtofl
	FNCALL	_pid_calc,___fladd
	FNCALL	_pid_calc,___flge
	FNCALL	_pid_calc,___flmul
	FNCALL	_pid_calc,___flsub
	FNCALL	___flsub,___fladd
	FNCALL	___awtofl,___flpack
	FNCALL	___lwtofl,___flpack
	FNCALL	_driver_init,_Init_Ird
	FNCALL	_driver_init,_init_adc
	FNCALL	_driver_init,_init_interrupt
	FNCALL	_driver_init,_init_key
	FNCALL	_driver_init,_init_osc
	FNCALL	_driver_init,_init_port
	FNCALL	_driver_init,_init_pwm
	FNCALL	_driver_init,_init_timer1
	FNCALL	_driver_init,_init_uart1
	FNCALL	_application_init,___fladd
	FNCALL	_application_init,___fldiv
	FNCALL	_application_init,___flmul
	FNCALL	_application_init,_pid_init
	FNCALL	_pid_init,_memset
	FNCALL	_Key_Menu,_Disable_Bost_Pwm
	FNCALL	_Key_Menu,_Disable_Buck_Pwm
	FNCALL	_Key_Menu,_Enable_Bost_Pwm
	FNCALL	_Key_Menu,_Set_Bost_Pwm_Duty
	FNCALL	_Key_Menu,_Set_Buck_Pwm_Duty
	FNCALL	_Key_Menu,_delay_ms
	FNCALL	_Key_Menu,_eeprom_write
	FNCALL	___fldiv,___flpack
	FNCALL	___fladd,___flpack
	FNCALL	___flmul,___flpack
	FNROOT	_main
	FNCALL	_isr,i1_Disable_Bost_Pwm
	FNCALL	_isr,i1_Set_Bost_Pwm_Duty
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_light_pv
	global	_load_cc_I
	global	_step_01_time_limit
	global	_step_02_time_limit
	global	_bt_id
	global	_volt_id
	global	_voltage_adjust_index
	global	_dianchi_guoya_baohu
	global	_step_01_load_percent
	global	_step_02_load_percent
	global	_step_03_load_percent
	global	_step_04_load_percent
	global	_step_05_load_percent
	global	_step_03_time_limit
	global	_step_04_time_limit
	global	_step_05_time_limit
	global	_sys_temper_flag
	global	_dianchi_cv_level
	global	_dianchi_guoya_huifu
	global	_shuchu_shortout_voltage
	global	_bt_volt_00
	global	_bt_volt_20
	global	_bt_volt_40
	global	_bt_volt_60
	global	_bt_volt_80
	global	_ird_data
	global	_Load_Pmax
	global	_charge_i_limit
	global	_dianchi_qianya_baohu
	global	_dianchi_qianya_huifu
	global	_discharge_i_baohu
	global	_discharge_i_limit
	global	_light_off_pv_level
	global	_light_on_pv_level
	global	_shuchu_open_voltage
psect	idataBANK1,class=CODE,space=0,delta=2,noexec
global __pidataBANK1
__pidataBANK1:
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	73

;initializer for _light_pv
	retlw	0x0
	retlw	0x0
	retlw	0x16
	retlw	0x44

	line	75

;initializer for _load_cc_I
	retlw	0x0
	retlw	0x0
	retlw	0x22
	retlw	0x43

	line	89

;initializer for _step_01_time_limit
	retlw	01h
	retlw	0

	line	91

;initializer for _step_02_time_limit
	retlw	03h
	retlw	0

	line	101

;initializer for _bt_id
	retlw	01h
	line	99

;initializer for _volt_id
	retlw	01h
	file	"D:\MCUProject\ZH-SL-F60\src\task.c"
	line	90

;initializer for _voltage_adjust_index
	retlw	01h
psect	idataBANK2,class=CODE,space=0,delta=2,noexec
global __pidataBANK2
__pidataBANK2:
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	127

;initializer for _dianchi_guoya_baohu
	retlw	0xcd
	retlw	0xcc
	retlw	0x44
	retlw	0x41

	line	79

;initializer for _step_01_load_percent
	retlw	0x0
	retlw	0x0
	retlw	0xc8
	retlw	0x42

	line	81

;initializer for _step_02_load_percent
	retlw	0x0
	retlw	0x0
	retlw	0xc8
	retlw	0x42

	line	83

;initializer for _step_03_load_percent
	retlw	0x0
	retlw	0x0
	retlw	0xc8
	retlw	0x42

	line	85

;initializer for _step_04_load_percent
	retlw	0x0
	retlw	0x0
	retlw	0xc8
	retlw	0x42

	line	87

;initializer for _step_05_load_percent
	retlw	0x0
	retlw	0x0
	retlw	0xc8
	retlw	0x42

	line	93

;initializer for _step_03_time_limit
	retlw	04h
	retlw	0

	line	95

;initializer for _step_04_time_limit
	retlw	03h
	retlw	0

	line	97

;initializer for _step_05_time_limit
	retlw	01h
	retlw	0

	file	"D:\MCUProject\ZH-SL-F60\src\task.c"
	line	76

;initializer for _sys_temper_flag
	retlw	01h
psect	idataBANK3,class=CODE,space=0,delta=2,noexec
global __pidataBANK3
__pidataBANK3:
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	135

;initializer for _dianchi_cv_level
	retlw	0x66
	retlw	0x66
	retlw	0x42
	retlw	0x41

	line	129

;initializer for _dianchi_guoya_huifu
	retlw	0x66
	retlw	0x66
	retlw	0x42
	retlw	0x41

	line	139

;initializer for _shuchu_shortout_voltage
	retlw	0x0
	retlw	0x0
	retlw	0xf0
	retlw	0x40

psect	idataBANK4,class=CODE,space=0,delta=2,noexec
global __pidataBANK4
__pidataBANK4:
	line	123

;initializer for _bt_volt_00
	retlw	0x0
	retlw	0x0
	retlw	0x10
	retlw	0x41

	line	121

;initializer for _bt_volt_20
	retlw	0x5c
	retlw	0x8f
	retlw	0x1a
	retlw	0x41

	line	119

;initializer for _bt_volt_40
	retlw	0xb8
	retlw	0x1e
	retlw	0x25
	retlw	0x41

	line	117

;initializer for _bt_volt_60
	retlw	0x14
	retlw	0xae
	retlw	0x2f
	retlw	0x41

	line	115

;initializer for _bt_volt_80
	retlw	0x71
	retlw	0x3d
	retlw	0x3a
	retlw	0x41

	line	168

;initializer for _ird_data
	retlw	0BFh
	retlw	040h
	retlw	0EDh
	retlw	010h

psect	idataBANK5,class=CODE,space=0,delta=2,noexec
global __pidataBANK5
__pidataBANK5:
	line	156

;initializer for _Load_Pmax
	retlw	0x0
	retlw	0x0
	retlw	0x80
	retlw	0x42

	line	137

;initializer for _charge_i_limit
	retlw	0x0
	retlw	0x0
	retlw	0xa0
	retlw	0x40

	line	131

;initializer for _dianchi_qianya_baohu
	retlw	0x0
	retlw	0x0
	retlw	0x10
	retlw	0x41

	line	133

;initializer for _dianchi_qianya_huifu
	retlw	0x0
	retlw	0x0
	retlw	0x18
	retlw	0x41

	line	143

;initializer for _discharge_i_baohu
	retlw	0x0
	retlw	0x0
	retlw	0x90
	retlw	0x40

	line	145

;initializer for _discharge_i_limit
	retlw	0x0
	retlw	0x0
	retlw	0x80
	retlw	0x40

	line	149

;initializer for _light_off_pv_level
	retlw	0x0
	retlw	0x0
	retlw	0x0
	retlw	0x41

	line	147

;initializer for _light_on_pv_level
	retlw	0x0
	retlw	0x0
	retlw	0xc0
	retlw	0x40

	line	141

;initializer for _shuchu_open_voltage
	retlw	0x0
	retlw	0x0
	retlw	0x7c
	retlw	0x42

	global	_CRCHi
psect	stringtext,class=STRCODE,delta=2,reloc=256,noexec
global __pstringtext
__pstringtext:
	global    __stringtab
__stringtab:
	retlw	0
psect	stringtext
	global    __end_of__stringtab
__end_of__stringtab:
	file	"D:\MCUProject\ZH-SL-F60\src\Modbus.c"
	line	10
_CRCHi:
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	01h
	retlw	0C0h
	retlw	080h
	retlw	041h
	retlw	0
	retlw	0C1h
	retlw	081h
	retlw	040h
	global __end_of_CRCHi
__end_of_CRCHi:
	global	_CRCLo
psect	stringtext
	file	"D:\MCUProject\ZH-SL-F60\src\Modbus.c"
	line	40
_CRCLo:
	retlw	0
	retlw	0C0h
	retlw	0C1h
	retlw	01h
	retlw	0C3h
	retlw	03h
	retlw	02h
	retlw	0C2h
	retlw	0C6h
	retlw	06h
	retlw	07h
	retlw	0C7h
	retlw	05h
	retlw	0C5h
	retlw	0C4h
	retlw	04h
	retlw	0CCh
	retlw	0Ch
	retlw	0Dh
	retlw	0CDh
	retlw	0Fh
	retlw	0CFh
	retlw	0CEh
	retlw	0Eh
	retlw	0Ah
	retlw	0CAh
	retlw	0CBh
	retlw	0Bh
	retlw	0C9h
	retlw	09h
	retlw	08h
	retlw	0C8h
	retlw	0D8h
	retlw	018h
	retlw	019h
	retlw	0D9h
	retlw	01Bh
	retlw	0DBh
	retlw	0DAh
	retlw	01Ah
	retlw	01Eh
	retlw	0DEh
	retlw	0DFh
	retlw	01Fh
	retlw	0DDh
	retlw	01Dh
	retlw	01Ch
	retlw	0DCh
	retlw	014h
	retlw	0D4h
	retlw	0D5h
	retlw	015h
	retlw	0D7h
	retlw	017h
	retlw	016h
	retlw	0D6h
	retlw	0D2h
	retlw	012h
	retlw	013h
	retlw	0D3h
	retlw	011h
	retlw	0D1h
	retlw	0D0h
	retlw	010h
	retlw	0F0h
	retlw	030h
	retlw	031h
	retlw	0F1h
	retlw	033h
	retlw	0F3h
	retlw	0F2h
	retlw	032h
	retlw	036h
	retlw	0F6h
	retlw	0F7h
	retlw	037h
	retlw	0F5h
	retlw	035h
	retlw	034h
	retlw	0F4h
	retlw	03Ch
	retlw	0FCh
	retlw	0FDh
	retlw	03Dh
	retlw	0FFh
	retlw	03Fh
	retlw	03Eh
	retlw	0FEh
	retlw	0FAh
	retlw	03Ah
	retlw	03Bh
	retlw	0FBh
	retlw	039h
	retlw	0F9h
	retlw	0F8h
	retlw	038h
	retlw	028h
	retlw	0E8h
	retlw	0E9h
	retlw	029h
	retlw	0EBh
	retlw	02Bh
	retlw	02Ah
	retlw	0EAh
	retlw	0EEh
	retlw	02Eh
	retlw	02Fh
	retlw	0EFh
	retlw	02Dh
	retlw	0EDh
	retlw	0ECh
	retlw	02Ch
	retlw	0E4h
	retlw	024h
	retlw	025h
	retlw	0E5h
	retlw	027h
	retlw	0E7h
	retlw	0E6h
	retlw	026h
	retlw	022h
	retlw	0E2h
	retlw	0E3h
	retlw	023h
	retlw	0E1h
	retlw	021h
	retlw	020h
	retlw	0E0h
	retlw	0A0h
	retlw	060h
	retlw	061h
	retlw	0A1h
	retlw	063h
	retlw	0A3h
	retlw	0A2h
	retlw	062h
	retlw	066h
	retlw	0A6h
	retlw	0A7h
	retlw	067h
	retlw	0A5h
	retlw	065h
	retlw	064h
	retlw	0A4h
	retlw	06Ch
	retlw	0ACh
	retlw	0ADh
	retlw	06Dh
	retlw	0AFh
	retlw	06Fh
	retlw	06Eh
	retlw	0AEh
	retlw	0AAh
	retlw	06Ah
	retlw	06Bh
	retlw	0ABh
	retlw	069h
	retlw	0A9h
	retlw	0A8h
	retlw	068h
	retlw	078h
	retlw	0B8h
	retlw	0B9h
	retlw	079h
	retlw	0BBh
	retlw	07Bh
	retlw	07Ah
	retlw	0BAh
	retlw	0BEh
	retlw	07Eh
	retlw	07Fh
	retlw	0BFh
	retlw	07Dh
	retlw	0BDh
	retlw	0BCh
	retlw	07Ch
	retlw	0B4h
	retlw	074h
	retlw	075h
	retlw	0B5h
	retlw	077h
	retlw	0B7h
	retlw	0B6h
	retlw	076h
	retlw	072h
	retlw	0B2h
	retlw	0B3h
	retlw	073h
	retlw	0B1h
	retlw	071h
	retlw	070h
	retlw	0B0h
	retlw	050h
	retlw	090h
	retlw	091h
	retlw	051h
	retlw	093h
	retlw	053h
	retlw	052h
	retlw	092h
	retlw	096h
	retlw	056h
	retlw	057h
	retlw	097h
	retlw	055h
	retlw	095h
	retlw	094h
	retlw	054h
	retlw	09Ch
	retlw	05Ch
	retlw	05Dh
	retlw	09Dh
	retlw	05Fh
	retlw	09Fh
	retlw	09Eh
	retlw	05Eh
	retlw	05Ah
	retlw	09Ah
	retlw	09Bh
	retlw	05Bh
	retlw	099h
	retlw	059h
	retlw	058h
	retlw	098h
	retlw	088h
	retlw	048h
	retlw	049h
	retlw	089h
	retlw	04Bh
	retlw	08Bh
	retlw	08Ah
	retlw	04Ah
	retlw	04Eh
	retlw	08Eh
	retlw	08Fh
	retlw	04Fh
	retlw	08Dh
	retlw	04Dh
	retlw	04Ch
	retlw	08Ch
	retlw	044h
	retlw	084h
	retlw	085h
	retlw	045h
	retlw	087h
	retlw	047h
	retlw	046h
	retlw	086h
	retlw	082h
	retlw	042h
	retlw	043h
	retlw	083h
	retlw	041h
	retlw	081h
	retlw	080h
	retlw	040h
	global __end_of_CRCLo
__end_of_CRCLo:
	global	_CRCHi
	global	_CRCLo
	global	_ho_cnt
	global	_battery_voltage_value
	global	_today_index
	global	_PWM
	global	_bost_pwm_value
	global	_buck_pwm_value
	global	_crc_data
	global	_discharge_current_value
	global	_load_voltage_value
	global	_mcu_value
	global	_pv_voltage_value
	global	_Adjust_Pout_Flag
	global	_charge_index
	global	_device_status
	global	_discharge_index
	global	_have_person1_flag
	global	_led_out_ctrl
	global	_light_mode
	global	_mcu_temp_index
	global	_system_status
	global	_uart1_receive_byte_count
	global	_uart1_time_count
	global	_work_mode
	global	_light_time
	global	_b_v
	global	_charge_current_value
	global	_mi_cnt
	global	_temperature_value
	global	_battery_voltage_status
	global	_handle_an0_process_flag
	global	_handle_an10_process_flag
	global	_handle_an1_process_flag
	global	_handle_an2_process_flag
	global	_handle_an3_process_flag
	global	_handle_an4_process_flag
	global	_handle_an9_process_flag
	global	_handle_scan_key_flag
	global	_handle_short_flag
	global	_have_person1_time_count
	global	_ird_receive_flag
	global	_ird_receive_time_count
	global	_ird_status
	global	_open_an0_time
	global	_open_an10_time
	global	_open_an1_time
	global	_open_an2_time
	global	_open_an3_time
	global	_open_an4_time
	global	_open_an9_time
	global	_open_discharge_time
	global	_open_sleep_time
	global	_pid_index
	global	_pv_index
	global	_pv_voltage_status
	global	_receive_bit_count
	global	_rx_frame_kind
	global	_scan_key_time_count
	global	_system_check_time
	global	_t1
	global	_t2
	global	_t3
	global	_t4
	global	_uart1_receive_flag
	global	_uart_send_byte_count
	global	_uart_send_delay_timer
	global	_uart_send_end_flag
	global	_uart_send_point
	global	_light_time_level
	global	_I_prev
	global	_an0_time_count
	global	_an1_time_count
	global	_an2_time_count
	global	_an3_time_count
	global	_an4_time_count
	global	_an9_time_count
	global	_load_short_time_count
	global	_ms_cnt
	global	_se_cnt
	global	_system_time_count
	global	_bt_time_count
	global	_limit_power_pid_flag
	global	_mcu_t00_time_count
	global	_mcu_t01_time_count
	global	_mcu_t02_time_count
	global	_mcu_t03_time_count
	global	_mppt_status
	global	_nop_index
	global	_over_temper_time_count
	global	_run_index
	global	_sys_mode
	global	_t5
	global	_temper_time_count
	global	_PID_CC_discharge
	global	_bt_00_hv
	global	_bt_00_lv
	global	_charge_I
	global	_load_I
	global	_load_v
	global	_night_time_count
	global	_p_v
	global	_an10_time_count
	global	_battery_low_time_count
	global	_cv_level_time_count
	global	_index_01_count
	global	_index_02_count
	global	_index_03_count
	global	_index_04_count
	global	_index_05_count
	global	_index_06_count
	global	_involid_time_count
	global	_load_open_time_count
	global	_mppt_time_count
	global	_over_load_time_count
	global	_sleep_time_count
	global	_PWM_I
	global	_day_time_count
	global	_pv_time_count
	global	_PID_CV_charge
	global	_PID_CC_charge
	global	_uart1_tx_buf
	global	_uart1_rx_buf
	global	_adc_buffer
	global	_PIR1bits
_PIR1bits	set	0x11
	global	_PIR2bits
_PIR2bits	set	0x12
	global	_PR2
_PR2	set	0x1B
	global	_T1CON
_T1CON	set	0x18
	global	_T1GCONbits
_T1GCONbits	set	0x19
	global	_T2CONbits
_T2CONbits	set	0x1C
	global	_TMR0
_TMR0	set	0x15
	global	_TMR1H
_TMR1H	set	0x17
	global	_TMR1L
_TMR1L	set	0x16
	global	_C1IF
_C1IF	set	0x95
	global	_CARRY
_CARRY	set	0x18
	global	_GIE
_GIE	set	0x5F
	global	_IOCIE
_IOCIE	set	0x5B
	global	_IOCIF
_IOCIF	set	0x58
	global	_PEIE
_PEIE	set	0x5E
	global	_RC1
_RC1	set	0x71
	global	_RCIF
_RCIF	set	0x8D
	global	_TMR0IE
_TMR0IE	set	0x5D
	global	_TMR0IF
_TMR0IF	set	0x5A
	global	_TMR1IF
_TMR1IF	set	0x88
	global	_TMR1ON
_TMR1ON	set	0xC0
	global	_TMR2IF
_TMR2IF	set	0x89
	global	_TMR2ON
_TMR2ON	set	0xE2
	global	_TMR4IF
_TMR4IF	set	0x99
	global	_TMR6IF
_TMR6IF	set	0x9B
	global	_TXIF
_TXIF	set	0x8C
	global	_ADCON0bits
_ADCON0bits	set	0x9D
	global	_ADCON1bits
_ADCON1bits	set	0x9E
	global	_ADRESL
_ADRESL	set	0x9B
	global	_OPTION_REGbits
_OPTION_REGbits	set	0x95
	global	_OSCCON
_OSCCON	set	0x99
	global	_PIE1bits
_PIE1bits	set	0x91
	global	_PIE2bits
_PIE2bits	set	0x92
	global	_TRISAbits
_TRISAbits	set	0x8C
	global	_TRISBbits
_TRISBbits	set	0x8D
	global	_TRISCbits
_TRISCbits	set	0x8E
	global	_WDTCONbits
_WDTCONbits	set	0x97
	global	_ADRESH
_ADRESH	set	0x9C
	global	_C1IE
_C1IE	set	0x495
	global	_PSA
_PSA	set	0x4AB
	global	_RCIE
_RCIE	set	0x48D
	global	_TMR0CS
_TMR0CS	set	0x4AD
	global	_TMR1IE
_TMR1IE	set	0x488
	global	_TXIE
_TXIE	set	0x48C
	global	_APFCONbits
_APFCONbits	set	0x11D
	global	_CM1CON0bits
_CM1CON0bits	set	0x111
	global	_CM1CON1bits
_CM1CON1bits	set	0x112
	global	_FVRCONbits
_FVRCONbits	set	0x117
	global	_LATCbits
_LATCbits	set	0x10E
	global	_EEADR
_EEADR	set	0x191
	global	_ANSELA
_ANSELA	set	0x18C
	global	_ANSELB
_ANSELB	set	0x18D
	global	_BAUDCON
_BAUDCON	set	0x19F
	global	_EECON1
_EECON1	set	0x195
	global	_EECON2
_EECON2	set	0x196
	global	_EEDATA
_EEDATA	set	0x193
	global	_RCREG
_RCREG	set	0x199
	global	_RCSTA
_RCSTA	set	0x19D
	global	_RCSTAbits
_RCSTAbits	set	0x19D
	global	_SP1BRGH
_SP1BRGH	set	0x19C
	global	_SP1BRGL
_SP1BRGL	set	0x19B
	global	_TXREG
_TXREG	set	0x19A
	global	_TXSTA
_TXSTA	set	0x19E
	global	_TXSTAbits
_TXSTAbits	set	0x19E
	global	_ANSA0
_ANSA0	set	0xC60
	global	_ANSA1
_ANSA1	set	0xC61
	global	_ANSA2
_ANSA2	set	0xC62
	global	_ANSA3
_ANSA3	set	0xC63
	global	_ANSA5
_ANSA5	set	0xC65
	global	_ANSB0
_ANSB0	set	0xC68
	global	_ANSB1
_ANSB1	set	0xC69
	global	_ANSB3
_ANSB3	set	0xC6B
	global	_RD
_RD	set	0xCA8
	global	_WR
_WR	set	0xCA9
	global	_WREN
_WREN	set	0xCAA
	global	_CCP1CONbits
_CCP1CONbits	set	0x293
	global	_CCPR1L
_CCPR1L	set	0x291
	global	_CCPTMRS0bits
_CCPTMRS0bits	set	0x29E
	global	_CCPTMRS1bits
_CCPTMRS1bits	set	0x29F
	global	_CCP3CONbits
_CCP3CONbits	set	0x313
	global	_CCP5CONbits
_CCP5CONbits	set	0x31E
	global	_CCPR3L
_CCPR3L	set	0x311
	global	_CCPR5L
_CCPR5L	set	0x31C
	global	_IOCBFbits
_IOCBFbits	set	0x396
	global	_IOCBNbits
_IOCBNbits	set	0x395
	global	_IOCBF4
_IOCBF4	set	0x1CB4
	global	_IOCBF7
_IOCBF7	set	0x1CB7
	global	_PR4
_PR4	set	0x416
	global	_PR6
_PR6	set	0x41D
	global	_T4CONbits
_T4CONbits	set	0x417
	global	_T6CONbits
_T6CONbits	set	0x41E
	global	_TMR4ON
_TMR4ON	set	0x20BA
	global	_TMR6ON
_TMR6ON	set	0x20F2
; #config settings
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_IESO$OFF
__CFG_IESO$OFF equ 0x0
global __CFG_FOSC$INTOSC
__CFG_FOSC$INTOSC equ 0x0
global __CFG_FCMEN$OFF
__CFG_FCMEN$OFF equ 0x0
global __CFG_MCLRE$ON
__CFG_MCLRE$ON equ 0x0
global __CFG_WDTE$NSLEEP
__CFG_WDTE$NSLEEP equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_PWRTE$OFF
__CFG_PWRTE$OFF equ 0x0
global __CFG_CLKOUTEN$OFF
__CFG_CLKOUTEN$OFF equ 0x0
global __CFG_PLLEN$ON
__CFG_PLLEN$ON equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_STVREN$ON
__CFG_STVREN$ON equ 0x0
global __CFG_BORV$LO
__CFG_BORV$LO equ 0x0
global __CFG_VCAPEN$RA6
__CFG_VCAPEN$RA6 equ 0x0
global __CFG_LVP$ON
__CFG_LVP$ON equ 0x0
	file	"ZH-SL-F60.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
DABS 1,9072,0,_adc_buffer	;BIGRAM
psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_ho_cnt:
       ds      2

psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_battery_voltage_value:
       ds      2

_today_index:
       ds      1

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_PWM:
       ds      4

_bost_pwm_value:
       ds      2

_buck_pwm_value:
       ds      2

_crc_data:
       ds      2

_discharge_current_value:
       ds      2

_load_voltage_value:
       ds      2

_mcu_value:
       ds      2

_pv_voltage_value:
       ds      2

_Adjust_Pout_Flag:
       ds      1

_charge_index:
       ds      1

_device_status:
       ds      1

_discharge_index:
       ds      1

_have_person1_flag:
       ds      1

_led_out_ctrl:
       ds      1

_light_mode:
       ds      1

_mcu_temp_index:
       ds      1

_system_status:
       ds      1

_uart1_receive_byte_count:
       ds      1

_uart1_time_count:
       ds      1

_work_mode:
       ds      1

_light_time:
       ds      2

psect	dataBANK1,class=BANK1,space=1,noexec
global __pdataBANK1
__pdataBANK1:
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	73
_light_pv:
       ds      4

psect	dataBANK1
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	75
_load_cc_I:
       ds      4

psect	dataBANK1
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	89
_step_01_time_limit:
       ds      2

psect	dataBANK1
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	91
_step_02_time_limit:
       ds      2

psect	dataBANK1
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	101
_bt_id:
       ds      1

psect	dataBANK1
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	99
_volt_id:
       ds      1

psect	dataBANK1
	file	"D:\MCUProject\ZH-SL-F60\src\task.c"
	line	90
_voltage_adjust_index:
       ds      1

psect	bssBANK2,class=BANK2,space=1,noexec
global __pbssBANK2
__pbssBANK2:
_b_v:
       ds      4

_charge_current_value:
       ds      2

_mi_cnt:
       ds      2

_temperature_value:
       ds      2

_battery_voltage_status:
       ds      1

_handle_an0_process_flag:
       ds      1

_handle_an10_process_flag:
       ds      1

_handle_an1_process_flag:
       ds      1

_handle_an2_process_flag:
       ds      1

_handle_an3_process_flag:
       ds      1

_handle_an4_process_flag:
       ds      1

_handle_an9_process_flag:
       ds      1

_handle_scan_key_flag:
       ds      1

_handle_short_flag:
       ds      1

_have_person1_time_count:
       ds      1

_ird_receive_flag:
       ds      1

_ird_receive_time_count:
       ds      1

_ird_status:
       ds      1

_open_an0_time:
       ds      1

_open_an10_time:
       ds      1

_open_an1_time:
       ds      1

_open_an2_time:
       ds      1

_open_an3_time:
       ds      1

_open_an4_time:
       ds      1

_open_an9_time:
       ds      1

_open_discharge_time:
       ds      1

_open_sleep_time:
       ds      1

_pid_index:
       ds      1

_pv_index:
       ds      1

_pv_voltage_status:
       ds      1

_receive_bit_count:
       ds      1

_rx_frame_kind:
       ds      1

_scan_key_time_count:
       ds      1

_system_check_time:
       ds      1

_t1:
       ds      1

_t2:
       ds      1

_t3:
       ds      1

_t4:
       ds      1

_uart1_receive_flag:
       ds      1

_uart_send_byte_count:
       ds      1

_uart_send_delay_timer:
       ds      1

_uart_send_end_flag:
       ds      1

_uart_send_point:
       ds      1

psect	dataBANK2,class=BANK2,space=1,noexec
global __pdataBANK2
__pdataBANK2:
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	127
_dianchi_guoya_baohu:
       ds      4

psect	dataBANK2
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	79
_step_01_load_percent:
       ds      4

psect	dataBANK2
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	81
_step_02_load_percent:
       ds      4

psect	dataBANK2
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	83
_step_03_load_percent:
       ds      4

psect	dataBANK2
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	85
_step_04_load_percent:
       ds      4

psect	dataBANK2
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	87
_step_05_load_percent:
       ds      4

psect	dataBANK2
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	93
_step_03_time_limit:
       ds      2

psect	dataBANK2
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	95
_step_04_time_limit:
       ds      2

psect	dataBANK2
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	97
_step_05_time_limit:
       ds      2

psect	dataBANK2
	file	"D:\MCUProject\ZH-SL-F60\src\task.c"
	line	76
_sys_temper_flag:
       ds      1

psect	bssBANK3,class=BANK3,space=1,noexec
global __pbssBANK3
__pbssBANK3:
_light_time_level:
       ds      4

_I_prev:
       ds      2

_an0_time_count:
       ds      2

_an1_time_count:
       ds      2

_an2_time_count:
       ds      2

_an3_time_count:
       ds      2

_an4_time_count:
       ds      2

_an9_time_count:
       ds      2

_load_short_time_count:
       ds      2

_ms_cnt:
       ds      2

_se_cnt:
       ds      2

_system_time_count:
       ds      2

_bt_time_count:
       ds      1

_limit_power_pid_flag:
       ds      1

_mcu_t00_time_count:
       ds      1

_mcu_t01_time_count:
       ds      1

_mcu_t02_time_count:
       ds      1

_mcu_t03_time_count:
       ds      1

_mppt_status:
       ds      1

_nop_index:
       ds      1

_over_temper_time_count:
       ds      1

_run_index:
       ds      1

_sys_mode:
       ds      1

_t5:
       ds      1

_temper_time_count:
       ds      1

_PID_CC_discharge:
       ds      28

psect	dataBANK3,class=BANK3,space=1,noexec
global __pdataBANK3
__pdataBANK3:
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	135
_dianchi_cv_level:
       ds      4

psect	dataBANK3
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	129
_dianchi_guoya_huifu:
       ds      4

psect	dataBANK3
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	139
_shuchu_shortout_voltage:
       ds      4

psect	bssBANK4,class=BANK4,space=1,noexec
global __pbssBANK4
__pbssBANK4:
_bt_00_hv:
       ds      4

_bt_00_lv:
       ds      4

_charge_I:
       ds      4

_load_I:
       ds      4

_load_v:
       ds      4

_night_time_count:
       ds      4

_p_v:
       ds      4

_an10_time_count:
       ds      2

_battery_low_time_count:
       ds      2

_cv_level_time_count:
       ds      2

_index_01_count:
       ds      2

_index_02_count:
       ds      2

_index_03_count:
       ds      2

_index_04_count:
       ds      2

_index_05_count:
       ds      2

_index_06_count:
       ds      2

_involid_time_count:
       ds      2

_load_open_time_count:
       ds      2

_mppt_time_count:
       ds      2

_over_load_time_count:
       ds      2

_sleep_time_count:
       ds      2

psect	dataBANK4,class=BANK4,space=1,noexec
global __pdataBANK4
__pdataBANK4:
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	123
_bt_volt_00:
       ds      4

psect	dataBANK4
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	121
_bt_volt_20:
       ds      4

psect	dataBANK4
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	119
_bt_volt_40:
       ds      4

psect	dataBANK4
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	117
_bt_volt_60:
       ds      4

psect	dataBANK4
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	115
_bt_volt_80:
       ds      4

psect	dataBANK4
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	168
_ird_data:
       ds      4

psect	bssBANK5,class=BANK5,space=1,noexec
global __pbssBANK5
__pbssBANK5:
_PWM_I:
       ds      4

_day_time_count:
       ds      4

_pv_time_count:
       ds      4

_PID_CV_charge:
       ds      28

psect	dataBANK5,class=BANK5,space=1,noexec
global __pdataBANK5
__pdataBANK5:
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	156
_Load_Pmax:
       ds      4

psect	dataBANK5
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	137
_charge_i_limit:
       ds      4

psect	dataBANK5
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	131
_dianchi_qianya_baohu:
       ds      4

psect	dataBANK5
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	133
_dianchi_qianya_huifu:
       ds      4

psect	dataBANK5
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	143
_discharge_i_baohu:
       ds      4

psect	dataBANK5
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	145
_discharge_i_limit:
       ds      4

psect	dataBANK5
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	149
_light_off_pv_level:
       ds      4

psect	dataBANK5
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	147
_light_on_pv_level:
       ds      4

psect	dataBANK5
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	141
_shuchu_open_voltage:
       ds      4

psect	bssBANK6,class=BANK6,space=1,noexec
global __pbssBANK6
__pbssBANK6:
_PID_CC_charge:
       ds      28

psect	bssBANK7,class=BANK7,space=1,noexec
global __pbssBANK7
__pbssBANK7:
_uart1_tx_buf:
       ds      80

psect	bssBANK8,class=BANK8,space=1,noexec
global __pbssBANK8
__pbssBANK8:
_uart1_rx_buf:
       ds      80

	file	"ZH-SL-F60.as"
	line	#
psect clrtext,class=CODE,delta=2
global clear_ram0
;	Called with FSR0 containing the base address, and
;	btemp/btemp+1 has the size to clear
clear_ram0:
	clrwdt			;clear the watchdog before getting into this loop
clrloop0:
	clrf	indf0		;clear RAM location pointed to by FSR
	addfsr	0,1
	movlw	1
	subwf	btemp,f
	movlw	0
	subwfb btemp+1,f
	movf btemp+1,w
	iorwf btemp,w
	skipz
	goto clrloop0	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
; Clear objects allocated to BIGRAM
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBIGRAM
	movlw	low(__pbssBIGRAM)
	movwf	fsr0l
	movlw	high(__pbssBIGRAM)
	movwf	fsr0h
	movlw	low(080h)
	movwf	btemp
	movlw	high(080h)
	movwf	btemp+1
	fcall	clear_ram0
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	global __pbssCOMMON
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK0
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK1
	movlw	low(__pbssBANK1)
	movwf	fsr0l
	movlw	high(__pbssBANK1)
	movwf	fsr0h
	movlw	low(020h)
	movwf	btemp
	movlw	high(020h)
	movwf	btemp+1
	fcall	clear_ram0
; Clear objects allocated to BANK2
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK2
	movlw	low(__pbssBANK2)
	movwf	fsr0l
	movlw	high(__pbssBANK2)
	movwf	fsr0h
	movlw	low(031h)
	movwf	btemp
	movlw	high(031h)
	movwf	btemp+1
	fcall	clear_ram0
; Clear objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK3
	movlw	low(__pbssBANK3)
	movwf	fsr0l
	movlw	high(__pbssBANK3)
	movwf	fsr0h
	movlw	low(043h)
	movwf	btemp
	movlw	high(043h)
	movwf	btemp+1
	fcall	clear_ram0
; Clear objects allocated to BANK4
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK4
	movlw	low(__pbssBANK4)
	movwf	fsr0l
	movlw	high(__pbssBANK4)
	movwf	fsr0h
	movlw	low(038h)
	movwf	btemp
	movlw	high(038h)
	movwf	btemp+1
	fcall	clear_ram0
; Clear objects allocated to BANK5
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK5
	movlw	low(__pbssBANK5)
	movwf	fsr0l
	movlw	high(__pbssBANK5)
	movwf	fsr0h
	movlw	low(028h)
	movwf	btemp
	movlw	high(028h)
	movwf	btemp+1
	fcall	clear_ram0
; Clear objects allocated to BANK6
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK6
	movlw	low(__pbssBANK6)
	movwf	fsr0l
	movlw	high(__pbssBANK6)
	movwf	fsr0h
	movlw	low(01Ch)
	movwf	btemp
	movlw	high(01Ch)
	movwf	btemp+1
	fcall	clear_ram0
; Clear objects allocated to BANK7
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK7
	movlw	low(__pbssBANK7)
	movwf	fsr0l
	movlw	high(__pbssBANK7)
	movwf	fsr0h
	movlw	low(050h)
	movwf	btemp
	movlw	high(050h)
	movwf	btemp+1
	fcall	clear_ram0
; Clear objects allocated to BANK8
psect cinit,class=CODE,delta=2,merge=1
	global __pbssBANK8
	movlw	low(__pbssBANK8)
	movwf	fsr0l
	movlw	high(__pbssBANK8)
	movwf	fsr0h
	movlw	low(050h)
	movwf	btemp
	movlw	high(050h)
	movwf	btemp+1
	fcall	clear_ram0
	line	#
psect inittext,class=CODE,delta=2
global init_ram,btemp
init_ram:
	movwf btemp,f
initloop:
	moviw fsr0++
	movwi fsr1++
	movlw 1
subwf btemp,f
movlw 0
subwfb btemp+1,f
	movf btemp+1,w
	iorwf btemp,w
	skipz
	goto initloop
	retlw 0
; Initialize objects allocated to BANK1
	global __pidataBANK1,__pdataBANK1
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataBANK1)
	movwf fsr0l
	movlw high(__pidataBANK1)|80h
	movwf fsr0h
	movlw low(__pdataBANK1)
	movwf fsr1l
	movlw high(__pdataBANK1)
	movwf fsr1h
	movlw high(0Fh)
	movwf btemp+1
	movlw low(0Fh)
	fcall init_ram
; Initialize objects allocated to BANK2
	global __pidataBANK2,__pdataBANK2
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataBANK2)
	movwf fsr0l
	movlw high(__pidataBANK2)|80h
	movwf fsr0h
	movlw low(__pdataBANK2)
	movwf fsr1l
	movlw high(__pdataBANK2)
	movwf fsr1h
	movlw high(01Fh)
	movwf btemp+1
	movlw low(01Fh)
	fcall init_ram
; Initialize objects allocated to BANK3
	global __pidataBANK3,__pdataBANK3
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataBANK3)
	movwf fsr0l
	movlw high(__pidataBANK3)|80h
	movwf fsr0h
	movlw low(__pdataBANK3)
	movwf fsr1l
	movlw high(__pdataBANK3)
	movwf fsr1h
	movlw high(0Ch)
	movwf btemp+1
	movlw low(0Ch)
	fcall init_ram
; Initialize objects allocated to BANK4
	global __pidataBANK4,__pdataBANK4
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataBANK4)
	movwf fsr0l
	movlw high(__pidataBANK4)|80h
	movwf fsr0h
	movlw low(__pdataBANK4)
	movwf fsr1l
	movlw high(__pdataBANK4)
	movwf fsr1h
	movlw high(018h)
	movwf btemp+1
	movlw low(018h)
	fcall init_ram
; Initialize objects allocated to BANK5
	global __pidataBANK5,__pdataBANK5
psect cinit,class=CODE,delta=2,merge=1
	movlw low(__pidataBANK5)
	movwf fsr0l
	movlw high(__pidataBANK5)|80h
	movwf fsr0h
	movlw low(__pdataBANK5)
	movwf fsr1l
	movlw high(__pdataBANK5)
	movwf fsr1h
	movlw high(024h)
	movwf btemp+1
	movlw low(024h)
	fcall init_ram
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:movlb 0
ljmp _main	;jump to C main() function
psect	cstackBANK5,class=BANK5,space=1,noexec
global __pcstackBANK5
__pcstackBANK5:
	global	handle_ad_loop@data_cc_var
handle_ad_loop@data_cc_var:	; 4 bytes @ 0x0
	ds	4
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
??_pid_calc:	; 0 bytes @ 0x0
	global	start_ad_convert@ch
start_ad_convert@ch:	; 1 bytes @ 0x0
	ds	1
	global	start_ad_convert@ad_h
start_ad_convert@ad_h:	; 2 bytes @ 0x1
	ds	1
	global	Key_Menu@code
Key_Menu@code:	; 1 bytes @ 0x2
	ds	1
	global	start_ad_convert@ad_l
start_ad_convert@ad_l:	; 2 bytes @ 0x3
	ds	1
	global	pid_calc@dError
pid_calc@dError:	; 4 bytes @ 0x4
	ds	1
	global	start_ad_convert@temp
start_ad_convert@temp:	; 2 bytes @ 0x5
	ds	2
	global	start_ad_convert@ad_ch
start_ad_convert@ad_ch:	; 1 bytes @ 0x7
	ds	1
	global	start_ad_convert@j
start_ad_convert@j:	; 1 bytes @ 0x8
	global	_pid_calc$2854
_pid_calc$2854:	; 4 bytes @ 0x8
	ds	1
	global	start_ad_convert@i
start_ad_convert@i:	; 1 bytes @ 0x9
	ds	3
	global	_pid_calc$2855
_pid_calc$2855:	; 4 bytes @ 0xC
	ds	4
	global	pid_calc@dk
pid_calc@dk:	; 4 bytes @ 0x10
	ds	4
	global	pid_calc@Error
pid_calc@Error:	; 4 bytes @ 0x14
	ds	4
	global	pid_calc@PWM_var
pid_calc@PWM_var:	; 4 bytes @ 0x18
	ds	4
??_handle_ad_loop:	; 0 bytes @ 0x1C
	ds	2
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_Disable_Bost_Pwm:	; 0 bytes @ 0x0
?_Disable_Buck_Pwm:	; 0 bytes @ 0x0
?_Enable_Bost_Pwm:	; 0 bytes @ 0x0
?_init_timer1:	; 0 bytes @ 0x0
?_init_uart1:	; 0 bytes @ 0x0
?_init_pwm:	; 0 bytes @ 0x0
?_handle_ad_loop:	; 0 bytes @ 0x0
?_handle_task_process:	; 0 bytes @ 0x0
?_handle_uart_rx_buf:	; 0 bytes @ 0x0
?_Mppt_Charge:	; 0 bytes @ 0x0
?_init_adc:	; 0 bytes @ 0x0
?_isr:	; 0 bytes @ 0x0
?_init_interrupt:	; 0 bytes @ 0x0
?_read_param_eeprom:	; 0 bytes @ 0x0
?_auto_system:	; 0 bytes @ 0x0
?_Init_Ird:	; 0 bytes @ 0x0
?_init_key:	; 0 bytes @ 0x0
?_init_osc:	; 0 bytes @ 0x0
?_init_port:	; 0 bytes @ 0x0
?_driver_init:	; 0 bytes @ 0x0
?_middle_init:	; 0 bytes @ 0x0
?_application_init:	; 0 bytes @ 0x0
?_Enable_Buck_Pwm:	; 0 bytes @ 0x0
?i1_Disable_Bost_Pwm:	; 0 bytes @ 0x0
??i1_Disable_Bost_Pwm:	; 0 bytes @ 0x0
?i1_Set_Bost_Pwm_Duty:	; 0 bytes @ 0x0
?_eeprom_read:	; 1 bytes @ 0x0
?_main:	; 2 bytes @ 0x0
	global	i1Set_Bost_Pwm_Duty@dduty
i1Set_Bost_Pwm_Duty@dduty:	; 2 bytes @ 0x0
	ds	2
??i1_Set_Bost_Pwm_Duty:	; 0 bytes @ 0x2
	ds	2
??_isr:	; 0 bytes @ 0x4
	ds	8
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	isr@r1_data
isr@r1_data:	; 1 bytes @ 0x0
	ds	1
	global	isr@time_cnt
isr@time_cnt:	; 2 bytes @ 0x1
	ds	2
?_Set_Bost_Pwm_Duty:	; 0 bytes @ 0x3
??_Disable_Bost_Pwm:	; 0 bytes @ 0x3
??_eeprom_read:	; 0 bytes @ 0x3
??_Disable_Buck_Pwm:	; 0 bytes @ 0x3
?_Set_Buck_Pwm_Duty:	; 0 bytes @ 0x3
??_Enable_Bost_Pwm:	; 0 bytes @ 0x3
??_init_timer1:	; 0 bytes @ 0x3
??_init_uart1:	; 0 bytes @ 0x3
??_init_pwm:	; 0 bytes @ 0x3
??_init_adc:	; 0 bytes @ 0x3
?_delay_ms:	; 0 bytes @ 0x3
??_init_interrupt:	; 0 bytes @ 0x3
??_Init_Ird:	; 0 bytes @ 0x3
??_init_key:	; 0 bytes @ 0x3
??_init_osc:	; 0 bytes @ 0x3
??_init_port:	; 0 bytes @ 0x3
??_driver_init:	; 0 bytes @ 0x3
??_Enable_Buck_Pwm:	; 0 bytes @ 0x3
?_memset:	; 2 bytes @ 0x3
	global	?_crc16
?_crc16:	; 2 bytes @ 0x3
	global	?___wmul
?___wmul:	; 2 bytes @ 0x3
	global	?___flpack
?___flpack:	; 4 bytes @ 0x3
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x3
	global	?___lmul
?___lmul:	; 4 bytes @ 0x3
	global	eeprom_read@addr
eeprom_read@addr:	; 1 bytes @ 0x3
	global	delay_ms@count
delay_ms@count:	; 2 bytes @ 0x3
	global	crc16@puchMsg
crc16@puchMsg:	; 2 bytes @ 0x3
	global	Set_Buck_Pwm_Duty@duty
Set_Buck_Pwm_Duty@duty:	; 2 bytes @ 0x3
	global	Set_Bost_Pwm_Duty@dduty
Set_Bost_Pwm_Duty@dduty:	; 2 bytes @ 0x3
	global	memset@p1
memset@p1:	; 2 bytes @ 0x3
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x3
	global	___flpack@arg
___flpack@arg:	; 4 bytes @ 0x3
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x3
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x3
	ds	2
??_Set_Bost_Pwm_Duty:	; 0 bytes @ 0x5
??_Set_Buck_Pwm_Duty:	; 0 bytes @ 0x5
??_delay_ms:	; 0 bytes @ 0x5
	global	crc16@usDataLen
crc16@usDataLen:	; 1 bytes @ 0x5
	global	delay_ms@i
delay_ms@i:	; 2 bytes @ 0x5
	global	memset@c
memset@c:	; 2 bytes @ 0x5
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x5
	ds	1
??_crc16:	; 0 bytes @ 0x6
	global	crc16@uIndex
crc16@uIndex:	; 4 bytes @ 0x6
	ds	1
??___wmul:	; 0 bytes @ 0x7
	global	___flpack@exp
___flpack@exp:	; 1 bytes @ 0x7
	global	delay_ms@j
delay_ms@j:	; 2 bytes @ 0x7
	global	memset@n
memset@n:	; 2 bytes @ 0x7
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x7
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x7
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x7
	ds	1
	global	___flpack@sign
___flpack@sign:	; 1 bytes @ 0x8
	ds	1
??_memset:	; 0 bytes @ 0x9
??___flpack:	; 0 bytes @ 0x9
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x9
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x9
	global	memset@p
memset@p:	; 2 bytes @ 0x9
	ds	1
	global	crc16@uchCRCHi
crc16@uchCRCHi:	; 1 bytes @ 0xA
	ds	1
?_pid_init:	; 0 bytes @ 0xB
??___lldiv:	; 0 bytes @ 0xB
??___lmul:	; 0 bytes @ 0xB
	global	crc16@uchCRCLo
crc16@uchCRCLo:	; 1 bytes @ 0xB
	global	pid_init@pp
pid_init@pp:	; 2 bytes @ 0xB
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0xB
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0xB
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0xB
	ds	2
??_pid_init:	; 0 bytes @ 0xD
??___lwdiv:	; 0 bytes @ 0xD
	global	?___awtofl
?___awtofl:	; 4 bytes @ 0xD
	global	?___lbtofl
?___lbtofl:	; 4 bytes @ 0xD
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xD
	global	___awtofl@c
___awtofl@c:	; 2 bytes @ 0xD
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xE
	ds	1
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0xF
	ds	1
	global	?_start_ad_convert
?_start_ad_convert:	; 2 bytes @ 0x10
	global	?___lwtofl
?___lwtofl:	; 4 bytes @ 0x10
	global	___lwtofl@c
___lwtofl@c:	; 2 bytes @ 0x10
	ds	1
??___awtofl:	; 0 bytes @ 0x11
	global	___awtofl@sign
___awtofl@sign:	; 1 bytes @ 0x11
	ds	1
??_start_ad_convert:	; 0 bytes @ 0x12
??___lbtofl:	; 0 bytes @ 0x12
	global	___lbtofl@c
___lbtofl@c:	; 1 bytes @ 0x12
	ds	2
??___lwtofl:	; 0 bytes @ 0x14
	global	?___flmul
?___flmul:	; 4 bytes @ 0x14
	global	___flmul@f1
___flmul@f1:	; 4 bytes @ 0x14
	ds	4
	global	___flmul@f2
___flmul@f2:	; 4 bytes @ 0x18
	ds	4
??___flmul:	; 0 bytes @ 0x1C
	ds	4
	global	___flmul@exp
___flmul@exp:	; 1 bytes @ 0x20
	ds	1
	global	___flmul@f3_as_product
___flmul@f3_as_product:	; 4 bytes @ 0x21
	ds	4
	global	___flmul@cntr
___flmul@cntr:	; 1 bytes @ 0x25
	ds	1
	global	___flmul@sign
___flmul@sign:	; 1 bytes @ 0x26
	ds	1
	global	?___fladd
?___fladd:	; 4 bytes @ 0x27
	global	?___fldiv
?___fldiv:	; 4 bytes @ 0x27
	global	___fladd@f1
___fladd@f1:	; 4 bytes @ 0x27
	global	___fldiv@f2
___fldiv@f2:	; 4 bytes @ 0x27
	ds	4
	global	___fladd@f2
___fladd@f2:	; 4 bytes @ 0x2B
	global	___fldiv@f1
___fldiv@f1:	; 4 bytes @ 0x2B
	ds	4
??___fladd:	; 0 bytes @ 0x2F
??___fldiv:	; 0 bytes @ 0x2F
	ds	4
	global	___fladd@sign
___fladd@sign:	; 1 bytes @ 0x33
	global	___fldiv@f3
___fldiv@f3:	; 4 bytes @ 0x33
	ds	1
	global	___fladd@exp2
___fladd@exp2:	; 1 bytes @ 0x34
	ds	1
	global	___fladd@exp1
___fladd@exp1:	; 1 bytes @ 0x35
	ds	1
	global	?___flsub
?___flsub:	; 4 bytes @ 0x36
	global	___flsub@f2
___flsub@f2:	; 4 bytes @ 0x36
	ds	1
	global	___fldiv@cntr
___fldiv@cntr:	; 1 bytes @ 0x37
	ds	1
	global	___fldiv@exp
___fldiv@exp:	; 1 bytes @ 0x38
	ds	1
	global	___fldiv@sign
___fldiv@sign:	; 1 bytes @ 0x39
	ds	1
??_read_param_eeprom:	; 0 bytes @ 0x3A
??_application_init:	; 0 bytes @ 0x3A
?___flge:	; 1 bit 
	global	?___fltol
?___fltol:	; 4 bytes @ 0x3A
	global	read_param_eeprom@byte_h
read_param_eeprom@byte_h:	; 1 bytes @ 0x3A
	global	___flge@ff1
___flge@ff1:	; 4 bytes @ 0x3A
	global	___flsub@f1
___flsub@f1:	; 4 bytes @ 0x3A
	global	___fltol@f1
___fltol@f1:	; 4 bytes @ 0x3A
	ds	1
	global	read_param_eeprom@byte_l
read_param_eeprom@byte_l:	; 1 bytes @ 0x3B
	ds	3
??___flsub:	; 0 bytes @ 0x3E
??___fltol:	; 0 bytes @ 0x3E
	global	___flge@ff2
___flge@ff2:	; 4 bytes @ 0x3E
	ds	4
??___flge:	; 0 bytes @ 0x42
	global	___fltol@sign1
___fltol@sign1:	; 1 bytes @ 0x42
	ds	1
	global	___fltol@exp1
___fltol@exp1:	; 1 bytes @ 0x43
	ds	1
?_eeprom_write:	; 0 bytes @ 0x44
	global	eeprom_write@value
eeprom_write@value:	; 1 bytes @ 0x44
	ds	1
??_eeprom_write:	; 0 bytes @ 0x45
	global	eeprom_write@addr
eeprom_write@addr:	; 1 bytes @ 0x45
	ds	1
??_handle_task_process:	; 0 bytes @ 0x46
??_handle_uart_rx_buf:	; 0 bytes @ 0x46
??_auto_system:	; 0 bytes @ 0x46
?_Key_Menu:	; 0 bytes @ 0x46
	global	?_pid_calc
?_pid_calc:	; 4 bytes @ 0x46
	global	pid_calc@pp
pid_calc@pp:	; 2 bytes @ 0x46
	global	handle_uart_rx_buf@crc_in
handle_uart_rx_buf@crc_in:	; 2 bytes @ 0x46
	global	auto_system@sys_bt_voltage
auto_system@sys_bt_voltage:	; 4 bytes @ 0x46
	global	Key_Menu@key_value
Key_Menu@key_value:	; 4 bytes @ 0x46
	ds	2
	global	pid_calc@NowPoint
pid_calc@NowPoint:	; 2 bytes @ 0x48
	ds	2
??_Mppt_Charge:	; 0 bytes @ 0x4A
??_Key_Menu:	; 0 bytes @ 0x4A
??_middle_init:	; 0 bytes @ 0x4A
??_main:	; 0 bytes @ 0x4A
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    512
;!    Data        118
;!    BSS         437
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     12      14
;!    BANK0            80     74      77
;!    BANK1            80     30      77
;!    BANK2            80      0      80
;!    BANK3            80      0      79
;!    BANK4            80      0      80
;!    BANK5            80      4      80
;!    BANK6            80      0      28
;!    BANK7            80      0      80
;!    BANK8            80      0      80
;!    BANK9            80      0       0
;!    BANK10           80      0       0
;!    BANK11            0      0       0
;!    BANK12            0      0       0

;!
;!Pointer List with Targets:
;!
;!    memset@p1	PTR void  size(2) Largest target is 80
;!		 -> PID_CC_discharge(BANK3[28]), PID_CV_charge(BANK5[28]), PID_CC_charge(BANK6[28]), uart1_rx_buf(BANK8[80]), 
;!
;!    memset@p	PTR unsigned char  size(2) Largest target is 80
;!		 -> PID_CC_discharge(BANK3[28]), PID_CV_charge(BANK5[28]), PID_CC_charge(BANK6[28]), uart1_rx_buf(BANK8[80]), 
;!
;!    sp__memset	PTR void  size(2) Largest target is 80
;!		 -> PID_CC_discharge(BANK3[28]), PID_CV_charge(BANK5[28]), PID_CC_charge(BANK6[28]), uart1_rx_buf(BANK8[80]), 
;!
;!    pid_init@pp	PTR struct PID_VAR size(2) Largest target is 28
;!		 -> PID_CC_discharge(BANK3[28]), PID_CV_charge(BANK5[28]), PID_CC_charge(BANK6[28]), 
;!
;!    pid_calc@pp	PTR struct PID_VAR size(2) Largest target is 28
;!		 -> PID_CC_discharge(BANK3[28]), PID_CV_charge(BANK5[28]), PID_CC_charge(BANK6[28]), 
;!
;!    crc16@puchMsg	PTR volatile unsigned char  size(2) Largest target is 80
;!		 -> uart1_tx_buf(BANK7[80]), uart1_rx_buf(BANK8[80]), 
;!
;!    uart_send_point	PTR unsigned char  size(1) Largest target is 0
;!		 -> NULL(NULL[0]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _isr in COMMON
;!
;!    _isr->i1_Set_Bost_Pwm_Duty
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_Key_Menu
;!    _middle_init->_auto_system
;!    _read_param_eeprom->___fldiv
;!    _auto_system->___flge
;!    _auto_system->_eeprom_write
;!    _handle_uart_rx_buf->___flge
;!    _handle_uart_rx_buf->_eeprom_write
;!    ___lbtofl->___flpack
;!    _handle_task_process->_eeprom_write
;!    _handle_ad_loop->_pid_calc
;!    _start_ad_convert->___lwdiv
;!    ___lwdiv->___wmul
;!    _Mppt_Charge->_pid_calc
;!    _pid_calc->___flge
;!    ___flsub->___fladd
;!    ___flge->___fldiv
;!    ___awtofl->___flpack
;!    ___lwtofl->___lwdiv
;!    ___fltol->___fldiv
;!    _application_init->___fldiv
;!    _pid_init->_memset
;!    _Key_Menu->_eeprom_write
;!    _eeprom_write->___fltol
;!    ___fldiv->___flmul
;!    ___fladd->___flmul
;!    ___flmul->___lwtofl
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_handle_ad_loop
;!    _auto_system->_start_ad_convert
;!    _handle_ad_loop->_pid_calc
;!    _Mppt_Charge->_pid_calc
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _isr in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    _main->_handle_ad_loop
;!
;!Critical Paths under _isr in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _isr in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _isr in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _isr in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _isr in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _isr in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _isr in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _isr in BANK12
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
;! (0) _main                                                 0     0      0  428377
;!                           _Key_Menu
;!                   _application_init
;!                        _driver_init
;!                     _handle_ad_loop
;!                _handle_task_process
;!                 _handle_uart_rx_buf
;!                        _middle_init
;! ---------------------------------------------------------------------------------
;! (1) _middle_init                                          0     0      0   79703
;!                        _auto_system
;!                  _read_param_eeprom
;! ---------------------------------------------------------------------------------
;! (2) _read_param_eeprom                                    2     2      0   29530
;!                                             58 BANK0      2     2      0
;!                           ___awtofl
;!                            ___fldiv
;!                            ___flmul
;!                           ___lbtofl
;!                             ___lmul
;!                        _eeprom_read
;! ---------------------------------------------------------------------------------
;! (3) ___lmul                                              12     4      8     220
;!                                              3 BANK0     12     4      8
;! ---------------------------------------------------------------------------------
;! (2) _auto_system                                          4     4      0   50173
;!                                             70 BANK0      4     4      0
;!                            ___fldiv
;!                             ___flge
;!                            ___flmul
;!                           ___lwtofl
;!                           _delay_ms
;!                        _eeprom_read
;!                       _eeprom_write
;!                   _start_ad_convert
;! ---------------------------------------------------------------------------------
;! (1) _handle_uart_rx_buf                                   5     5      0   67849
;!                                             70 BANK0      2     2      0
;!                   _Disable_Bost_Pwm
;!                   _Disable_Buck_Pwm
;!                    _Enable_Bost_Pwm
;!                  _Set_Bost_Pwm_Duty
;!                  _Set_Buck_Pwm_Duty
;!                           ___awtofl
;!                            ___fldiv
;!                             ___flge
;!                            ___flmul
;!                            ___fltol
;!                           ___lbtofl
;!                           ___lwtofl
;!                             ___wmul
;!                              _crc16
;!                           _delay_ms
;!                        _eeprom_read
;!                       _eeprom_write
;!                             _memset
;! ---------------------------------------------------------------------------------
;! (3) _eeprom_read                                          1     1      0      22
;!                                              3 BANK0      1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _crc16                                                9     6      3    1132
;!                                              3 BANK0      9     6      3
;! ---------------------------------------------------------------------------------
;! (3) ___lbtofl                                             6     1      5    2584
;!                                             13 BANK0      6     1      5
;!                           ___flpack
;! ---------------------------------------------------------------------------------
;! (1) _handle_task_process                                  0     0      0   41368
;!                   _Disable_Bost_Pwm
;!                   _Disable_Buck_Pwm
;!                    _Enable_Bost_Pwm
;!                  _Set_Bost_Pwm_Duty
;!                  _Set_Buck_Pwm_Duty
;!                            ___fladd
;!                            ___fldiv
;!                            ___flmul
;!                            ___fltol
;!                           _delay_ms
;!                       _eeprom_write
;!                           _pid_init
;! ---------------------------------------------------------------------------------
;! (1) _handle_ad_loop                                       6     6      0  201259
;!                                             28 BANK1      2     2      0
;!                                              0 BANK5      4     4      0
;!                   _Disable_Bost_Pwm
;!                   _Disable_Buck_Pwm
;!                    _Enable_Bost_Pwm
;!                    _Enable_Buck_Pwm
;!                        _Mppt_Charge
;!                  _Set_Bost_Pwm_Duty
;!                  _Set_Buck_Pwm_Duty
;!                           ___awtofl
;!                            ___fladd
;!                            ___fldiv
;!                             ___flge
;!                            ___flmul
;!                            ___fltol
;!                            ___lldiv
;!                            ___lwdiv
;!                           ___lwtofl
;!                             ___wmul
;!                           _delay_ms
;!                           _pid_calc
;!                   _start_ad_convert
;! ---------------------------------------------------------------------------------
;! (3) _start_ad_convert                                    63    61      2    1879
;!                                             16 BANK0     52    50      2
;!                                              0 BANK1     10    10      0
;!                            ___lwdiv
;! ---------------------------------------------------------------------------------
;! (4) ___lwdiv                                              7     3      4     703
;!                                              9 BANK0      7     3      4
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4     906
;!                                              3 BANK0      6     2      4
;! ---------------------------------------------------------------------------------
;! (2) ___lldiv                                             13     5      8     395
;!                                              3 BANK0     13     5      8
;! ---------------------------------------------------------------------------------
;! (2) _Mppt_Charge                                          0     0      0   82938
;!                  _Set_Buck_Pwm_Duty
;!                            ___fladd
;!                             ___flge
;!                            ___fltol
;!                           ___lwtofl
;!                           _pid_calc
;! ---------------------------------------------------------------------------------
;! (2) _pid_calc                                            32    28      4   48005
;!                                             70 BANK0      4     0      4
;!                                              0 BANK1     28    28      0
;!                           ___awtofl
;!                            ___fladd
;!                             ___flge
;!                            ___flmul
;!                            ___flsub
;! ---------------------------------------------------------------------------------
;! (3) ___flsub                                              8     0      8    6689
;!                                             54 BANK0      8     0      8
;!                           ___awtofl (ARG)
;!                            ___fladd
;! ---------------------------------------------------------------------------------
;! (3) ___flge                                              12     4      8   16470
;!                                             58 BANK0     12     4      8
;!                           ___awtofl (ARG)
;!                            ___fladd (ARG)
;!                            ___fldiv (ARG)
;!                            ___flmul (ARG)
;!                            ___lwdiv (ARG)
;!                           ___lwtofl (ARG)
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___awtofl                                             9     5      4    5015
;!                                             13 BANK0      5     1      4
;!                           ___flpack
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___lwtofl                                             4     0      4    6930
;!                                             16 BANK0      4     0      4
;!                           ___flpack
;!                            ___lwdiv (ARG)
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___fltol                                             10     6      4    3377
;!                                             58 BANK0     10     6      4
;!                            ___fladd (ARG)
;!                            ___fldiv (ARG)
;!                           ___lwtofl (ARG)
;! ---------------------------------------------------------------------------------
;! (2) _Enable_Buck_Pwm                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _driver_init                                          0     0      0       0
;!                           _Init_Ird
;!                           _init_adc
;!                     _init_interrupt
;!                           _init_key
;!                           _init_osc
;!                          _init_port
;!                           _init_pwm
;!                        _init_timer1
;!                         _init_uart1
;! ---------------------------------------------------------------------------------
;! (2) _init_uart1                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_timer1                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_pwm                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_port                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_osc                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_key                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_interrupt                                       0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_adc                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Init_Ird                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _application_init                                     0     0      0   26965
;!                            ___fladd
;!                            ___fldiv
;!                            ___flmul
;!                           _pid_init
;! ---------------------------------------------------------------------------------
;! (2) _pid_init                                             2     0      2     778
;!                                             11 BANK0      2     0      2
;!                             _memset
;! ---------------------------------------------------------------------------------
;! (2) _memset                                               8     2      6     414
;!                                              3 BANK0      8     2      6
;! ---------------------------------------------------------------------------------
;! (1) _Key_Menu                                             7     3      4   11233
;!                                             70 BANK0      4     0      4
;!                                              0 BANK1      3     3      0
;!                   _Disable_Bost_Pwm
;!                   _Disable_Buck_Pwm
;!                    _Enable_Bost_Pwm
;!                  _Set_Bost_Pwm_Duty
;!                  _Set_Buck_Pwm_Duty
;!                           _delay_ms
;!                       _eeprom_write
;! ---------------------------------------------------------------------------------
;! (3) _eeprom_write                                         2     1      1    3136
;!                                             68 BANK0      2     1      1
;!                            ___fldiv (ARG)
;!                            ___fltol (ARG)
;! ---------------------------------------------------------------------------------
;! (3) _delay_ms                                             6     4      2    1673
;!                                              3 BANK0      6     4      2
;! ---------------------------------------------------------------------------------
;! (2) _Set_Buck_Pwm_Duty                                    4     2      2    1840
;!                                              3 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (2) _Set_Bost_Pwm_Duty                                    6     4      2    4377
;!                                              3 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! (2) _Enable_Bost_Pwm                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Disable_Buck_Pwm                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _Disable_Bost_Pwm                                     0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) ___fldiv                                             19    11      8    8822
;!                                             39 BANK0     19    11      8
;!                            ___flmul (ARG)
;!                           ___flpack
;!                            ___lwdiv (ARG)
;!                           ___lwtofl (ARG)
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___fladd                                             15     7      8    6316
;!                                             39 BANK0     15     7      8
;!                           ___awtofl (ARG)
;!                            ___flmul (ARG)
;!                           ___flpack
;!                           ___lwtofl (ARG)
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___flpack                                            10     4      6    2553
;!                                              3 BANK0     10     4      6
;! ---------------------------------------------------------------------------------
;! (3) ___flmul                                             19    11      8   11049
;!                                             20 BANK0     19    11      8
;!                           ___flpack
;!                           ___lwtofl (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___flpack                                            10     4      6    2553
;!                                              3 BANK0     10     4      6
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (7) _isr                                                 12    12      0     597
;!                                              4 COMMON     8     8      0
;!                                              0 BANK0      3     3      0
;!                 i1_Disable_Bost_Pwm
;!                i1_Set_Bost_Pwm_Duty
;! ---------------------------------------------------------------------------------
;! (8) i1_Set_Bost_Pwm_Duty                                  6     4      2     485
;!                                              0 COMMON     4     2      2
;! ---------------------------------------------------------------------------------
;! (8) i1_Disable_Bost_Pwm                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 8
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Key_Menu
;!     _Disable_Bost_Pwm
;!     _Disable_Buck_Pwm
;!     _Enable_Bost_Pwm
;!     _Set_Bost_Pwm_Duty
;!     _Set_Buck_Pwm_Duty
;!     _delay_ms
;!     _eeprom_write
;!       ___fldiv (ARG)
;!         ___flmul (ARG)
;!           ___flpack
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___flpack (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___fltol (ARG)
;!         ___fladd (ARG)
;!           ___awtofl (ARG)
;!             ___flpack
;!             ___wmul (ARG)
;!           ___flmul (ARG)
;!             ___flpack
;!             ___lwtofl (ARG)
;!               ___flpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___flpack (ARG)
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___fldiv (ARG)
;!           ___flmul (ARG)
;!             ___flpack
;!             ___lwtofl (ARG)
;!               ___flpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___flpack (ARG)
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!   _application_init
;!     ___fladd
;!       ___awtofl (ARG)
;!         ___flpack
;!         ___wmul (ARG)
;!       ___flmul (ARG)
;!         ___flpack
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___flpack (ARG)
;!       ___lwtofl (ARG)
;!         ___flpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!     ___fldiv
;!       ___flmul (ARG)
;!         ___flpack
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___flpack (ARG)
;!       ___lwdiv (ARG)
;!         ___wmul (ARG)
;!       ___lwtofl (ARG)
;!         ___flpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!     ___flmul
;!       ___flpack
;!       ___lwtofl (ARG)
;!         ___flpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!     _pid_init
;!       _memset
;!   _driver_init
;!     _Init_Ird
;!     _init_adc
;!     _init_interrupt
;!     _init_key
;!     _init_osc
;!     _init_port
;!     _init_pwm
;!     _init_timer1
;!     _init_uart1
;!   _handle_ad_loop
;!     _Disable_Bost_Pwm
;!     _Disable_Buck_Pwm
;!     _Enable_Bost_Pwm
;!     _Enable_Buck_Pwm
;!     _Mppt_Charge
;!       _Set_Buck_Pwm_Duty
;!       ___fladd
;!         ___awtofl (ARG)
;!           ___flpack
;!           ___wmul (ARG)
;!         ___flmul (ARG)
;!           ___flpack
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___flpack (ARG)
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___flge
;!         ___awtofl (ARG)
;!           ___flpack
;!           ___wmul (ARG)
;!         ___fladd (ARG)
;!           ___awtofl (ARG)
;!             ___flpack
;!             ___wmul (ARG)
;!           ___flmul (ARG)
;!             ___flpack
;!             ___lwtofl (ARG)
;!               ___flpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___flpack (ARG)
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___fldiv (ARG)
;!           ___flmul (ARG)
;!             ___flpack
;!             ___lwtofl (ARG)
;!               ___flpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___flpack (ARG)
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___flmul (ARG)
;!           ___flpack
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___fltol
;!         ___fladd (ARG)
;!           ___awtofl (ARG)
;!             ___flpack
;!             ___wmul (ARG)
;!           ___flmul (ARG)
;!             ___flpack
;!             ___lwtofl (ARG)
;!               ___flpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___flpack (ARG)
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___fldiv (ARG)
;!           ___flmul (ARG)
;!             ___flpack
;!             ___lwtofl (ARG)
;!               ___flpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___flpack (ARG)
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___lwtofl
;!         ___flpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       _pid_calc
;!         ___awtofl
;!           ___flpack
;!           ___wmul (ARG)
;!         ___fladd
;!           ___awtofl (ARG)
;!             ___flpack
;!             ___wmul (ARG)
;!           ___flmul (ARG)
;!             ___flpack
;!             ___lwtofl (ARG)
;!               ___flpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___flpack (ARG)
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___flge
;!           ___awtofl (ARG)
;!             ___flpack
;!             ___wmul (ARG)
;!           ___fladd (ARG)
;!             ___awtofl (ARG)
;!               ___flpack
;!               ___wmul (ARG)
;!             ___flmul (ARG)
;!               ___flpack
;!               ___lwtofl (ARG)
;!                 ___flpack
;!                 ___lwdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___wmul (ARG)
;!             ___flpack (ARG)
;!             ___lwtofl (ARG)
;!               ___flpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___fldiv (ARG)
;!             ___flmul (ARG)
;!               ___flpack
;!               ___lwtofl (ARG)
;!                 ___flpack
;!                 ___lwdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___wmul (ARG)
;!             ___flpack (ARG)
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___lwtofl (ARG)
;!               ___flpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___flmul (ARG)
;!             ___flpack
;!             ___lwtofl (ARG)
;!               ___flpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___flmul
;!           ___flpack
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___flsub
;!           ___awtofl (ARG)
;!             ___flpack
;!             ___wmul (ARG)
;!           ___fladd (ARG)
;!             ___awtofl (ARG)
;!               ___flpack
;!               ___wmul (ARG)
;!             ___flmul (ARG)
;!               ___flpack
;!               ___lwtofl (ARG)
;!                 ___flpack
;!                 ___lwdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___wmul (ARG)
;!             ___flpack (ARG)
;!             ___lwtofl (ARG)
;!               ___flpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!     _Set_Bost_Pwm_Duty
;!     _Set_Buck_Pwm_Duty
;!     ___awtofl
;!       ___flpack
;!       ___wmul (ARG)
;!     ___fladd
;!       ___awtofl (ARG)
;!         ___flpack
;!         ___wmul (ARG)
;!       ___flmul (ARG)
;!         ___flpack
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___flpack (ARG)
;!       ___lwtofl (ARG)
;!         ___flpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!     ___fldiv
;!       ___flmul (ARG)
;!         ___flpack
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___flpack (ARG)
;!       ___lwdiv (ARG)
;!         ___wmul (ARG)
;!       ___lwtofl (ARG)
;!         ___flpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!     ___flge
;!       ___awtofl (ARG)
;!         ___flpack
;!         ___wmul (ARG)
;!       ___fladd (ARG)
;!         ___awtofl (ARG)
;!           ___flpack
;!           ___wmul (ARG)
;!         ___flmul (ARG)
;!           ___flpack
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___flpack (ARG)
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___fldiv (ARG)
;!         ___flmul (ARG)
;!           ___flpack
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___flpack (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___flmul (ARG)
;!         ___flpack
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___lwdiv (ARG)
;!         ___wmul (ARG)
;!       ___lwtofl (ARG)
;!         ___flpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!     ___flmul
;!       ___flpack
;!       ___lwtofl (ARG)
;!         ___flpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!     ___fltol
;!       ___fladd (ARG)
;!         ___awtofl (ARG)
;!           ___flpack
;!           ___wmul (ARG)
;!         ___flmul (ARG)
;!           ___flpack
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___flpack (ARG)
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___fldiv (ARG)
;!         ___flmul (ARG)
;!           ___flpack
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___flpack (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___lwtofl (ARG)
;!         ___flpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!     ___lldiv
;!     ___lwdiv
;!       ___wmul (ARG)
;!     ___lwtofl
;!       ___flpack
;!       ___lwdiv (ARG)
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!     ___wmul
;!     _delay_ms
;!     _pid_calc
;!       ___awtofl
;!         ___flpack
;!         ___wmul (ARG)
;!       ___fladd
;!         ___awtofl (ARG)
;!           ___flpack
;!           ___wmul (ARG)
;!         ___flmul (ARG)
;!           ___flpack
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___flpack (ARG)
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___flge
;!         ___awtofl (ARG)
;!           ___flpack
;!           ___wmul (ARG)
;!         ___fladd (ARG)
;!           ___awtofl (ARG)
;!             ___flpack
;!             ___wmul (ARG)
;!           ___flmul (ARG)
;!             ___flpack
;!             ___lwtofl (ARG)
;!               ___flpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___flpack (ARG)
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___fldiv (ARG)
;!           ___flmul (ARG)
;!             ___flpack
;!             ___lwtofl (ARG)
;!               ___flpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___flpack (ARG)
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___flmul (ARG)
;!           ___flpack
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___flmul
;!         ___flpack
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___flsub
;!         ___awtofl (ARG)
;!           ___flpack
;!           ___wmul (ARG)
;!         ___fladd (ARG)
;!           ___awtofl (ARG)
;!             ___flpack
;!             ___wmul (ARG)
;!           ___flmul (ARG)
;!             ___flpack
;!             ___lwtofl (ARG)
;!               ___flpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___flpack (ARG)
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!     _start_ad_convert
;!       ___lwdiv
;!         ___wmul (ARG)
;!   _handle_task_process
;!     _Disable_Bost_Pwm
;!     _Disable_Buck_Pwm
;!     _Enable_Bost_Pwm
;!     _Set_Bost_Pwm_Duty
;!     _Set_Buck_Pwm_Duty
;!     ___fladd
;!       ___awtofl (ARG)
;!         ___flpack
;!         ___wmul (ARG)
;!       ___flmul (ARG)
;!         ___flpack
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___flpack (ARG)
;!       ___lwtofl (ARG)
;!         ___flpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!     ___fldiv
;!       ___flmul (ARG)
;!         ___flpack
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___flpack (ARG)
;!       ___lwdiv (ARG)
;!         ___wmul (ARG)
;!       ___lwtofl (ARG)
;!         ___flpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!     ___flmul
;!       ___flpack
;!       ___lwtofl (ARG)
;!         ___flpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!     ___fltol
;!       ___fladd (ARG)
;!         ___awtofl (ARG)
;!           ___flpack
;!           ___wmul (ARG)
;!         ___flmul (ARG)
;!           ___flpack
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___flpack (ARG)
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___fldiv (ARG)
;!         ___flmul (ARG)
;!           ___flpack
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___flpack (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___lwtofl (ARG)
;!         ___flpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!     _delay_ms
;!     _eeprom_write
;!       ___fldiv (ARG)
;!         ___flmul (ARG)
;!           ___flpack
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___flpack (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___fltol (ARG)
;!         ___fladd (ARG)
;!           ___awtofl (ARG)
;!             ___flpack
;!             ___wmul (ARG)
;!           ___flmul (ARG)
;!             ___flpack
;!             ___lwtofl (ARG)
;!               ___flpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___flpack (ARG)
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___fldiv (ARG)
;!           ___flmul (ARG)
;!             ___flpack
;!             ___lwtofl (ARG)
;!               ___flpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___flpack (ARG)
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!     _pid_init
;!       _memset
;!   _handle_uart_rx_buf
;!     _Disable_Bost_Pwm
;!     _Disable_Buck_Pwm
;!     _Enable_Bost_Pwm
;!     _Set_Bost_Pwm_Duty
;!     _Set_Buck_Pwm_Duty
;!     ___awtofl
;!       ___flpack
;!       ___wmul (ARG)
;!     ___fldiv
;!       ___flmul (ARG)
;!         ___flpack
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___flpack (ARG)
;!       ___lwdiv (ARG)
;!         ___wmul (ARG)
;!       ___lwtofl (ARG)
;!         ___flpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!     ___flge
;!       ___awtofl (ARG)
;!         ___flpack
;!         ___wmul (ARG)
;!       ___fladd (ARG)
;!         ___awtofl (ARG)
;!           ___flpack
;!           ___wmul (ARG)
;!         ___flmul (ARG)
;!           ___flpack
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___flpack (ARG)
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___fldiv (ARG)
;!         ___flmul (ARG)
;!           ___flpack
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___flpack (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___flmul (ARG)
;!         ___flpack
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___lwdiv (ARG)
;!         ___wmul (ARG)
;!       ___lwtofl (ARG)
;!         ___flpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!     ___flmul
;!       ___flpack
;!       ___lwtofl (ARG)
;!         ___flpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!     ___fltol
;!       ___fladd (ARG)
;!         ___awtofl (ARG)
;!           ___flpack
;!           ___wmul (ARG)
;!         ___flmul (ARG)
;!           ___flpack
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___flpack (ARG)
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___fldiv (ARG)
;!         ___flmul (ARG)
;!           ___flpack
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___flpack (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___lwtofl (ARG)
;!         ___flpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!     ___lbtofl
;!       ___flpack
;!     ___lwtofl
;!       ___flpack
;!       ___lwdiv (ARG)
;!         ___wmul (ARG)
;!       ___wmul (ARG)
;!     ___wmul
;!     _crc16
;!     _delay_ms
;!     _eeprom_read
;!     _eeprom_write
;!       ___fldiv (ARG)
;!         ___flmul (ARG)
;!           ___flpack
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___flpack (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___fltol (ARG)
;!         ___fladd (ARG)
;!           ___awtofl (ARG)
;!             ___flpack
;!             ___wmul (ARG)
;!           ___flmul (ARG)
;!             ___flpack
;!             ___lwtofl (ARG)
;!               ___flpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___flpack (ARG)
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___fldiv (ARG)
;!           ___flmul (ARG)
;!             ___flpack
;!             ___lwtofl (ARG)
;!               ___flpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___flpack (ARG)
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!     _memset
;!   _middle_init
;!     _auto_system
;!       ___fldiv
;!         ___flmul (ARG)
;!           ___flpack
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___flpack (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___flge
;!         ___awtofl (ARG)
;!           ___flpack
;!           ___wmul (ARG)
;!         ___fladd (ARG)
;!           ___awtofl (ARG)
;!             ___flpack
;!             ___wmul (ARG)
;!           ___flmul (ARG)
;!             ___flpack
;!             ___lwtofl (ARG)
;!               ___flpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___flpack (ARG)
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___fldiv (ARG)
;!           ___flmul (ARG)
;!             ___flpack
;!             ___lwtofl (ARG)
;!               ___flpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___flpack (ARG)
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___flmul (ARG)
;!           ___flpack
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___flmul
;!         ___flpack
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___lwtofl
;!         ___flpack
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       _delay_ms
;!       _eeprom_read
;!       _eeprom_write
;!         ___fldiv (ARG)
;!           ___flmul (ARG)
;!             ___flpack
;!             ___lwtofl (ARG)
;!               ___flpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!           ___flpack (ARG)
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___fltol (ARG)
;!           ___fladd (ARG)
;!             ___awtofl (ARG)
;!               ___flpack
;!               ___wmul (ARG)
;!             ___flmul (ARG)
;!               ___flpack
;!               ___lwtofl (ARG)
;!                 ___flpack
;!                 ___lwdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___wmul (ARG)
;!             ___flpack (ARG)
;!             ___lwtofl (ARG)
;!               ___flpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___fldiv (ARG)
;!             ___flmul (ARG)
;!               ___flpack
;!               ___lwtofl (ARG)
;!                 ___flpack
;!                 ___lwdiv (ARG)
;!                   ___wmul (ARG)
;!                 ___wmul (ARG)
;!             ___flpack (ARG)
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___lwtofl (ARG)
;!               ___flpack
;!               ___lwdiv (ARG)
;!                 ___wmul (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!       _start_ad_convert
;!         ___lwdiv
;!           ___wmul (ARG)
;!     _read_param_eeprom
;!       ___awtofl
;!         ___flpack
;!         ___wmul (ARG)
;!       ___fldiv
;!         ___flmul (ARG)
;!           ___flpack
;!           ___lwtofl (ARG)
;!             ___flpack
;!             ___lwdiv (ARG)
;!               ___wmul (ARG)
;!             ___wmul (ARG)
;!         ___flpack (ARG)
;!         ___lwdiv (ARG)
;!           ___wmul (ARG)
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!         ___wmul (ARG)
;!       ___flmul
;!         ___flpack
;!         ___lwtofl (ARG)
;!           ___flpack
;!           ___lwdiv (ARG)
;!             ___wmul (ARG)
;!           ___wmul (ARG)
;!       ___lbtofl
;!         ___flpack
;!       ___lmul
;!       _eeprom_read
;!
;! _isr (ROOT)
;!   i1_Disable_Bost_Pwm
;!   i1_Set_Bost_Pwm_Duty
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             3F0      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!BITCOMMON            E      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!COMMON               E      C       E       2      100.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR2              0      0       0       3        0.0%
;!SFR2                 0      0       0       3        0.0%
;!STACK                0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     4A      4D       5       96.3%
;!BITSFR4              0      0       0       5        0.0%
;!SFR4                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BITSFR5              0      0       0       6        0.0%
;!SFR5                 0      0       0       6        0.0%
;!BANK1               50     1E      4D       7       96.3%
;!BITSFR6              0      0       0       7        0.0%
;!SFR6                 0      0       0       7        0.0%
;!BITBANK2            50      0       0       8        0.0%
;!BITSFR7              0      0       0       8        0.0%
;!SFR7                 0      0       0       8        0.0%
;!BANK2               50      0      50       9      100.0%
;!BITSFR8              0      0       0       9        0.0%
;!SFR8                 0      0       0       9        0.0%
;!BITBANK3            50      0       0      10        0.0%
;!BITSFR9              0      0       0      10        0.0%
;!SFR9                 0      0       0      10        0.0%
;!BANK3               50      0      4F      11       98.8%
;!BITSFR10             0      0       0      11        0.0%
;!SFR10                0      0       0      11        0.0%
;!BITBANK4            50      0       0      12        0.0%
;!BITSFR11             0      0       0      12        0.0%
;!SFR11                0      0       0      12        0.0%
;!BANK4               50      0      50      13      100.0%
;!BITSFR12             0      0       0      13        0.0%
;!SFR12                0      0       0      13        0.0%
;!BITBANK5            50      0       0      14        0.0%
;!BITSFR13             0      0       0      14        0.0%
;!SFR13                0      0       0      14        0.0%
;!BANK5               50      4      50      15      100.0%
;!BITSFR14             0      0       0      15        0.0%
;!SFR14                0      0       0      15        0.0%
;!BITBANK6            50      0       0      16        0.0%
;!BITSFR15             0      0       0      16        0.0%
;!SFR15                0      0       0      16        0.0%
;!BANK6               50      0      1C      17       35.0%
;!BITSFR16             0      0       0      17        0.0%
;!SFR16                0      0       0      17        0.0%
;!BITBANK7            50      0       0      18        0.0%
;!BITSFR17             0      0       0      18        0.0%
;!SFR17                0      0       0      18        0.0%
;!BANK7               50      0      50      19      100.0%
;!BITSFR18             0      0       0      19        0.0%
;!SFR18                0      0       0      19        0.0%
;!BITSFR19             0      0       0      20        0.0%
;!SFR19                0      0       0      20        0.0%
;!ABS                  0      0     2A3      20        0.0%
;!BITBANK8            50      0       0      21        0.0%
;!BITSFR20             0      0       0      21        0.0%
;!SFR20                0      0       0      21        0.0%
;!BANK8               50      0      50      22      100.0%
;!BITSFR21             0      0       0      22        0.0%
;!SFR21                0      0       0      22        0.0%
;!BITBANK9            50      0       0      23        0.0%
;!BITSFR22             0      0       0      23        0.0%
;!SFR22                0      0       0      23        0.0%
;!BANK9               50      0       0      24        0.0%
;!BITSFR23             0      0       0      24        0.0%
;!SFR23                0      0       0      24        0.0%
;!BITBANK10           50      0       0      25        0.0%
;!BITSFR24             0      0       0      25        0.0%
;!SFR24                0      0       0      25        0.0%
;!BANK10              50      0       0      26        0.0%
;!BITSFR25             0      0       0      26        0.0%
;!SFR25                0      0       0      26        0.0%
;!BITBANK11           50      0       0      27        0.0%
;!BITSFR26             0      0       0      27        0.0%
;!SFR26                0      0       0      27        0.0%
;!BITSFR27             0      0       0      28        0.0%
;!SFR27                0      0       0      28        0.0%
;!BANK11               0      0       0      28        0.0%
;!BITBANK12           30      0       0      29        0.0%
;!BITSFR28             0      0       0      29        0.0%
;!SFR28                0      0       0      29        0.0%
;!BITSFR29             0      0       0      30        0.0%
;!SFR29                0      0       0      30        0.0%
;!BANK12               0      0       0      30        0.0%
;!BITSFR30             0      0       0      31        0.0%
;!SFR30                0      0       0      31        0.0%
;!DATA                 0      0     2A3      31        0.0%
;!BITSFR31             0      0       0      32        0.0%
;!SFR31                0      0       0      32        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 349 in file "D:\MCUProject\ZH-SL-F60\src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  814[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, fsr1l, fsr1h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 1F/2
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_Key_Menu
;;		_application_init
;;		_driver_init
;;		_handle_ad_loop
;;		_handle_task_process
;;		_handle_uart_rx_buf
;;		_middle_init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,merge=1,split=1
	file	"D:\MCUProject\ZH-SL-F60\src\main.c"
	line	349
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\MCUProject\ZH-SL-F60\src\main.c"
	line	349
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 8
; Regs used in _main: [allreg]
	line	351
	
l17124:	
;main.c: 351: driver_init();
	fcall	_driver_init
	line	352
	
l17126:	
;main.c: 352: middle_init();
	fcall	_middle_init
	line	353
	
l17128:	
;main.c: 353: application_init();
	fcall	_application_init
	line	356
;main.c: 356: while(1)
	
l815:	
	line	359
# 359 "D:\MCUProject\ZH-SL-F60\src\main.c"
clrwdt ;# 
psect	maintext
	line	361
	
l17130:	
;main.c: 361: if(handle_scan_key_flag==0x01)
	movlb 2	; select bank2
	decf	(_handle_scan_key_flag)^0100h,w
	skipz
	goto	u9891
	goto	u9890
u9891:
	goto	l17138
u9890:
	line	365
	
l17132:	
;main.c: 362: {
;main.c: 365: if(RC1)
	movlb 0	; select bank0
	btfss	(113/8),(113)&7	;volatile
	goto	u9901
	goto	u9900
u9901:
	goto	l817
u9900:
	line	368
	
l17134:	
;main.c: 366: {
;main.c: 368: have_person1_time_count=0x00;
	movlb 2	; select bank2
	clrf	(_have_person1_time_count)^0100h
	line	370
	
l17136:	
;main.c: 370: have_person1_flag=0x01;
	movlb 1	; select bank1
	clrf	(_have_person1_flag)^080h
	incf	(_have_person1_flag)^080h,f
	line	371
	
l817:	
	line	373
;main.c: 371: }
;main.c: 373: handle_scan_key_flag=0x00;
	movlb 2	; select bank2
	clrf	(_handle_scan_key_flag)^0100h
	line	376
	
l17138:	
;main.c: 374: }
;main.c: 376: if(ird_receive_flag==0x01)
	decf	(_ird_receive_flag)^0100h,w
	skipz
	goto	u9911
	goto	u9910
u9911:
	goto	l17154
u9910:
	line	378
	
l17140:	
;main.c: 377: {
;main.c: 378: Key_Menu(ird_data);
	movlb 4	; select bank4
	movf	(_ird_data+3)^0200h,w
	movlb 0	; select bank0
	movwf	(Key_Menu@key_value+3)
	movlb 4	; select bank4
	movf	(_ird_data+2)^0200h,w
	movlb 0	; select bank0
	movwf	(Key_Menu@key_value+2)
	movlb 4	; select bank4
	movf	(_ird_data+1)^0200h,w
	movlb 0	; select bank0
	movwf	(Key_Menu@key_value+1)
	movlb 4	; select bank4
	movf	(_ird_data)^0200h,w
	movlb 0	; select bank0
	movwf	(Key_Menu@key_value)

	fcall	_Key_Menu
	line	380
	
l17142:	
;main.c: 380: receive_bit_count=0x00;
	movlb 2	; select bank2
	clrf	(_receive_bit_count)^0100h
	line	382
	
l17144:	
;main.c: 382: ird_status=0x00;
	clrf	(_ird_status)^0100h
	line	384
	
l17146:	
;main.c: 384: ird_data=0x00;
	movlb 4	; select bank4
	clrf	(_ird_data)^0200h
	clrf	(_ird_data+1)^0200h
	clrf	(_ird_data+2)^0200h
	clrf	(_ird_data+3)^0200h
	line	386
	
l17148:	
;main.c: 386: TMR0=0;
	movlb 0	; select bank0
	clrf	(21)	;volatile
	line	388
	
l17150:	
;main.c: 388: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	390
	
l17152:	
;main.c: 390: ird_receive_flag=0x00;
	movlb 2	; select bank2
	clrf	(_ird_receive_flag)^0100h
	line	394
	
l17154:	
;main.c: 392: }
;main.c: 394: handle_ad_loop();
	fcall	_handle_ad_loop
	line	396
	
l17156:	
;main.c: 396: handle_task_process();
	fcall	_handle_task_process
	line	398
	
l17158:	
;main.c: 398: if (RCSTAbits.FERR || RCSTAbits.OERR)
	movlb 3	; select bank3
	btfsc	(413)^0180h,2	;volatile
	goto	u9921
	goto	u9920
u9921:
	goto	l821
u9920:
	
l17160:	
	btfss	(413)^0180h,1	;volatile
	goto	u9931
	goto	u9930
u9931:
	goto	l17162
u9930:
	
l821:	
	line	400
;main.c: 399: {
;main.c: 400: RCSTAbits.CREN = 0x00;
	bcf	(413)^0180h,4	;volatile
	line	401
;main.c: 401: RCSTAbits.SPEN = 0x00;
	bcf	(413)^0180h,7	;volatile
	line	402
;main.c: 402: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	403
;main.c: 403: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	404
;main.c: 404: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	405
;main.c: 405: RCSTAbits.CREN = 0x01;
	movlb 3	; select bank3
	bsf	(413)^0180h,4	;volatile
	line	406
;main.c: 406: RCSTAbits.SPEN = 0x01;
	bsf	(413)^0180h,7	;volatile
	line	409
	
l17162:	
;main.c: 407: }
;main.c: 409: if(uart1_receive_flag==TRUE)
	movlb 2	; select bank2
	decf	(_uart1_receive_flag)^0100h,w
	skipz
	goto	u9941
	goto	u9940
u9941:
	goto	l815
u9940:
	line	411
	
l17164:	
;main.c: 410: {
;main.c: 411: handle_uart_rx_buf();
	fcall	_handle_uart_rx_buf
	line	413
	
l17166:	
;main.c: 413: if (RCSTAbits.FERR || RCSTAbits.OERR)
	movlb 3	; select bank3
	btfsc	(413)^0180h,2	;volatile
	goto	u9951
	goto	u9950
u9951:
	goto	l825
u9950:
	
l17168:	
	btfss	(413)^0180h,1	;volatile
	goto	u9961
	goto	u9960
u9961:
	goto	l17170
u9960:
	
l825:	
	line	415
;main.c: 414: {
;main.c: 415: RCSTAbits.CREN = 0x00;
	bcf	(413)^0180h,4	;volatile
	line	416
;main.c: 416: RCSTAbits.SPEN = 0x00;
	bcf	(413)^0180h,7	;volatile
	line	417
;main.c: 417: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	418
;main.c: 418: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	419
;main.c: 419: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	420
;main.c: 420: RCSTAbits.CREN = 0x01;
	movlb 3	; select bank3
	bsf	(413)^0180h,4	;volatile
	line	421
;main.c: 421: RCSTAbits.SPEN = 0x01;
	bsf	(413)^0180h,7	;volatile
	line	424
	
l17170:	
;main.c: 422: }
;main.c: 424: uart1_receive_byte_count=0x00;
	movlb 1	; select bank1
	clrf	(_uart1_receive_byte_count)^080h
	line	426
;main.c: 426: uart1_receive_flag=FALSE;
	movlb 2	; select bank2
	clrf	(_uart1_receive_flag)^0100h
	goto	l815
	global	start
	ljmp	start
	opt stack 0
	line	433
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,90
	global	_middle_init

;; *************** function _middle_init *****************
;; Defined at:
;;		line 246 in file "D:\MCUProject\ZH-SL-F60\src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/2
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_auto_system
;;		_read_param_eeprom
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	246
global __ptext1
__ptext1:	;psect for function _middle_init
psect	text1
	file	"D:\MCUProject\ZH-SL-F60\src\main.c"
	line	246
	global	__size_of_middle_init
	__size_of_middle_init	equ	__end_of_middle_init-_middle_init
	
_middle_init:	
;incstack = 0
	opt	stack 10
; Regs used in _middle_init: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	249
	
l17078:	
;main.c: 249: auto_system();
	fcall	_auto_system
	line	251
	
l17080:	
;main.c: 251: read_param_eeprom();
	fcall	_read_param_eeprom
	line	252
	
l809:	
	return
	opt stack 0
GLOBAL	__end_of_middle_init
	__end_of_middle_init:
	signat	_middle_init,88
	global	_read_param_eeprom

;; *************** function _read_param_eeprom *****************
;; Defined at:
;;		line 181 in file "D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  byte_l          1   59[BANK0 ] unsigned char 
;;  byte_h          1   58[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/2
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awtofl
;;		___fldiv
;;		___flmul
;;		___lbtofl
;;		___lmul
;;		_eeprom_read
;; This function is called by:
;;		_middle_init
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	181
global __ptext2
__ptext2:	;psect for function _read_param_eeprom
psect	text2
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	181
	global	__size_of_read_param_eeprom
	__size_of_read_param_eeprom	equ	__end_of_read_param_eeprom-_read_param_eeprom
	
_read_param_eeprom:	
;incstack = 0
	opt	stack 10
; Regs used in _read_param_eeprom: [wreg+status,2+status,0+pclath+cstack]
	line	186
	
l16588:	
;ird_remote.c: 183: unsigned char byte_h,byte_l;
;ird_remote.c: 186: byte_h=eeprom_read(0x00);
	movlw	(0)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	188
;ird_remote.c: 188: byte_l=eeprom_read(0x01);
	movlw	(01h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	190
;ird_remote.c: 190: light_pv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtofl@c+1)
	clrf	(___awtofl@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtofl@c),f
	fcall	___awtofl
	movf	(3+(?___awtofl)),w
	movlb 1	; select bank1
	movwf	(_light_pv+3)^080h
	movlb 0	; select bank0
	movf	(2+(?___awtofl)),w
	movlb 1	; select bank1
	movwf	(_light_pv+2)^080h
	movlb 0	; select bank0
	movf	(1+(?___awtofl)),w
	movlb 1	; select bank1
	movwf	(_light_pv+1)^080h
	movlb 0	; select bank0
	movf	(0+(?___awtofl)),w
	movlb 1	; select bank1
	movwf	(_light_pv)^080h

	line	194
;ird_remote.c: 194: byte_h=eeprom_read(0x02);
	movlw	(02h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	196
;ird_remote.c: 196: byte_l=eeprom_read(0x03);
	movlw	(03h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	198
;ird_remote.c: 198: load_cc_I=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtofl@c+1)
	clrf	(___awtofl@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtofl@c),f
	fcall	___awtofl
	movf	(3+(?___awtofl)),w
	movlb 1	; select bank1
	movwf	(_load_cc_I+3)^080h
	movlb 0	; select bank0
	movf	(2+(?___awtofl)),w
	movlb 1	; select bank1
	movwf	(_load_cc_I+2)^080h
	movlb 0	; select bank0
	movf	(1+(?___awtofl)),w
	movlb 1	; select bank1
	movwf	(_load_cc_I+1)^080h
	movlb 0	; select bank0
	movf	(0+(?___awtofl)),w
	movlb 1	; select bank1
	movwf	(_load_cc_I)^080h

	line	202
;ird_remote.c: 202: byte_l=eeprom_read(0x04);
	movlw	(04h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	204
;ird_remote.c: 204: step_01_load_percent=byte_l;
	movf	(read_param_eeprom@byte_l),w
	fcall	___lbtofl
	movf	(3+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_01_load_percent+3)^0100h
	movlb 0	; select bank0
	movf	(2+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_01_load_percent+2)^0100h
	movlb 0	; select bank0
	movf	(1+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_01_load_percent+1)^0100h
	movlb 0	; select bank0
	movf	(0+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_01_load_percent)^0100h

	line	207
;ird_remote.c: 207: byte_l=eeprom_read(0x05);
	movlw	(05h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	209
;ird_remote.c: 209: step_02_load_percent=byte_l;
	movf	(read_param_eeprom@byte_l),w
	fcall	___lbtofl
	movf	(3+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_02_load_percent+3)^0100h
	movlb 0	; select bank0
	movf	(2+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_02_load_percent+2)^0100h
	movlb 0	; select bank0
	movf	(1+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_02_load_percent+1)^0100h
	movlb 0	; select bank0
	movf	(0+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_02_load_percent)^0100h

	line	212
;ird_remote.c: 212: byte_l=eeprom_read(0x06);
	movlw	(06h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	214
;ird_remote.c: 214: step_03_load_percent=byte_l;
	movf	(read_param_eeprom@byte_l),w
	fcall	___lbtofl
	movf	(3+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_03_load_percent+3)^0100h
	movlb 0	; select bank0
	movf	(2+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_03_load_percent+2)^0100h
	movlb 0	; select bank0
	movf	(1+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_03_load_percent+1)^0100h
	movlb 0	; select bank0
	movf	(0+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_03_load_percent)^0100h

	line	217
;ird_remote.c: 217: byte_l=eeprom_read(0x07);
	movlw	(07h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	219
;ird_remote.c: 219: step_04_load_percent=byte_l;
	movf	(read_param_eeprom@byte_l),w
	fcall	___lbtofl
	movf	(3+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_04_load_percent+3)^0100h
	movlb 0	; select bank0
	movf	(2+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_04_load_percent+2)^0100h
	movlb 0	; select bank0
	movf	(1+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_04_load_percent+1)^0100h
	movlb 0	; select bank0
	movf	(0+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_04_load_percent)^0100h

	line	222
;ird_remote.c: 222: byte_l=eeprom_read(0x08);
	movlw	(08h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	224
;ird_remote.c: 224: step_05_load_percent=byte_l;
	movf	(read_param_eeprom@byte_l),w
	fcall	___lbtofl
	movf	(3+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_05_load_percent+3)^0100h
	movlb 0	; select bank0
	movf	(2+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_05_load_percent+2)^0100h
	movlb 0	; select bank0
	movf	(1+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_05_load_percent+1)^0100h
	movlb 0	; select bank0
	movf	(0+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_05_load_percent)^0100h

	line	227
;ird_remote.c: 227: byte_l=eeprom_read(0x09);
	movlw	(09h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	229
	
l16590:	
;ird_remote.c: 229: volt_id=byte_l;
	movf	(read_param_eeprom@byte_l),w
	movlb 1	; select bank1
	movwf	(_volt_id)^080h
	line	232
	
l16592:	
;ird_remote.c: 232: byte_l=eeprom_read(0x0a);
	movlw	(0Ah)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	234
;ird_remote.c: 234: bt_id=byte_l;
	movf	(read_param_eeprom@byte_l),w
	movlb 1	; select bank1
	movwf	(_bt_id)^080h
	line	236
	
l16594:	
;ird_remote.c: 236: byte_l=eeprom_read(0x0b);
	movlw	(0Bh)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	238
	
l16596:	
;ird_remote.c: 238: light_time=byte_l;
	movf	(read_param_eeprom@byte_l),w
	movlb 1	; select bank1
	movwf	(_light_time)^080h
	clrf	(_light_time+1)^080h
	line	240
;ird_remote.c: 240: byte_l=eeprom_read(0x0c);
	movlw	(0Ch)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	242
	
l16598:	
;ird_remote.c: 242: step_01_time_limit=byte_l;
	movf	(read_param_eeprom@byte_l),w
	movlb 1	; select bank1
	movwf	(_step_01_time_limit)^080h
	clrf	(_step_01_time_limit+1)^080h
	line	244
	
l16600:	
;ird_remote.c: 244: byte_l=eeprom_read(0x0d);
	movlw	(0Dh)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	246
;ird_remote.c: 246: step_02_time_limit=byte_l;
	movf	(read_param_eeprom@byte_l),w
	movlb 1	; select bank1
	movwf	(_step_02_time_limit)^080h
	clrf	(_step_02_time_limit+1)^080h
	line	248
	
l16602:	
;ird_remote.c: 248: byte_l=eeprom_read(0x0e);
	movlw	(0Eh)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	250
	
l16604:	
;ird_remote.c: 250: step_03_time_limit=byte_l;
	movf	(read_param_eeprom@byte_l),w
	movlb 2	; select bank2
	movwf	(_step_03_time_limit)^0100h
	clrf	(_step_03_time_limit+1)^0100h
	line	252
;ird_remote.c: 252: byte_l=eeprom_read(0x0f);
	movlw	(0Fh)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	254
	
l16606:	
;ird_remote.c: 254: step_04_time_limit=byte_l;
	movf	(read_param_eeprom@byte_l),w
	movlb 2	; select bank2
	movwf	(_step_04_time_limit)^0100h
	clrf	(_step_04_time_limit+1)^0100h
	line	256
	
l16608:	
;ird_remote.c: 256: byte_l=eeprom_read(0x10);
	movlw	(010h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	258
;ird_remote.c: 258: step_05_time_limit=byte_l;
	movf	(read_param_eeprom@byte_l),w
	movlb 2	; select bank2
	movwf	(_step_05_time_limit)^0100h
	clrf	(_step_05_time_limit+1)^0100h
	line	260
	
l16610:	
;ird_remote.c: 260: byte_l=eeprom_read(0x11);
	movlw	(011h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	262
	
l16612:	
;ird_remote.c: 262: today_index=byte_l;
	movf	(read_param_eeprom@byte_l),w
	movwf	(_today_index)
	line	264
;ird_remote.c: 264: byte_h=eeprom_read(0x12+4*( (today_index+8-0)%8 )+0 );
	movf	(_today_index),w
	addlw	08h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	266
;ird_remote.c: 266: byte_l=eeprom_read(0x12+4*( (today_index+8-0)%8 )+1 );
	movf	(_today_index),w
	addlw	08h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	268
;ird_remote.c: 268: bt_00_hv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtofl@c+1)
	clrf	(___awtofl@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtofl@c),f
	fcall	___awtofl
	movf	(3+(?___awtofl)),w
	movlb 4	; select bank4
	movwf	(_bt_00_hv+3)^0200h
	movlb 0	; select bank0
	movf	(2+(?___awtofl)),w
	movlb 4	; select bank4
	movwf	(_bt_00_hv+2)^0200h
	movlb 0	; select bank0
	movf	(1+(?___awtofl)),w
	movlb 4	; select bank4
	movwf	(_bt_00_hv+1)^0200h
	movlb 0	; select bank0
	movf	(0+(?___awtofl)),w
	movlb 4	; select bank4
	movwf	(_bt_00_hv)^0200h

	line	270
;ird_remote.c: 270: byte_h=eeprom_read(0x12+4*( (today_index+8-0)%8 )+2 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	08h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	272
;ird_remote.c: 272: byte_l=eeprom_read(0x12+4*( (today_index+8-0)%8 )+3 );
	movf	(_today_index),w
	addlw	08h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	274
;ird_remote.c: 274: bt_00_lv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtofl@c+1)
	clrf	(___awtofl@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtofl@c),f
	fcall	___awtofl
	movf	(3+(?___awtofl)),w
	movlb 4	; select bank4
	movwf	(_bt_00_lv+3)^0200h
	movlb 0	; select bank0
	movf	(2+(?___awtofl)),w
	movlb 4	; select bank4
	movwf	(_bt_00_lv+2)^0200h
	movlb 0	; select bank0
	movf	(1+(?___awtofl)),w
	movlb 4	; select bank4
	movwf	(_bt_00_lv+1)^0200h
	movlb 0	; select bank0
	movf	(0+(?___awtofl)),w
	movlb 4	; select bank4
	movwf	(_bt_00_lv)^0200h

	line	277
;ird_remote.c: 277: byte_h=eeprom_read(0x12+4*( (today_index+8-1)%8 )+0 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	07h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	279
;ird_remote.c: 279: byte_l=eeprom_read(0x12+4*( (today_index+8-1)%8 )+1 );
	movf	(_today_index),w
	addlw	07h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	281
;ird_remote.c: 281: bt_01_hv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtofl@c+1)
	clrf	(___awtofl@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtofl@c),f
	fcall	___awtofl
	line	283
;ird_remote.c: 283: byte_h=eeprom_read(0x12+4*( (today_index+8-1)%8 )+2 );
	movf	(_today_index),w
	addlw	07h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	285
;ird_remote.c: 285: byte_l=eeprom_read(0x12+4*( (today_index+8-1)%8 )+3 );
	movf	(_today_index),w
	addlw	07h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	287
;ird_remote.c: 287: bt_01_lv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtofl@c+1)
	clrf	(___awtofl@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtofl@c),f
	fcall	___awtofl
	line	290
;ird_remote.c: 290: byte_h=eeprom_read(0x12+4*( (today_index+8-2)%8 )+0 );
	movf	(_today_index),w
	addlw	06h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	292
;ird_remote.c: 292: byte_l=eeprom_read(0x12+4*( (today_index+8-2)%8 )+1 );
	movf	(_today_index),w
	addlw	06h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	294
;ird_remote.c: 294: bt_02_hv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtofl@c+1)
	clrf	(___awtofl@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtofl@c),f
	fcall	___awtofl
	line	296
;ird_remote.c: 296: byte_h=eeprom_read(0x12+4*( (today_index+8-2)%8 )+2 );
	movf	(_today_index),w
	addlw	06h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	298
;ird_remote.c: 298: byte_l=eeprom_read(0x12+4*( (today_index+8-2)%8 )+3 );
	movf	(_today_index),w
	addlw	06h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	300
;ird_remote.c: 300: bt_02_lv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtofl@c+1)
	clrf	(___awtofl@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtofl@c),f
	fcall	___awtofl
	line	303
;ird_remote.c: 303: byte_h=eeprom_read(0x12+4*( (today_index+8-3)%8 )+0 );
	movf	(_today_index),w
	addlw	05h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	305
;ird_remote.c: 305: byte_l=eeprom_read(0x12+4*( (today_index+8-3)%8 )+1 );
	movf	(_today_index),w
	addlw	05h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	307
;ird_remote.c: 307: bt_03_hv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtofl@c+1)
	clrf	(___awtofl@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtofl@c),f
	fcall	___awtofl
	line	309
;ird_remote.c: 309: byte_h=eeprom_read(0x12+4*( (today_index+8-3)%8 )+2 );
	movf	(_today_index),w
	addlw	05h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	311
;ird_remote.c: 311: byte_l=eeprom_read(0x12+4*( (today_index+8-3)%8 )+3 );
	movf	(_today_index),w
	addlw	05h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	313
;ird_remote.c: 313: bt_03_lv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtofl@c+1)
	clrf	(___awtofl@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtofl@c),f
	fcall	___awtofl
	line	316
;ird_remote.c: 316: byte_h=eeprom_read(0x12+4*( (today_index+8-4)%8 )+0 );
	movf	(_today_index),w
	addlw	04h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	318
;ird_remote.c: 318: byte_l=eeprom_read(0x12+4*( (today_index+8-4)%8 )+1 );
	movf	(_today_index),w
	addlw	04h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	320
;ird_remote.c: 320: bt_04_hv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtofl@c+1)
	clrf	(___awtofl@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtofl@c),f
	fcall	___awtofl
	line	322
;ird_remote.c: 322: byte_h=eeprom_read(0x12+4*( (today_index+8-4)%8 )+2 );
	movf	(_today_index),w
	addlw	04h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	324
;ird_remote.c: 324: byte_l=eeprom_read(0x12+4*( (today_index+8-4)%8 )+3 );
	movf	(_today_index),w
	addlw	04h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	326
;ird_remote.c: 326: bt_04_lv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtofl@c+1)
	clrf	(___awtofl@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtofl@c),f
	fcall	___awtofl
	line	329
;ird_remote.c: 329: byte_h=eeprom_read(0x12+4*( (today_index+8-5)%8 )+0 );
	movf	(_today_index),w
	addlw	03h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	331
;ird_remote.c: 331: byte_l=eeprom_read(0x12+4*( (today_index+8-5)%8 )+1 );
	movf	(_today_index),w
	addlw	03h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	333
;ird_remote.c: 333: bt_05_hv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtofl@c+1)
	clrf	(___awtofl@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtofl@c),f
	fcall	___awtofl
	line	335
;ird_remote.c: 335: byte_h=eeprom_read(0x12+4*( (today_index+8-5)%8 )+2 );
	movf	(_today_index),w
	addlw	03h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	337
;ird_remote.c: 337: byte_l=eeprom_read(0x12+4*( (today_index+8-5)%8 )+3 );
	movf	(_today_index),w
	addlw	03h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	339
;ird_remote.c: 339: bt_05_lv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtofl@c+1)
	clrf	(___awtofl@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtofl@c),f
	fcall	___awtofl
	line	342
;ird_remote.c: 342: byte_h=eeprom_read(0x12+4*( (today_index+8-6)%8 )+0 );
	movf	(_today_index),w
	addlw	02h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	344
;ird_remote.c: 344: byte_l=eeprom_read(0x12+4*( (today_index+8-6)%8 )+1 );
	movf	(_today_index),w
	addlw	02h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	346
;ird_remote.c: 346: bt_06_hv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtofl@c+1)
	clrf	(___awtofl@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtofl@c),f
	fcall	___awtofl
	line	348
;ird_remote.c: 348: byte_h=eeprom_read(0x12+4*( (today_index+8-6)%8 )+2 );
	movf	(_today_index),w
	addlw	02h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	350
;ird_remote.c: 350: byte_l=eeprom_read(0x12+4*( (today_index+8-6)%8 )+3 );
	movf	(_today_index),w
	addlw	02h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	352
;ird_remote.c: 352: bt_06_lv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtofl@c+1)
	clrf	(___awtofl@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtofl@c),f
	fcall	___awtofl
	line	355
;ird_remote.c: 355: byte_h=eeprom_read(0x12+4*( (today_index+8-7)%8 )+0 );
	movf	(_today_index),w
	addlw	01h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	357
;ird_remote.c: 357: byte_l=eeprom_read(0x12+4*( (today_index+8-7)%8 )+1 );
	movf	(_today_index),w
	addlw	01h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	359
;ird_remote.c: 359: bt_07_hv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtofl@c+1)
	clrf	(___awtofl@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtofl@c),f
	fcall	___awtofl
	line	361
;ird_remote.c: 361: byte_h=eeprom_read(0x12+4*( (today_index+8-7)%8 )+2 );
	movf	(_today_index),w
	addlw	01h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_h)
	line	363
;ird_remote.c: 363: byte_l=eeprom_read(0x12+4*( (today_index+8-7)%8 )+3 );
	movf	(_today_index),w
	addlw	01h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	365
;ird_remote.c: 365: bt_07_lv=(byte_h<<8)|byte_l;
	movf	(read_param_eeprom@byte_h),w
	movwf	(___awtofl@c+1)
	clrf	(___awtofl@c)
	movf	(read_param_eeprom@byte_l),w
	iorwf	(___awtofl@c),f
	fcall	___awtofl
	line	368
;ird_remote.c: 368: byte_l=eeprom_read(0x36);
	movlw	(036h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	370
	
l16614:	
;ird_remote.c: 370: light_mode=byte_l;
	movf	(read_param_eeprom@byte_l),w
	movlb 1	; select bank1
	movwf	(_light_mode)^080h
	line	372
	
l16616:	
	movlw	(037h)
	fcall	_eeprom_read
	line	377
	
l16618:	
;ird_remote.c: 377: byte_l=eeprom_read(0x38);
	movlw	(038h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	379
	
l16620:	
;ird_remote.c: 379: device_status=byte_l;
	movf	(read_param_eeprom@byte_l),w
	movlb 1	; select bank1
	movwf	(_device_status)^080h
	line	381
	
l16622:	
;ird_remote.c: 381: device_status=0x01;
	clrf	(_device_status)^080h
	incf	(_device_status)^080h,f
	line	386
	
l16626:	
;ird_remote.c: 384: {
;ird_remote.c: 386: work_mode =0x00;
	clrf	(_work_mode)^080h
	line	393
;ird_remote.c: 387: }
	
l16630:	
;ird_remote.c: 391: }
;ird_remote.c: 393: byte_l=eeprom_read(0x39);
	movlw	(039h)
	fcall	_eeprom_read
	movlb 0	; select bank0
	movwf	(read_param_eeprom@byte_l)
	line	395
	
l16632:	
;ird_remote.c: 395: led_out_ctrl=byte_l;
	movf	(read_param_eeprom@byte_l),w
	movlb 1	; select bank1
	movwf	(_led_out_ctrl)^080h
	line	400
	
l16634:	
;ird_remote.c: 400: if(light_time==0x00)
	movf	((_light_time+1)^080h),w
	iorwf	((_light_time)^080h),w
	skipz
	goto	u9551
	goto	u9550
u9551:
	goto	l16638
u9550:
	line	402
	
l16636:	
;ird_remote.c: 401: {
;ird_remote.c: 402: light_time_level = 500;
	movlw	0
	movlb 3	; select bank3
	movwf	(_light_time_level+3)^0180h
	movlw	0
	movwf	(_light_time_level+2)^0180h
	movlw	01h
	movwf	(_light_time_level+1)^0180h
	movlw	0F4h
	movwf	(_light_time_level)^0180h

	line	403
;ird_remote.c: 403: }
	goto	l16640
	line	406
	
l16638:	
;ird_remote.c: 404: else
;ird_remote.c: 405: {
;ird_remote.c: 406: light_time_level = (unsigned long int)((unsigned long int)light_time*6*180);
	movf	(_light_time)^080h,w
	movlb 0	; select bank0
	movwf	(___lmul@multiplier)
	movlb 1	; select bank1
	movf	(_light_time+1)^080h,w
	movlb 0	; select bank0
	movwf	((___lmul@multiplier))+1
	clrf	2+((___lmul@multiplier))
	clrf	3+((___lmul@multiplier))
	movlw	0
	movwf	(___lmul@multiplicand+3)
	movlw	0
	movwf	(___lmul@multiplicand+2)
	movlw	04h
	movwf	(___lmul@multiplicand+1)
	movlw	038h
	movwf	(___lmul@multiplicand)

	fcall	___lmul
	movf	(3+(?___lmul)),w
	movlb 3	; select bank3
	movwf	(_light_time_level+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___lmul)),w
	movlb 3	; select bank3
	movwf	(_light_time_level+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___lmul)),w
	movlb 3	; select bank3
	movwf	(_light_time_level+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___lmul)),w
	movlb 3	; select bank3
	movwf	(_light_time_level)^0180h

	line	411
	
l16640:	
;ird_remote.c: 412: {
;ird_remote.c: 413: bt_volt_100 = (12.35/31.04)*1000;
	movlb 1	; select bank1
	decf	(_volt_id)^080h,w
	skipz
	goto	u9561
	goto	u9560
u9561:
	goto	l16650
u9560:
	line	415
	
l16642:	
;ird_remote.c: 415: bt_volt_80 = (11.80/31.04)*1000;
	movlw	0x43
	movlb 4	; select bank4
	movwf	(_bt_volt_80+3)^0200h
	movlw	0xbe
	movwf	(_bt_volt_80+2)^0200h
	movlw	0x13
	movwf	(_bt_volt_80+1)^0200h
	movlw	0xcb
	movwf	(_bt_volt_80)^0200h

	line	417
;ird_remote.c: 417: bt_volt_60 = (11.30/31.04)*1000;
	movlw	0x43
	movwf	(_bt_volt_60+3)^0200h
	movlw	0xb6
	movwf	(_bt_volt_60+2)^0200h
	movlw	0x5
	movwf	(_bt_volt_60+1)^0200h
	movlw	0xf0
	movwf	(_bt_volt_60)^0200h

	line	419
;ird_remote.c: 419: bt_volt_40 = (10.80/31.04)*1000;
	movlw	0x43
	movwf	(_bt_volt_40+3)^0200h
	movlw	0xad
	movwf	(_bt_volt_40+2)^0200h
	movlw	0xf8
	movwf	(_bt_volt_40+1)^0200h
	movlw	0x15
	movwf	(_bt_volt_40)^0200h

	line	421
;ird_remote.c: 421: bt_volt_20 = (10.30/31.04)*1000;
	movlw	0x43
	movwf	(_bt_volt_20+3)^0200h
	movlw	0xa5
	movwf	(_bt_volt_20+2)^0200h
	movlw	0xea
	movwf	(_bt_volt_20+1)^0200h
	movlw	0x3a
	movwf	(_bt_volt_20)^0200h

	line	423
;ird_remote.c: 423: bt_volt_00 = (9.00/31.04)*1000;
	movlw	0x43
	movwf	(_bt_volt_00+3)^0200h
	movlw	0x90
	movwf	(_bt_volt_00+2)^0200h
	movlw	0xf9
	movwf	(_bt_volt_00+1)^0200h
	movlw	0x67
	movwf	(_bt_volt_00)^0200h

	line	426
;ird_remote.c: 426: dianchi_guoya_baohu = (12.35/31.04)*1000;
	movlw	0x43
	movlb 2	; select bank2
	movwf	(_dianchi_guoya_baohu+3)^0100h
	movlw	0xc6
	movwf	(_dianchi_guoya_baohu+2)^0100h
	movlw	0xef
	movwf	(_dianchi_guoya_baohu+1)^0100h
	movlw	0xd6
	movwf	(_dianchi_guoya_baohu)^0100h

	line	428
;ird_remote.c: 428: dianchi_guoya_huifu = (12.15/31.04)*1000;
	movlw	0x43
	movlb 3	; select bank3
	movwf	(_dianchi_guoya_huifu+3)^0180h
	movlw	0xc3
	movwf	(_dianchi_guoya_huifu+2)^0180h
	movlw	0xb7
	movwf	(_dianchi_guoya_huifu+1)^0180h
	movlw	0x18
	movwf	(_dianchi_guoya_huifu)^0180h

	line	430
;ird_remote.c: 430: dianchi_qianya_baohu = (9.00/31.04)*1000;
	movlw	0x43
	movlb 5	; select bank5
	movwf	(_dianchi_qianya_baohu+3)^0280h
	movlw	0x90
	movwf	(_dianchi_qianya_baohu+2)^0280h
	movlw	0xf9
	movwf	(_dianchi_qianya_baohu+1)^0280h
	movlw	0x67
	movwf	(_dianchi_qianya_baohu)^0280h

	line	432
;ird_remote.c: 432: dianchi_qianya_huifu = (9.50/31.04)*1000;
	movlw	0x43
	movwf	(_dianchi_qianya_huifu+3)^0280h
	movlw	0x99
	movwf	(_dianchi_qianya_huifu+2)^0280h
	movlw	0x7
	movwf	(_dianchi_qianya_huifu+1)^0280h
	movlw	0x42
	movwf	(_dianchi_qianya_huifu)^0280h

	line	434
;ird_remote.c: 434: dianchi_cv_level = (12.20/31.04)*1000;
	movlw	0x43
	movlb 3	; select bank3
	movwf	(_dianchi_cv_level+3)^0180h
	movlw	0xc4
	movwf	(_dianchi_cv_level+2)^0180h
	movlw	0x85
	movwf	(_dianchi_cv_level+1)^0180h
	movlw	0x47
	movwf	(_dianchi_cv_level)^0180h

	line	436
;ird_remote.c: 436: charge_i_limit = 5.00*15.0;
	movlw	0x42
	movlb 5	; select bank5
	movwf	(_charge_i_limit+3)^0280h
	movlw	0x96
	movwf	(_charge_i_limit+2)^0280h
	movlw	0x0
	movwf	(_charge_i_limit+1)^0280h
	movlw	0x0
	movwf	(_charge_i_limit)^0280h

	line	438
;ird_remote.c: 438: shuchu_shortout_voltage = (7.50/61)*1000;
	movlw	0x42
	movlb 3	; select bank3
	movwf	(_shuchu_shortout_voltage+3)^0180h
	movlw	0xf5
	movwf	(_shuchu_shortout_voltage+2)^0180h
	movlw	0xe6
	movwf	(_shuchu_shortout_voltage+1)^0180h
	movlw	0xd2
	movwf	(_shuchu_shortout_voltage)^0180h

	line	440
;ird_remote.c: 440: shuchu_open_voltage = (61.00/61)*1000;
	movlw	0x44
	movlb 5	; select bank5
	movwf	(_shuchu_open_voltage+3)^0280h
	movlw	0x7a
	movwf	(_shuchu_open_voltage+2)^0280h
	movlw	0x0
	movwf	(_shuchu_open_voltage+1)^0280h
	movlw	0x0
	movwf	(_shuchu_open_voltage)^0280h

	line	442
;ird_remote.c: 442: discharge_i_baohu = 4.50*160;
	movlw	0x44
	movwf	(_discharge_i_baohu+3)^0280h
	movlw	0x34
	movwf	(_discharge_i_baohu+2)^0280h
	movlw	0x0
	movwf	(_discharge_i_baohu+1)^0280h
	movlw	0x0
	movwf	(_discharge_i_baohu)^0280h

	line	444
;ird_remote.c: 444: discharge_i_limit = 4.00*160;
	movlw	0x44
	movwf	(_discharge_i_limit+3)^0280h
	movlw	0x20
	movwf	(_discharge_i_limit+2)^0280h
	movlw	0x0
	movwf	(_discharge_i_limit+1)^0280h
	movlw	0x0
	movwf	(_discharge_i_limit)^0280h

	line	446
	
l16644:	
;ird_remote.c: 446: light_on_pv_level = (light_pv*10)/61;
	movlw	0x42
	movlb 0	; select bank0
	movwf	(___fldiv@f2+3)
	movlw	0x74
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	movlw	0x41
	movwf	(___flmul@f1+3)
	movlw	0x20
	movwf	(___flmul@f1+2)
	movlw	0x0
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	movlb 1	; select bank1
	movf	(_light_pv+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 1	; select bank1
	movf	(_light_pv+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 1	; select bank1
	movf	(_light_pv+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 1	; select bank1
	movf	(_light_pv)^080h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___fldiv@f1+3)
	movf	(2+(?___flmul)),w
	movwf	(___fldiv@f1+2)
	movf	(1+(?___flmul)),w
	movwf	(___fldiv@f1+1)
	movf	(0+(?___flmul)),w
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movlb 5	; select bank5
	movwf	(_light_on_pv_level+3)^0280h
	movlb 0	; select bank0
	movf	(2+(?___fldiv)),w
	movlb 5	; select bank5
	movwf	(_light_on_pv_level+2)^0280h
	movlb 0	; select bank0
	movf	(1+(?___fldiv)),w
	movlb 5	; select bank5
	movwf	(_light_on_pv_level+1)^0280h
	movlb 0	; select bank0
	movf	(0+(?___fldiv)),w
	movlb 5	; select bank5
	movwf	(_light_on_pv_level)^0280h

	line	448
	
l16646:	
;ird_remote.c: 448: light_off_pv_level = (10.0/61)*1000;
	movlw	0x43
	movwf	(_light_off_pv_level+3)^0280h
	movlw	0x23
	movwf	(_light_off_pv_level+2)^0280h
	movlw	0xef
	movwf	(_light_off_pv_level+1)^0280h
	movlw	0x37
	movwf	(_light_off_pv_level)^0280h

	line	450
	
l16648:	
;ird_remote.c: 450: Load_Pmax=64.00;
	movlw	0x42
	movwf	(_Load_Pmax+3)^0280h
	movlw	0x80
	movwf	(_Load_Pmax+2)^0280h
	movlw	0x0
	movwf	(_Load_Pmax+1)^0280h
	movlw	0x0
	movwf	(_Load_Pmax)^0280h

	line	452
;ird_remote.c: 452: }
	goto	l510
	line	453
	
l16650:	
	line	455
	
l16652:	
;ird_remote.c: 454: {
;ird_remote.c: 455: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	462
;ird_remote.c: 456: }
	
l510:	
	return
	opt stack 0
GLOBAL	__end_of_read_param_eeprom
	__end_of_read_param_eeprom:
	signat	_read_param_eeprom,88
	global	___lmul

;; *************** function ___lmul *****************
;; Defined at:
;;		line 2 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    3[BANK0 ] unsigned long 
;;  multiplicand    4    7[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4   11[BANK0 ] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    3[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      12       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_read_param_eeprom
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lmul.c"
	line	2
global __ptext3
__ptext3:	;psect for function ___lmul
psect	text3
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lmul.c"
	line	2
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
;incstack = 0
	opt	stack 11
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	4
	
l15480:	
	clrf	(___lmul@product)
	clrf	(___lmul@product+1)
	clrf	(___lmul@product+2)
	clrf	(___lmul@product+3)
	line	6
	
l2277:	
	line	7
	btfss	(___lmul@multiplier),(0)&7
	goto	u8611
	goto	u8610
u8611:
	goto	l15484
u8610:
	line	8
	
l15482:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	addwfc	(___lmul@product+1),f
	movf	(___lmul@multiplicand+2),w
	addwfc	(___lmul@product+2),f
	movf	(___lmul@multiplicand+3),w
	addwfc	(___lmul@product+3),f
	line	9
	
l15484:	
	lslf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	line	10
	
l15486:	
	lsrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	line	11
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u8621
	goto	u8620
u8621:
	goto	l2277
u8620:
	line	12
	
l15488:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	line	13
	
l2280:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	_auto_system

;; *************** function _auto_system *****************
;; Defined at:
;;		line 471 in file "D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  sys_bt_volta    4   70[BANK0 ] float 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/2
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___fldiv
;;		___flge
;;		___flmul
;;		___lwtofl
;;		_delay_ms
;;		_eeprom_read
;;		_eeprom_write
;;		_start_ad_convert
;; This function is called by:
;;		_middle_init
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	471
global __ptext4
__ptext4:	;psect for function _auto_system
psect	text4
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	471
	global	__size_of_auto_system
	__size_of_auto_system	equ	__end_of_auto_system-_auto_system
	
_auto_system:	
;incstack = 0
	opt	stack 10
; Regs used in _auto_system: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	475
	
l16654:	
;ird_remote.c: 473: float sys_bt_voltage;
;ird_remote.c: 475: delay_ms(100);
	movlw	064h
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	478
;ird_remote.c: 478: bt_id=eeprom_read(0x0a);
	movlw	(0Ah)
	fcall	_eeprom_read
	movlb 1	; select bank1
	movwf	(_bt_id)^080h
	line	481
	
l16656:	
	line	483
	
l16658:	
;ird_remote.c: 483: battery_voltage_value=start_ad_convert(0b01100);
	movlw	(0Ch)
	fcall	_start_ad_convert
	movf	(1+(?_start_ad_convert)),w
	movwf	(_battery_voltage_value+1)
	movf	(0+(?_start_ad_convert)),w
	movwf	(_battery_voltage_value)
	line	485
	
l16660:	
;ird_remote.c: 485: sys_bt_voltage=(((float)battery_voltage_value)/1000)*31.04;
	movlw	0x41
	movwf	(___flmul@f1+3)
	movlw	0xf8
	movwf	(___flmul@f1+2)
	movlw	0x51
	movwf	(___flmul@f1+1)
	movlw	0xec
	movwf	(___flmul@f1)

	movlw	0x44
	movwf	(___fldiv@f2+3)
	movlw	0x7a
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___fldiv@f1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___fldiv@f1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___fldiv@f1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	(___flmul@f2+3)
	movf	(2+(?___fldiv)),w
	movwf	(___flmul@f2+2)
	movf	(1+(?___fldiv)),w
	movwf	(___flmul@f2+1)
	movf	(0+(?___fldiv)),w
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(auto_system@sys_bt_voltage+3)
	movf	(2+(?___flmul)),w
	movwf	(auto_system@sys_bt_voltage+2)
	movf	(1+(?___flmul)),w
	movwf	(auto_system@sys_bt_voltage+1)
	movf	(0+(?___flmul)),w
	movwf	(auto_system@sys_bt_voltage)

	line	487
	
l16662:	
;ird_remote.c: 487: if(bt_id==0x01)
	movlb 1	; select bank1
	decf	(_bt_id)^080h,w
	skipz
	goto	u9571
	goto	u9570
u9571:
	goto	l16672
u9570:
	line	489
	
l16664:	
;ird_remote.c: 488: {
;ird_remote.c: 489: if((sys_bt_voltage>=7.5)&&(sys_bt_voltage<=12.6))
	movlb 0	; select bank0
	movf	(auto_system@sys_bt_voltage+3),w
	movwf	(___flge@ff1+3)
	movf	(auto_system@sys_bt_voltage+2),w
	movwf	(___flge@ff1+2)
	movf	(auto_system@sys_bt_voltage+1),w
	movwf	(___flge@ff1+1)
	movf	(auto_system@sys_bt_voltage),w
	movwf	(___flge@ff1)

	movlw	0x40
	movwf	(___flge@ff2+3)
	movlw	0xf0
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u9581
	goto	u9580
u9581:
	goto	l514
u9580:
	
l16666:	
	movlw	0x41
	movwf	(___flge@ff1+3)
	movlw	0x49
	movwf	(___flge@ff1+2)
	movlw	0x99
	movwf	(___flge@ff1+1)
	movlw	0x9a
	movwf	(___flge@ff1)

	movf	(auto_system@sys_bt_voltage+3),w
	movwf	(___flge@ff2+3)
	movf	(auto_system@sys_bt_voltage+2),w
	movwf	(___flge@ff2+2)
	movf	(auto_system@sys_bt_voltage+1),w
	movwf	(___flge@ff2+1)
	movf	(auto_system@sys_bt_voltage),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u9591
	goto	u9590
u9591:
	goto	l514
u9590:
	line	491
	
l16668:	
;ird_remote.c: 490: {
;ird_remote.c: 491: volt_id=0x01;
	movlb 1	; select bank1
	clrf	(_volt_id)^080h
	incf	(_volt_id)^080h,f
	line	493
	
l16670:	
;ird_remote.c: 493: eeprom_write(0x09,volt_id);
	movf	(_volt_id)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(09h)
	fcall	_eeprom_write
	line	494
;ird_remote.c: 494: }
	goto	l523
	line	495
	
l514:	
	line	497
;ird_remote.c: 495: else
;ird_remote.c: 496: {
;ird_remote.c: 497: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	goto	l523
	line	500
	
l16672:	
;ird_remote.c: 500: else if(bt_id==0x02)
	movf	(_bt_id)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u9601
	goto	u9600
u9601:
	goto	l16682
u9600:
	line	502
	
l16674:	
;ird_remote.c: 501: {
;ird_remote.c: 502: if((sys_bt_voltage>=7.5)&&(sys_bt_voltage<=12.6))
	movlb 0	; select bank0
	movf	(auto_system@sys_bt_voltage+3),w
	movwf	(___flge@ff1+3)
	movf	(auto_system@sys_bt_voltage+2),w
	movwf	(___flge@ff1+2)
	movf	(auto_system@sys_bt_voltage+1),w
	movwf	(___flge@ff1+1)
	movf	(auto_system@sys_bt_voltage),w
	movwf	(___flge@ff1)

	movlw	0x40
	movwf	(___flge@ff2+3)
	movlw	0xf0
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u9611
	goto	u9610
u9611:
	goto	l514
u9610:
	
l16676:	
	movlw	0x41
	movwf	(___flge@ff1+3)
	movlw	0x49
	movwf	(___flge@ff1+2)
	movlw	0x99
	movwf	(___flge@ff1+1)
	movlw	0x9a
	movwf	(___flge@ff1)

	movf	(auto_system@sys_bt_voltage+3),w
	movwf	(___flge@ff2+3)
	movf	(auto_system@sys_bt_voltage+2),w
	movwf	(___flge@ff2+2)
	movf	(auto_system@sys_bt_voltage+1),w
	movwf	(___flge@ff2+1)
	movf	(auto_system@sys_bt_voltage),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u9621
	goto	u9620
u9621:
	goto	l514
u9620:
	line	504
	
l16678:	
;ird_remote.c: 503: {
;ird_remote.c: 504: volt_id=0x01;
	movlb 1	; select bank1
	clrf	(_volt_id)^080h
	incf	(_volt_id)^080h,f
	line	506
	
l16680:	
;ird_remote.c: 506: eeprom_write(0x09,volt_id);
	movf	(_volt_id)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(09h)
	fcall	_eeprom_write
	line	507
;ird_remote.c: 507: }
	goto	l523
	line	515
	
l16682:	
;ird_remote.c: 513: else
;ird_remote.c: 514: {
;ird_remote.c: 515: if((sys_bt_voltage>=7.5)&&(sys_bt_voltage<=12.6))
	movlb 0	; select bank0
	movf	(auto_system@sys_bt_voltage+3),w
	movwf	(___flge@ff1+3)
	movf	(auto_system@sys_bt_voltage+2),w
	movwf	(___flge@ff1+2)
	movf	(auto_system@sys_bt_voltage+1),w
	movwf	(___flge@ff1+1)
	movf	(auto_system@sys_bt_voltage),w
	movwf	(___flge@ff1)

	movlw	0x40
	movwf	(___flge@ff2+3)
	movlw	0xf0
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u9631
	goto	u9630
u9631:
	goto	l514
u9630:
	
l16684:	
	movlw	0x41
	movwf	(___flge@ff1+3)
	movlw	0x49
	movwf	(___flge@ff1+2)
	movlw	0x99
	movwf	(___flge@ff1+1)
	movlw	0x9a
	movwf	(___flge@ff1)

	movf	(auto_system@sys_bt_voltage+3),w
	movwf	(___flge@ff2+3)
	movf	(auto_system@sys_bt_voltage+2),w
	movwf	(___flge@ff2+2)
	movf	(auto_system@sys_bt_voltage+1),w
	movwf	(___flge@ff2+1)
	movf	(auto_system@sys_bt_voltage),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u9641
	goto	u9640
u9641:
	goto	l514
u9640:
	line	517
	
l16686:	
;ird_remote.c: 516: {
;ird_remote.c: 517: volt_id=0x01;
	movlb 1	; select bank1
	clrf	(_volt_id)^080h
	incf	(_volt_id)^080h,f
	line	519
	
l16688:	
;ird_remote.c: 519: eeprom_write(0x09,volt_id);
	movf	(_volt_id)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(09h)
	fcall	_eeprom_write
	line	529
;ird_remote.c: 520: }
	
l523:	
	return
	opt stack 0
GLOBAL	__end_of_auto_system
	__end_of_auto_system:
	signat	_auto_system,88
	global	_handle_uart_rx_buf

;; *************** function _handle_uart_rx_buf *****************
;; Defined at:
;;		line 232 in file "D:\MCUProject\ZH-SL-F60\src\uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  crc_in          2   70[BANK0 ] unsigned int 
;;  byte_l          1    0        unsigned char 
;;  byte_h          1    0        unsigned char 
;;  i               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/2
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Disable_Bost_Pwm
;;		_Disable_Buck_Pwm
;;		_Enable_Bost_Pwm
;;		_Set_Bost_Pwm_Duty
;;		_Set_Buck_Pwm_Duty
;;		___awtofl
;;		___fldiv
;;		___flge
;;		___flmul
;;		___fltol
;;		___lbtofl
;;		___lwtofl
;;		___wmul
;;		_crc16
;;		_delay_ms
;;		_eeprom_read
;;		_eeprom_write
;;		_memset
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-F60\src\uart.c"
	line	232
global __ptext5
__ptext5:	;psect for function _handle_uart_rx_buf
psect	text5
	file	"D:\MCUProject\ZH-SL-F60\src\uart.c"
	line	232
	global	__size_of_handle_uart_rx_buf
	__size_of_handle_uart_rx_buf	equ	__end_of_handle_uart_rx_buf-_handle_uart_rx_buf
	
_handle_uart_rx_buf:	
;incstack = 0
	opt	stack 11
; Regs used in _handle_uart_rx_buf: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	240
	
l18254:	
;uart.c: 236: unsigned int crc_in;
;uart.c: 238: unsigned char byte_h,byte_l;
;uart.c: 240: switch(rx_frame_kind)
	goto	l18630
	line	243
	
l18256:	
;uart.c: 243: if(uart1_rx_buf[1]==0xA1)
	movlb 8	; select bank8
	movf	0+(_uart1_rx_buf)^0400h+01h,w
	xorlw	0A1h&0ffh
	skipz
	goto	u11871
	goto	u11870
u11871:
	goto	l18632
u11870:
	line	245
	
l18258:	
;uart.c: 244: {
;uart.c: 245: crc_in=crc16(&uart1_rx_buf[1],1);
	movlw	low(_uart1_rx_buf+01h)
	movlb 0	; select bank0
	movwf	(crc16@puchMsg)
	movlw	high(_uart1_rx_buf+01h)
	movwf	(crc16@puchMsg+1)
	clrf	(crc16@usDataLen)
	incf	(crc16@usDataLen),f
	fcall	_crc16
	movf	(1+(?_crc16)),w
	movwf	(handle_uart_rx_buf@crc_in+1)
	movf	(0+(?_crc16)),w
	movwf	(handle_uart_rx_buf@crc_in)
	line	247
	
l18260:	
;uart.c: 247: if(crc_in==( (uart1_rx_buf[2]<<8) | uart1_rx_buf[3]) )
	movf	(handle_uart_rx_buf@crc_in+1),w
	movlb 8	; select bank8
	xorwf	0+(_uart1_rx_buf)^0400h+02h,w
	skipz
	goto	u11885
	movlb 0	; select bank0
	movf	(handle_uart_rx_buf@crc_in),w
	movlb 8	; select bank8
	xorwf	0+(_uart1_rx_buf)^0400h+03h,w
u11885:

	skipz
	goto	u11881
	goto	u11880
u11881:
	goto	l18632
u11880:
	line	250
	
l18262:	
;uart.c: 248: {
;uart.c: 250: p_v=(float)(((float)pv_voltage_value)/10)*61;
	movlw	0x42
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0x74
	movwf	(___flmul@f1+2)
	movlw	0x0
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	movlw	0x41
	movwf	(___fldiv@f2+3)
	movlw	0x20
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	movlb 1	; select bank1
	movf	(_pv_voltage_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c+1)
	movlb 1	; select bank1
	movf	(_pv_voltage_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___fldiv@f1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___fldiv@f1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___fldiv@f1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	(___flmul@f2+3)
	movf	(2+(?___fldiv)),w
	movwf	(___flmul@f2+2)
	movf	(1+(?___fldiv)),w
	movwf	(___flmul@f2+1)
	movf	(0+(?___fldiv)),w
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 4	; select bank4
	movwf	(_p_v+3)^0200h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 4	; select bank4
	movwf	(_p_v+2)^0200h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 4	; select bank4
	movwf	(_p_v+1)^0200h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 4	; select bank4
	movwf	(_p_v)^0200h

	line	252
;uart.c: 252: b_v=(float)(((float)battery_voltage_value)/10)*31.04;
	movlw	0x41
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0xf8
	movwf	(___flmul@f1+2)
	movlw	0x51
	movwf	(___flmul@f1+1)
	movlw	0xec
	movwf	(___flmul@f1)

	movlw	0x41
	movwf	(___fldiv@f2+3)
	movlw	0x20
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___fldiv@f1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___fldiv@f1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___fldiv@f1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	(___flmul@f2+3)
	movf	(2+(?___fldiv)),w
	movwf	(___flmul@f2+2)
	movf	(1+(?___fldiv)),w
	movwf	(___flmul@f2+1)
	movf	(0+(?___fldiv)),w
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 2	; select bank2
	movwf	(_b_v+3)^0100h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 2	; select bank2
	movwf	(_b_v+2)^0100h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 2	; select bank2
	movwf	(_b_v+1)^0100h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 2	; select bank2
	movwf	(_b_v)^0100h

	line	254
;uart.c: 254: load_v=(float)(((float)load_voltage_value)/10)*61;
	movlw	0x42
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0x74
	movwf	(___flmul@f1+2)
	movlw	0x0
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	movlw	0x41
	movwf	(___fldiv@f2+3)
	movlw	0x20
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	movlb 1	; select bank1
	movf	(_load_voltage_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c+1)
	movlb 1	; select bank1
	movf	(_load_voltage_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___fldiv@f1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___fldiv@f1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___fldiv@f1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	(___flmul@f2+3)
	movf	(2+(?___fldiv)),w
	movwf	(___flmul@f2+2)
	movf	(1+(?___fldiv)),w
	movwf	(___flmul@f2+1)
	movf	(0+(?___fldiv)),w
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 4	; select bank4
	movwf	(_load_v+3)^0200h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 4	; select bank4
	movwf	(_load_v+2)^0200h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 4	; select bank4
	movwf	(_load_v+1)^0200h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 4	; select bank4
	movwf	(_load_v)^0200h

	line	256
;uart.c: 256: charge_I=((float)charge_current_value)/0.15;
	movlw	0x3e
	movlb 0	; select bank0
	movwf	(___fldiv@f2+3)
	movlw	0x19
	movwf	(___fldiv@f2+2)
	movlw	0x99
	movwf	(___fldiv@f2+1)
	movlw	0x9a
	movwf	(___fldiv@f2)

	movlb 2	; select bank2
	movf	(_charge_current_value+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c+1)
	movlb 2	; select bank2
	movf	(_charge_current_value)^0100h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___fldiv@f1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___fldiv@f1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___fldiv@f1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movlb 4	; select bank4
	movwf	(_charge_I+3)^0200h
	movlb 0	; select bank0
	movf	(2+(?___fldiv)),w
	movlb 4	; select bank4
	movwf	(_charge_I+2)^0200h
	movlb 0	; select bank0
	movf	(1+(?___fldiv)),w
	movlb 4	; select bank4
	movwf	(_charge_I+1)^0200h
	movlb 0	; select bank0
	movf	(0+(?___fldiv)),w
	movlb 4	; select bank4
	movwf	(_charge_I)^0200h

	line	258
;uart.c: 258: load_I=((float)discharge_current_value)/1.6;
	movlw	0x3f
	movlb 0	; select bank0
	movwf	(___fldiv@f2+3)
	movlw	0xcc
	movwf	(___fldiv@f2+2)
	movlw	0xcc
	movwf	(___fldiv@f2+1)
	movlw	0xcd
	movwf	(___fldiv@f2)

	movlb 1	; select bank1
	movf	(_discharge_current_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c+1)
	movlb 1	; select bank1
	movf	(_discharge_current_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___fldiv@f1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___fldiv@f1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___fldiv@f1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movlb 4	; select bank4
	movwf	(_load_I+3)^0200h
	movlb 0	; select bank0
	movf	(2+(?___fldiv)),w
	movlb 4	; select bank4
	movwf	(_load_I+2)^0200h
	movlb 0	; select bank0
	movf	(1+(?___fldiv)),w
	movlb 4	; select bank4
	movwf	(_load_I+1)^0200h
	movlb 0	; select bank0
	movf	(0+(?___fldiv)),w
	movlb 4	; select bank4
	movwf	(_load_I)^0200h

	line	260
	
l18264:	
;uart.c: 260: sys_mode=(volt_id<<4)|system_status;
	movlb 1	; select bank1
	swapf	(_volt_id)^080h,w
	andlw	(0ffh shl 4) & 0ffh
	iorwf	(_system_status)^080h,w
	movlb 3	; select bank3
	movwf	(_sys_mode)^0180h
	line	264
	
l18266:	
;uart.c: 264: uart1_tx_buf[0]=0x55;
	movlw	(055h)
	movlb 7	; select bank7
	movwf	(_uart1_tx_buf)^0380h
	line	266
	
l18268:	
;uart.c: 266: uart1_tx_buf[1]=0xB1;
	movlw	(0B1h)
	movwf	0+(_uart1_tx_buf)^0380h+01h
	line	268
	
l18270:	
;uart.c: 268: uart1_tx_buf[2]=(unsigned char )(p_v/256);
	movlb 4	; select bank4
	movf	(_p_v+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+3)
	movlb 4	; select bank4
	movf	(_p_v+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+2)
	movlb 4	; select bank4
	movf	(_p_v+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+1)
	movlb 4	; select bank4
	movf	(_p_v)^0200h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1)

	movlw	0x43
	movwf	(___fldiv@f2+3)
	movlw	0x80
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	(___fltol@f1+3)
	movf	(2+(?___fldiv)),w
	movwf	(___fltol@f1+2)
	movf	(1+(?___fldiv)),w
	movwf	(___fltol@f1+1)
	movf	(0+(?___fldiv)),w
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+02h
	line	269
	
l18272:	
;uart.c: 269: uart1_tx_buf[3]=(unsigned char )p_v;
	movlb 4	; select bank4
	movf	(_p_v+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+3)
	movlb 4	; select bank4
	movf	(_p_v+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+2)
	movlb 4	; select bank4
	movf	(_p_v+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+1)
	movlb 4	; select bank4
	movf	(_p_v)^0200h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+03h
	line	271
	
l18274:	
;uart.c: 271: uart1_tx_buf[4]=(unsigned char )(b_v/256);
	movlb 2	; select bank2
	movf	(_b_v+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+3)
	movlb 2	; select bank2
	movf	(_b_v+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+2)
	movlb 2	; select bank2
	movf	(_b_v+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+1)
	movlb 2	; select bank2
	movf	(_b_v)^0100h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1)

	movlw	0x43
	movwf	(___fldiv@f2+3)
	movlw	0x80
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	(___fltol@f1+3)
	movf	(2+(?___fldiv)),w
	movwf	(___fltol@f1+2)
	movf	(1+(?___fldiv)),w
	movwf	(___fltol@f1+1)
	movf	(0+(?___fldiv)),w
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+04h
	line	272
	
l18276:	
;uart.c: 272: uart1_tx_buf[5]=(unsigned char )b_v;
	movlb 2	; select bank2
	movf	(_b_v+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+3)
	movlb 2	; select bank2
	movf	(_b_v+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+2)
	movlb 2	; select bank2
	movf	(_b_v+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+1)
	movlb 2	; select bank2
	movf	(_b_v)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+05h
	line	274
	
l18278:	
;uart.c: 274: uart1_tx_buf[6]=(unsigned char )(load_v/256);
	movlb 4	; select bank4
	movf	(_load_v+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+3)
	movlb 4	; select bank4
	movf	(_load_v+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+2)
	movlb 4	; select bank4
	movf	(_load_v+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+1)
	movlb 4	; select bank4
	movf	(_load_v)^0200h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1)

	movlw	0x43
	movwf	(___fldiv@f2+3)
	movlw	0x80
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	(___fltol@f1+3)
	movf	(2+(?___fldiv)),w
	movwf	(___fltol@f1+2)
	movf	(1+(?___fldiv)),w
	movwf	(___fltol@f1+1)
	movf	(0+(?___fldiv)),w
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+06h
	line	275
	
l18280:	
;uart.c: 275: uart1_tx_buf[7]=(unsigned char )load_v;
	movlb 4	; select bank4
	movf	(_load_v+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+3)
	movlb 4	; select bank4
	movf	(_load_v+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+2)
	movlb 4	; select bank4
	movf	(_load_v+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+1)
	movlb 4	; select bank4
	movf	(_load_v)^0200h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+07h
	line	277
	
l18282:	
;uart.c: 277: uart1_tx_buf[8]=(unsigned char )(charge_I/256);
	movlb 4	; select bank4
	movf	(_charge_I+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+3)
	movlb 4	; select bank4
	movf	(_charge_I+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+2)
	movlb 4	; select bank4
	movf	(_charge_I+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+1)
	movlb 4	; select bank4
	movf	(_charge_I)^0200h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1)

	movlw	0x43
	movwf	(___fldiv@f2+3)
	movlw	0x80
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	(___fltol@f1+3)
	movf	(2+(?___fldiv)),w
	movwf	(___fltol@f1+2)
	movf	(1+(?___fldiv)),w
	movwf	(___fltol@f1+1)
	movf	(0+(?___fldiv)),w
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+08h
	line	278
	
l18284:	
;uart.c: 278: uart1_tx_buf[9]=(unsigned char )charge_I;
	movlb 4	; select bank4
	movf	(_charge_I+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+3)
	movlb 4	; select bank4
	movf	(_charge_I+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+2)
	movlb 4	; select bank4
	movf	(_charge_I+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+1)
	movlb 4	; select bank4
	movf	(_charge_I)^0200h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+09h
	line	280
	
l18286:	
;uart.c: 280: uart1_tx_buf[10]=(unsigned char )(load_I/256);
	movlb 4	; select bank4
	movf	(_load_I+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+3)
	movlb 4	; select bank4
	movf	(_load_I+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+2)
	movlb 4	; select bank4
	movf	(_load_I+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+1)
	movlb 4	; select bank4
	movf	(_load_I)^0200h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1)

	movlw	0x43
	movwf	(___fldiv@f2+3)
	movlw	0x80
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	(___fltol@f1+3)
	movf	(2+(?___fldiv)),w
	movwf	(___fltol@f1+2)
	movf	(1+(?___fldiv)),w
	movwf	(___fltol@f1+1)
	movf	(0+(?___fldiv)),w
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+0Ah
	line	281
	
l18288:	
;uart.c: 281: uart1_tx_buf[11]=(unsigned char )load_I;
	movlb 4	; select bank4
	movf	(_load_I+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+3)
	movlb 4	; select bank4
	movf	(_load_I+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+2)
	movlb 4	; select bank4
	movf	(_load_I+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+1)
	movlb 4	; select bank4
	movf	(_load_I)^0200h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+0Bh
	line	283
	
l18290:	
;uart.c: 283: uart1_tx_buf[12]=(unsigned char )sys_mode;
	movlb 3	; select bank3
	movf	(_sys_mode)^0180h,w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+0Ch
	line	285
	
l18292:	
;uart.c: 285: uart1_tx_buf[13]=(unsigned char )(mcu_value/256);
	movlb 1	; select bank1
	movf	(_mcu_value+1)^080h,w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+0Dh
	line	287
	
l18294:	
;uart.c: 287: uart1_tx_buf[14]=(unsigned char )(mcu_value);
	movlb 1	; select bank1
	movf	(_mcu_value)^080h,w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+0Eh
	line	289
	
l18296:	
;uart.c: 289: uart1_tx_buf[15]=(unsigned char )(discharge_current_value/256);
	movlb 1	; select bank1
	movf	(_discharge_current_value+1)^080h,w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+0Fh
	line	291
	
l18298:	
;uart.c: 291: uart1_tx_buf[16]=(unsigned char )(discharge_current_value);
	movlb 1	; select bank1
	movf	(_discharge_current_value)^080h,w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+010h
	line	293
	
l18300:	
;uart.c: 293: uart1_tx_buf[17]=(unsigned char )(temperature_value/256);
	movlb 2	; select bank2
	movf	(_temperature_value+1)^0100h,w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+011h
	line	295
	
l18302:	
;uart.c: 295: uart1_tx_buf[18]=(unsigned char )(temperature_value);
	movlb 2	; select bank2
	movf	(_temperature_value)^0100h,w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+012h
	line	298
	
l18304:	
;uart.c: 298: uart1_tx_buf[19]=eeprom_read(0x12+4*( (today_index+8-0)%8 )+0 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	08h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+013h
	line	300
	
l18306:	
;uart.c: 300: uart1_tx_buf[20]=eeprom_read(0x12+4*( (today_index+8-0)%8 )+1 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	08h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+014h
	line	302
	
l18308:	
;uart.c: 302: uart1_tx_buf[21]=eeprom_read(0x12+4*( (today_index+8-0)%8 )+2 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	08h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+015h
	line	304
	
l18310:	
;uart.c: 304: uart1_tx_buf[22]=eeprom_read(0x12+4*( (today_index+8-0)%8 )+3 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	08h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+016h
	line	307
	
l18312:	
;uart.c: 307: uart1_tx_buf[23]=eeprom_read(0x12+4*( (today_index+8-1)%8 )+0 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	07h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+017h
	line	309
	
l18314:	
;uart.c: 309: uart1_tx_buf[24]=eeprom_read(0x12+4*( (today_index+8-1)%8 )+1 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	07h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+018h
	line	311
	
l18316:	
;uart.c: 311: uart1_tx_buf[25]=eeprom_read(0x12+4*( (today_index+8-1)%8 )+2 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	07h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+019h
	line	313
	
l18318:	
;uart.c: 313: uart1_tx_buf[26]=eeprom_read(0x12+4*( (today_index+8-1)%8 )+3 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	07h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+01Ah
	line	316
	
l18320:	
;uart.c: 316: uart1_tx_buf[27]=eeprom_read(0x12+4*( (today_index+8-2)%8 )+0 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	06h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+01Bh
	line	318
	
l18322:	
;uart.c: 318: uart1_tx_buf[28]=eeprom_read(0x12+4*( (today_index+8-2)%8 )+1 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	06h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+01Ch
	line	320
	
l18324:	
;uart.c: 320: uart1_tx_buf[29]=eeprom_read(0x12+4*( (today_index+8-2)%8 )+2 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	06h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+01Dh
	line	322
	
l18326:	
;uart.c: 322: uart1_tx_buf[30]=eeprom_read(0x12+4*( (today_index+8-2)%8 )+3 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	06h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+01Eh
	line	325
	
l18328:	
;uart.c: 325: uart1_tx_buf[31]=eeprom_read(0x12+4*( (today_index+8-3)%8 )+0 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	05h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+01Fh
	line	327
	
l18330:	
;uart.c: 327: uart1_tx_buf[32]=eeprom_read(0x12+4*( (today_index+8-3)%8 )+1 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	05h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+020h
	line	329
	
l18332:	
;uart.c: 329: uart1_tx_buf[33]=eeprom_read(0x12+4*( (today_index+8-3)%8 )+2 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	05h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+021h
	line	331
	
l18334:	
;uart.c: 331: uart1_tx_buf[34]=eeprom_read(0x12+4*( (today_index+8-3)%8 )+3 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	05h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+022h
	line	334
	
l18336:	
;uart.c: 334: uart1_tx_buf[35]=eeprom_read(0x12+4*( (today_index+8-4)%8 )+0 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	04h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+023h
	line	336
	
l18338:	
;uart.c: 336: uart1_tx_buf[36]=eeprom_read(0x12+4*( (today_index+8-4)%8 )+1 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	04h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+024h
	line	338
	
l18340:	
;uart.c: 338: uart1_tx_buf[37]=eeprom_read(0x12+4*( (today_index+8-4)%8 )+2 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	04h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+025h
	line	340
	
l18342:	
;uart.c: 340: uart1_tx_buf[38]=eeprom_read(0x12+4*( (today_index+8-4)%8 )+3 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	04h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+026h
	line	343
	
l18344:	
;uart.c: 343: uart1_tx_buf[39]=eeprom_read(0x12+4*( (today_index+8-5)%8 )+0 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	03h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+027h
	line	345
	
l18346:	
;uart.c: 345: uart1_tx_buf[40]=eeprom_read(0x12+4*( (today_index+8-5)%8 )+1 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	03h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+028h
	line	347
	
l18348:	
;uart.c: 347: uart1_tx_buf[41]=eeprom_read(0x12+4*( (today_index+8-5)%8 )+2 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	03h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+029h
	line	349
	
l18350:	
;uart.c: 349: uart1_tx_buf[42]=eeprom_read(0x12+4*( (today_index+8-5)%8 )+3 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	03h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+02Ah
	line	352
	
l18352:	
;uart.c: 352: uart1_tx_buf[43]=eeprom_read(0x12+4*( (today_index+8-6)%8 )+0 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	02h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+02Bh
	line	354
	
l18354:	
;uart.c: 354: uart1_tx_buf[44]=eeprom_read(0x12+4*( (today_index+8-6)%8 )+1 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	02h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+02Ch
	line	356
	
l18356:	
;uart.c: 356: uart1_tx_buf[45]=eeprom_read(0x12+4*( (today_index+8-6)%8 )+2 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	02h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+02Dh
	line	358
	
l18358:	
;uart.c: 358: uart1_tx_buf[46]=eeprom_read(0x12+4*( (today_index+8-6)%8 )+3 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	02h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+02Eh
	line	361
	
l18360:	
;uart.c: 361: uart1_tx_buf[47]=eeprom_read(0x12+4*( (today_index+8-7)%8 )+0 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	01h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+02Fh
	line	363
	
l18362:	
;uart.c: 363: uart1_tx_buf[48]=eeprom_read(0x12+4*( (today_index+8-7)%8 )+1 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	01h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+030h
	line	365
	
l18364:	
;uart.c: 365: uart1_tx_buf[49]=eeprom_read(0x12+4*( (today_index+8-7)%8 )+2 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	01h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+031h
	line	367
	
l18366:	
;uart.c: 367: uart1_tx_buf[50]=eeprom_read(0x12+4*( (today_index+8-7)%8 )+3 );
	movlb 0	; select bank0
	movf	(_today_index),w
	addlw	01h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_read
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+032h
	line	370
	
l18368:	
;uart.c: 370: crc_data=crc16(&uart1_tx_buf[1],50);
	movlw	low(_uart1_tx_buf+01h)
	movlb 0	; select bank0
	movwf	(crc16@puchMsg)
	movlw	high(_uart1_tx_buf+01h)
	movwf	(crc16@puchMsg+1)
	movlw	(032h)
	movwf	(crc16@usDataLen)
	fcall	_crc16
	movf	(1+(?_crc16)),w
	movlb 1	; select bank1
	movwf	(_crc_data+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_crc16)),w
	movlb 1	; select bank1
	movwf	(_crc_data)^080h
	line	372
	
l18370:	
;uart.c: 372: uart1_tx_buf[51]=crc_data/256;
	movf	(_crc_data+1)^080h,w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+033h
	line	373
	
l18372:	
;uart.c: 373: uart1_tx_buf[52]=crc_data%256;
	movlb 1	; select bank1
	movf	(_crc_data)^080h,w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+034h
	line	375
	
l18374:	
;uart.c: 375: uart1_tx_buf[53]=0xAA;
	movlw	(0AAh)
	movwf	0+(_uart1_tx_buf)^0380h+035h
	goto	l18632
	line	384
	
l18376:	
;uart.c: 384: if(uart1_rx_buf[1]==0xA2)
	movlb 8	; select bank8
	movf	0+(_uart1_rx_buf)^0400h+01h,w
	xorlw	0A2h&0ffh
	skipz
	goto	u11891
	goto	u11890
u11891:
	goto	l18632
u11890:
	line	386
	
l18378:	
;uart.c: 385: {
;uart.c: 386: crc_in=crc16(&uart1_rx_buf[1],1);
	movlw	low(_uart1_rx_buf+01h)
	movlb 0	; select bank0
	movwf	(crc16@puchMsg)
	movlw	high(_uart1_rx_buf+01h)
	movwf	(crc16@puchMsg+1)
	clrf	(crc16@usDataLen)
	incf	(crc16@usDataLen),f
	fcall	_crc16
	movf	(1+(?_crc16)),w
	movwf	(handle_uart_rx_buf@crc_in+1)
	movf	(0+(?_crc16)),w
	movwf	(handle_uart_rx_buf@crc_in)
	line	388
	
l18380:	
;uart.c: 388: if(crc_in==( (uart1_rx_buf[2]<<8) | uart1_rx_buf[3]) )
	movf	(handle_uart_rx_buf@crc_in+1),w
	movlb 8	; select bank8
	xorwf	0+(_uart1_rx_buf)^0400h+02h,w
	skipz
	goto	u11905
	movlb 0	; select bank0
	movf	(handle_uart_rx_buf@crc_in),w
	movlb 8	; select bank8
	xorwf	0+(_uart1_rx_buf)^0400h+03h,w
u11905:

	skipz
	goto	u11901
	goto	u11900
u11901:
	goto	l18632
u11900:
	line	392
	
l18382:	
;uart.c: 389: {
;uart.c: 392: uart1_tx_buf[0]=0x55;
	movlw	(055h)
	movlb 7	; select bank7
	movwf	(_uart1_tx_buf)^0380h
	line	394
;uart.c: 394: uart1_tx_buf[1]=0xB2;
	movlw	(0B2h)
	movwf	0+(_uart1_tx_buf)^0380h+01h
	line	396
	
l18384:	
;uart.c: 396: uart1_tx_buf[2] =(unsigned char )(light_pv/256);
	movlb 1	; select bank1
	movf	(_light_pv+3)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+3)
	movlb 1	; select bank1
	movf	(_light_pv+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+2)
	movlb 1	; select bank1
	movf	(_light_pv+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+1)
	movlb 1	; select bank1
	movf	(_light_pv)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1)

	movlw	0x43
	movwf	(___fldiv@f2+3)
	movlw	0x80
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	(___fltol@f1+3)
	movf	(2+(?___fldiv)),w
	movwf	(___fltol@f1+2)
	movf	(1+(?___fldiv)),w
	movwf	(___fltol@f1+1)
	movf	(0+(?___fldiv)),w
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+02h
	line	398
	
l18386:	
;uart.c: 398: uart1_tx_buf[3] =(unsigned char )light_pv;
	movlb 1	; select bank1
	movf	(_light_pv+3)^080h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+3)
	movlb 1	; select bank1
	movf	(_light_pv+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+2)
	movlb 1	; select bank1
	movf	(_light_pv+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+1)
	movlb 1	; select bank1
	movf	(_light_pv)^080h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+03h
	line	400
	
l18388:	
;uart.c: 400: uart1_tx_buf[4] =(unsigned char )(load_cc_I/256);
	movlb 1	; select bank1
	movf	(_load_cc_I+3)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+3)
	movlb 1	; select bank1
	movf	(_load_cc_I+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+2)
	movlb 1	; select bank1
	movf	(_load_cc_I+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+1)
	movlb 1	; select bank1
	movf	(_load_cc_I)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1)

	movlw	0x43
	movwf	(___fldiv@f2+3)
	movlw	0x80
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	(___fltol@f1+3)
	movf	(2+(?___fldiv)),w
	movwf	(___fltol@f1+2)
	movf	(1+(?___fldiv)),w
	movwf	(___fltol@f1+1)
	movf	(0+(?___fldiv)),w
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+04h
	line	402
	
l18390:	
;uart.c: 402: uart1_tx_buf[5] =(unsigned char )load_cc_I;
	movlb 1	; select bank1
	movf	(_load_cc_I+3)^080h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+3)
	movlb 1	; select bank1
	movf	(_load_cc_I+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+2)
	movlb 1	; select bank1
	movf	(_load_cc_I+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+1)
	movlb 1	; select bank1
	movf	(_load_cc_I)^080h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+05h
	line	404
	
l18392:	
;uart.c: 404: uart1_tx_buf[6] =(unsigned char )(step_01_load_percent);
	movlb 2	; select bank2
	movf	(_step_01_load_percent+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+3)
	movlb 2	; select bank2
	movf	(_step_01_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+2)
	movlb 2	; select bank2
	movf	(_step_01_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+1)
	movlb 2	; select bank2
	movf	(_step_01_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+06h
	line	406
	
l18394:	
;uart.c: 406: uart1_tx_buf[7] =(unsigned char )(step_02_load_percent);
	movlb 2	; select bank2
	movf	(_step_02_load_percent+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+3)
	movlb 2	; select bank2
	movf	(_step_02_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+2)
	movlb 2	; select bank2
	movf	(_step_02_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+1)
	movlb 2	; select bank2
	movf	(_step_02_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+07h
	line	408
	
l18396:	
;uart.c: 408: uart1_tx_buf[8] =(unsigned char )(step_03_load_percent);
	movlb 2	; select bank2
	movf	(_step_03_load_percent+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+3)
	movlb 2	; select bank2
	movf	(_step_03_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+2)
	movlb 2	; select bank2
	movf	(_step_03_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+1)
	movlb 2	; select bank2
	movf	(_step_03_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+08h
	line	410
	
l18398:	
;uart.c: 410: uart1_tx_buf[9] =(unsigned char )(step_04_load_percent);
	movlb 2	; select bank2
	movf	(_step_04_load_percent+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+3)
	movlb 2	; select bank2
	movf	(_step_04_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+2)
	movlb 2	; select bank2
	movf	(_step_04_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+1)
	movlb 2	; select bank2
	movf	(_step_04_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+09h
	line	412
	
l18400:	
;uart.c: 412: uart1_tx_buf[10]=(unsigned char )(step_05_load_percent);
	movlb 2	; select bank2
	movf	(_step_05_load_percent+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+3)
	movlb 2	; select bank2
	movf	(_step_05_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+2)
	movlb 2	; select bank2
	movf	(_step_05_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+1)
	movlb 2	; select bank2
	movf	(_step_05_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+0Ah
	line	414
	
l18402:	
;uart.c: 414: uart1_tx_buf[11]=(unsigned char )(bt_id);
	movlb 1	; select bank1
	movf	(_bt_id)^080h,w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+0Bh
	line	416
	
l18404:	
;uart.c: 416: uart1_tx_buf[12]=(unsigned char )(light_time);
	movlb 1	; select bank1
	movf	(_light_time)^080h,w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+0Ch
	line	418
	
l18406:	
;uart.c: 418: uart1_tx_buf[13] =(unsigned char )(step_01_time_limit);
	movlb 1	; select bank1
	movf	(_step_01_time_limit)^080h,w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+0Dh
	line	420
	
l18408:	
;uart.c: 420: uart1_tx_buf[14] =(unsigned char )(step_02_time_limit);
	movlb 1	; select bank1
	movf	(_step_02_time_limit)^080h,w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+0Eh
	line	422
	
l18410:	
;uart.c: 422: uart1_tx_buf[15] =(unsigned char )(step_03_time_limit);
	movlb 2	; select bank2
	movf	(_step_03_time_limit)^0100h,w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+0Fh
	line	424
	
l18412:	
;uart.c: 424: uart1_tx_buf[16] =(unsigned char )(step_04_time_limit);
	movlb 2	; select bank2
	movf	(_step_04_time_limit)^0100h,w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+010h
	line	426
	
l18414:	
;uart.c: 426: uart1_tx_buf[17] =(unsigned char )(step_05_time_limit);
	movlb 2	; select bank2
	movf	(_step_05_time_limit)^0100h,w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+011h
	line	429
	
l18416:	
;uart.c: 429: crc_data=crc16(&uart1_tx_buf[1],17);
	movlw	low(_uart1_tx_buf+01h)
	movlb 0	; select bank0
	movwf	(crc16@puchMsg)
	movlw	high(_uart1_tx_buf+01h)
	movwf	(crc16@puchMsg+1)
	movlw	(011h)
	movwf	(crc16@usDataLen)
	fcall	_crc16
	movf	(1+(?_crc16)),w
	movlb 1	; select bank1
	movwf	(_crc_data+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_crc16)),w
	movlb 1	; select bank1
	movwf	(_crc_data)^080h
	line	431
	
l18418:	
;uart.c: 431: uart1_tx_buf[18]=crc_data/256;
	movf	(_crc_data+1)^080h,w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+012h
	line	433
	
l18420:	
;uart.c: 433: uart1_tx_buf[19]=crc_data%256;
	movlb 1	; select bank1
	movf	(_crc_data)^080h,w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+013h
	line	435
	
l18422:	
;uart.c: 435: uart1_tx_buf[20]=0xAA;
	movlw	(0AAh)
	movwf	0+(_uart1_tx_buf)^0380h+014h
	goto	l18632
	line	443
	
l18424:	
;uart.c: 443: if(uart1_rx_buf[1]==0xA3)
	movlb 8	; select bank8
	movf	0+(_uart1_rx_buf)^0400h+01h,w
	xorlw	0A3h&0ffh
	skipz
	goto	u11911
	goto	u11910
u11911:
	goto	l18632
u11910:
	line	445
	
l18426:	
;uart.c: 444: {
;uart.c: 445: crc_in=crc16(&uart1_rx_buf[1],17);
	movlw	low(_uart1_rx_buf+01h)
	movlb 0	; select bank0
	movwf	(crc16@puchMsg)
	movlw	high(_uart1_rx_buf+01h)
	movwf	(crc16@puchMsg+1)
	movlw	(011h)
	movwf	(crc16@usDataLen)
	fcall	_crc16
	movf	(1+(?_crc16)),w
	movwf	(handle_uart_rx_buf@crc_in+1)
	movf	(0+(?_crc16)),w
	movwf	(handle_uart_rx_buf@crc_in)
	line	447
	
l18428:	
;uart.c: 447: if(crc_in==( (uart1_rx_buf[18]<<8) | uart1_rx_buf[19]) )
	movf	(handle_uart_rx_buf@crc_in+1),w
	movlb 8	; select bank8
	xorwf	0+(_uart1_rx_buf)^0400h+012h,w
	skipz
	goto	u11925
	movlb 0	; select bank0
	movf	(handle_uart_rx_buf@crc_in),w
	movlb 8	; select bank8
	xorwf	0+(_uart1_rx_buf)^0400h+013h,w
u11925:

	skipz
	goto	u11921
	goto	u11920
u11921:
	goto	l18632
u11920:
	line	450
	
l18430:	
;uart.c: 448: {
;uart.c: 450: light_pv = (uart1_rx_buf[2]<<8) | uart1_rx_buf[3];
	movf	0+(_uart1_rx_buf)^0400h+02h,w
	movlb 0	; select bank0
	movwf	(___awtofl@c+1)
	movlb 8	; select bank8
	movf	0+(_uart1_rx_buf)^0400h+03h,w
	movlb 0	; select bank0
	movwf	(___awtofl@c)
	fcall	___awtofl
	movf	(3+(?___awtofl)),w
	movlb 1	; select bank1
	movwf	(_light_pv+3)^080h
	movlb 0	; select bank0
	movf	(2+(?___awtofl)),w
	movlb 1	; select bank1
	movwf	(_light_pv+2)^080h
	movlb 0	; select bank0
	movf	(1+(?___awtofl)),w
	movlb 1	; select bank1
	movwf	(_light_pv+1)^080h
	movlb 0	; select bank0
	movf	(0+(?___awtofl)),w
	movlb 1	; select bank1
	movwf	(_light_pv)^080h

	line	452
;uart.c: 452: load_cc_I = (uart1_rx_buf[4]<<8) | uart1_rx_buf[5];
	movlb 8	; select bank8
	movf	0+(_uart1_rx_buf)^0400h+04h,w
	movlb 0	; select bank0
	movwf	(___awtofl@c+1)
	movlb 8	; select bank8
	movf	0+(_uart1_rx_buf)^0400h+05h,w
	movlb 0	; select bank0
	movwf	(___awtofl@c)
	fcall	___awtofl
	movf	(3+(?___awtofl)),w
	movlb 1	; select bank1
	movwf	(_load_cc_I+3)^080h
	movlb 0	; select bank0
	movf	(2+(?___awtofl)),w
	movlb 1	; select bank1
	movwf	(_load_cc_I+2)^080h
	movlb 0	; select bank0
	movf	(1+(?___awtofl)),w
	movlb 1	; select bank1
	movwf	(_load_cc_I+1)^080h
	movlb 0	; select bank0
	movf	(0+(?___awtofl)),w
	movlb 1	; select bank1
	movwf	(_load_cc_I)^080h

	line	454
;uart.c: 454: step_01_load_percent = uart1_rx_buf[6];
	movlb 8	; select bank8
	movf	0+(_uart1_rx_buf)^0400h+06h,w
	fcall	___lbtofl
	movf	(3+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_01_load_percent+3)^0100h
	movlb 0	; select bank0
	movf	(2+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_01_load_percent+2)^0100h
	movlb 0	; select bank0
	movf	(1+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_01_load_percent+1)^0100h
	movlb 0	; select bank0
	movf	(0+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_01_load_percent)^0100h

	line	456
;uart.c: 456: step_02_load_percent = uart1_rx_buf[7];
	movlb 8	; select bank8
	movf	0+(_uart1_rx_buf)^0400h+07h,w
	fcall	___lbtofl
	movf	(3+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_02_load_percent+3)^0100h
	movlb 0	; select bank0
	movf	(2+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_02_load_percent+2)^0100h
	movlb 0	; select bank0
	movf	(1+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_02_load_percent+1)^0100h
	movlb 0	; select bank0
	movf	(0+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_02_load_percent)^0100h

	line	458
;uart.c: 458: step_03_load_percent = uart1_rx_buf[8];
	movlb 8	; select bank8
	movf	0+(_uart1_rx_buf)^0400h+08h,w
	fcall	___lbtofl
	movf	(3+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_03_load_percent+3)^0100h
	movlb 0	; select bank0
	movf	(2+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_03_load_percent+2)^0100h
	movlb 0	; select bank0
	movf	(1+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_03_load_percent+1)^0100h
	movlb 0	; select bank0
	movf	(0+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_03_load_percent)^0100h

	line	460
;uart.c: 460: step_04_load_percent = uart1_rx_buf[9];
	movlb 8	; select bank8
	movf	0+(_uart1_rx_buf)^0400h+09h,w
	fcall	___lbtofl
	movf	(3+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_04_load_percent+3)^0100h
	movlb 0	; select bank0
	movf	(2+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_04_load_percent+2)^0100h
	movlb 0	; select bank0
	movf	(1+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_04_load_percent+1)^0100h
	movlb 0	; select bank0
	movf	(0+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_04_load_percent)^0100h

	line	462
;uart.c: 462: step_05_load_percent = uart1_rx_buf[10];
	movlb 8	; select bank8
	movf	0+(_uart1_rx_buf)^0400h+0Ah,w
	fcall	___lbtofl
	movf	(3+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_05_load_percent+3)^0100h
	movlb 0	; select bank0
	movf	(2+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_05_load_percent+2)^0100h
	movlb 0	; select bank0
	movf	(1+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_05_load_percent+1)^0100h
	movlb 0	; select bank0
	movf	(0+(?___lbtofl)),w
	movlb 2	; select bank2
	movwf	(_step_05_load_percent)^0100h

	line	464
	
l18432:	
;uart.c: 464: Adjust_Pout_Flag=0x00;
	movlb 1	; select bank1
	clrf	(_Adjust_Pout_Flag)^080h
	line	465
	
l18434:	
;uart.c: 465: voltage_adjust_index=0x01;
	clrf	(_voltage_adjust_index)^080h
	incf	(_voltage_adjust_index)^080h,f
	line	467
	
l18436:	
;uart.c: 467: bt_id = uart1_rx_buf[11];
	movlb 8	; select bank8
	movf	0+(_uart1_rx_buf)^0400h+0Bh,w
	movlb 1	; select bank1
	movwf	(_bt_id)^080h
	line	469
	
l18438:	
;uart.c: 469: light_time = uart1_rx_buf[12];
	movlb 8	; select bank8
	movf	0+(_uart1_rx_buf)^0400h+0Ch,w
	movlb 1	; select bank1
	movwf	(_light_time)^080h
	clrf	(_light_time+1)^080h
	line	471
	
l18440:	
;uart.c: 471: step_01_time_limit = uart1_rx_buf[13];
	movlb 8	; select bank8
	movf	0+(_uart1_rx_buf)^0400h+0Dh,w
	movlb 1	; select bank1
	movwf	(_step_01_time_limit)^080h
	clrf	(_step_01_time_limit+1)^080h
	line	473
	
l18442:	
;uart.c: 473: step_02_time_limit = uart1_rx_buf[14];
	movlb 8	; select bank8
	movf	0+(_uart1_rx_buf)^0400h+0Eh,w
	movlb 1	; select bank1
	movwf	(_step_02_time_limit)^080h
	clrf	(_step_02_time_limit+1)^080h
	line	475
	
l18444:	
;uart.c: 475: step_03_time_limit = uart1_rx_buf[15];
	movlb 8	; select bank8
	movf	0+(_uart1_rx_buf)^0400h+0Fh,w
	movlb 2	; select bank2
	movwf	(_step_03_time_limit)^0100h
	clrf	(_step_03_time_limit+1)^0100h
	line	477
	
l18446:	
;uart.c: 477: step_04_time_limit = uart1_rx_buf[16];
	movlb 8	; select bank8
	movf	0+(_uart1_rx_buf)^0400h+010h,w
	movlb 2	; select bank2
	movwf	(_step_04_time_limit)^0100h
	clrf	(_step_04_time_limit+1)^0100h
	line	479
	
l18448:	
;uart.c: 479: step_05_time_limit = uart1_rx_buf[17];
	movlb 8	; select bank8
	movf	0+(_uart1_rx_buf)^0400h+011h,w
	movlb 2	; select bank2
	movwf	(_step_05_time_limit)^0100h
	clrf	(_step_05_time_limit+1)^0100h
	line	481
	
l18450:	
;uart.c: 481: if((light_pv>=100)&&(light_pv<=1200)&&(load_cc_I<=500)&&(step_01_load_percent<=100)&&(step_02_load_percent<=100) &&(step_03_load_percent<=100)&&(step_04_load_percent<=100)&&(step_05_load_percent<=100)&&(bt_id>=1)&&(bt_id<=2) &&(light_time<=60)&&(step
	movlb 1	; select bank1
	movf	(_light_pv+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 1	; select bank1
	movf	(_light_pv+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 1	; select bank1
	movf	(_light_pv+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 1	; select bank1
	movf	(_light_pv)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlw	0x42
	movwf	(___flge@ff2+3)
	movlw	0xc8
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u11931
	goto	u11930
u11931:
	goto	l18524
u11930:
	
l18452:	
	movlw	0x44
	movwf	(___flge@ff1+3)
	movlw	0x96
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(_light_pv+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 1	; select bank1
	movf	(_light_pv+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 1	; select bank1
	movf	(_light_pv+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 1	; select bank1
	movf	(_light_pv)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u11941
	goto	u11940
u11941:
	goto	l18524
u11940:
	
l18454:	
	movlw	0x43
	movwf	(___flge@ff1+3)
	movlw	0xfa
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(_load_cc_I+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 1	; select bank1
	movf	(_load_cc_I+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 1	; select bank1
	movf	(_load_cc_I+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 1	; select bank1
	movf	(_load_cc_I)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u11951
	goto	u11950
u11951:
	goto	l18524
u11950:
	
l18456:	
	movlw	0x42
	movwf	(___flge@ff1+3)
	movlw	0xc8
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movlb 2	; select bank2
	movf	(_step_01_load_percent+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 2	; select bank2
	movf	(_step_01_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 2	; select bank2
	movf	(_step_01_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 2	; select bank2
	movf	(_step_01_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u11961
	goto	u11960
u11961:
	goto	l18524
u11960:
	
l18458:	
	movlw	0x42
	movwf	(___flge@ff1+3)
	movlw	0xc8
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movlb 2	; select bank2
	movf	(_step_02_load_percent+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 2	; select bank2
	movf	(_step_02_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 2	; select bank2
	movf	(_step_02_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 2	; select bank2
	movf	(_step_02_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u11971
	goto	u11970
u11971:
	goto	l18524
u11970:
	
l18460:	
	movlw	0x42
	movwf	(___flge@ff1+3)
	movlw	0xc8
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movlb 2	; select bank2
	movf	(_step_03_load_percent+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 2	; select bank2
	movf	(_step_03_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 2	; select bank2
	movf	(_step_03_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 2	; select bank2
	movf	(_step_03_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u11981
	goto	u11980
u11981:
	goto	l18524
u11980:
	
l18462:	
	movlw	0x42
	movwf	(___flge@ff1+3)
	movlw	0xc8
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movlb 2	; select bank2
	movf	(_step_04_load_percent+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 2	; select bank2
	movf	(_step_04_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 2	; select bank2
	movf	(_step_04_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 2	; select bank2
	movf	(_step_04_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u11991
	goto	u11990
u11991:
	goto	l18524
u11990:
	
l18464:	
	movlw	0x42
	movwf	(___flge@ff1+3)
	movlw	0xc8
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movlb 2	; select bank2
	movf	(_step_05_load_percent+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 2	; select bank2
	movf	(_step_05_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 2	; select bank2
	movf	(_step_05_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 2	; select bank2
	movf	(_step_05_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12001
	goto	u12000
u12001:
	goto	l18524
u12000:
	
l18466:	
	movlb 1	; select bank1
	movf	(_bt_id)^080h,w
	skipz
	goto	u12010
	goto	l18524
u12010:
	
l18468:	
	movlw	(03h)
	subwf	(_bt_id)^080h,w
	skipnc
	goto	u12021
	goto	u12020
u12021:
	goto	l18524
u12020:
	
l18470:	
	movlw	high(03Dh)
	subwf	(_light_time+1)^080h,w
	movlw	low(03Dh)
	skipnz
	subwf	(_light_time)^080h,w
	skipnc
	goto	u12031
	goto	u12030
u12031:
	goto	l18524
u12030:
	
l18472:	
	movlw	high(019h)
	subwf	(_step_01_time_limit+1)^080h,w
	movlw	low(019h)
	skipnz
	subwf	(_step_01_time_limit)^080h,w
	skipnc
	goto	u12041
	goto	u12040
u12041:
	goto	l18524
u12040:
	
l18474:	
	movlw	high(019h)
	subwf	(_step_02_time_limit+1)^080h,w
	movlw	low(019h)
	skipnz
	subwf	(_step_02_time_limit)^080h,w
	skipnc
	goto	u12051
	goto	u12050
u12051:
	goto	l18524
u12050:
	
l18476:	
	movlw	high(019h)
	movlb 2	; select bank2
	subwf	(_step_03_time_limit+1)^0100h,w
	movlw	low(019h)
	skipnz
	subwf	(_step_03_time_limit)^0100h,w
	skipnc
	goto	u12061
	goto	u12060
u12061:
	movlb 1	; select bank1
	goto	l18524
u12060:
	
l18478:	
	movlw	high(019h)
	subwf	(_step_04_time_limit+1)^0100h,w
	movlw	low(019h)
	skipnz
	subwf	(_step_04_time_limit)^0100h,w
	skipnc
	goto	u12071
	goto	u12070
u12071:
	movlb 1	; select bank1
	goto	l18524
u12070:
	
l18480:	
	movlw	high(019h)
	subwf	(_step_05_time_limit+1)^0100h,w
	movlw	low(019h)
	skipnz
	subwf	(_step_05_time_limit)^0100h,w
	skipnc
	goto	u12081
	goto	u12080
u12081:
	movlb 1	; select bank1
	goto	l18524
u12080:
	line	486
	
l18482:	
;uart.c: 484: {
;uart.c: 486: eeprom_write(0x00,(unsigned char)(light_pv/256));
	movlb 1	; select bank1
	movf	(_light_pv+3)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+3)
	movlb 1	; select bank1
	movf	(_light_pv+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+2)
	movlb 1	; select bank1
	movf	(_light_pv+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+1)
	movlb 1	; select bank1
	movf	(_light_pv)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1)

	movlw	0x43
	movwf	(___fldiv@f2+3)
	movlw	0x80
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	(___fltol@f1+3)
	movf	(2+(?___fldiv)),w
	movwf	(___fltol@f1+2)
	movf	(1+(?___fldiv)),w
	movwf	(___fltol@f1+1)
	movf	(0+(?___fldiv)),w
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movwf	(eeprom_write@value)
	movlw	(0)
	fcall	_eeprom_write
	line	488
;uart.c: 488: eeprom_write(0x01,(unsigned char)light_pv);
	movlb 1	; select bank1
	movf	(_light_pv+3)^080h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+3)
	movlb 1	; select bank1
	movf	(_light_pv+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+2)
	movlb 1	; select bank1
	movf	(_light_pv+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+1)
	movlb 1	; select bank1
	movf	(_light_pv)^080h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movwf	(eeprom_write@value)
	movlw	(01h)
	fcall	_eeprom_write
	line	491
;uart.c: 491: eeprom_write(0x02,(unsigned char)(load_cc_I/256));
	movlb 1	; select bank1
	movf	(_load_cc_I+3)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+3)
	movlb 1	; select bank1
	movf	(_load_cc_I+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+2)
	movlb 1	; select bank1
	movf	(_load_cc_I+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+1)
	movlb 1	; select bank1
	movf	(_load_cc_I)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1)

	movlw	0x43
	movwf	(___fldiv@f2+3)
	movlw	0x80
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	(___fltol@f1+3)
	movf	(2+(?___fldiv)),w
	movwf	(___fltol@f1+2)
	movf	(1+(?___fldiv)),w
	movwf	(___fltol@f1+1)
	movf	(0+(?___fldiv)),w
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movwf	(eeprom_write@value)
	movlw	(02h)
	fcall	_eeprom_write
	line	493
;uart.c: 493: eeprom_write(0x03,(unsigned char)load_cc_I);
	movlb 1	; select bank1
	movf	(_load_cc_I+3)^080h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+3)
	movlb 1	; select bank1
	movf	(_load_cc_I+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+2)
	movlb 1	; select bank1
	movf	(_load_cc_I+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+1)
	movlb 1	; select bank1
	movf	(_load_cc_I)^080h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movwf	(eeprom_write@value)
	movlw	(03h)
	fcall	_eeprom_write
	line	496
;uart.c: 496: eeprom_write(0x04,(unsigned char)(step_01_load_percent));
	movlb 2	; select bank2
	movf	(_step_01_load_percent+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+3)
	movlb 2	; select bank2
	movf	(_step_01_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+2)
	movlb 2	; select bank2
	movf	(_step_01_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+1)
	movlb 2	; select bank2
	movf	(_step_01_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movwf	(eeprom_write@value)
	movlw	(04h)
	fcall	_eeprom_write
	line	498
;uart.c: 498: eeprom_write(0x05,(unsigned char)(step_02_load_percent));
	movlb 2	; select bank2
	movf	(_step_02_load_percent+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+3)
	movlb 2	; select bank2
	movf	(_step_02_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+2)
	movlb 2	; select bank2
	movf	(_step_02_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+1)
	movlb 2	; select bank2
	movf	(_step_02_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movwf	(eeprom_write@value)
	movlw	(05h)
	fcall	_eeprom_write
	line	500
;uart.c: 500: eeprom_write(0x06,(unsigned char)(step_03_load_percent));
	movlb 2	; select bank2
	movf	(_step_03_load_percent+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+3)
	movlb 2	; select bank2
	movf	(_step_03_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+2)
	movlb 2	; select bank2
	movf	(_step_03_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+1)
	movlb 2	; select bank2
	movf	(_step_03_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movwf	(eeprom_write@value)
	movlw	(06h)
	fcall	_eeprom_write
	line	502
;uart.c: 502: eeprom_write(0x07,(unsigned char)(step_04_load_percent));
	movlb 2	; select bank2
	movf	(_step_04_load_percent+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+3)
	movlb 2	; select bank2
	movf	(_step_04_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+2)
	movlb 2	; select bank2
	movf	(_step_04_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+1)
	movlb 2	; select bank2
	movf	(_step_04_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movwf	(eeprom_write@value)
	movlw	(07h)
	fcall	_eeprom_write
	line	504
;uart.c: 504: eeprom_write(0x08,(unsigned char)(step_05_load_percent));
	movlb 2	; select bank2
	movf	(_step_05_load_percent+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+3)
	movlb 2	; select bank2
	movf	(_step_05_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+2)
	movlb 2	; select bank2
	movf	(_step_05_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+1)
	movlb 2	; select bank2
	movf	(_step_05_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movwf	(eeprom_write@value)
	movlw	(08h)
	fcall	_eeprom_write
	line	506
;uart.c: 506: eeprom_write(0x0a,(unsigned char)(bt_id));
	movlb 1	; select bank1
	movf	(_bt_id)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(0Ah)
	fcall	_eeprom_write
	line	508
;uart.c: 508: eeprom_write(0x0b,(unsigned char)(light_time));
	movlb 1	; select bank1
	movf	(_light_time)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(0Bh)
	fcall	_eeprom_write
	line	510
;uart.c: 510: eeprom_write(0x0c,(unsigned char)(step_01_time_limit));
	movlb 1	; select bank1
	movf	(_step_01_time_limit)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(0Ch)
	fcall	_eeprom_write
	line	512
;uart.c: 512: eeprom_write(0x0d,(unsigned char)(step_02_time_limit));
	movlb 1	; select bank1
	movf	(_step_02_time_limit)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(0Dh)
	fcall	_eeprom_write
	line	514
;uart.c: 514: eeprom_write(0x0e,(unsigned char)(step_03_time_limit));
	movlb 2	; select bank2
	movf	(_step_03_time_limit)^0100h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(0Eh)
	fcall	_eeprom_write
	line	516
;uart.c: 516: eeprom_write(0x0f,(unsigned char)(step_04_time_limit));
	movlb 2	; select bank2
	movf	(_step_04_time_limit)^0100h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(0Fh)
	fcall	_eeprom_write
	line	518
;uart.c: 518: eeprom_write(0x10,(unsigned char)(step_05_time_limit));
	movlb 2	; select bank2
	movf	(_step_05_time_limit)^0100h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(010h)
	fcall	_eeprom_write
	line	521
;uart.c: 521: light_on_pv_level =(light_pv*10)/61;
	movlw	0x42
	movlb 0	; select bank0
	movwf	(___fldiv@f2+3)
	movlw	0x74
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	movlw	0x41
	movwf	(___flmul@f1+3)
	movlw	0x20
	movwf	(___flmul@f1+2)
	movlw	0x0
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	movlb 1	; select bank1
	movf	(_light_pv+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 1	; select bank1
	movf	(_light_pv+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 1	; select bank1
	movf	(_light_pv+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 1	; select bank1
	movf	(_light_pv)^080h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___fldiv@f1+3)
	movf	(2+(?___flmul)),w
	movwf	(___fldiv@f1+2)
	movf	(1+(?___flmul)),w
	movwf	(___fldiv@f1+1)
	movf	(0+(?___flmul)),w
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movlb 5	; select bank5
	movwf	(_light_on_pv_level+3)^0280h
	movlb 0	; select bank0
	movf	(2+(?___fldiv)),w
	movlb 5	; select bank5
	movwf	(_light_on_pv_level+2)^0280h
	movlb 0	; select bank0
	movf	(1+(?___fldiv)),w
	movlb 5	; select bank5
	movwf	(_light_on_pv_level+1)^0280h
	movlb 0	; select bank0
	movf	(0+(?___fldiv)),w
	movlb 5	; select bank5
	movwf	(_light_on_pv_level)^0280h

	line	522
	
l18484:	
;uart.c: 522: light_off_pv_level =(10.0/61)*1000;
	movlw	0x43
	movwf	(_light_off_pv_level+3)^0280h
	movlw	0x23
	movwf	(_light_off_pv_level+2)^0280h
	movlw	0xef
	movwf	(_light_off_pv_level+1)^0280h
	movlw	0x37
	movwf	(_light_off_pv_level)^0280h

	line	524
	
l18486:	
;uart.c: 524: PID_CC_discharge.SetPoint = (load_cc_I/100)*160;
	movlw	0x43
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0x20
	movwf	(___flmul@f1+2)
	movlw	0x0
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	movlw	0x42
	movwf	(___fldiv@f2+3)
	movlw	0xc8
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	movlb 1	; select bank1
	movf	(_load_cc_I+3)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+3)
	movlb 1	; select bank1
	movf	(_load_cc_I+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+2)
	movlb 1	; select bank1
	movf	(_load_cc_I+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+1)
	movlb 1	; select bank1
	movf	(_load_cc_I)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	(___flmul@f2+3)
	movf	(2+(?___fldiv)),w
	movwf	(___flmul@f2+2)
	movf	(1+(?___fldiv)),w
	movwf	(___flmul@f2+1)
	movf	(0+(?___fldiv)),w
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	526
	
l18488:	
;uart.c: 526: if(light_time==0x00)
	movlb 1	; select bank1
	movf	((_light_time+1)^080h),w
	iorwf	((_light_time)^080h),w
	skipz
	goto	u12091
	goto	u12090
u12091:
	goto	l18492
u12090:
	line	528
	
l18490:	
;uart.c: 527: {
;uart.c: 528: light_time_level = 500;
	movlw	0
	movlb 3	; select bank3
	movwf	(_light_time_level+3)^0180h
	movlw	0
	movwf	(_light_time_level+2)^0180h
	movlw	01h
	movwf	(_light_time_level+1)^0180h
	movlw	0F4h
	movwf	(_light_time_level)^0180h

	line	529
;uart.c: 529: }
	goto	l18494
	line	532
	
l18492:	
;uart.c: 530: else
;uart.c: 531: {
;uart.c: 532: light_time_level = (unsigned long int)(light_time*6*180);
	movf	(_light_time+1)^080h,w
	movlb 0	; select bank0
	movwf	(___wmul@multiplier+1)
	movlb 1	; select bank1
	movf	(_light_time)^080h,w
	movlb 0	; select bank0
	movwf	(___wmul@multiplier)
	movlw	low(0438h)
	movwf	(___wmul@multiplicand)
	movlw	high(0438h)
	movwf	((___wmul@multiplicand))+1
	fcall	___wmul
	movf	(0+(?___wmul)),w
	movlb 3	; select bank3
	movwf	(_light_time_level)^0180h
	movlb 0	; select bank0
	movf	(1+(?___wmul)),w
	movlb 3	; select bank3
	movwf	((_light_time_level)^0180h)+1
	clrf	2+((_light_time_level)^0180h)
	clrf	3+((_light_time_level)^0180h)
	line	544
	
l18494:	
;uart.c: 544: nop_index=0x00;
	clrf	(_nop_index)^0180h
	line	545
	
l18496:	
;uart.c: 545: discharge_index=0x00;
	movlb 1	; select bank1
	clrf	(_discharge_index)^080h
	line	546
	
l18498:	
;uart.c: 546: charge_index=0x00;
	clrf	(_charge_index)^080h
	line	548
	
l18500:	
;uart.c: 548: led_out_ctrl=0x00;
	clrf	(_led_out_ctrl)^080h
	line	549
;uart.c: 549: eeprom_write(0x39,(unsigned char)(led_out_ctrl));
	movf	(_led_out_ctrl)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(039h)
	fcall	_eeprom_write
	line	551
	
l18502:	
;uart.c: 551: pv_voltage_status=0x00;
	movlb 2	; select bank2
	clrf	(_pv_voltage_status)^0100h
	line	553
	
l18504:	
;uart.c: 553: day_time_count=0x00;
	movlb 5	; select bank5
	clrf	(_day_time_count)^0280h
	clrf	(_day_time_count+1)^0280h
	clrf	(_day_time_count+2)^0280h
	clrf	(_day_time_count+3)^0280h
	line	555
	
l18506:	
;uart.c: 555: night_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_night_time_count)^0200h
	clrf	(_night_time_count+1)^0200h
	clrf	(_night_time_count+2)^0200h
	clrf	(_night_time_count+3)^0200h
	line	557
	
l18508:	
;uart.c: 557: pv_time_count=0x00;
	movlb 5	; select bank5
	clrf	(_pv_time_count)^0280h
	clrf	(_pv_time_count+1)^0280h
	clrf	(_pv_time_count+2)^0280h
	clrf	(_pv_time_count+3)^0280h
	line	561
	
l18510:	
;uart.c: 561: uart1_tx_buf[0]=0x55;
	movlw	(055h)
	movlb 7	; select bank7
	movwf	(_uart1_tx_buf)^0380h
	line	563
	
l18512:	
;uart.c: 563: uart1_tx_buf[1]=0xB3;
	movlw	(0B3h)
	movwf	0+(_uart1_tx_buf)^0380h+01h
	line	565
	
l18514:	
;uart.c: 565: uart1_tx_buf[2]=0x01;
	clrf	0+(_uart1_tx_buf)^0380h+02h
	incf	0+(_uart1_tx_buf)^0380h+02h,f
	line	567
	
l18516:	
;uart.c: 567: crc_data=crc16(&uart1_tx_buf[1],2);
	movlw	low(_uart1_tx_buf+01h)
	movlb 0	; select bank0
	movwf	(crc16@puchMsg)
	movlw	high(_uart1_tx_buf+01h)
	movwf	(crc16@puchMsg+1)
	movlw	(02h)
	movwf	(crc16@usDataLen)
	fcall	_crc16
	movf	(1+(?_crc16)),w
	movlb 1	; select bank1
	movwf	(_crc_data+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_crc16)),w
	movlb 1	; select bank1
	movwf	(_crc_data)^080h
	line	569
	
l18518:	
;uart.c: 569: uart1_tx_buf[3]=crc_data/256;
	movf	(_crc_data+1)^080h,w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+03h
	line	571
	
l18520:	
;uart.c: 571: uart1_tx_buf[4]=crc_data%256;
	movlb 1	; select bank1
	movf	(_crc_data)^080h,w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+04h
	line	573
	
l18522:	
;uart.c: 573: uart1_tx_buf[5]=0xAA;
	movlw	(0AAh)
	movwf	0+(_uart1_tx_buf)^0380h+05h
	line	577
;uart.c: 577: }
	goto	l18632
	line	580
	
l18524:	
;uart.c: 578: else
;uart.c: 579: {
;uart.c: 580: uart1_tx_buf[0]=0x55;
	movlw	(055h)
	movlb 7	; select bank7
	movwf	(_uart1_tx_buf)^0380h
	line	582
;uart.c: 582: uart1_tx_buf[1]=0xB3;
	movlw	(0B3h)
	movwf	0+(_uart1_tx_buf)^0380h+01h
	line	584
;uart.c: 584: uart1_tx_buf[2]=0x02;
	movlw	(02h)
	movwf	0+(_uart1_tx_buf)^0380h+02h
	line	586
	
l18526:	
;uart.c: 586: crc_data=crc16(&uart1_tx_buf[1],2);
	movlw	low(_uart1_tx_buf+01h)
	movlb 0	; select bank0
	movwf	(crc16@puchMsg)
	movlw	high(_uart1_tx_buf+01h)
	movwf	(crc16@puchMsg+1)
	movlw	(02h)
	movwf	(crc16@usDataLen)
	fcall	_crc16
	movf	(1+(?_crc16)),w
	movlb 1	; select bank1
	movwf	(_crc_data+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_crc16)),w
	movlb 1	; select bank1
	movwf	(_crc_data)^080h
	line	588
	
l18528:	
;uart.c: 588: uart1_tx_buf[3]=crc_data/256;
	movf	(_crc_data+1)^080h,w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+03h
	line	590
	
l18530:	
;uart.c: 590: uart1_tx_buf[4]=crc_data%256;
	movlb 1	; select bank1
	movf	(_crc_data)^080h,w
	movlb 7	; select bank7
	movwf	0+(_uart1_tx_buf)^0380h+04h
	line	592
	
l18532:	
;uart.c: 592: uart1_tx_buf[5]=0xAA;
	movlw	(0AAh)
	movwf	0+(_uart1_tx_buf)^0380h+05h
	line	596
# 596 "D:\MCUProject\ZH-SL-F60\src\uart.c"
reset ;# 
psect	text5
	goto	l18632
	line	604
;uart.c: 604: case 0x04:
	
l1868:	
	line	605
;uart.c: 605: work_mode=0x01;
	movlb 1	; select bank1
	clrf	(_work_mode)^080h
	incf	(_work_mode)^080h,f
	line	607
	
l18534:	
;uart.c: 607: uart1_tx_buf[0]=0x55;
	movlw	(055h)
	movlb 7	; select bank7
	movwf	(_uart1_tx_buf)^0380h
	line	609
;uart.c: 609: uart1_tx_buf[1]=0xB4;
	movlw	(0B4h)
	movwf	0+(_uart1_tx_buf)^0380h+01h
	goto	l18514
	line	625
	
l18546:	
;uart.c: 625: work_mode=0x02;
	movlw	(02h)
	movlb 1	; select bank1
	movwf	(_work_mode)^080h
	line	627
;uart.c: 627: uart1_tx_buf[0]=0x55;
	movlw	(055h)
	movlb 7	; select bank7
	movwf	(_uart1_tx_buf)^0380h
	line	629
;uart.c: 629: uart1_tx_buf[1]=0xB5;
	movlw	(0B5h)
	movwf	0+(_uart1_tx_buf)^0380h+01h
	goto	l18514
	line	644
	
l18558:	
;uart.c: 644: work_mode=0x00;
	movlb 1	; select bank1
	clrf	(_work_mode)^080h
	line	645
	
l18560:	
;uart.c: 645: (LATCbits.LATC0 = 0x01);
	movlb 2	; select bank2
	bsf	(270)^0100h,0	;volatile
	line	647
;uart.c: 647: open_sleep_time=0x00;
	clrf	(_open_sleep_time)^0100h
	line	648
;uart.c: 649: lr_cnt=0x00;
	movlb 4	; select bank4
	clrf	(_sleep_time_count)^0200h
	clrf	(_sleep_time_count+1)^0200h
	line	651
;uart.c: 651: nop_index=0x00;
	movlb 3	; select bank3
	clrf	(_nop_index)^0180h
	line	652
;uart.c: 652: discharge_index=0x00;
	movlb 1	; select bank1
	clrf	(_discharge_index)^080h
	line	653
;uart.c: 653: charge_index=0x00;
	clrf	(_charge_index)^080h
	line	655
;uart.c: 655: led_out_ctrl=0x00;
	clrf	(_led_out_ctrl)^080h
	line	656
	
l18562:	
;uart.c: 656: eeprom_write(0x39,(unsigned char)(led_out_ctrl));
	movf	(_led_out_ctrl)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(039h)
	fcall	_eeprom_write
	line	658
	
l18564:	
;uart.c: 658: device_status=0x01;
	movlb 1	; select bank1
	clrf	(_device_status)^080h
	incf	(_device_status)^080h,f
	line	660
	
l18566:	
;uart.c: 660: eeprom_write(0x38,(unsigned char)(device_status));
	movf	(_device_status)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(038h)
	fcall	_eeprom_write
	line	662
	
l18568:	
;uart.c: 662: Disable_Buck_Pwm();
	fcall	_Disable_Buck_Pwm
	line	663
	
l18570:	
;uart.c: 663: Set_Buck_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Buck_Pwm_Duty@duty)
	clrf	(Set_Buck_Pwm_Duty@duty+1)
	fcall	_Set_Buck_Pwm_Duty
	line	664
	
l18572:	
;uart.c: 664: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	665
	
l18574:	
;uart.c: 665: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	666
	
l18576:	
;uart.c: 666: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	668
	
l18578:	
;uart.c: 668: (LATCbits.LATC3 = 0x01);
	movlb 2	; select bank2
	bsf	(270)^0100h,3	;volatile
	line	669
	
l18580:	
;uart.c: 669: Enable_Bost_Pwm();
	fcall	_Enable_Bost_Pwm
	line	670
	
l18582:	
;uart.c: 670: Set_Bost_Pwm_Duty(200);
	movlw	0C8h
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	672
	
l18584:	
;uart.c: 672: delay_ms(1000);
	movlw	low(03E8h)
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	movlw	high(03E8h)
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	line	674
	
l18586:	
;uart.c: 674: Set_Bost_Pwm_Duty(0);
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	676
	
l18588:	
;uart.c: 676: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	677
	
l18590:	
;uart.c: 677: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	678
	
l18592:	
;uart.c: 678: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	680
	
l18594:	
;uart.c: 680: open_an0_time=0x01;
	movlb 2	; select bank2
	clrf	(_open_an0_time)^0100h
	incf	(_open_an0_time)^0100h,f
	line	682
	
l18596:	
;uart.c: 682: open_an1_time=0x01;
	clrf	(_open_an1_time)^0100h
	incf	(_open_an1_time)^0100h,f
	line	684
	
l18598:	
;uart.c: 684: open_an2_time=0x01;
	clrf	(_open_an2_time)^0100h
	incf	(_open_an2_time)^0100h,f
	line	686
	
l18600:	
;uart.c: 686: open_an3_time=0x01;
	clrf	(_open_an3_time)^0100h
	incf	(_open_an3_time)^0100h,f
	line	688
	
l18602:	
;uart.c: 688: open_an4_time=0x01;
	clrf	(_open_an4_time)^0100h
	incf	(_open_an4_time)^0100h,f
	line	690
	
l18604:	
;uart.c: 690: open_an9_time=0x01;
	clrf	(_open_an9_time)^0100h
	incf	(_open_an9_time)^0100h,f
	line	692
	
l18606:	
;uart.c: 692: open_an10_time=0x01;
	clrf	(_open_an10_time)^0100h
	incf	(_open_an10_time)^0100h,f
	line	694
;uart.c: 694: pv_voltage_status=0x00;
	clrf	(_pv_voltage_status)^0100h
	line	696
	
l18608:	
;uart.c: 696: day_time_count=0x00;
	movlb 5	; select bank5
	clrf	(_day_time_count)^0280h
	clrf	(_day_time_count+1)^0280h
	clrf	(_day_time_count+2)^0280h
	clrf	(_day_time_count+3)^0280h
	line	698
	
l18610:	
;uart.c: 698: night_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_night_time_count)^0200h
	clrf	(_night_time_count+1)^0200h
	clrf	(_night_time_count+2)^0200h
	clrf	(_night_time_count+3)^0200h
	line	700
	
l18612:	
;uart.c: 700: pv_time_count=0x00;
	movlb 5	; select bank5
	clrf	(_pv_time_count)^0280h
	clrf	(_pv_time_count+1)^0280h
	clrf	(_pv_time_count+2)^0280h
	clrf	(_pv_time_count+3)^0280h
	line	703
	
l18614:	
;uart.c: 703: uart1_tx_buf[0]=0x55;
	movlw	(055h)
	movlb 7	; select bank7
	movwf	(_uart1_tx_buf)^0380h
	line	705
	
l18616:	
;uart.c: 705: uart1_tx_buf[1]=0xB6;
	movlw	(0B6h)
	movwf	0+(_uart1_tx_buf)^0380h+01h
	goto	l18514
	line	240
	
l18630:	
	movf	(_rx_frame_kind)^0100h,w
	; Switch size 1, requested type "space"
; Number of cases is 6, Range of values is 1 to 6
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           19    10 (average)
; direct_byte           21     9 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l18256
	xorlw	2^1	; case 2
	skipnz
	goto	l18376
	xorlw	3^2	; case 3
	skipnz
	goto	l18424
	xorlw	4^3	; case 4
	skipnz
	goto	l1868
	xorlw	5^4	; case 5
	skipnz
	goto	l18546
	xorlw	6^5	; case 6
	skipnz
	goto	l18558
	goto	l18632
	opt asmopt_on

	line	722
	
l18632:	
;uart.c: 722: rx_frame_kind=0x00;
	movlb 2	; select bank2
	clrf	(_rx_frame_kind)^0100h
	line	724
	
l18634:	
;uart.c: 724: memset (uart1_rx_buf,0,sizeof(uart1_rx_buf));
	movlw	low(_uart1_rx_buf)
	movlb 0	; select bank0
	movwf	(memset@p1)
	movlw	high(_uart1_rx_buf)
	movwf	(memset@p1+1)
	clrf	(memset@c)
	clrf	(memset@c+1)
	movlw	050h
	movwf	(memset@n)
	clrf	(memset@n+1)
	fcall	_memset
	line	725
	
l1872:	
	return
	opt stack 0
GLOBAL	__end_of_handle_uart_rx_buf
	__end_of_handle_uart_rx_buf:
	signat	_handle_uart_rx_buf,88
	global	_eeprom_read

;; *************** function _eeprom_read *****************
;; Defined at:
;;		line 6 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\eeread.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/2
;;		On exit  : 1F/3
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_read_param_eeprom
;;		_auto_system
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\eeread.c"
	line	6
global __ptext6
__ptext6:	;psect for function _eeprom_read
psect	text6
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\eeread.c"
	line	6
	global	__size_of_eeprom_read
	__size_of_eeprom_read	equ	__end_of_eeprom_read-_eeprom_read
	
_eeprom_read:	
;incstack = 0
	opt	stack 11
; Regs used in _eeprom_read: [wreg+status,2+status,0]
;eeprom_read@addr stored from wreg
	movlb 0	; select bank0
	movwf	(eeprom_read@addr)
	line	8
	
l1885:	
	line	9
# 9 "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\eeread.c"
clrwdt ;# 
psect	text6
	line	10
	movlb 3	; select bank3
	btfsc	(3241/8)^0180h,(3241)&7	;volsfr
	goto	u4821
	goto	u4820
u4821:
	movlb 0	; select bank0
	goto	l1885
u4820:
	line	11
	
l12766:	
	movlb 0	; select bank0
	movf	(eeprom_read@addr),w
	movlb 3	; select bank3
	movwf	(401)^0180h	;volatile
	clrf	(401+1)^0180h	;volatile
	movlw	(03Fh)
	andwf	(405)^0180h,f	;volsfr
	bsf	(3240/8)^0180h,(3240)&7	;volsfr
	clrc
	btfsc	(3240/8)^0180h,(3240)&7	;volsfr
	setc
	movlw	0
	addwfc	wreg,w
	movf	(403)^0180h,w	;volatile
	line	12
	
l1887:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_read
	__end_of_eeprom_read:
	signat	_eeprom_read,4217
	global	_crc16

;; *************** function _crc16 *****************
;; Defined at:
;;		line 75 in file "D:\MCUProject\ZH-SL-F60\src\Modbus.c"
;; Parameters:    Size  Location     Type
;;  puchMsg         2    3[BANK0 ] PTR volatile unsigned ch
;;		 -> uart1_tx_buf(80), uart1_rx_buf(80), 
;;  usDataLen       1    5[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  uIndex          4    6[BANK0 ] unsigned long 
;;  uchCRCLo        1   11[BANK0 ] unsigned char 
;;  uchCRCHi        1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       9       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-F60\src\Modbus.c"
	line	75
global __ptext7
__ptext7:	;psect for function _crc16
psect	text7
	file	"D:\MCUProject\ZH-SL-F60\src\Modbus.c"
	line	75
	global	__size_of_crc16
	__size_of_crc16	equ	__end_of_crc16-_crc16
	
_crc16:	
;incstack = 0
	opt	stack 12
; Regs used in _crc16: [wreg-fsr1h+status,2+status,0+pclath]
	line	77
	
l14884:	
;Modbus.c: 77: unsigned char uchCRCHi = 0xFF ;
	movlw	(0FFh)
	movwf	(crc16@uchCRCHi)
	line	78
;Modbus.c: 78: unsigned char uchCRCLo = 0xFF ;
	movlw	(0FFh)
	movwf	(crc16@uchCRCLo)
	line	80
;Modbus.c: 79: unsigned long uIndex ;
;Modbus.c: 80: while (usDataLen--)
	goto	l14894
	line	82
	
l14886:	
;Modbus.c: 81: {
;Modbus.c: 82: uIndex = uchCRCHi ^ *puchMsg++ ;
	movf	(crc16@puchMsg),w
	movwf	fsr1l
	movf	(crc16@puchMsg+1),w
	movwf	fsr1h

	movf	indf1,w
	xorwf	(crc16@uchCRCHi),w
	movwf	(crc16@uIndex)
	clrf	(crc16@uIndex+1)
	clrf	(crc16@uIndex+2)
	clrf	(crc16@uIndex+3)

	
l14888:	
	incf	(crc16@puchMsg),f
	skipnz
	incf	(crc16@puchMsg+1),f
	line	83
	
l14890:	
;Modbus.c: 83: uchCRCHi = uchCRCLo ^ CRCHi[uIndex] ;
	movlw	low(_CRCHi|8000h)
	addwf	(crc16@uIndex),w
	movwf	fsr0l
	movlw	high(_CRCHi|8000h)
	addwfc	(crc16@uIndex+1),w
	movwf	fsr0h
	movf	indf0,w ;code access
	xorwf	(crc16@uchCRCLo),w
	movwf	(crc16@uchCRCHi)
	line	84
	
l14892:	
;Modbus.c: 84: uchCRCLo = CRCLo[uIndex] ;
	movlw	low(_CRCLo|8000h)
	addwf	(crc16@uIndex),w
	movwf	fsr0l
	movlw	high(_CRCLo|8000h)
	addwfc	(crc16@uIndex+1),w
	movwf	fsr0h
	movf	indf0,w ;code access
	movwf	(crc16@uchCRCLo)
	line	80
	
l14894:	
	decf	(crc16@usDataLen),f
	movf	((crc16@usDataLen)),w
	xorlw	0FFh&0ffh
	skipz
	goto	u7361
	goto	u7360
u7361:
	goto	l14886
u7360:
	line	86
	
l14896:	
;Modbus.c: 85: }
;Modbus.c: 86: return ( uchCRCHi<< 8 | uchCRCLo);
	movf	(crc16@uchCRCHi),w
	movwf	(?_crc16+1)
	clrf	(?_crc16)
	movf	(crc16@uchCRCLo),w
	iorwf	(?_crc16),f
	line	87
	
l840:	
	return
	opt stack 0
GLOBAL	__end_of_crc16
	__end_of_crc16:
	signat	_crc16,8314
	global	___lbtofl

;; *************** function ___lbtofl *****************
;; Defined at:
;;		line 27 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lbtofl.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   13[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_read_param_eeprom
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lbtofl.c"
	line	27
global __ptext8
__ptext8:	;psect for function ___lbtofl
psect	text8
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lbtofl.c"
	line	27
	global	__size_of___lbtofl
	__size_of___lbtofl	equ	__end_of___lbtofl-___lbtofl
	
___lbtofl:	
;incstack = 0
	opt	stack 10
; Regs used in ___lbtofl: [wreg+status,2+status,0+pclath+cstack]
;___lbtofl@c stored from wreg
	movlb 0	; select bank0
	movwf	(___lbtofl@c)
	line	29
	
l19178:	
	movf	(___lbtofl@c),w
	movwf	(___flpack@arg)
	clrf	(___flpack@arg+1)
	clrf	(___flpack@arg+2)
	clrf	(___flpack@arg+3)

	movlw	(096h)
	movwf	(___flpack@exp)
	clrf	(___flpack@sign)
	fcall	___flpack
	movf	(3+(?___flpack)),w
	movwf	(?___lbtofl+3)
	movf	(2+(?___flpack)),w
	movwf	(?___lbtofl+2)
	movf	(1+(?___flpack)),w
	movwf	(?___lbtofl+1)
	movf	(0+(?___flpack)),w
	movwf	(?___lbtofl)

	line	30
	
l2249:	
	return
	opt stack 0
GLOBAL	__end_of___lbtofl
	__end_of___lbtofl:
	signat	___lbtofl,4220
	global	_handle_task_process

;; *************** function _handle_task_process *****************
;; Defined at:
;;		line 1232 in file "D:\MCUProject\ZH-SL-F60\src\task.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/2
;;		On exit  : 18/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_Disable_Bost_Pwm
;;		_Disable_Buck_Pwm
;;		_Enable_Bost_Pwm
;;		_Set_Bost_Pwm_Duty
;;		_Set_Buck_Pwm_Duty
;;		___fladd
;;		___fldiv
;;		___flmul
;;		___fltol
;;		_delay_ms
;;		_eeprom_write
;;		_pid_init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-F60\src\task.c"
	line	1232
global __ptext9
__ptext9:	;psect for function _handle_task_process
psect	text9
	file	"D:\MCUProject\ZH-SL-F60\src\task.c"
	line	1232
	global	__size_of_handle_task_process
	__size_of_handle_task_process	equ	__end_of_handle_task_process-_handle_task_process
	
_handle_task_process:	
;incstack = 0
	opt	stack 11
; Regs used in _handle_task_process: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	1236
	
l17998:	
;task.c: 1236: if(handle_short_flag==0x01)
	decf	(_handle_short_flag)^0100h,w
	skipz
	goto	u11711
	goto	u11710
u11711:
	goto	l18002
u11710:
	line	1238
	
l18000:	
;task.c: 1240: load_voltage_status=0x01;
	movlb 4	; select bank4
	clrf	(_over_load_time_count)^0200h
	clrf	(_over_load_time_count+1)^0200h
	line	1242
;task.c: 1244: discharge_led_status=0x00;
	movlb 2	; select bank2
	clrf	(_handle_short_flag)^0100h
	line	1246
;task.c: 1246: while(1);
	
l1556:	
	
l1557:	
	goto	l1556
	line	1249
	
l18002:	
;task.c: 1247: }
;task.c: 1249: if(work_mode==0x00)
	movlb 1	; select bank1
	movf	(_work_mode)^080h,f
	skipz
	goto	u11721
	goto	u11720
u11721:
	goto	l18026
u11720:
	line	1251
	
l18004:	
;task.c: 1250: {
;task.c: 1251: if((pv_voltage_status==0x01)&&(battery_voltage_status==0x01)&&(sys_temper_flag==0x01)&&(mcu_temp_index<0x03))
	movlb 2	; select bank2
	decf	(_pv_voltage_status)^0100h,w
	skipz
	goto	u11731
	goto	u11730
u11731:
	goto	l18014
u11730:
	
l18006:	
	decf	(_battery_voltage_status)^0100h,w
	skipz
	goto	u11741
	goto	u11740
u11741:
	goto	l18014
u11740:
	
l18008:	
	decf	(_sys_temper_flag)^0100h,w
	skipz
	goto	u11751
	goto	u11750
u11751:
	goto	l18014
u11750:
	
l18010:	
	movlw	(03h)
	movlb 1	; select bank1
	subwf	(_mcu_temp_index)^080h,w
	skipnc
	goto	u11761
	goto	u11760
u11761:
	goto	l18014
u11760:
	line	1254
	
l18012:	
;task.c: 1252: {
;task.c: 1254: system_status = 0x01;
	clrf	(_system_status)^080h
	incf	(_system_status)^080h,f
	line	1256
;task.c: 1256: }
	goto	l18252
	line	1257
	
l18014:	
;task.c: 1257: else if((pv_voltage_status==0x02)&&(battery_voltage_status==0x01)&&(sys_temper_flag==0x01)&&(mcu_temp_index<0x03))
	movlb 2	; select bank2
	movf	(_pv_voltage_status)^0100h,w
	xorlw	02h&0ffh
	skipz
	goto	u11771
	goto	u11770
u11771:
	goto	l18024
u11770:
	
l18016:	
	decf	(_battery_voltage_status)^0100h,w
	skipz
	goto	u11781
	goto	u11780
u11781:
	goto	l18024
u11780:
	
l18018:	
	decf	(_sys_temper_flag)^0100h,w
	skipz
	goto	u11791
	goto	u11790
u11791:
	goto	l18024
u11790:
	
l18020:	
	movlw	(03h)
	movlb 1	; select bank1
	subwf	(_mcu_temp_index)^080h,w
	skipnc
	goto	u11801
	goto	u11800
u11801:
	goto	l18024
u11800:
	line	1260
	
l18022:	
;task.c: 1258: {
;task.c: 1260: system_status = 0x02;
	movlw	(02h)
	movwf	(_system_status)^080h
	line	1262
;task.c: 1262: }
	goto	l18252
	line	1265
	
l18024:	
;task.c: 1263: else
;task.c: 1264: {
;task.c: 1265: system_status = 0x00;
	movlb 1	; select bank1
	clrf	(_system_status)^080h
	goto	l18252
	line	1268
	
l18026:	
;task.c: 1268: else if(work_mode==0x01)
	decf	(_work_mode)^080h,w
	skipz
	goto	u11811
	goto	u11810
u11811:
	goto	l18030
u11810:
	goto	l18012
	line	1272
	
l18030:	
;task.c: 1272: else if(work_mode==0x02)
	movf	(_work_mode)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u11821
	goto	u11820
u11821:
	goto	l18024
u11820:
	goto	l18022
	line	1285
	
l18036:	
;task.c: 1291: discharge_led_status=0x00;
	movlb 3	; select bank3
	movf	(_nop_index)^0180h,f
	skipz
	goto	u11831
	goto	u11830
u11831:
	goto	l18104
u11830:
	line	1293
	
l18038:	
;task.c: 1293: Disable_Buck_Pwm();
	fcall	_Disable_Buck_Pwm
	line	1295
	
l18040:	
;task.c: 1295: Set_Buck_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Buck_Pwm_Duty@duty)
	clrf	(Set_Buck_Pwm_Duty@duty+1)
	fcall	_Set_Buck_Pwm_Duty
	line	1297
	
l18042:	
;task.c: 1297: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	1299
;task.c: 1299: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	1301
	
l18044:	
;task.c: 1307: pv_prev=0;
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	1309
	
l18046:	
;task.c: 1309: buck_pwm_value=0;
	movlb 1	; select bank1
	clrf	(_buck_pwm_value)^080h
	clrf	(_buck_pwm_value+1)^080h
	line	1311
	
l18048:	
;task.c: 1311: bost_pwm_value=0;
	clrf	(_bost_pwm_value)^080h
	clrf	(_bost_pwm_value+1)^080h
	line	1313
	
l18050:	
;task.c: 1313: PWM =20;
	movlw	0x41
	movwf	(_PWM+3)^080h
	movlw	0xa0
	movwf	(_PWM+2)^080h
	movlw	0x0
	movwf	(_PWM+1)^080h
	movlw	0x0
	movwf	(_PWM)^080h

	line	1315
	
l18052:	
;task.c: 1315: pid_init ( &PID_CC_charge);
	movlw	low(_PID_CC_charge)
	movlb 0	; select bank0
	movwf	(pid_init@pp)
	movlw	high(_PID_CC_charge)
	movwf	(pid_init@pp+1)
	fcall	_pid_init
	line	1317
	
l18054:	
;task.c: 1317: pid_init ( &PID_CV_charge);
	movlw	low(_PID_CV_charge)
	movwf	(pid_init@pp)
	movlw	high(_PID_CV_charge)
	movwf	(pid_init@pp+1)
	fcall	_pid_init
	line	1319
	
l18056:	
;task.c: 1319: pid_init ( &PID_CC_discharge);
	movlw	low(_PID_CC_discharge)
	movwf	(pid_init@pp)
	movlw	high(_PID_CC_discharge)
	movwf	(pid_init@pp+1)
	fcall	_pid_init
	line	1323
	
l18058:	
;task.c: 1323: PID_CC_charge.Proportion = 0.001;
	movlw	0x3a
	movlb 6	; select bank6
	movwf	3+(_PID_CC_charge)^0300h+04h
	movlw	0x83
	movwf	2+(_PID_CC_charge)^0300h+04h
	movlw	0x12
	movwf	1+(_PID_CC_charge)^0300h+04h
	movlw	0x6f
	movwf	0+(_PID_CC_charge)^0300h+04h

	line	1325
	
l18060:	
;task.c: 1325: PID_CC_charge.Integral = 0;
	clrf	0+(_PID_CC_charge)^0300h+08h
	clrf	1+(_PID_CC_charge)^0300h+08h
	clrf	2+(_PID_CC_charge)^0300h+08h
	clrf	3+(_PID_CC_charge)^0300h+08h
	line	1327
	
l18062:	
;task.c: 1327: PID_CC_charge.Derivative = 0;
	clrf	0+(_PID_CC_charge)^0300h+0Ch
	clrf	1+(_PID_CC_charge)^0300h+0Ch
	clrf	2+(_PID_CC_charge)^0300h+0Ch
	clrf	3+(_PID_CC_charge)^0300h+0Ch
	line	1329
	
l18064:	
;task.c: 1329: PID_CC_charge.SetPoint = 5.0*15.0;
	movlw	0x42
	movwf	(_PID_CC_charge+3)^0300h
	movlw	0x96
	movwf	(_PID_CC_charge+2)^0300h
	movlw	0x0
	movwf	(_PID_CC_charge+1)^0300h
	movlw	0x0
	movwf	(_PID_CC_charge)^0300h

	line	1334
	
l18066:	
;task.c: 1334: PID_CV_charge.Proportion = 0.001;
	movlw	0x3a
	movlb 5	; select bank5
	movwf	3+(_PID_CV_charge)^0280h+04h
	movlw	0x83
	movwf	2+(_PID_CV_charge)^0280h+04h
	movlw	0x12
	movwf	1+(_PID_CV_charge)^0280h+04h
	movlw	0x6f
	movwf	0+(_PID_CV_charge)^0280h+04h

	line	1336
	
l18068:	
;task.c: 1336: PID_CV_charge.Integral = 0;
	clrf	0+(_PID_CV_charge)^0280h+08h
	clrf	1+(_PID_CV_charge)^0280h+08h
	clrf	2+(_PID_CV_charge)^0280h+08h
	clrf	3+(_PID_CV_charge)^0280h+08h
	line	1338
	
l18070:	
;task.c: 1338: PID_CV_charge.Derivative = 0;
	clrf	0+(_PID_CV_charge)^0280h+0Ch
	clrf	1+(_PID_CV_charge)^0280h+0Ch
	clrf	2+(_PID_CV_charge)^0280h+0Ch
	clrf	3+(_PID_CV_charge)^0280h+0Ch
	line	1340
	
l18072:	
;task.c: 1340: PID_CV_charge.SetPoint = dianchi_cv_level+1;
	movlw	0x3f
	movlb 0	; select bank0
	movwf	(___fladd@f1+3)
	movlw	0x80
	movwf	(___fladd@f1+2)
	movlw	0x0
	movwf	(___fladd@f1+1)
	movlw	0x0
	movwf	(___fladd@f1)

	movlb 3	; select bank3
	movf	(_dianchi_cv_level+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___fladd@f2+3)
	movlb 3	; select bank3
	movf	(_dianchi_cv_level+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___fladd@f2+2)
	movlb 3	; select bank3
	movf	(_dianchi_cv_level+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___fladd@f2+1)
	movlb 3	; select bank3
	movf	(_dianchi_cv_level)^0180h,w
	movlb 0	; select bank0
	movwf	(___fladd@f2)

	fcall	___fladd
	movf	(3+(?___fladd)),w
	movlb 5	; select bank5
	movwf	(_PID_CV_charge+3)^0280h
	movlb 0	; select bank0
	movf	(2+(?___fladd)),w
	movlb 5	; select bank5
	movwf	(_PID_CV_charge+2)^0280h
	movlb 0	; select bank0
	movf	(1+(?___fladd)),w
	movlb 5	; select bank5
	movwf	(_PID_CV_charge+1)^0280h
	movlb 0	; select bank0
	movf	(0+(?___fladd)),w
	movlb 5	; select bank5
	movwf	(_PID_CV_charge)^0280h

	line	1344
	
l18074:	
;task.c: 1344: PID_CC_discharge.Proportion = 0.001;
	movlw	0x3a
	movlb 3	; select bank3
	movwf	3+(_PID_CC_discharge)^0180h+04h
	movlw	0x83
	movwf	2+(_PID_CC_discharge)^0180h+04h
	movlw	0x12
	movwf	1+(_PID_CC_discharge)^0180h+04h
	movlw	0x6f
	movwf	0+(_PID_CC_discharge)^0180h+04h

	line	1346
	
l18076:	
;task.c: 1346: PID_CC_discharge.Integral = 0.;
	clrf	0+(_PID_CC_discharge)^0180h+08h
	clrf	1+(_PID_CC_discharge)^0180h+08h
	clrf	2+(_PID_CC_discharge)^0180h+08h
	clrf	3+(_PID_CC_discharge)^0180h+08h
	line	1348
	
l18078:	
;task.c: 1348: PID_CC_discharge.Derivative = 0;
	clrf	0+(_PID_CC_discharge)^0180h+0Ch
	clrf	1+(_PID_CC_discharge)^0180h+0Ch
	clrf	2+(_PID_CC_discharge)^0180h+0Ch
	clrf	3+(_PID_CC_discharge)^0180h+0Ch
	line	1350
	
l18080:	
;task.c: 1350: PID_CC_discharge.SetPoint = (load_cc_I/100)*160;
	movlw	0x43
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0x20
	movwf	(___flmul@f1+2)
	movlw	0x0
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	movlw	0x42
	movwf	(___fldiv@f2+3)
	movlw	0xc8
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	movlb 1	; select bank1
	movf	(_load_cc_I+3)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+3)
	movlb 1	; select bank1
	movf	(_load_cc_I+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+2)
	movlb 1	; select bank1
	movf	(_load_cc_I+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+1)
	movlb 1	; select bank1
	movf	(_load_cc_I)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	(___flmul@f2+3)
	movf	(2+(?___fldiv)),w
	movwf	(___flmul@f2+2)
	movf	(1+(?___fldiv)),w
	movwf	(___flmul@f2+1)
	movf	(0+(?___fldiv)),w
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	1352
	
l18082:	
;task.c: 1352: open_discharge_time=0x00;
	movlb 2	; select bank2
	clrf	(_open_discharge_time)^0100h
	line	1354
	
l18084:	
;task.c: 1354: ms_cnt=0x00;
	movlb 3	; select bank3
	clrf	(_ms_cnt)^0180h
	clrf	(_ms_cnt+1)^0180h
	line	1355
	
l18086:	
;task.c: 1355: se_cnt=0x00;
	clrf	(_se_cnt)^0180h
	clrf	(_se_cnt+1)^0180h
	line	1356
	
l18088:	
;task.c: 1356: mi_cnt=0x00;
	movlb 2	; select bank2
	clrf	(_mi_cnt)^0100h
	clrf	(_mi_cnt+1)^0100h
	line	1357
	
l18090:	
;task.c: 1357: ho_cnt=0x00;
	clrf	(_ho_cnt)
	clrf	(_ho_cnt+1)
	line	1358
	
l18092:	
;task.c: 1358: limit_power_pid_flag=0x00;
	movlb 3	; select bank3
	clrf	(_limit_power_pid_flag)^0180h
	line	1359
	
l18094:	
;task.c: 1359: Adjust_Pout_Flag=0x00;
	movlb 1	; select bank1
	clrf	(_Adjust_Pout_Flag)^080h
	line	1360
	
l18096:	
;task.c: 1360: voltage_adjust_index=0x01;
	clrf	(_voltage_adjust_index)^080h
	incf	(_voltage_adjust_index)^080h,f
	line	1362
	
l18098:	
;task.c: 1362: nop_index=0x01;
	movlb 3	; select bank3
	clrf	(_nop_index)^0180h
	incf	(_nop_index)^0180h,f
	line	1364
	
l18100:	
;task.c: 1364: discharge_index=0x00;
	movlb 1	; select bank1
	clrf	(_discharge_index)^080h
	line	1366
	
l18102:	
;task.c: 1366: charge_index=0x00;
	clrf	(_charge_index)^080h
	line	1368
	
l18104:	
;task.c: 1367: }
;task.c: 1368: if(run_index==0x00)
	movlb 3	; select bank3
	movf	(_run_index)^0180h,f
	skipz
	goto	u11841
	goto	u11840
u11841:
	goto	l1579
u11840:
	line	1370
	
l18106:	
;task.c: 1369: {
;task.c: 1370: Disable_Buck_Pwm();
	fcall	_Disable_Buck_Pwm
	line	1371
	
l18108:	
;task.c: 1371: Set_Buck_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Buck_Pwm_Duty@duty)
	clrf	(Set_Buck_Pwm_Duty@duty+1)
	fcall	_Set_Buck_Pwm_Duty
	line	1372
	
l18110:	
;task.c: 1372: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	1373
	
l18112:	
;task.c: 1373: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	1374
;task.c: 1374: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	1377
	
l18114:	
;task.c: 1377: (LATCbits.LATC3 = 0x01);
	movlb 2	; select bank2
	bsf	(270)^0100h,3	;volatile
	line	1379
	
l18116:	
;task.c: 1379: Enable_Bost_Pwm();
	fcall	_Enable_Bost_Pwm
	line	1381
	
l18118:	
;task.c: 1381: Set_Bost_Pwm_Duty(25);
	movlw	019h
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	1383
	
l18120:	
;task.c: 1383: delay_ms(3000);
	movlw	low(0BB8h)
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	movlw	high(0BB8h)
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	line	1385
	
l18122:	
;task.c: 1385: Set_Bost_Pwm_Duty(0);
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	1387
;task.c: 1387: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	1388
	
l18124:	
;task.c: 1388: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	1389
	
l18126:	
;task.c: 1389: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	1390
	
l18128:	
;task.c: 1390: run_index=0x01;
	movlb 3	; select bank3
	clrf	(_run_index)^0180h
	incf	(_run_index)^0180h,f
	goto	l1579
	line	1396
	
l18130:	
;task.c: 1397: {
;task.c: 1399: discharge_led_status=0x01;
	decf	(_charge_index)^080h,w
	skipz
	goto	u11851
	goto	u11850
u11851:
	goto	l1579
u11850:
	line	1401
	
l18132:	
;task.c: 1401: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	1403
	
l18134:	
;task.c: 1403: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	1405
	
l18136:	
;task.c: 1405: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	1407
	
l18138:	
;task.c: 1407: Disable_Buck_Pwm();
	fcall	_Disable_Buck_Pwm
	line	1409
	
l18140:	
;task.c: 1409: PWM =50;
	movlw	0x42
	movlb 1	; select bank1
	movwf	(_PWM+3)^080h
	movlw	0x48
	movwf	(_PWM+2)^080h
	movlw	0x0
	movwf	(_PWM+1)^080h
	movlw	0x0
	movwf	(_PWM)^080h

	line	1411
	
l18142:	
;task.c: 1411: buck_pwm_value=50;
	movlw	032h
	movwf	(_buck_pwm_value)^080h
	clrf	(_buck_pwm_value+1)^080h
	line	1413
;task.c: 1413: Set_Buck_Pwm_Duty(buck_pwm_value);
	movf	(_buck_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Buck_Pwm_Duty@duty+1)
	movlb 1	; select bank1
	movf	(_buck_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Buck_Pwm_Duty@duty)
	fcall	_Set_Buck_Pwm_Duty
	line	1431
	
l18144:	
;task.c: 1431: pid_init ( &PID_CC_charge);
	movlw	low(_PID_CC_charge)
	movlb 0	; select bank0
	movwf	(pid_init@pp)
	movlw	high(_PID_CC_charge)
	movwf	(pid_init@pp+1)
	fcall	_pid_init
	line	1433
	
l18146:	
;task.c: 1433: pid_init ( &PID_CV_charge);
	movlw	low(_PID_CV_charge)
	movwf	(pid_init@pp)
	movlw	high(_PID_CV_charge)
	movwf	(pid_init@pp+1)
	fcall	_pid_init
	line	1436
	
l18148:	
;task.c: 1436: PID_CC_charge.Proportion = 0.001;
	movlw	0x3a
	movlb 6	; select bank6
	movwf	3+(_PID_CC_charge)^0300h+04h
	movlw	0x83
	movwf	2+(_PID_CC_charge)^0300h+04h
	movlw	0x12
	movwf	1+(_PID_CC_charge)^0300h+04h
	movlw	0x6f
	movwf	0+(_PID_CC_charge)^0300h+04h

	line	1438
	
l18150:	
;task.c: 1438: PID_CC_charge.Integral = 0;
	clrf	0+(_PID_CC_charge)^0300h+08h
	clrf	1+(_PID_CC_charge)^0300h+08h
	clrf	2+(_PID_CC_charge)^0300h+08h
	clrf	3+(_PID_CC_charge)^0300h+08h
	line	1440
	
l18152:	
;task.c: 1440: PID_CC_charge.Derivative = 0;
	clrf	0+(_PID_CC_charge)^0300h+0Ch
	clrf	1+(_PID_CC_charge)^0300h+0Ch
	clrf	2+(_PID_CC_charge)^0300h+0Ch
	clrf	3+(_PID_CC_charge)^0300h+0Ch
	line	1442
	
l18154:	
;task.c: 1442: PID_CC_charge.SetPoint = 5.0*15.0;
	movlw	0x42
	movwf	(_PID_CC_charge+3)^0300h
	movlw	0x96
	movwf	(_PID_CC_charge+2)^0300h
	movlw	0x0
	movwf	(_PID_CC_charge+1)^0300h
	movlw	0x0
	movwf	(_PID_CC_charge)^0300h

	line	1446
	
l18156:	
;task.c: 1446: PID_CV_charge.Proportion = 0.001;
	movlw	0x3a
	movlb 5	; select bank5
	movwf	3+(_PID_CV_charge)^0280h+04h
	movlw	0x83
	movwf	2+(_PID_CV_charge)^0280h+04h
	movlw	0x12
	movwf	1+(_PID_CV_charge)^0280h+04h
	movlw	0x6f
	movwf	0+(_PID_CV_charge)^0280h+04h

	line	1448
	
l18158:	
;task.c: 1448: PID_CV_charge.Integral = 0;
	clrf	0+(_PID_CV_charge)^0280h+08h
	clrf	1+(_PID_CV_charge)^0280h+08h
	clrf	2+(_PID_CV_charge)^0280h+08h
	clrf	3+(_PID_CV_charge)^0280h+08h
	line	1450
	
l18160:	
;task.c: 1450: PID_CV_charge.Derivative = 0;
	clrf	0+(_PID_CV_charge)^0280h+0Ch
	clrf	1+(_PID_CV_charge)^0280h+0Ch
	clrf	2+(_PID_CV_charge)^0280h+0Ch
	clrf	3+(_PID_CV_charge)^0280h+0Ch
	line	1452
	
l18162:	
;task.c: 1457: P_last=0;
	movlw	0x3f
	movlb 0	; select bank0
	movwf	(___fladd@f1+3)
	movlw	0x80
	movwf	(___fladd@f1+2)
	movlw	0x0
	movwf	(___fladd@f1+1)
	movlw	0x0
	movwf	(___fladd@f1)

	movlb 3	; select bank3
	movf	(_dianchi_cv_level+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___fladd@f2+3)
	movlb 3	; select bank3
	movf	(_dianchi_cv_level+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___fladd@f2+2)
	movlb 3	; select bank3
	movf	(_dianchi_cv_level+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___fladd@f2+1)
	movlb 3	; select bank3
	movf	(_dianchi_cv_level)^0180h,w
	movlb 0	; select bank0
	movwf	(___fladd@f2)

	fcall	___fladd
	movf	(3+(?___fladd)),w
	movlb 5	; select bank5
	movwf	(_PID_CV_charge+3)^0280h
	movlb 0	; select bank0
	movf	(2+(?___fladd)),w
	movlb 5	; select bank5
	movwf	(_PID_CV_charge+2)^0280h
	movlb 0	; select bank0
	movf	(1+(?___fladd)),w
	movlb 5	; select bank5
	movwf	(_PID_CV_charge+1)^0280h
	movlb 0	; select bank0
	movf	(0+(?___fladd)),w
	movlb 5	; select bank5
	movwf	(_PID_CV_charge)^0280h

	line	1459
	
l18164:	
;task.c: 1459: open_discharge_time=0x00;
	movlb 2	; select bank2
	clrf	(_open_discharge_time)^0100h
	line	1461
	
l18166:	
;task.c: 1461: ms_cnt=0x00;
	movlb 3	; select bank3
	clrf	(_ms_cnt)^0180h
	clrf	(_ms_cnt+1)^0180h
	line	1462
	
l18168:	
;task.c: 1462: se_cnt=0x00;
	clrf	(_se_cnt)^0180h
	clrf	(_se_cnt+1)^0180h
	line	1463
	
l18170:	
;task.c: 1463: mi_cnt=0x00;
	movlb 2	; select bank2
	clrf	(_mi_cnt)^0100h
	clrf	(_mi_cnt+1)^0100h
	line	1464
	
l18172:	
;task.c: 1464: ho_cnt=0x00;
	clrf	(_ho_cnt)
	clrf	(_ho_cnt+1)
	line	1466
	
l18174:	
;task.c: 1466: limit_power_pid_flag=0x00;
	movlb 3	; select bank3
	clrf	(_limit_power_pid_flag)^0180h
	line	1467
	
l18176:	
;task.c: 1467: Adjust_Pout_Flag=0x00;
	movlb 1	; select bank1
	clrf	(_Adjust_Pout_Flag)^080h
	line	1468
	
l18178:	
;task.c: 1468: voltage_adjust_index=0x01;
	clrf	(_voltage_adjust_index)^080h
	incf	(_voltage_adjust_index)^080h,f
	line	1470
	
l18180:	
;task.c: 1470: nop_index=0x00;
	movlb 3	; select bank3
	clrf	(_nop_index)^0180h
	line	1472
	
l18182:	
;task.c: 1472: discharge_index=0x00;
	movlb 1	; select bank1
	clrf	(_discharge_index)^080h
	line	1474
	
l18184:	
;task.c: 1474: charge_index=0x02;
	movlw	(02h)
	movwf	(_charge_index)^080h
	line	1477
	
l18186:	
;task.c: 1477: today_index = today_index+1;
	movlb 0	; select bank0
	incf	(_today_index),f
	line	1479
	
l18188:	
;task.c: 1479: today_index = today_index%8;
	movlw	(07h)
	andwf	(_today_index),f
	line	1481
	
l18190:	
;task.c: 1481: eeprom_write(0x11,(unsigned char)today_index);
	movf	(_today_index),w
	movwf	(eeprom_write@value)
	movlw	(011h)
	fcall	_eeprom_write
	line	1483
	
l18192:	
;task.c: 1483: bt_00_lv = b_v;
	movlb 2	; select bank2
	movf	(_b_v+3)^0100h,w
	movlb 4	; select bank4
	movwf	(_bt_00_lv+3)^0200h
	movlb 2	; select bank2
	movf	(_b_v+2)^0100h,w
	movlb 4	; select bank4
	movwf	(_bt_00_lv+2)^0200h
	movlb 2	; select bank2
	movf	(_b_v+1)^0100h,w
	movlb 4	; select bank4
	movwf	(_bt_00_lv+1)^0200h
	movlb 2	; select bank2
	movf	(_b_v)^0100h,w
	movlb 4	; select bank4
	movwf	(_bt_00_lv)^0200h

	goto	l1579
	line	1490
	
l18194:	
;task.c: 1491: {
;task.c: 1493: charge_led_status=0x01;
	movf	(_discharge_index)^080h,f
	skipz
	goto	u11861
	goto	u11860
u11861:
	goto	l1579
u11860:
	line	1496
	
l18196:	
;task.c: 1496: Disable_Buck_Pwm();
	fcall	_Disable_Buck_Pwm
	line	1498
	
l18198:	
;task.c: 1498: Set_Buck_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Buck_Pwm_Duty@duty)
	clrf	(Set_Buck_Pwm_Duty@duty+1)
	fcall	_Set_Buck_Pwm_Duty
	line	1500
	
l18200:	
;task.c: 1500: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	1502
	
l18202:	
;task.c: 1502: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	1504
	
l18204:	
;task.c: 1504: PWM =50;
	movlw	0x42
	movlb 1	; select bank1
	movwf	(_PWM+3)^080h
	movlw	0x48
	movwf	(_PWM+2)^080h
	movlw	0x0
	movwf	(_PWM+1)^080h
	movlw	0x0
	movwf	(_PWM)^080h

	line	1506
	
l18206:	
;task.c: 1506: bost_pwm_value=20;
	movlw	014h
	movwf	(_bost_pwm_value)^080h
	clrf	(_bost_pwm_value+1)^080h
	line	1508
;task.c: 1508: Set_Bost_Pwm_Duty(bost_pwm_value);
	movf	(_bost_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty+1)
	movlb 1	; select bank1
	movf	(_bost_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	fcall	_Set_Bost_Pwm_Duty
	line	1530
	
l18208:	
;task.c: 1530: pid_init ( &PID_CC_discharge);
	movlw	low(_PID_CC_discharge)
	movlb 0	; select bank0
	movwf	(pid_init@pp)
	movlw	high(_PID_CC_discharge)
	movwf	(pid_init@pp+1)
	fcall	_pid_init
	line	1533
	
l18210:	
;task.c: 1533: PID_CC_discharge.Proportion = 0.001;
	movlw	0x3a
	movlb 3	; select bank3
	movwf	3+(_PID_CC_discharge)^0180h+04h
	movlw	0x83
	movwf	2+(_PID_CC_discharge)^0180h+04h
	movlw	0x12
	movwf	1+(_PID_CC_discharge)^0180h+04h
	movlw	0x6f
	movwf	0+(_PID_CC_discharge)^0180h+04h

	line	1535
	
l18212:	
;task.c: 1535: PID_CC_discharge.Integral = 0;
	clrf	0+(_PID_CC_discharge)^0180h+08h
	clrf	1+(_PID_CC_discharge)^0180h+08h
	clrf	2+(_PID_CC_discharge)^0180h+08h
	clrf	3+(_PID_CC_discharge)^0180h+08h
	line	1537
	
l18214:	
;task.c: 1537: PID_CC_discharge.Derivative = 0;
	clrf	0+(_PID_CC_discharge)^0180h+0Ch
	clrf	1+(_PID_CC_discharge)^0180h+0Ch
	clrf	2+(_PID_CC_discharge)^0180h+0Ch
	clrf	3+(_PID_CC_discharge)^0180h+0Ch
	line	1539
	
l18216:	
;task.c: 1539: PID_CC_discharge.SetPoint = (load_cc_I/100)*160;
	movlw	0x43
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0x20
	movwf	(___flmul@f1+2)
	movlw	0x0
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	movlw	0x42
	movwf	(___fldiv@f2+3)
	movlw	0xc8
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	movlb 1	; select bank1
	movf	(_load_cc_I+3)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+3)
	movlb 1	; select bank1
	movf	(_load_cc_I+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+2)
	movlb 1	; select bank1
	movf	(_load_cc_I+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+1)
	movlb 1	; select bank1
	movf	(_load_cc_I)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	(___flmul@f2+3)
	movf	(2+(?___fldiv)),w
	movwf	(___flmul@f2+2)
	movf	(1+(?___fldiv)),w
	movwf	(___flmul@f2+1)
	movf	(0+(?___fldiv)),w
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	1541
	
l18218:	
;task.c: 1541: open_discharge_time=0x00;
	movlb 2	; select bank2
	clrf	(_open_discharge_time)^0100h
	line	1543
	
l18220:	
;task.c: 1543: ms_cnt=0x00;
	movlb 3	; select bank3
	clrf	(_ms_cnt)^0180h
	clrf	(_ms_cnt+1)^0180h
	line	1544
	
l18222:	
;task.c: 1544: se_cnt=0x00;
	clrf	(_se_cnt)^0180h
	clrf	(_se_cnt+1)^0180h
	line	1545
	
l18224:	
;task.c: 1545: mi_cnt=0x00;
	movlb 2	; select bank2
	clrf	(_mi_cnt)^0100h
	clrf	(_mi_cnt+1)^0100h
	line	1546
	
l18226:	
;task.c: 1546: ho_cnt=0x00;
	clrf	(_ho_cnt)
	clrf	(_ho_cnt+1)
	line	1548
	
l18228:	
;task.c: 1548: limit_power_pid_flag=0x00;
	movlb 3	; select bank3
	clrf	(_limit_power_pid_flag)^0180h
	line	1549
	
l18230:	
;task.c: 1549: Adjust_Pout_Flag=0x00;
	movlb 1	; select bank1
	clrf	(_Adjust_Pout_Flag)^080h
	line	1550
	
l18232:	
;task.c: 1550: voltage_adjust_index=0x01;
	clrf	(_voltage_adjust_index)^080h
	incf	(_voltage_adjust_index)^080h,f
	line	1552
	
l18234:	
;task.c: 1552: nop_index=0x00;
	movlb 3	; select bank3
	clrf	(_nop_index)^0180h
	line	1554
	
l18236:	
;task.c: 1554: discharge_index=0x01;
	movlb 1	; select bank1
	clrf	(_discharge_index)^080h
	incf	(_discharge_index)^080h,f
	line	1556
	
l18238:	
;task.c: 1556: charge_index=0x00;
	clrf	(_charge_index)^080h
	line	1559
	
l18240:	
;task.c: 1559: bt_00_hv = b_v;
	movlb 2	; select bank2
	movf	(_b_v+3)^0100h,w
	movlb 4	; select bank4
	movwf	(_bt_00_hv+3)^0200h
	movlb 2	; select bank2
	movf	(_b_v+2)^0100h,w
	movlb 4	; select bank4
	movwf	(_bt_00_hv+2)^0200h
	movlb 2	; select bank2
	movf	(_b_v+1)^0100h,w
	movlb 4	; select bank4
	movwf	(_bt_00_hv+1)^0200h
	movlb 2	; select bank2
	movf	(_b_v)^0100h,w
	movlb 4	; select bank4
	movwf	(_bt_00_hv)^0200h

	line	1561
	
l18242:	
;task.c: 1561: eeprom_write((0x12+4*( (today_index+8-0)%8 )+0),(unsigned char)(bt_00_hv/256));
	movf	(_bt_00_hv+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+3)
	movlb 4	; select bank4
	movf	(_bt_00_hv+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+2)
	movlb 4	; select bank4
	movf	(_bt_00_hv+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+1)
	movlb 4	; select bank4
	movf	(_bt_00_hv)^0200h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1)

	movlw	0x43
	movwf	(___fldiv@f2+3)
	movlw	0x80
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	(___fltol@f1+3)
	movf	(2+(?___fldiv)),w
	movwf	(___fltol@f1+2)
	movf	(1+(?___fldiv)),w
	movwf	(___fltol@f1+1)
	movf	(0+(?___fldiv)),w
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movwf	(eeprom_write@value)
	movf	(_today_index),w
	addlw	08h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	012h
	fcall	_eeprom_write
	line	1563
	
l18244:	
;task.c: 1563: eeprom_write((0x12+4*( (today_index+8-0)%8 )+1),(unsigned char)bt_00_hv);
	movlb 4	; select bank4
	movf	(_bt_00_hv+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+3)
	movlb 4	; select bank4
	movf	(_bt_00_hv+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+2)
	movlb 4	; select bank4
	movf	(_bt_00_hv+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+1)
	movlb 4	; select bank4
	movf	(_bt_00_hv)^0200h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movwf	(eeprom_write@value)
	movf	(_today_index),w
	addlw	08h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	013h
	fcall	_eeprom_write
	line	1565
	
l18246:	
;task.c: 1565: eeprom_write((0x12+4*( (today_index+8-0)%8 )+2),(unsigned char)(bt_00_lv/256));
	movlb 4	; select bank4
	movf	(_bt_00_lv+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+3)
	movlb 4	; select bank4
	movf	(_bt_00_lv+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+2)
	movlb 4	; select bank4
	movf	(_bt_00_lv+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+1)
	movlb 4	; select bank4
	movf	(_bt_00_lv)^0200h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1)

	movlw	0x43
	movwf	(___fldiv@f2+3)
	movlw	0x80
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	(___fltol@f1+3)
	movf	(2+(?___fldiv)),w
	movwf	(___fltol@f1+2)
	movf	(1+(?___fldiv)),w
	movwf	(___fltol@f1+1)
	movf	(0+(?___fldiv)),w
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movwf	(eeprom_write@value)
	movf	(_today_index),w
	addlw	08h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	014h
	fcall	_eeprom_write
	line	1567
	
l18248:	
;task.c: 1567: eeprom_write((0x12+4*( (today_index+8-0)%8 )+3),(unsigned char)bt_00_lv);
	movlb 4	; select bank4
	movf	(_bt_00_lv+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+3)
	movlb 4	; select bank4
	movf	(_bt_00_lv+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+2)
	movlb 4	; select bank4
	movf	(_bt_00_lv+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+1)
	movlb 4	; select bank4
	movf	(_bt_00_lv)^0200h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	0+(((0+(?___fltol)))),w
	movwf	(eeprom_write@value)
	movf	(_today_index),w
	addlw	08h
	andlw	07h
	addwf	wreg,w
	addwf	wreg,w
	addlw	015h
	fcall	_eeprom_write
	goto	l1579
	line	1282
	
l18252:	
	movf	(_system_status)^080h,w
	; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 0 to 2
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           12     6 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l18036
	xorlw	1^0	; case 1
	skipnz
	goto	l18130
	xorlw	2^1	; case 2
	skipnz
	goto	l18194
	goto	l1579
	opt asmopt_on

	line	1580
	
l1579:	
	return
	opt stack 0
GLOBAL	__end_of_handle_task_process
	__end_of_handle_task_process:
	signat	_handle_task_process,88
	global	_handle_ad_loop

;; *************** function _handle_ad_loop *****************
;; Defined at:
;;		line 124 in file "D:\MCUProject\ZH-SL-F60\src\task.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data_cc_var     4    0[BANK5 ] float 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/2
;;		On exit  : 1F/2
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       4       0       0       0       0       0       0       0
;;      Temps:          0       0       2       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       2       0       0       0       4       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_Disable_Bost_Pwm
;;		_Disable_Buck_Pwm
;;		_Enable_Bost_Pwm
;;		_Enable_Buck_Pwm
;;		_Mppt_Charge
;;		_Set_Bost_Pwm_Duty
;;		_Set_Buck_Pwm_Duty
;;		___awtofl
;;		___fladd
;;		___fldiv
;;		___flge
;;		___flmul
;;		___fltol
;;		___lldiv
;;		___lwdiv
;;		___lwtofl
;;		___wmul
;;		_delay_ms
;;		_pid_calc
;;		_start_ad_convert
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	line	124
global __ptext10
__ptext10:	;psect for function _handle_ad_loop
psect	text10
	file	"D:\MCUProject\ZH-SL-F60\src\task.c"
	line	124
	global	__size_of_handle_ad_loop
	__size_of_handle_ad_loop	equ	__end_of_handle_ad_loop-_handle_ad_loop
	
_handle_ad_loop:	
;incstack = 0
	opt	stack 8
; Regs used in _handle_ad_loop: [wreg-fsr1h+status,2+status,0+pclath+cstack]
	line	128
	
l17172:	
;task.c: 126: float data_cc_var;
;task.c: 128: if(handle_an0_process_flag==0x01)
	decf	(_handle_an0_process_flag)^0100h,w
	skipz
	goto	u9971
	goto	u9970
u9971:
	goto	l17248
u9970:
	line	130
	
l17174:	
;task.c: 129: {
;task.c: 130: ADCON1bits.ADPREF =0b00;
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	movlb 1	; select bank1
	andwf	(158)^080h,f	;volatile
	line	132
	
l17176:	
;task.c: 132: mcu_value=start_ad_convert(0b11101);
	movlw	(01Dh)
	fcall	_start_ad_convert
	movf	(1+(?_start_ad_convert)),w
	movlb 1	; select bank1
	movwf	(_mcu_value+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_start_ad_convert)),w
	movlb 1	; select bank1
	movwf	(_mcu_value)^080h
	line	134
	
l17178:	
;task.c: 134: ADCON1bits.ADPREF =0b11;
	movlw	(03h & ((1<<2)-1))<<0
	iorwf	(158)^080h,f	;volatile
	line	136
	
l17180:	
;task.c: 136: if(mcu_value<490)
	movlw	high(01EAh)
	subwf	(_mcu_value+1)^080h,w
	movlw	low(01EAh)
	skipnz
	subwf	(_mcu_value)^080h,w
	skipnc
	goto	u9981
	goto	u9980
u9981:
	goto	l17194
u9980:
	line	138
	
l17182:	
;task.c: 137: {
;task.c: 138: mcu_t00_time_count++;
	movlb 3	; select bank3
	incf	(_mcu_t00_time_count)^0180h,f
	line	139
	
l17184:	
;task.c: 139: mcu_t01_time_count=0x00;
	clrf	(_mcu_t01_time_count)^0180h
	line	140
	
l17186:	
;task.c: 140: mcu_t02_time_count=0x00;
	clrf	(_mcu_t02_time_count)^0180h
	line	141
	
l17188:	
;task.c: 141: mcu_t03_time_count=0x00;
	clrf	(_mcu_t03_time_count)^0180h
	line	143
	
l17190:	
;task.c: 143: if(mcu_t00_time_count>=120)
	movlw	(078h)
	subwf	(_mcu_t00_time_count)^0180h,w
	skipc
	goto	u9991
	goto	u9990
u9991:
	goto	l1317
u9990:
	line	145
	
l17192:	
;task.c: 144: {
;task.c: 145: mcu_t00_time_count=0x00;
	clrf	(_mcu_t00_time_count)^0180h
	line	147
;task.c: 147: mcu_temp_index=0x00;
	movlb 1	; select bank1
	clrf	(_mcu_temp_index)^080h
	goto	l1317
	line	150
	
l17194:	
;task.c: 150: else if(mcu_value>510 && mcu_value<530)
	movlw	high(01FFh)
	subwf	(_mcu_value+1)^080h,w
	movlw	low(01FFh)
	skipnz
	subwf	(_mcu_value)^080h,w
	skipc
	goto	u10001
	goto	u10000
u10001:
	goto	l17212
u10000:
	
l17196:	
	movlw	high(0212h)
	subwf	(_mcu_value+1)^080h,w
	movlw	low(0212h)
	skipnz
	subwf	(_mcu_value)^080h,w
	skipnc
	goto	u10011
	goto	u10010
u10011:
	goto	l17212
u10010:
	line	152
	
l17198:	
;task.c: 151: {
;task.c: 152: mcu_t01_time_count++;
	movlb 3	; select bank3
	incf	(_mcu_t01_time_count)^0180h,f
	line	153
	
l17200:	
;task.c: 153: mcu_t00_time_count=0x00;
	clrf	(_mcu_t00_time_count)^0180h
	line	154
	
l17202:	
;task.c: 154: mcu_t02_time_count=0x00;
	clrf	(_mcu_t02_time_count)^0180h
	line	155
	
l17204:	
;task.c: 155: mcu_t03_time_count=0x00;
	clrf	(_mcu_t03_time_count)^0180h
	line	157
	
l17206:	
;task.c: 157: if(mcu_t01_time_count>=60)
	movlw	(03Ch)
	subwf	(_mcu_t01_time_count)^0180h,w
	skipc
	goto	u10021
	goto	u10020
u10021:
	goto	l1317
u10020:
	line	159
	
l17208:	
;task.c: 158: {
;task.c: 159: mcu_t01_time_count=0x00;
	clrf	(_mcu_t01_time_count)^0180h
	line	161
	
l17210:	
;task.c: 161: mcu_temp_index=0x01;
	movlb 1	; select bank1
	clrf	(_mcu_temp_index)^080h
	incf	(_mcu_temp_index)^080h,f
	goto	l1317
	line	164
	
l17212:	
;task.c: 164: else if(mcu_value>530 && mcu_value<550)
	movlw	high(0213h)
	subwf	(_mcu_value+1)^080h,w
	movlw	low(0213h)
	skipnz
	subwf	(_mcu_value)^080h,w
	skipc
	goto	u10031
	goto	u10030
u10031:
	goto	l17230
u10030:
	
l17214:	
	movlw	high(0226h)
	subwf	(_mcu_value+1)^080h,w
	movlw	low(0226h)
	skipnz
	subwf	(_mcu_value)^080h,w
	skipnc
	goto	u10041
	goto	u10040
u10041:
	goto	l17230
u10040:
	line	166
	
l17216:	
;task.c: 165: {
;task.c: 166: mcu_t02_time_count++;
	movlb 3	; select bank3
	incf	(_mcu_t02_time_count)^0180h,f
	line	167
	
l17218:	
;task.c: 167: mcu_t00_time_count=0x00;
	clrf	(_mcu_t00_time_count)^0180h
	line	168
	
l17220:	
;task.c: 168: mcu_t01_time_count=0x00;
	clrf	(_mcu_t01_time_count)^0180h
	line	169
	
l17222:	
;task.c: 169: mcu_t03_time_count=0x00;
	clrf	(_mcu_t03_time_count)^0180h
	line	171
	
l17224:	
;task.c: 171: if(mcu_t02_time_count>=30)
	movlw	(01Eh)
	subwf	(_mcu_t02_time_count)^0180h,w
	skipc
	goto	u10051
	goto	u10050
u10051:
	goto	l1317
u10050:
	line	173
	
l17226:	
;task.c: 172: {
;task.c: 173: mcu_t02_time_count=0x00;
	clrf	(_mcu_t02_time_count)^0180h
	line	175
	
l17228:	
;task.c: 175: mcu_temp_index=0x02;
	movlw	(02h)
	movlb 1	; select bank1
	movwf	(_mcu_temp_index)^080h
	goto	l1317
	line	178
	
l17230:	
;task.c: 178: else if(mcu_value>=550)
	movlw	high(0226h)
	subwf	(_mcu_value+1)^080h,w
	movlw	low(0226h)
	skipnz
	subwf	(_mcu_value)^080h,w
	skipc
	goto	u10061
	goto	u10060
u10061:
	goto	l17246
u10060:
	line	180
	
l17232:	
;task.c: 179: {
;task.c: 180: mcu_t03_time_count++;
	movlb 3	; select bank3
	incf	(_mcu_t03_time_count)^0180h,f
	line	181
	
l17234:	
;task.c: 181: mcu_t00_time_count=0x00;
	clrf	(_mcu_t00_time_count)^0180h
	line	182
	
l17236:	
;task.c: 182: mcu_t01_time_count=0x00;
	clrf	(_mcu_t01_time_count)^0180h
	line	183
	
l17238:	
;task.c: 183: mcu_t02_time_count=0x00;
	clrf	(_mcu_t02_time_count)^0180h
	line	185
	
l17240:	
;task.c: 185: if(mcu_t03_time_count>=10)
	movlw	(0Ah)
	subwf	(_mcu_t03_time_count)^0180h,w
	skipc
	goto	u10071
	goto	u10070
u10071:
	goto	l1317
u10070:
	line	187
	
l17242:	
;task.c: 186: {
;task.c: 187: mcu_t03_time_count=0x00;
	clrf	(_mcu_t03_time_count)^0180h
	line	189
	
l17244:	
;task.c: 189: mcu_temp_index=0x03;
	movlw	(03h)
	movlb 1	; select bank1
	movwf	(_mcu_temp_index)^080h
	goto	l1317
	line	194
	
l17246:	
;task.c: 192: else
;task.c: 193: {
;task.c: 194: mcu_t00_time_count=0x00;
	movlb 3	; select bank3
	clrf	(_mcu_t00_time_count)^0180h
	line	195
;task.c: 195: mcu_t01_time_count=0x00;
	clrf	(_mcu_t01_time_count)^0180h
	line	196
;task.c: 196: mcu_t02_time_count=0x00;
	clrf	(_mcu_t02_time_count)^0180h
	line	197
;task.c: 197: mcu_t03_time_count=0x00;
	clrf	(_mcu_t03_time_count)^0180h
	line	198
	
l1317:	
	line	201
;task.c: 198: }
;task.c: 201: handle_an0_process_flag=0x00;
	movlb 2	; select bank2
	clrf	(_handle_an0_process_flag)^0100h
	line	207
	
l17248:	
;task.c: 203: }
;task.c: 207: if(handle_an1_process_flag==0x01)
	decf	(_handle_an1_process_flag)^0100h,w
	skipz
	goto	u10081
	goto	u10080
u10081:
	goto	l17274
u10080:
	line	210
	
l17250:	
;task.c: 208: {
;task.c: 210: temperature_value=start_ad_convert(0b00001);
	movlw	(01h)
	fcall	_start_ad_convert
	movf	(1+(?_start_ad_convert)),w
	movlb 2	; select bank2
	movwf	(_temperature_value+1)^0100h
	movlb 0	; select bank0
	movf	(0+(?_start_ad_convert)),w
	movlb 2	; select bank2
	movwf	(_temperature_value)^0100h
	line	212
	
l17252:	
;task.c: 212: if((temperature_value>4)&&(temperature_value<602))
	movlw	high(05h)
	subwf	(_temperature_value+1)^0100h,w
	movlw	low(05h)
	skipnz
	subwf	(_temperature_value)^0100h,w
	skipc
	goto	u10091
	goto	u10090
u10091:
	goto	l17266
u10090:
	
l17254:	
	movlw	high(025Ah)
	subwf	(_temperature_value+1)^0100h,w
	movlw	low(025Ah)
	skipnz
	subwf	(_temperature_value)^0100h,w
	skipnc
	goto	u10101
	goto	u10100
u10101:
	goto	l17266
u10100:
	line	214
	
l17256:	
;task.c: 213: {
;task.c: 214: temper_time_count++;
	movlb 3	; select bank3
	incf	(_temper_time_count)^0180h,f
	line	216
	
l17258:	
;task.c: 216: over_temper_time_count=0x00;
	clrf	(_over_temper_time_count)^0180h
	line	218
	
l17260:	
;task.c: 218: if(temper_time_count>=10)
	movlw	(0Ah)
	subwf	(_temper_time_count)^0180h,w
	skipc
	goto	u10111
	goto	u10110
u10111:
	goto	l1330
u10110:
	line	220
	
l17262:	
;task.c: 219: {
;task.c: 220: temper_time_count=0x00;
	clrf	(_temper_time_count)^0180h
	line	222
	
l17264:	
;task.c: 222: sys_temper_flag=0x01;
	movlb 2	; select bank2
	clrf	(_sys_temper_flag)^0100h
	incf	(_sys_temper_flag)^0100h,f
	goto	l1330
	line	227
	
l17266:	
;task.c: 225: else
;task.c: 226: {
;task.c: 227: over_temper_time_count++;
	movlb 3	; select bank3
	incf	(_over_temper_time_count)^0180h,f
	line	229
	
l17268:	
;task.c: 229: temper_time_count=0x00;
	clrf	(_temper_time_count)^0180h
	line	231
	
l17270:	
;task.c: 231: if(over_temper_time_count>=10)
	movlw	(0Ah)
	subwf	(_over_temper_time_count)^0180h,w
	skipc
	goto	u10121
	goto	u10120
u10121:
	goto	l1330
u10120:
	line	233
	
l17272:	
;task.c: 232: {
;task.c: 233: over_temper_time_count=0x00;
	clrf	(_over_temper_time_count)^0180h
	line	235
;task.c: 235: sys_temper_flag=0x00;
	movlb 2	; select bank2
	clrf	(_sys_temper_flag)^0100h
	line	237
	
l1330:	
	line	239
;task.c: 236: }
;task.c: 237: }
;task.c: 239: handle_an1_process_flag=0x00;
	movlb 2	; select bank2
	clrf	(_handle_an1_process_flag)^0100h
	line	246
	
l17274:	
;task.c: 241: }
;task.c: 246: if(handle_an2_process_flag==0x01)
	decf	(_handle_an2_process_flag)^0100h,w
	skipz
	goto	u10131
	goto	u10130
u10131:
	goto	l17336
u10130:
	line	249
	
l17276:	
;task.c: 247: {
;task.c: 249: pv_voltage_value=start_ad_convert(0b00010);
	movlw	(02h)
	fcall	_start_ad_convert
	movf	(1+(?_start_ad_convert)),w
	movlb 1	; select bank1
	movwf	(_pv_voltage_value+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_start_ad_convert)),w
	movlb 1	; select bank1
	movwf	(_pv_voltage_value)^080h
	line	260
	
l17278:	
;task.c: 260: if(pv_index==0x00)
	movlb 2	; select bank2
	movf	(_pv_index)^0100h,f
	skipz
	goto	u10141
	goto	u10140
u10141:
	goto	l17304
u10140:
	line	262
	
l17280:	
;task.c: 261: {
;task.c: 262: if(pv_voltage_value<=light_on_pv_level)
	movlb 5	; select bank5
	movf	(_light_on_pv_level+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 5	; select bank5
	movf	(_light_on_pv_level+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 5	; select bank5
	movf	(_light_on_pv_level+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 5	; select bank5
	movf	(_light_on_pv_level)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(_pv_voltage_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c+1)
	movlb 1	; select bank1
	movf	(_pv_voltage_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff2+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff2+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff2+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u10151
	goto	u10150
u10151:
	goto	l17292
u10150:
	line	264
	
l17282:	
;task.c: 263: {
;task.c: 264: night_time_count++;
	movlb 4	; select bank4
	incf	(_night_time_count)^0200h,f
	skipnz
	incf	(_night_time_count+1)^0200h,f
	skipnz
	incf	(_night_time_count+2)^0200h,f
	skipnz
	incf	(_night_time_count+3)^0200h,f
	line	266
	
l17284:	
;task.c: 266: day_time_count=0x00;
	movlb 5	; select bank5
	clrf	(_day_time_count)^0280h
	clrf	(_day_time_count+1)^0280h
	clrf	(_day_time_count+2)^0280h
	clrf	(_day_time_count+3)^0280h
	line	268
	
l17286:	
;task.c: 268: if(night_time_count>light_time_level)
	movlb 4	; select bank4
	movf	(_night_time_count+3)^0200h,w
	movlb 3	; select bank3
	subwf	(_light_time_level+3)^0180h,w
	skipz
	goto	u10165
	movlb 4	; select bank4
	movf	(_night_time_count+2)^0200h,w
	movlb 3	; select bank3
	subwf	(_light_time_level+2)^0180h,w
	skipz
	goto	u10165
	movlb 4	; select bank4
	movf	(_night_time_count+1)^0200h,w
	movlb 3	; select bank3
	subwf	(_light_time_level+1)^0180h,w
	skipz
	goto	u10165
	movlb 4	; select bank4
	movf	(_night_time_count)^0200h,w
	movlb 3	; select bank3
	subwf	(_light_time_level)^0180h,w
u10165:
	skipnc
	goto	u10161
	goto	u10160
u10161:
	goto	l17304
u10160:
	line	270
	
l17288:	
;task.c: 269: {
;task.c: 270: night_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_night_time_count)^0200h
	clrf	(_night_time_count+1)^0200h
	clrf	(_night_time_count+2)^0200h
	clrf	(_night_time_count+3)^0200h
	line	272
	
l17290:	
;task.c: 272: pv_voltage_status=0x02;
	movlw	(02h)
	movlb 2	; select bank2
	movwf	(_pv_voltage_status)^0100h
	goto	l17304
	line	277
	
l17292:	
;task.c: 277: else if((pv_voltage_value>(light_off_pv_level)))
	movlb 5	; select bank5
	movf	(_light_off_pv_level+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 5	; select bank5
	movf	(_light_off_pv_level+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 5	; select bank5
	movf	(_light_off_pv_level+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 5	; select bank5
	movf	(_light_off_pv_level)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(_pv_voltage_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c+1)
	movlb 1	; select bank1
	movf	(_pv_voltage_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff2+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff2+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff2+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u10171
	goto	u10170
u10171:
	goto	l1337
u10170:
	line	279
	
l17294:	
;task.c: 278: {
;task.c: 279: day_time_count++;
	movlb 5	; select bank5
	incf	(_day_time_count)^0280h,f
	skipnz
	incf	(_day_time_count+1)^0280h,f
	skipnz
	incf	(_day_time_count+2)^0280h,f
	skipnz
	incf	(_day_time_count+3)^0280h,f
	line	281
	
l17296:	
;task.c: 281: night_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_night_time_count)^0200h
	clrf	(_night_time_count+1)^0200h
	clrf	(_night_time_count+2)^0200h
	clrf	(_night_time_count+3)^0200h
	line	283
	
l17298:	
;task.c: 283: if(day_time_count>light_time_level)
	movlb 5	; select bank5
	movf	(_day_time_count+3)^0280h,w
	movlb 3	; select bank3
	subwf	(_light_time_level+3)^0180h,w
	skipz
	goto	u10185
	movlb 5	; select bank5
	movf	(_day_time_count+2)^0280h,w
	movlb 3	; select bank3
	subwf	(_light_time_level+2)^0180h,w
	skipz
	goto	u10185
	movlb 5	; select bank5
	movf	(_day_time_count+1)^0280h,w
	movlb 3	; select bank3
	subwf	(_light_time_level+1)^0180h,w
	skipz
	goto	u10185
	movlb 5	; select bank5
	movf	(_day_time_count)^0280h,w
	movlb 3	; select bank3
	subwf	(_light_time_level)^0180h,w
u10185:
	skipnc
	goto	u10181
	goto	u10180
u10181:
	goto	l1336
u10180:
	line	285
	
l17300:	
;task.c: 284: {
;task.c: 285: day_time_count=0x00;
	movlb 5	; select bank5
	clrf	(_day_time_count)^0280h
	clrf	(_day_time_count+1)^0280h
	clrf	(_day_time_count+2)^0280h
	clrf	(_day_time_count+3)^0280h
	line	287
	
l17302:	
;task.c: 287: pv_voltage_status=0x00;
	movlb 2	; select bank2
	clrf	(_pv_voltage_status)^0100h
	goto	l17304
	line	291
	
l1337:	
	line	293
;task.c: 291: else
;task.c: 292: {
;task.c: 293: day_time_count=0x00;
	movlb 5	; select bank5
	clrf	(_day_time_count)^0280h
	clrf	(_day_time_count+1)^0280h
	clrf	(_day_time_count+2)^0280h
	clrf	(_day_time_count+3)^0280h
	line	295
;task.c: 295: night_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_night_time_count)^0200h
	clrf	(_night_time_count+1)^0200h
	clrf	(_night_time_count+2)^0200h
	clrf	(_night_time_count+3)^0200h
	goto	l17304
	line	296
	
l1336:	
	line	299
	
l17304:	
;task.c: 296: }
;task.c: 297: }
;task.c: 299: if((pv_voltage_value>=light_off_pv_level)&&(pv_voltage_value<1000))
	movlb 1	; select bank1
	movf	(_pv_voltage_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c+1)
	movlb 1	; select bank1
	movf	(_pv_voltage_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff1)

	movlb 5	; select bank5
	movf	(_light_off_pv_level+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 5	; select bank5
	movf	(_light_off_pv_level+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 5	; select bank5
	movf	(_light_off_pv_level+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 5	; select bank5
	movf	(_light_off_pv_level)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u10191
	goto	u10190
u10191:
	goto	l17314
u10190:
	
l17306:	
	movlw	high(03E8h)
	movlb 1	; select bank1
	subwf	(_pv_voltage_value+1)^080h,w
	movlw	low(03E8h)
	skipnz
	subwf	(_pv_voltage_value)^080h,w
	skipnc
	goto	u10201
	goto	u10200
u10201:
	goto	l17314
u10200:
	line	301
	
l17308:	
;task.c: 300: {
;task.c: 301: pv_time_count++;
	movlb 5	; select bank5
	incf	(_pv_time_count)^0280h,f
	skipnz
	incf	(_pv_time_count+1)^0280h,f
	skipnz
	incf	(_pv_time_count+2)^0280h,f
	skipnz
	incf	(_pv_time_count+3)^0280h,f
	line	303
	
l17310:	
;task.c: 303: if(pv_time_count>(light_time_level/5))
	movlw	05h
	movlb 0	; select bank0
	movwf	(___lldiv@divisor)
	clrf	(___lldiv@divisor+1)
	clrf	(___lldiv@divisor+2)
	clrf	(___lldiv@divisor+3)

	movlb 3	; select bank3
	movf	(_light_time_level+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___lldiv@dividend+3)
	movlb 3	; select bank3
	movf	(_light_time_level+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___lldiv@dividend+2)
	movlb 3	; select bank3
	movf	(_light_time_level+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___lldiv@dividend+1)
	movlb 3	; select bank3
	movf	(_light_time_level)^0180h,w
	movlb 0	; select bank0
	movwf	(___lldiv@dividend)

	fcall	___lldiv
	movlb 5	; select bank5
	movf	(_pv_time_count+3)^0280h,w
	movlb 0	; select bank0
	subwf	(3+(?___lldiv)),w
	skipz
	goto	u10215
	movlb 5	; select bank5
	movf	(_pv_time_count+2)^0280h,w
	movlb 0	; select bank0
	subwf	(2+(?___lldiv)),w
	skipz
	goto	u10215
	movlb 5	; select bank5
	movf	(_pv_time_count+1)^0280h,w
	movlb 0	; select bank0
	subwf	(1+(?___lldiv)),w
	skipz
	goto	u10215
	movlb 5	; select bank5
	movf	(_pv_time_count)^0280h,w
	movlb 0	; select bank0
	subwf	(0+(?___lldiv)),w
u10215:
	skipnc
	goto	u10211
	goto	u10210
u10211:
	goto	l17320
u10210:
	line	305
	
l17312:	
;task.c: 304: {
;task.c: 305: pv_time_count=0x00;
	movlb 5	; select bank5
	clrf	(_pv_time_count)^0280h
	clrf	(_pv_time_count+1)^0280h
	clrf	(_pv_time_count+2)^0280h
	clrf	(_pv_time_count+3)^0280h
	line	307
;task.c: 307: pv_voltage_status=0x01;
	movlb 2	; select bank2
	clrf	(_pv_voltage_status)^0100h
	incf	(_pv_voltage_status)^0100h,f
	line	309
;task.c: 309: day_time_count=0x00;
	movlb 5	; select bank5
	clrf	(_day_time_count)^0280h
	clrf	(_day_time_count+1)^0280h
	clrf	(_day_time_count+2)^0280h
	clrf	(_day_time_count+3)^0280h
	line	311
;task.c: 311: night_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_night_time_count)^0200h
	clrf	(_night_time_count+1)^0200h
	clrf	(_night_time_count+2)^0200h
	clrf	(_night_time_count+3)^0200h
	line	313
;task.c: 313: pv_index=0x01;
	movlb 2	; select bank2
	clrf	(_pv_index)^0100h
	incf	(_pv_index)^0100h,f
	goto	l17320
	line	318
	
l17314:	
;task.c: 318: else if(pv_voltage_value>=1000)
	movlw	high(03E8h)
	movlb 1	; select bank1
	subwf	(_pv_voltage_value+1)^080h,w
	movlw	low(03E8h)
	skipnz
	subwf	(_pv_voltage_value)^080h,w
	skipc
	goto	u10221
	goto	u10220
u10221:
	goto	l1343
u10220:
	line	320
	
l17316:	
;task.c: 319: {
;task.c: 320: pv_time_count=0x00;
	movlb 5	; select bank5
	clrf	(_pv_time_count)^0280h
	clrf	(_pv_time_count+1)^0280h
	clrf	(_pv_time_count+2)^0280h
	clrf	(_pv_time_count+3)^0280h
	line	322
	
l17318:	
;task.c: 322: pv_voltage_status=0x00;
	movlb 2	; select bank2
	clrf	(_pv_voltage_status)^0100h
	line	323
;task.c: 323: }
	goto	l17320
	line	324
	
l1343:	
	line	326
;task.c: 324: else
;task.c: 325: {
;task.c: 326: pv_time_count=0x00;
	movlb 5	; select bank5
	clrf	(_pv_time_count)^0280h
	clrf	(_pv_time_count+1)^0280h
	clrf	(_pv_time_count+2)^0280h
	clrf	(_pv_time_count+3)^0280h
	line	330
	
l17320:	
;task.c: 328: }
;task.c: 330: if(pv_index==0x01)
	movlb 2	; select bank2
	decf	(_pv_index)^0100h,w
	skipz
	goto	u10231
	goto	u10230
u10231:
	goto	l17334
u10230:
	line	332
	
l17322:	
;task.c: 331: {
;task.c: 332: if(pv_voltage_value<=light_on_pv_level)
	movlb 5	; select bank5
	movf	(_light_on_pv_level+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 5	; select bank5
	movf	(_light_on_pv_level+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 5	; select bank5
	movf	(_light_on_pv_level+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 5	; select bank5
	movf	(_light_on_pv_level)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(_pv_voltage_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c+1)
	movlb 1	; select bank1
	movf	(_pv_voltage_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff2+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff2+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff2+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u10241
	goto	u10240
u10241:
	goto	l1346
u10240:
	line	334
	
l17324:	
;task.c: 333: {
;task.c: 334: night_time_count++;
	movlb 4	; select bank4
	incf	(_night_time_count)^0200h,f
	skipnz
	incf	(_night_time_count+1)^0200h,f
	skipnz
	incf	(_night_time_count+2)^0200h,f
	skipnz
	incf	(_night_time_count+3)^0200h,f
	line	336
	
l17326:	
;task.c: 336: if(night_time_count>light_time_level)
	movf	(_night_time_count+3)^0200h,w
	movlb 3	; select bank3
	subwf	(_light_time_level+3)^0180h,w
	skipz
	goto	u10255
	movlb 4	; select bank4
	movf	(_night_time_count+2)^0200h,w
	movlb 3	; select bank3
	subwf	(_light_time_level+2)^0180h,w
	skipz
	goto	u10255
	movlb 4	; select bank4
	movf	(_night_time_count+1)^0200h,w
	movlb 3	; select bank3
	subwf	(_light_time_level+1)^0180h,w
	skipz
	goto	u10255
	movlb 4	; select bank4
	movf	(_night_time_count)^0200h,w
	movlb 3	; select bank3
	subwf	(_light_time_level)^0180h,w
u10255:
	skipnc
	goto	u10251
	goto	u10250
u10251:
	goto	l17334
u10250:
	line	338
	
l17328:	
;task.c: 337: {
;task.c: 338: night_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_night_time_count)^0200h
	clrf	(_night_time_count+1)^0200h
	clrf	(_night_time_count+2)^0200h
	clrf	(_night_time_count+3)^0200h
	line	340
	
l17330:	
;task.c: 340: pv_voltage_status=0x02;
	movlw	(02h)
	movlb 2	; select bank2
	movwf	(_pv_voltage_status)^0100h
	line	342
	
l17332:	
;task.c: 342: pv_index=0x00;
	clrf	(_pv_index)^0100h
	goto	l17334
	line	346
	
l1346:	
	line	348
;task.c: 346: else
;task.c: 347: {
;task.c: 348: night_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_night_time_count)^0200h
	clrf	(_night_time_count+1)^0200h
	clrf	(_night_time_count+2)^0200h
	clrf	(_night_time_count+3)^0200h
	line	355
	
l17334:	
;task.c: 349: }
;task.c: 351: }
;task.c: 355: handle_an2_process_flag=0x00;
	movlb 2	; select bank2
	clrf	(_handle_an2_process_flag)^0100h
	line	360
	
l17336:	
;task.c: 357: }
;task.c: 360: if(handle_an9_process_flag==0x01)
	decf	(_handle_an9_process_flag)^0100h,w
	skipz
	goto	u10261
	goto	u10260
u10261:
	goto	l17356
u10260:
	line	362
	
l17338:	
;task.c: 361: {
;task.c: 362: charge_current_value=0x00;
	clrf	(_charge_current_value)^0100h
	clrf	(_charge_current_value+1)^0100h
	line	364
	
l17340:	
;task.c: 364: if(system_status == 0x01)
	movlb 1	; select bank1
	decf	(_system_status)^080h,w
	skipz
	goto	u10271
	goto	u10270
u10271:
	goto	l17354
u10270:
	line	366
	
l17342:	
;task.c: 365: {
;task.c: 366: charge_current_value=start_ad_convert(0b01001);
	movlw	(09h)
	fcall	_start_ad_convert
	movf	(1+(?_start_ad_convert)),w
	movlb 2	; select bank2
	movwf	(_charge_current_value+1)^0100h
	movlb 0	; select bank0
	movf	(0+(?_start_ad_convert)),w
	movlb 2	; select bank2
	movwf	(_charge_current_value)^0100h
	line	376
	
l17344:	
;task.c: 376: if((charge_current_value>=charge_i_limit)&&(charge_index>=0x03))
	movf	(_charge_current_value+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c+1)
	movlb 2	; select bank2
	movf	(_charge_current_value)^0100h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff1)

	movlb 5	; select bank5
	movf	(_charge_i_limit+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 5	; select bank5
	movf	(_charge_i_limit+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 5	; select bank5
	movf	(_charge_i_limit+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 5	; select bank5
	movf	(_charge_i_limit)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u10281
	goto	u10280
u10281:
	goto	l17354
u10280:
	
l17346:	
	movlw	(03h)
	movlb 1	; select bank1
	subwf	(_charge_index)^080h,w
	skipc
	goto	u10291
	goto	u10290
u10291:
	goto	l17354
u10290:
	line	379
	
l17348:	
;task.c: 377: {
;task.c: 379: if(buck_pwm_value>50)
	movlw	high(033h)
	subwf	(_buck_pwm_value+1)^080h,w
	movlw	low(033h)
	skipnz
	subwf	(_buck_pwm_value)^080h,w
	skipc
	goto	u10301
	goto	u10300
u10301:
	goto	l17352
u10300:
	line	381
	
l17350:	
;task.c: 380: {
;task.c: 381: buck_pwm_value = buck_pwm_value - 1;
	movlw	low(0FFFFh)
	addwf	(_buck_pwm_value)^080h,f
	movlw	high(0FFFFh)
	addwfc	(_buck_pwm_value+1)^080h,f
	line	383
	
l17352:	
;task.c: 382: }
;task.c: 383: Set_Buck_Pwm_Duty(buck_pwm_value);
	movf	(_buck_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Buck_Pwm_Duty@duty+1)
	movlb 1	; select bank1
	movf	(_buck_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Buck_Pwm_Duty@duty)
	fcall	_Set_Buck_Pwm_Duty
	line	389
	
l17354:	
;task.c: 385: }
;task.c: 387: }
;task.c: 389: handle_an9_process_flag=0x00;
	movlb 2	; select bank2
	clrf	(_handle_an9_process_flag)^0100h
	line	396
	
l17356:	
;task.c: 391: }
;task.c: 396: if(handle_an3_process_flag==0x01)
	decf	(_handle_an3_process_flag)^0100h,w
	skipz
	goto	u10311
	goto	u10310
u10311:
	goto	l17434
u10310:
	line	399
	
l17358:	
;task.c: 397: {
;task.c: 399: battery_voltage_value=start_ad_convert(0b01100);
	movlw	(0Ch)
	fcall	_start_ad_convert
	movf	(1+(?_start_ad_convert)),w
	movwf	(_battery_voltage_value+1)
	movf	(0+(?_start_ad_convert)),w
	movwf	(_battery_voltage_value)
	line	402
	
l17360:	
;task.c: 402: b_v=(float)(((float)battery_voltage_value)/10)*31.04;
	movlw	0x41
	movwf	(___flmul@f1+3)
	movlw	0xf8
	movwf	(___flmul@f1+2)
	movlw	0x51
	movwf	(___flmul@f1+1)
	movlw	0xec
	movwf	(___flmul@f1)

	movlw	0x41
	movwf	(___fldiv@f2+3)
	movlw	0x20
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___fldiv@f1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___fldiv@f1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___fldiv@f1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	(___flmul@f2+3)
	movf	(2+(?___fldiv)),w
	movwf	(___flmul@f2+2)
	movf	(1+(?___fldiv)),w
	movwf	(___flmul@f2+1)
	movf	(0+(?___fldiv)),w
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 2	; select bank2
	movwf	(_b_v+3)^0100h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 2	; select bank2
	movwf	(_b_v+2)^0100h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 2	; select bank2
	movwf	(_b_v+1)^0100h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 2	; select bank2
	movwf	(_b_v)^0100h

	line	406
	
l17362:	
;task.c: 406: if((battery_voltage_value<(dianchi_guoya_baohu+volt_id*5))&&(charge_index==0x00))
	movlb 0	; select bank0
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff1)

	movlw	05h
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	movlb 1	; select bank1
	movf	(_volt_id)^080h,w
	movlb 0	; select bank0
	movwf	(___wmul@multiplier)
	clrf	(___wmul@multiplier+1)
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(___awtofl@c+1)
	movf	(0+(?___wmul)),w
	movwf	(___awtofl@c)
	fcall	___awtofl
	movf	(3+(?___awtofl)),w
	movwf	(___fladd@f2+3)
	movf	(2+(?___awtofl)),w
	movwf	(___fladd@f2+2)
	movf	(1+(?___awtofl)),w
	movwf	(___fladd@f2+1)
	movf	(0+(?___awtofl)),w
	movwf	(___fladd@f2)

	movlb 2	; select bank2
	movf	(_dianchi_guoya_baohu+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___fladd@f1+3)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_baohu+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___fladd@f1+2)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_baohu+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___fladd@f1+1)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_baohu)^0100h,w
	movlb 0	; select bank0
	movwf	(___fladd@f1)

	fcall	___fladd
	movf	(3+(?___fladd)),w
	movwf	(___flge@ff2+3)
	movf	(2+(?___fladd)),w
	movwf	(___flge@ff2+2)
	movf	(1+(?___fladd)),w
	movwf	(___flge@ff2+1)
	movf	(0+(?___fladd)),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u10321
	goto	u10320
u10321:
	goto	l17376
u10320:
	
l17364:	
	movlb 1	; select bank1
	movf	(_charge_index)^080h,f
	skipz
	goto	u10331
	goto	u10330
u10331:
	goto	l17376
u10330:
	line	408
	
l17366:	
;task.c: 407: {
;task.c: 408: bt_time_count++;
	movlb 3	; select bank3
	incf	(_bt_time_count)^0180h,f
	line	410
	
l17368:	
;task.c: 410: if(bt_time_count>=100)
	movlw	(064h)
	subwf	(_bt_time_count)^0180h,w
	skipc
	goto	u10341
	goto	u10340
u10341:
	goto	l17382
u10340:
	line	412
	
l17370:	
;task.c: 414: bt_led_status=0x01;
	clrf	(_bt_time_count)^0180h
	line	416
	
l17372:	
;task.c: 416: charge_index=0x01;
	movlb 1	; select bank1
	clrf	(_charge_index)^080h
	incf	(_charge_index)^080h,f
	line	418
	
l17374:	
;task.c: 418: battery_voltage_status=0x01;
	movlb 2	; select bank2
	clrf	(_battery_voltage_status)^0100h
	incf	(_battery_voltage_status)^0100h,f
	goto	l17382
	line	422
	
l17376:	
;task.c: 422: else if((battery_voltage_value>=(dianchi_guoya_baohu+volt_id*5))&&(charge_index<=0x01))
	movlb 0	; select bank0
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff1)

	movlw	05h
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	movlb 1	; select bank1
	movf	(_volt_id)^080h,w
	movlb 0	; select bank0
	movwf	(___wmul@multiplier)
	clrf	(___wmul@multiplier+1)
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(___awtofl@c+1)
	movf	(0+(?___wmul)),w
	movwf	(___awtofl@c)
	fcall	___awtofl
	movf	(3+(?___awtofl)),w
	movwf	(___fladd@f2+3)
	movf	(2+(?___awtofl)),w
	movwf	(___fladd@f2+2)
	movf	(1+(?___awtofl)),w
	movwf	(___fladd@f2+1)
	movf	(0+(?___awtofl)),w
	movwf	(___fladd@f2)

	movlb 2	; select bank2
	movf	(_dianchi_guoya_baohu+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___fladd@f1+3)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_baohu+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___fladd@f1+2)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_baohu+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___fladd@f1+1)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_baohu)^0100h,w
	movlb 0	; select bank0
	movwf	(___fladd@f1)

	fcall	___fladd
	movf	(3+(?___fladd)),w
	movwf	(___flge@ff2+3)
	movf	(2+(?___fladd)),w
	movwf	(___flge@ff2+2)
	movf	(1+(?___fladd)),w
	movwf	(___flge@ff2+1)
	movf	(0+(?___fladd)),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u10351
	goto	u10350
u10351:
	goto	l17382
u10350:
	
l17378:	
;task.c: 423: {
;task.c: 424: bt_led_status=0x00;
	movlw	(02h)
	movlb 1	; select bank1
	subwf	(_charge_index)^080h,w
	skipnc
	goto	u10361
	goto	u10360
u10361:
	goto	l17382
u10360:
	line	426
	
l17380:	
;task.c: 426: bt_time_count=0x00;
	movlb 3	; select bank3
	clrf	(_bt_time_count)^0180h
	line	428
;task.c: 428: battery_voltage_status=0x00;
	movlb 2	; select bank2
	clrf	(_battery_voltage_status)^0100h
	line	432
	
l17382:	
;task.c: 429: }
;task.c: 432: if( (battery_voltage_value<dianchi_guoya_huifu) && (charge_index==0x02) )
	movlb 0	; select bank0
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff1)

	movlb 3	; select bank3
	movf	(_dianchi_guoya_huifu+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 3	; select bank3
	movf	(_dianchi_guoya_huifu+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 3	; select bank3
	movf	(_dianchi_guoya_huifu+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 3	; select bank3
	movf	(_dianchi_guoya_huifu)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u10371
	goto	u10370
u10371:
	goto	l17390
u10370:
	
l17384:	
	movlb 1	; select bank1
	movf	(_charge_index)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u10381
	goto	u10380
u10381:
	goto	l17390
u10380:
	line	436
	
l17386:	
;task.c: 438: charge_led_status=0x01;
	movlw	(03h)
	movwf	(_charge_index)^080h
	line	440
	
l17388:	
;task.c: 440: Enable_Buck_Pwm();
	fcall	_Enable_Buck_Pwm
	line	442
;task.c: 442: }
	goto	l17432
	line	443
	
l17390:	
;task.c: 443: else if( (battery_voltage_value>=dianchi_guoya_huifu) && (charge_index==0x02) )
	movlb 0	; select bank0
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff1)

	movlb 3	; select bank3
	movf	(_dianchi_guoya_huifu+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 3	; select bank3
	movf	(_dianchi_guoya_huifu+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 3	; select bank3
	movf	(_dianchi_guoya_huifu+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 3	; select bank3
	movf	(_dianchi_guoya_huifu)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u10391
	goto	u10390
u10391:
	goto	l17396
u10390:
	
l17392:	
	movlb 1	; select bank1
	movf	(_charge_index)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u10401
	goto	u10400
u10401:
	goto	l17396
u10400:
	line	445
	
l17394:	
;task.c: 447: charge_led_status=0x00;
	movlb 2	; select bank2
	movf	(_b_v+3)^0100h,w
	movlb 4	; select bank4
	movwf	(_bt_00_lv+3)^0200h
	movlb 2	; select bank2
	movf	(_b_v+2)^0100h,w
	movlb 4	; select bank4
	movwf	(_bt_00_lv+2)^0200h
	movlb 2	; select bank2
	movf	(_b_v+1)^0100h,w
	movlb 4	; select bank4
	movwf	(_bt_00_lv+1)^0200h
	movlb 2	; select bank2
	movf	(_b_v)^0100h,w
	movlb 4	; select bank4
	movwf	(_bt_00_lv)^0200h

	line	449
;task.c: 449: }
	goto	l17432
	line	450
	
l17396:	
;task.c: 450: else if( (battery_voltage_value<dianchi_guoya_baohu) && (charge_index>=0x03) )
	movlb 0	; select bank0
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff1)

	movlb 2	; select bank2
	movf	(_dianchi_guoya_baohu+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_baohu+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_baohu+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_baohu)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u10411
	goto	u10410
u10411:
	goto	l17416
u10410:
	
l17398:	
	movlw	(03h)
	movlb 1	; select bank1
	subwf	(_charge_index)^080h,w
	skipc
	goto	u10421
	goto	u10420
u10421:
	goto	l17416
u10420:
	line	453
	
l17400:	
;task.c: 451: {
;task.c: 453: if((charge_current_value<charge_i_limit)&&(charge_index>=0x03))
	movlb 2	; select bank2
	movf	(_charge_current_value+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c+1)
	movlb 2	; select bank2
	movf	(_charge_current_value)^0100h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff1)

	movlb 5	; select bank5
	movf	(_charge_i_limit+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 5	; select bank5
	movf	(_charge_i_limit+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 5	; select bank5
	movf	(_charge_i_limit+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 5	; select bank5
	movf	(_charge_i_limit)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u10431
	goto	u10430
u10431:
	goto	l17414
u10430:
	
l17402:	
	movlw	(03h)
	movlb 1	; select bank1
	subwf	(_charge_index)^080h,w
	skipc
	goto	u10441
	goto	u10440
u10441:
	goto	l17414
u10440:
	line	455
	
l17404:	
;task.c: 454: {
;task.c: 455: mppt_time_count++;
	movlb 4	; select bank4
	incf	(_mppt_time_count)^0200h,f
	skipnz
	incf	(_mppt_time_count+1)^0200h,f
	line	457
	
l17406:	
;task.c: 457: if(mppt_time_count>5)
	movlw	high(06h)
	subwf	(_mppt_time_count+1)^0200h,w
	movlw	low(06h)
	skipnz
	subwf	(_mppt_time_count)^0200h,w
	skipc
	goto	u10451
	goto	u10450
u10451:
	goto	l17414
u10450:
	line	459
	
l17408:	
;task.c: 458: {
;task.c: 459: mppt_time_count=0x00;
	clrf	(_mppt_time_count)^0200h
	clrf	(_mppt_time_count+1)^0200h
	line	461
	
l17410:	
;task.c: 461: Mppt_Charge();
	fcall	_Mppt_Charge
	line	463
	
l17412:	
;task.c: 463: I_prev=charge_current_value;
	movlb 2	; select bank2
	movf	(_charge_current_value+1)^0100h,w
	movlb 3	; select bank3
	movwf	(_I_prev+1)^0180h
	movlb 2	; select bank2
	movf	(_charge_current_value)^0100h,w
	movlb 3	; select bank3
	movwf	(_I_prev)^0180h
	line	468
	
l17414:	
;task.c: 464: }
;task.c: 466: }
;task.c: 468: involid_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_involid_time_count)^0200h
	clrf	(_involid_time_count+1)^0200h
	line	470
;task.c: 470: }
	goto	l17432
	line	471
	
l17416:	
;task.c: 471: else if( (battery_voltage_value>=dianchi_guoya_baohu) && (charge_index>=0x03) )
	movlb 0	; select bank0
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff1)

	movlb 2	; select bank2
	movf	(_dianchi_guoya_baohu+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_baohu+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_baohu+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_baohu)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u10461
	goto	u10460
u10461:
	goto	l17432
u10460:
	
l17418:	
	movlw	(03h)
	movlb 1	; select bank1
	subwf	(_charge_index)^080h,w
	skipc
	goto	u10471
	goto	u10470
u10471:
	goto	l17432
u10470:
	line	473
	
l17420:	
;task.c: 472: {
;task.c: 473: involid_time_count++;
	movlb 4	; select bank4
	incf	(_involid_time_count)^0200h,f
	skipnz
	incf	(_involid_time_count+1)^0200h,f
	line	475
	
l17422:	
;task.c: 475: if(involid_time_count>200)
	movlw	high(0C9h)
	subwf	(_involid_time_count+1)^0200h,w
	movlw	low(0C9h)
	skipnz
	subwf	(_involid_time_count)^0200h,w
	skipc
	goto	u10481
	goto	u10480
u10481:
	goto	l17432
u10480:
	line	477
	
l17424:	
;task.c: 476: {
;task.c: 477: involid_time_count=0x00;
	clrf	(_involid_time_count)^0200h
	clrf	(_involid_time_count+1)^0200h
	line	479
	
l17426:	
;task.c: 479: if(charge_index>=0x03)
	movlw	(03h)
	movlb 1	; select bank1
	subwf	(_charge_index)^080h,w
	skipc
	goto	u10491
	goto	u10490
u10491:
	goto	l1365
u10490:
	line	481
	
l17428:	
;task.c: 480: {
;task.c: 481: charge_index=0x05;
	movlw	(05h)
	movwf	(_charge_index)^080h
	line	483
	
l17430:	
;task.c: 483: Disable_Buck_Pwm();
	fcall	_Disable_Buck_Pwm
	line	485
;task.c: 487: charge_led_status=0x00;
	movlb 0	; select bank0
	clrf	(Set_Buck_Pwm_Duty@duty)
	clrf	(Set_Buck_Pwm_Duty@duty+1)
	fcall	_Set_Buck_Pwm_Duty
	line	489
;task.c: 489: while(1);
	
l1369:	
	
l1370:	
	goto	l1369
	line	496
	
l1365:	
	line	500
	
l17432:	
;task.c: 500: handle_an3_process_flag=0x00;
	movlb 2	; select bank2
	clrf	(_handle_an3_process_flag)^0100h
	line	509
	
l17434:	
;task.c: 502: }
;task.c: 509: if(handle_an4_process_flag==0x01)
	decf	(_handle_an4_process_flag)^0100h,w
	skipz
	goto	u10501
	goto	u10500
u10501:
	goto	l17516
u10500:
	line	511
	
l17436:	
;task.c: 510: {
;task.c: 511: load_voltage_value=0x00;
	movlb 1	; select bank1
	clrf	(_load_voltage_value)^080h
	clrf	(_load_voltage_value+1)^080h
	line	513
	
l17438:	
;task.c: 513: if(system_status == 0x02)
	movf	(_system_status)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u10511
	goto	u10510
u10511:
	goto	l1373
u10510:
	line	515
	
l17440:	
;task.c: 514: {
;task.c: 515: load_voltage_value=start_ad_convert(0b00100);
	movlw	(04h)
	fcall	_start_ad_convert
	movf	(1+(?_start_ad_convert)),w
	movlb 1	; select bank1
	movwf	(_load_voltage_value+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_start_ad_convert)),w
	movlb 1	; select bank1
	movwf	(_load_voltage_value)^080h
	line	518
	
l17442:	
;task.c: 518: if((load_voltage_value<shuchu_shortout_voltage)&&(discharge_index==0x02)&&(PID_CC_discharge.SetPoint>0))
	movf	(_load_voltage_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c+1)
	movlb 1	; select bank1
	movf	(_load_voltage_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff1)

	movlb 3	; select bank3
	movf	(_shuchu_shortout_voltage+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 3	; select bank3
	movf	(_shuchu_shortout_voltage+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 3	; select bank3
	movf	(_shuchu_shortout_voltage+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 3	; select bank3
	movf	(_shuchu_shortout_voltage)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u10521
	goto	u10520
u10521:
	goto	l17464
u10520:
	
l17444:	
	movlb 1	; select bank1
	movf	(_discharge_index)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u10531
	goto	u10530
u10531:
	goto	l17464
u10530:
	
l17446:	
	movlb 0	; select bank0
	clrf	(___flge@ff1)
	clrf	(___flge@ff1+1)
	clrf	(___flge@ff1+2)
	clrf	(___flge@ff1+3)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u10541
	goto	u10540
u10541:
	goto	l17464
u10540:
	line	520
	
l17448:	
;task.c: 519: {
;task.c: 520: load_short_time_count++;
	movlb 3	; select bank3
	incf	(_load_short_time_count)^0180h,f
	skipnz
	incf	(_load_short_time_count+1)^0180h,f
	line	522
	
l17450:	
;task.c: 522: if(load_short_time_count>1000)
	movlw	high(03E9h)
	subwf	(_load_short_time_count+1)^0180h,w
	movlw	low(03E9h)
	skipnz
	subwf	(_load_short_time_count)^0180h,w
	skipc
	goto	u10551
	goto	u10550
u10551:
	goto	l17492
u10550:
	line	524
	
l17452:	
;task.c: 523: {
;task.c: 524: load_short_time_count=0x00;
	clrf	(_load_short_time_count)^0180h
	clrf	(_load_short_time_count+1)^0180h
	line	526
	
l17454:	
;task.c: 526: bost_pwm_value=2;
	movlw	02h
	movlb 1	; select bank1
	movwf	(_bost_pwm_value)^080h
	clrf	(_bost_pwm_value+1)^080h
	line	528
	
l17456:	
;task.c: 530: discharge_led_status=0x00;
	movf	(_bost_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty+1)
	movlb 1	; select bank1
	movf	(_bost_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	fcall	_Set_Bost_Pwm_Duty
	line	532
	
l17458:	
;task.c: 532: delay_ms(1);
	movlb 0	; select bank0
	clrf	(delay_ms@count)
	incf	(delay_ms@count),f
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	534
	
l17460:	
;task.c: 534: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	536
	
l17462:	
;task.c: 536: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	538
;task.c: 538: while(1);
	
l1376:	
	
l1377:	
	goto	l1376
	line	542
	
l17464:	
;task.c: 542: else if((load_voltage_value>=shuchu_shortout_voltage)&&(load_voltage_value<(shuchu_shortout_voltage*2))&&(discharge_index==0x02)&&(PID_CC_discharge.SetPoint>0))
	movlb 1	; select bank1
	movf	(_load_voltage_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c+1)
	movlb 1	; select bank1
	movf	(_load_voltage_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff1)

	movlb 3	; select bank3
	movf	(_shuchu_shortout_voltage+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 3	; select bank3
	movf	(_shuchu_shortout_voltage+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 3	; select bank3
	movf	(_shuchu_shortout_voltage+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 3	; select bank3
	movf	(_shuchu_shortout_voltage)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u10561
	goto	u10560
u10561:
	goto	l17490
u10560:
	
l17466:	
	movlb 1	; select bank1
	movf	(_load_voltage_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c+1)
	movlb 1	; select bank1
	movf	(_load_voltage_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff1)

	movlb 3	; select bank3
	movf	(_shuchu_shortout_voltage+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 3	; select bank3
	movf	(_shuchu_shortout_voltage+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 3	; select bank3
	movf	(_shuchu_shortout_voltage+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 3	; select bank3
	movf	(_shuchu_shortout_voltage)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	movlw	0x40
	movwf	(___flmul@f1+3)
	movlw	0x0
	movwf	(___flmul@f1+2)
	movlw	0x0
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___flge@ff2+3)
	movf	(2+(?___flmul)),w
	movwf	(___flge@ff2+2)
	movf	(1+(?___flmul)),w
	movwf	(___flge@ff2+1)
	movf	(0+(?___flmul)),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u10571
	goto	u10570
u10571:
	goto	l17490
u10570:
	
l17468:	
	movlb 1	; select bank1
	movf	(_discharge_index)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u10581
	goto	u10580
u10581:
	goto	l17490
u10580:
	
l17470:	
	movlb 0	; select bank0
	clrf	(___flge@ff1)
	clrf	(___flge@ff1+1)
	clrf	(___flge@ff1+2)
	clrf	(___flge@ff1+3)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u10591
	goto	u10590
u10591:
	goto	l17490
u10590:
	line	544
	
l17472:	
;task.c: 543: {
;task.c: 544: load_short_time_count++;
	movlb 3	; select bank3
	incf	(_load_short_time_count)^0180h,f
	skipnz
	incf	(_load_short_time_count+1)^0180h,f
	line	546
	
l17474:	
;task.c: 546: if(load_short_time_count>1000)
	movlw	high(03E9h)
	subwf	(_load_short_time_count+1)^0180h,w
	movlw	low(03E9h)
	skipnz
	subwf	(_load_short_time_count)^0180h,w
	skipc
	goto	u10601
	goto	u10600
u10601:
	goto	l17492
u10600:
	line	548
	
l17476:	
;task.c: 547: {
;task.c: 548: load_short_time_count=0x00;
	clrf	(_load_short_time_count)^0180h
	clrf	(_load_short_time_count+1)^0180h
	line	550
	
l17478:	
;task.c: 550: discharge_index=0x03;
	movlw	(03h)
	movlb 1	; select bank1
	movwf	(_discharge_index)^080h
	line	552
	
l17480:	
;task.c: 552: bost_pwm_value=2;
	movlw	02h
	movwf	(_bost_pwm_value)^080h
	clrf	(_bost_pwm_value+1)^080h
	line	554
	
l17482:	
;task.c: 556: discharge_led_status=0x00;
	movf	(_bost_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty+1)
	movlb 1	; select bank1
	movf	(_bost_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	fcall	_Set_Bost_Pwm_Duty
	line	558
	
l17484:	
;task.c: 558: delay_ms(1);
	movlb 0	; select bank0
	clrf	(delay_ms@count)
	incf	(delay_ms@count),f
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	560
	
l17486:	
;task.c: 560: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	562
	
l17488:	
;task.c: 562: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	564
;task.c: 564: while(1);
	
l1382:	
	
l1383:	
	goto	l1382
	line	570
	
l17490:	
;task.c: 568: else
;task.c: 569: {
;task.c: 570: load_short_time_count=0x00;
	movlb 3	; select bank3
	clrf	(_load_short_time_count)^0180h
	clrf	(_load_short_time_count+1)^0180h
	line	574
	
l17492:	
;task.c: 571: }
;task.c: 574: if((load_voltage_value>shuchu_open_voltage)&&(discharge_index==0x02))
	movlb 5	; select bank5
	movf	(_shuchu_open_voltage+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 5	; select bank5
	movf	(_shuchu_open_voltage+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 5	; select bank5
	movf	(_shuchu_open_voltage+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 5	; select bank5
	movf	(_shuchu_open_voltage)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(_load_voltage_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c+1)
	movlb 1	; select bank1
	movf	(_load_voltage_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff2+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff2+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff2+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u10611
	goto	u10610
u10611:
	goto	l17514
u10610:
	
l17494:	
	movlb 1	; select bank1
	movf	(_discharge_index)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u10621
	goto	u10620
u10621:
	goto	l17514
u10620:
	line	576
	
l17496:	
;task.c: 575: {
;task.c: 576: load_open_time_count++;
	movlb 4	; select bank4
	incf	(_load_open_time_count)^0200h,f
	skipnz
	incf	(_load_open_time_count+1)^0200h,f
	line	578
	
l17498:	
;task.c: 578: if(load_open_time_count>1000)
	movlw	high(03E9h)
	subwf	(_load_open_time_count+1)^0200h,w
	movlw	low(03E9h)
	skipnz
	subwf	(_load_open_time_count)^0200h,w
	skipc
	goto	u10631
	goto	u10630
u10631:
	goto	l1373
u10630:
	line	580
	
l17500:	
;task.c: 579: {
;task.c: 580: discharge_index=0x03;
	movlw	(03h)
	movlb 1	; select bank1
	movwf	(_discharge_index)^080h
	line	582
	
l17502:	
;task.c: 582: load_open_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_load_open_time_count)^0200h
	clrf	(_load_open_time_count+1)^0200h
	line	584
	
l17504:	
;task.c: 584: bost_pwm_value=5;
	movlw	05h
	movlb 1	; select bank1
	movwf	(_bost_pwm_value)^080h
	clrf	(_bost_pwm_value+1)^080h
	line	586
	
l17506:	
;task.c: 588: discharge_led_status=0x00;
	movf	(_bost_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty+1)
	movlb 1	; select bank1
	movf	(_bost_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	fcall	_Set_Bost_Pwm_Duty
	line	590
	
l17508:	
;task.c: 590: delay_ms(1);
	movlb 0	; select bank0
	clrf	(delay_ms@count)
	incf	(delay_ms@count),f
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	592
	
l17510:	
;task.c: 592: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	594
	
l17512:	
;task.c: 594: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	596
;task.c: 596: while(1);
	
l1388:	
	
l1389:	
	goto	l1388
	line	602
	
l17514:	
;task.c: 600: else
;task.c: 601: {
;task.c: 602: load_open_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_load_open_time_count)^0200h
	clrf	(_load_open_time_count+1)^0200h
	line	606
	
l1373:	
	line	608
;task.c: 603: }
;task.c: 606: }
;task.c: 608: handle_an4_process_flag=0x00;
	movlb 2	; select bank2
	clrf	(_handle_an4_process_flag)^0100h
	line	614
	
l17516:	
;task.c: 610: }
;task.c: 614: if(handle_an10_process_flag==0x01)
	decf	(_handle_an10_process_flag)^0100h,w
	skipz
	goto	u10641
	goto	u10640
u10641:
	goto	l1524
u10640:
	line	616
	
l17518:	
;task.c: 615: {
;task.c: 616: discharge_current_value=0x00;
	movlb 1	; select bank1
	clrf	(_discharge_current_value)^080h
	clrf	(_discharge_current_value+1)^080h
	line	618
	
l17520:	
;task.c: 618: if(system_status == 0x02)
	movf	(_system_status)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u10651
	goto	u10650
u10651:
	goto	l1393
u10650:
	line	620
	
l17522:	
;task.c: 619: {
;task.c: 620: discharge_current_value=start_ad_convert(0b01010);
	movlw	(0Ah)
	fcall	_start_ad_convert
	movf	(1+(?_start_ad_convert)),w
	movlb 1	; select bank1
	movwf	(_discharge_current_value+1)^080h
	movlb 0	; select bank0
	movf	(0+(?_start_ad_convert)),w
	movlb 1	; select bank1
	movwf	(_discharge_current_value)^080h
	line	622
	
l17524:	
;task.c: 622: if((discharge_current_value>discharge_i_baohu)&&(discharge_index==0x02))
	movlb 5	; select bank5
	movf	(_discharge_i_baohu+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 5	; select bank5
	movf	(_discharge_i_baohu+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 5	; select bank5
	movf	(_discharge_i_baohu+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 5	; select bank5
	movf	(_discharge_i_baohu)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(_discharge_current_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c+1)
	movlb 1	; select bank1
	movf	(_discharge_current_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff2+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff2+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff2+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u10661
	goto	u10660
u10661:
	goto	l17544
u10660:
	
l17526:	
	movlb 1	; select bank1
	movf	(_discharge_index)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u10671
	goto	u10670
u10671:
	goto	l17544
u10670:
	line	624
	
l17528:	
;task.c: 623: {
;task.c: 624: over_load_time_count++;
	movlb 4	; select bank4
	incf	(_over_load_time_count)^0200h,f
	skipnz
	incf	(_over_load_time_count+1)^0200h,f
	line	626
	
l17530:	
;task.c: 626: if(over_load_time_count>20)
	movlw	high(015h)
	subwf	(_over_load_time_count+1)^0200h,w
	movlw	low(015h)
	skipnz
	subwf	(_over_load_time_count)^0200h,w
	skipc
	goto	u10681
	goto	u10680
u10681:
	goto	l17546
u10680:
	line	628
	
l17532:	
;task.c: 627: {
;task.c: 628: discharge_index=0x03;
	movlw	(03h)
	movlb 1	; select bank1
	movwf	(_discharge_index)^080h
	line	630
;task.c: 630: bost_pwm_value=2;
	movlw	02h
	movwf	(_bost_pwm_value)^080h
	clrf	(_bost_pwm_value+1)^080h
	line	632
	
l17534:	
;task.c: 632: Set_Bost_Pwm_Duty(bost_pwm_value);
	movf	(_bost_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty+1)
	movlb 1	; select bank1
	movf	(_bost_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	fcall	_Set_Bost_Pwm_Duty
	line	634
	
l17536:	
;task.c: 634: delay_ms(1);
	movlb 0	; select bank0
	clrf	(delay_ms@count)
	incf	(delay_ms@count),f
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	636
	
l17538:	
;task.c: 636: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	638
	
l17540:	
;task.c: 638: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	640
	
l17542:	
;task.c: 642: discharge_led_status=0x00;
	movlb 4	; select bank4
	clrf	(_over_load_time_count)^0200h
	clrf	(_over_load_time_count+1)^0200h
	line	644
;task.c: 644: while(1);
	
l1396:	
	
l1397:	
	goto	l1396
	line	650
	
l17544:	
;task.c: 648: else
;task.c: 649: {
;task.c: 650: over_load_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_over_load_time_count)^0200h
	clrf	(_over_load_time_count+1)^0200h
	line	653
	
l17546:	
;task.c: 651: }
;task.c: 653: if((battery_voltage_value>dianchi_qianya_huifu)&&(discharge_index==0x01))
	movlb 5	; select bank5
	movf	(_dianchi_qianya_huifu+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 5	; select bank5
	movf	(_dianchi_qianya_huifu+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 5	; select bank5
	movf	(_dianchi_qianya_huifu+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 5	; select bank5
	movf	(_dianchi_qianya_huifu)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff2+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff2+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff2+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u10691
	goto	u10690
u10691:
	goto	l17558
u10690:
	
l17548:	
	movlb 1	; select bank1
	decf	(_discharge_index)^080h,w
	skipz
	goto	u10701
	goto	u10700
u10701:
	goto	l17558
u10700:
	line	655
	
l17550:	
;task.c: 657: discharge_led_status=0x01;
	movlw	(02h)
	movwf	(_discharge_index)^080h
	line	659
	
l17552:	
;task.c: 659: open_discharge_time=0x01;
	movlb 2	; select bank2
	clrf	(_open_discharge_time)^0100h
	incf	(_open_discharge_time)^0100h,f
	line	661
	
l17554:	
;task.c: 661: (LATCbits.LATC3 = 0x01);
	bsf	(270)^0100h,3	;volatile
	line	663
	
l17556:	
;task.c: 663: Enable_Bost_Pwm();
	fcall	_Enable_Bost_Pwm
	line	665
;task.c: 665: }
	goto	l17564
	line	666
	
l17558:	
;task.c: 666: else if((battery_voltage_value<=dianchi_qianya_huifu)&&(discharge_index==0x01))
	movlb 5	; select bank5
	movf	(_dianchi_qianya_huifu+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 5	; select bank5
	movf	(_dianchi_qianya_huifu+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 5	; select bank5
	movf	(_dianchi_qianya_huifu+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 5	; select bank5
	movf	(_dianchi_qianya_huifu)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff2+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff2+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff2+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u10711
	goto	u10710
u10711:
	goto	l17564
u10710:
	
l17560:	
;task.c: 667: {
;task.c: 668: discharge_led_status=0x00;
	movlb 1	; select bank1
	decf	(_discharge_index)^080h,w
	skipz
	goto	u10721
	goto	u10720
u10721:
	goto	l17564
u10720:
	line	670
	
l17562:	
;task.c: 670: open_discharge_time=0x00;
	movlb 2	; select bank2
	clrf	(_open_discharge_time)^0100h
	line	674
	
l17564:	
;task.c: 671: }
;task.c: 674: if((battery_voltage_value>=dianchi_qianya_baohu)&&(discharge_index==0x02))
	movlb 0	; select bank0
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff1)

	movlb 5	; select bank5
	movf	(_dianchi_qianya_baohu+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 5	; select bank5
	movf	(_dianchi_qianya_baohu+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 5	; select bank5
	movf	(_dianchi_qianya_baohu+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 5	; select bank5
	movf	(_dianchi_qianya_baohu)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u10731
	goto	u10730
u10731:
	goto	l17982
u10730:
	
l17566:	
	movlb 1	; select bank1
	movf	(_discharge_index)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u10741
	goto	u10740
u10741:
	goto	l17982
u10740:
	line	677
	
l17568:	
;task.c: 675: {
;task.c: 677: if((discharge_current_value<=discharge_i_limit)&&(discharge_index==0x02))
	movlb 5	; select bank5
	movf	(_discharge_i_limit+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 5	; select bank5
	movf	(_discharge_i_limit+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 5	; select bank5
	movf	(_discharge_i_limit+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 5	; select bank5
	movf	(_discharge_i_limit)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(_discharge_current_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c+1)
	movlb 1	; select bank1
	movf	(_discharge_current_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff2+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff2+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff2+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u10751
	goto	u10750
u10751:
	goto	l17970
u10750:
	
l17570:	
	movlb 1	; select bank1
	movf	(_discharge_index)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u10761
	goto	u10760
u10761:
	goto	l17970
u10760:
	line	681
	
l17572:	
;task.c: 678: {
;task.c: 681: t1=step_01_time_limit;
	movf	(_step_01_time_limit)^080h,w
	movlb 2	; select bank2
	movwf	(_t1)^0100h
	line	682
	
l17574:	
;task.c: 682: t2=step_01_time_limit+step_02_time_limit;
	movlb 1	; select bank1
	movf	(_step_01_time_limit)^080h,w
	addwf	(_step_02_time_limit)^080h,w
	movlb 2	; select bank2
	movwf	(_t2)^0100h
	line	683
	
l17576:	
;task.c: 683: t3=step_01_time_limit+step_02_time_limit+step_03_time_limit;
	movlb 1	; select bank1
	movf	(_step_01_time_limit)^080h,w
	addwf	(_step_02_time_limit)^080h,w
	movlb 2	; select bank2
	addwf	(_step_03_time_limit)^0100h,w
	movwf	(_t3)^0100h
	line	684
	
l17578:	
;task.c: 684: t4=step_01_time_limit+step_02_time_limit+step_03_time_limit+step_04_time_limit;
	movlb 1	; select bank1
	movf	(_step_01_time_limit)^080h,w
	addwf	(_step_02_time_limit)^080h,w
	movlb 2	; select bank2
	addwf	(_step_03_time_limit)^0100h,w
	addwf	(_step_04_time_limit)^0100h,w
	movwf	(_t4)^0100h
	line	685
	
l17580:	
;task.c: 685: t5=step_01_time_limit+step_02_time_limit+step_03_time_limit+step_04_time_limit+step_05_time_limit;
	movlb 1	; select bank1
	movf	(_step_01_time_limit)^080h,w
	addwf	(_step_02_time_limit)^080h,w
	movlb 2	; select bank2
	addwf	(_step_03_time_limit)^0100h,w
	addwf	(_step_04_time_limit)^0100h,w
	addwf	(_step_05_time_limit)^0100h,w
	movlb 3	; select bank3
	movwf	(_t5)^0180h
	line	687
;task.c: 687: if((ho_cnt<t1) && (Adjust_Pout_Flag<=0x01))
	movlb 2	; select bank2
	movf	(_t1)^0100h,w
	movlb 1	; select bank1
	movwf	(??_handle_ad_loop+0)^080h+0
	clrf	(??_handle_ad_loop+0)^080h+0+1
	movf	1+(??_handle_ad_loop+0)^080h+0,w
	subwf	(_ho_cnt+1),w
	skipz
	goto	u10775
	movf	0+(??_handle_ad_loop+0)^080h+0,w
	subwf	(_ho_cnt),w
u10775:
	skipnc
	goto	u10771
	goto	u10770
u10771:
	goto	l17586
u10770:
	
l17582:	
	movlw	(02h)
	subwf	(_Adjust_Pout_Flag)^080h,w
	skipnc
	goto	u10781
	goto	u10780
u10781:
	goto	l17586
u10780:
	line	689
	
l17584:	
;task.c: 688: {
;task.c: 689: Adjust_Pout_Flag=0x01;
	clrf	(_Adjust_Pout_Flag)^080h
	incf	(_Adjust_Pout_Flag)^080h,f
	line	690
;task.c: 690: }
	goto	l17620
	line	691
	
l17586:	
;task.c: 691: else if((ho_cnt>=t1) && (ho_cnt<t2) && (Adjust_Pout_Flag<=0x02))
	movlb 2	; select bank2
	movf	(_t1)^0100h,w
	movlb 1	; select bank1
	movwf	(??_handle_ad_loop+0)^080h+0
	clrf	(??_handle_ad_loop+0)^080h+0+1
	movf	1+(??_handle_ad_loop+0)^080h+0,w
	subwf	(_ho_cnt+1),w
	skipz
	goto	u10795
	movf	0+(??_handle_ad_loop+0)^080h+0,w
	subwf	(_ho_cnt),w
u10795:
	skipc
	goto	u10791
	goto	u10790
u10791:
	goto	l17594
u10790:
	
l17588:	
	movlb 2	; select bank2
	movf	(_t2)^0100h,w
	movlb 1	; select bank1
	movwf	(??_handle_ad_loop+0)^080h+0
	clrf	(??_handle_ad_loop+0)^080h+0+1
	movf	1+(??_handle_ad_loop+0)^080h+0,w
	subwf	(_ho_cnt+1),w
	skipz
	goto	u10805
	movf	0+(??_handle_ad_loop+0)^080h+0,w
	subwf	(_ho_cnt),w
u10805:
	skipnc
	goto	u10801
	goto	u10800
u10801:
	goto	l17594
u10800:
	
l17590:	
	movlw	(03h)
	subwf	(_Adjust_Pout_Flag)^080h,w
	skipnc
	goto	u10811
	goto	u10810
u10811:
	goto	l17594
u10810:
	line	693
	
l17592:	
;task.c: 692: {
;task.c: 693: Adjust_Pout_Flag=0x02;
	movlw	(02h)
	movwf	(_Adjust_Pout_Flag)^080h
	line	694
;task.c: 694: }
	goto	l17620
	line	695
	
l17594:	
;task.c: 695: else if((ho_cnt>=t2) && (ho_cnt<t3) && (Adjust_Pout_Flag<=0x03))
	movlb 2	; select bank2
	movf	(_t2)^0100h,w
	movlb 1	; select bank1
	movwf	(??_handle_ad_loop+0)^080h+0
	clrf	(??_handle_ad_loop+0)^080h+0+1
	movf	1+(??_handle_ad_loop+0)^080h+0,w
	subwf	(_ho_cnt+1),w
	skipz
	goto	u10825
	movf	0+(??_handle_ad_loop+0)^080h+0,w
	subwf	(_ho_cnt),w
u10825:
	skipc
	goto	u10821
	goto	u10820
u10821:
	goto	l17602
u10820:
	
l17596:	
	movlb 2	; select bank2
	movf	(_t3)^0100h,w
	movlb 1	; select bank1
	movwf	(??_handle_ad_loop+0)^080h+0
	clrf	(??_handle_ad_loop+0)^080h+0+1
	movf	1+(??_handle_ad_loop+0)^080h+0,w
	subwf	(_ho_cnt+1),w
	skipz
	goto	u10835
	movf	0+(??_handle_ad_loop+0)^080h+0,w
	subwf	(_ho_cnt),w
u10835:
	skipnc
	goto	u10831
	goto	u10830
u10831:
	goto	l17602
u10830:
	
l17598:	
	movlw	(04h)
	subwf	(_Adjust_Pout_Flag)^080h,w
	skipnc
	goto	u10841
	goto	u10840
u10841:
	goto	l17602
u10840:
	line	697
	
l17600:	
;task.c: 696: {
;task.c: 697: Adjust_Pout_Flag=0x03;
	movlw	(03h)
	movwf	(_Adjust_Pout_Flag)^080h
	line	698
;task.c: 698: }
	goto	l17620
	line	699
	
l17602:	
;task.c: 699: else if((ho_cnt>=t3) && (ho_cnt<t4) && (Adjust_Pout_Flag<=0x04))
	movlb 2	; select bank2
	movf	(_t3)^0100h,w
	movlb 1	; select bank1
	movwf	(??_handle_ad_loop+0)^080h+0
	clrf	(??_handle_ad_loop+0)^080h+0+1
	movf	1+(??_handle_ad_loop+0)^080h+0,w
	subwf	(_ho_cnt+1),w
	skipz
	goto	u10855
	movf	0+(??_handle_ad_loop+0)^080h+0,w
	subwf	(_ho_cnt),w
u10855:
	skipc
	goto	u10851
	goto	u10850
u10851:
	goto	l17610
u10850:
	
l17604:	
	movlb 2	; select bank2
	movf	(_t4)^0100h,w
	movlb 1	; select bank1
	movwf	(??_handle_ad_loop+0)^080h+0
	clrf	(??_handle_ad_loop+0)^080h+0+1
	movf	1+(??_handle_ad_loop+0)^080h+0,w
	subwf	(_ho_cnt+1),w
	skipz
	goto	u10865
	movf	0+(??_handle_ad_loop+0)^080h+0,w
	subwf	(_ho_cnt),w
u10865:
	skipnc
	goto	u10861
	goto	u10860
u10861:
	goto	l17610
u10860:
	
l17606:	
	movlw	(05h)
	subwf	(_Adjust_Pout_Flag)^080h,w
	skipnc
	goto	u10871
	goto	u10870
u10871:
	goto	l17610
u10870:
	line	701
	
l17608:	
;task.c: 700: {
;task.c: 701: Adjust_Pout_Flag=0x04;
	movlw	(04h)
	movwf	(_Adjust_Pout_Flag)^080h
	line	702
;task.c: 702: }
	goto	l17620
	line	703
	
l17610:	
;task.c: 703: else if((ho_cnt>=t4) && (ho_cnt<t5) && (Adjust_Pout_Flag<=0x05))
	movlb 2	; select bank2
	movf	(_t4)^0100h,w
	movlb 1	; select bank1
	movwf	(??_handle_ad_loop+0)^080h+0
	clrf	(??_handle_ad_loop+0)^080h+0+1
	movf	1+(??_handle_ad_loop+0)^080h+0,w
	subwf	(_ho_cnt+1),w
	skipz
	goto	u10885
	movf	0+(??_handle_ad_loop+0)^080h+0,w
	subwf	(_ho_cnt),w
u10885:
	skipc
	goto	u10881
	goto	u10880
u10881:
	goto	l17618
u10880:
	
l17612:	
	movlb 3	; select bank3
	movf	(_t5)^0180h,w
	movlb 1	; select bank1
	movwf	(??_handle_ad_loop+0)^080h+0
	clrf	(??_handle_ad_loop+0)^080h+0+1
	movf	1+(??_handle_ad_loop+0)^080h+0,w
	subwf	(_ho_cnt+1),w
	skipz
	goto	u10895
	movf	0+(??_handle_ad_loop+0)^080h+0,w
	subwf	(_ho_cnt),w
u10895:
	skipnc
	goto	u10891
	goto	u10890
u10891:
	goto	l17618
u10890:
	
l17614:	
	movlw	(06h)
	subwf	(_Adjust_Pout_Flag)^080h,w
	skipnc
	goto	u10901
	goto	u10900
u10901:
	goto	l17618
u10900:
	line	705
	
l17616:	
;task.c: 704: {
;task.c: 705: Adjust_Pout_Flag=0x05;
	movlw	(05h)
	movwf	(_Adjust_Pout_Flag)^080h
	line	706
;task.c: 706: }
	goto	l17620
	line	709
	
l17618:	
;task.c: 707: else
;task.c: 708: {
;task.c: 709: Adjust_Pout_Flag=0x00;
	clrf	(_Adjust_Pout_Flag)^080h
	line	712
	
l17620:	
;task.c: 710: }
;task.c: 712: if(battery_voltage_value>bt_volt_80 && voltage_adjust_index<=0x01)
	movlb 4	; select bank4
	movf	(_bt_volt_80+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 4	; select bank4
	movf	(_bt_volt_80+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 4	; select bank4
	movf	(_bt_volt_80+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 4	; select bank4
	movf	(_bt_volt_80)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff2+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff2+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff2+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u10911
	goto	u10910
u10911:
	goto	l17642
u10910:
	
l17622:	
	movlw	(02h)
	movlb 1	; select bank1
	subwf	(_voltage_adjust_index)^080h,w
	skipnc
	goto	u10921
	goto	u10920
u10921:
	goto	l17642
u10920:
	line	714
	
l17624:	
;task.c: 713: {
;task.c: 714: index_01_count++;
	movlb 4	; select bank4
	incf	(_index_01_count)^0200h,f
	skipnz
	incf	(_index_01_count+1)^0200h,f
	line	715
	
l17626:	
;task.c: 715: index_02_count=0x00;
	clrf	(_index_02_count)^0200h
	clrf	(_index_02_count+1)^0200h
	line	716
	
l17628:	
;task.c: 716: index_03_count=0x00;
	clrf	(_index_03_count)^0200h
	clrf	(_index_03_count+1)^0200h
	line	717
	
l17630:	
;task.c: 717: index_04_count=0x00;
	clrf	(_index_04_count)^0200h
	clrf	(_index_04_count+1)^0200h
	line	718
	
l17632:	
;task.c: 718: index_05_count=0x00;
	clrf	(_index_05_count)^0200h
	clrf	(_index_05_count+1)^0200h
	line	719
	
l17634:	
;task.c: 719: index_06_count=0x00;
	clrf	(_index_06_count)^0200h
	clrf	(_index_06_count+1)^0200h
	line	720
	
l17636:	
;task.c: 720: if(index_01_count>100)
	movlw	high(065h)
	subwf	(_index_01_count+1)^0200h,w
	movlw	low(065h)
	skipnz
	subwf	(_index_01_count)^0200h,w
	skipc
	goto	u10931
	goto	u10930
u10931:
	goto	l17762
u10930:
	line	722
	
l17638:	
;task.c: 721: {
;task.c: 722: voltage_adjust_index=0x01;
	movlb 1	; select bank1
	clrf	(_voltage_adjust_index)^080h
	incf	(_voltage_adjust_index)^080h,f
	line	723
	
l17640:	
;task.c: 723: index_01_count=0x00;
	movlb 4	; select bank4
	clrf	(_index_01_count)^0200h
	clrf	(_index_01_count+1)^0200h
	goto	l17762
	line	727
	
l17642:	
;task.c: 727: else if(battery_voltage_value>bt_volt_60 && battery_voltage_value<=bt_volt_80 && voltage_adjust_index<=0x02)
	movlb 4	; select bank4
	movf	(_bt_volt_60+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 4	; select bank4
	movf	(_bt_volt_60+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 4	; select bank4
	movf	(_bt_volt_60+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 4	; select bank4
	movf	(_bt_volt_60)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff2+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff2+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff2+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u10941
	goto	u10940
u10941:
	goto	l17666
u10940:
	
l17644:	
	movlb 4	; select bank4
	movf	(_bt_volt_80+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 4	; select bank4
	movf	(_bt_volt_80+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 4	; select bank4
	movf	(_bt_volt_80+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 4	; select bank4
	movf	(_bt_volt_80)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff2+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff2+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff2+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u10951
	goto	u10950
u10951:
	goto	l17666
u10950:
	
l17646:	
	movlw	(03h)
	movlb 1	; select bank1
	subwf	(_voltage_adjust_index)^080h,w
	skipnc
	goto	u10961
	goto	u10960
u10961:
	goto	l17666
u10960:
	line	729
	
l17648:	
;task.c: 728: {
;task.c: 729: index_02_count++;
	movlb 4	; select bank4
	incf	(_index_02_count)^0200h,f
	skipnz
	incf	(_index_02_count+1)^0200h,f
	line	730
	
l17650:	
;task.c: 730: index_01_count=0x00;
	clrf	(_index_01_count)^0200h
	clrf	(_index_01_count+1)^0200h
	line	731
	
l17652:	
;task.c: 731: index_03_count=0x00;
	clrf	(_index_03_count)^0200h
	clrf	(_index_03_count+1)^0200h
	line	732
	
l17654:	
;task.c: 732: index_04_count=0x00;
	clrf	(_index_04_count)^0200h
	clrf	(_index_04_count+1)^0200h
	line	733
	
l17656:	
;task.c: 733: index_05_count=0x00;
	clrf	(_index_05_count)^0200h
	clrf	(_index_05_count+1)^0200h
	line	734
	
l17658:	
;task.c: 734: index_06_count=0x00;
	clrf	(_index_06_count)^0200h
	clrf	(_index_06_count+1)^0200h
	line	735
	
l17660:	
;task.c: 735: if(index_02_count>100)
	movlw	high(065h)
	subwf	(_index_02_count+1)^0200h,w
	movlw	low(065h)
	skipnz
	subwf	(_index_02_count)^0200h,w
	skipc
	goto	u10971
	goto	u10970
u10971:
	goto	l17762
u10970:
	line	737
	
l17662:	
;task.c: 736: {
;task.c: 737: voltage_adjust_index=0x02;
	movlw	(02h)
	movlb 1	; select bank1
	movwf	(_voltage_adjust_index)^080h
	line	738
	
l17664:	
;task.c: 738: index_02_count=0x00;
	movlb 4	; select bank4
	clrf	(_index_02_count)^0200h
	clrf	(_index_02_count+1)^0200h
	goto	l17762
	line	741
	
l17666:	
;task.c: 741: else if(battery_voltage_value>bt_volt_40 && battery_voltage_value<=bt_volt_60 && voltage_adjust_index<=0x03)
	movlb 4	; select bank4
	movf	(_bt_volt_40+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 4	; select bank4
	movf	(_bt_volt_40+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 4	; select bank4
	movf	(_bt_volt_40+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 4	; select bank4
	movf	(_bt_volt_40)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff2+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff2+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff2+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u10981
	goto	u10980
u10981:
	goto	l17690
u10980:
	
l17668:	
	movlb 4	; select bank4
	movf	(_bt_volt_60+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 4	; select bank4
	movf	(_bt_volt_60+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 4	; select bank4
	movf	(_bt_volt_60+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 4	; select bank4
	movf	(_bt_volt_60)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff2+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff2+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff2+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u10991
	goto	u10990
u10991:
	goto	l17690
u10990:
	
l17670:	
	movlw	(04h)
	movlb 1	; select bank1
	subwf	(_voltage_adjust_index)^080h,w
	skipnc
	goto	u11001
	goto	u11000
u11001:
	goto	l17690
u11000:
	line	743
	
l17672:	
;task.c: 742: {
;task.c: 743: index_03_count++;
	movlb 4	; select bank4
	incf	(_index_03_count)^0200h,f
	skipnz
	incf	(_index_03_count+1)^0200h,f
	line	744
	
l17674:	
;task.c: 744: index_02_count=0x00;
	clrf	(_index_02_count)^0200h
	clrf	(_index_02_count+1)^0200h
	line	745
	
l17676:	
;task.c: 745: index_01_count=0x00;
	clrf	(_index_01_count)^0200h
	clrf	(_index_01_count+1)^0200h
	line	746
	
l17678:	
;task.c: 746: index_04_count=0x00;
	clrf	(_index_04_count)^0200h
	clrf	(_index_04_count+1)^0200h
	line	747
	
l17680:	
;task.c: 747: index_05_count=0x00;
	clrf	(_index_05_count)^0200h
	clrf	(_index_05_count+1)^0200h
	line	748
	
l17682:	
;task.c: 748: index_06_count=0x00;
	clrf	(_index_06_count)^0200h
	clrf	(_index_06_count+1)^0200h
	line	749
	
l17684:	
;task.c: 749: if(index_03_count>100)
	movlw	high(065h)
	subwf	(_index_03_count+1)^0200h,w
	movlw	low(065h)
	skipnz
	subwf	(_index_03_count)^0200h,w
	skipc
	goto	u11011
	goto	u11010
u11011:
	goto	l17762
u11010:
	line	751
	
l17686:	
;task.c: 750: {
;task.c: 751: voltage_adjust_index=0x03;
	movlw	(03h)
	movlb 1	; select bank1
	movwf	(_voltage_adjust_index)^080h
	line	752
	
l17688:	
;task.c: 752: index_03_count=0x00;
	movlb 4	; select bank4
	clrf	(_index_03_count)^0200h
	clrf	(_index_03_count+1)^0200h
	goto	l17762
	line	755
	
l17690:	
;task.c: 755: else if(battery_voltage_value>bt_volt_20 && battery_voltage_value<=bt_volt_40 && voltage_adjust_index<=0x04)
	movlb 4	; select bank4
	movf	(_bt_volt_20+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 4	; select bank4
	movf	(_bt_volt_20+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 4	; select bank4
	movf	(_bt_volt_20+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 4	; select bank4
	movf	(_bt_volt_20)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff2+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff2+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff2+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u11021
	goto	u11020
u11021:
	goto	l17714
u11020:
	
l17692:	
	movlb 4	; select bank4
	movf	(_bt_volt_40+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 4	; select bank4
	movf	(_bt_volt_40+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 4	; select bank4
	movf	(_bt_volt_40+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 4	; select bank4
	movf	(_bt_volt_40)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff2+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff2+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff2+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u11031
	goto	u11030
u11031:
	goto	l17714
u11030:
	
l17694:	
	movlw	(05h)
	movlb 1	; select bank1
	subwf	(_voltage_adjust_index)^080h,w
	skipnc
	goto	u11041
	goto	u11040
u11041:
	goto	l17714
u11040:
	line	757
	
l17696:	
;task.c: 756: {
;task.c: 757: index_04_count++;
	movlb 4	; select bank4
	incf	(_index_04_count)^0200h,f
	skipnz
	incf	(_index_04_count+1)^0200h,f
	line	758
	
l17698:	
;task.c: 758: index_02_count=0x00;
	clrf	(_index_02_count)^0200h
	clrf	(_index_02_count+1)^0200h
	line	759
	
l17700:	
;task.c: 759: index_03_count=0x00;
	clrf	(_index_03_count)^0200h
	clrf	(_index_03_count+1)^0200h
	line	760
	
l17702:	
;task.c: 760: index_01_count=0x00;
	clrf	(_index_01_count)^0200h
	clrf	(_index_01_count+1)^0200h
	line	761
	
l17704:	
;task.c: 761: index_05_count=0x00;
	clrf	(_index_05_count)^0200h
	clrf	(_index_05_count+1)^0200h
	line	762
	
l17706:	
;task.c: 762: index_06_count=0x00;
	clrf	(_index_06_count)^0200h
	clrf	(_index_06_count+1)^0200h
	line	763
	
l17708:	
;task.c: 763: if(index_04_count>100)
	movlw	high(065h)
	subwf	(_index_04_count+1)^0200h,w
	movlw	low(065h)
	skipnz
	subwf	(_index_04_count)^0200h,w
	skipc
	goto	u11051
	goto	u11050
u11051:
	goto	l17762
u11050:
	line	765
	
l17710:	
;task.c: 764: {
;task.c: 765: voltage_adjust_index=0x04;
	movlw	(04h)
	movlb 1	; select bank1
	movwf	(_voltage_adjust_index)^080h
	line	766
	
l17712:	
;task.c: 766: index_04_count=0x00;
	movlb 4	; select bank4
	clrf	(_index_04_count)^0200h
	clrf	(_index_04_count+1)^0200h
	goto	l17762
	line	769
	
l17714:	
;task.c: 769: else if(battery_voltage_value>bt_volt_00 && battery_voltage_value<=bt_volt_20 && voltage_adjust_index<=0x05)
	movlb 4	; select bank4
	movf	(_bt_volt_00+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 4	; select bank4
	movf	(_bt_volt_00+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 4	; select bank4
	movf	(_bt_volt_00+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 4	; select bank4
	movf	(_bt_volt_00)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff2+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff2+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff2+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u11061
	goto	u11060
u11061:
	goto	l17738
u11060:
	
l17716:	
	movlb 4	; select bank4
	movf	(_bt_volt_20+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 4	; select bank4
	movf	(_bt_volt_20+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 4	; select bank4
	movf	(_bt_volt_20+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 4	; select bank4
	movf	(_bt_volt_20)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff2+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff2+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff2+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u11071
	goto	u11070
u11071:
	goto	l17738
u11070:
	
l17718:	
	movlw	(06h)
	movlb 1	; select bank1
	subwf	(_voltage_adjust_index)^080h,w
	skipnc
	goto	u11081
	goto	u11080
u11081:
	goto	l17738
u11080:
	line	771
	
l17720:	
;task.c: 770: {
;task.c: 771: index_05_count++;
	movlb 4	; select bank4
	incf	(_index_05_count)^0200h,f
	skipnz
	incf	(_index_05_count+1)^0200h,f
	line	772
	
l17722:	
;task.c: 772: index_02_count=0x00;
	clrf	(_index_02_count)^0200h
	clrf	(_index_02_count+1)^0200h
	line	773
	
l17724:	
;task.c: 773: index_03_count=0x00;
	clrf	(_index_03_count)^0200h
	clrf	(_index_03_count+1)^0200h
	line	774
	
l17726:	
;task.c: 774: index_04_count=0x00;
	clrf	(_index_04_count)^0200h
	clrf	(_index_04_count+1)^0200h
	line	775
	
l17728:	
;task.c: 775: index_01_count=0x00;
	clrf	(_index_01_count)^0200h
	clrf	(_index_01_count+1)^0200h
	line	776
	
l17730:	
;task.c: 776: index_06_count=0x00;
	clrf	(_index_06_count)^0200h
	clrf	(_index_06_count+1)^0200h
	line	777
	
l17732:	
;task.c: 777: if(index_05_count>100)
	movlw	high(065h)
	subwf	(_index_05_count+1)^0200h,w
	movlw	low(065h)
	skipnz
	subwf	(_index_05_count)^0200h,w
	skipc
	goto	u11091
	goto	u11090
u11091:
	goto	l17762
u11090:
	line	779
	
l17734:	
;task.c: 778: {
;task.c: 779: voltage_adjust_index=0x05;
	movlw	(05h)
	movlb 1	; select bank1
	movwf	(_voltage_adjust_index)^080h
	line	780
	
l17736:	
;task.c: 780: index_05_count=0x00;
	movlb 4	; select bank4
	clrf	(_index_05_count)^0200h
	clrf	(_index_05_count+1)^0200h
	goto	l17762
	line	783
	
l17738:	
;task.c: 783: else if(battery_voltage_value<bt_volt_00 && voltage_adjust_index<=0x06)
	movlb 0	; select bank0
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff1)

	movlb 4	; select bank4
	movf	(_bt_volt_00+3)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 4	; select bank4
	movf	(_bt_volt_00+2)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 4	; select bank4
	movf	(_bt_volt_00+1)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 4	; select bank4
	movf	(_bt_volt_00)^0200h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u11101
	goto	u11100
u11101:
	goto	l17760
u11100:
	
l17740:	
	movlw	(07h)
	movlb 1	; select bank1
	subwf	(_voltage_adjust_index)^080h,w
	skipnc
	goto	u11111
	goto	u11110
u11111:
	goto	l17760
u11110:
	line	785
	
l17742:	
;task.c: 784: {
;task.c: 785: index_06_count++;
	movlb 4	; select bank4
	incf	(_index_06_count)^0200h,f
	skipnz
	incf	(_index_06_count+1)^0200h,f
	line	786
	
l17744:	
;task.c: 786: index_02_count=0x00;
	clrf	(_index_02_count)^0200h
	clrf	(_index_02_count+1)^0200h
	line	787
	
l17746:	
;task.c: 787: index_03_count=0x00;
	clrf	(_index_03_count)^0200h
	clrf	(_index_03_count+1)^0200h
	line	788
	
l17748:	
;task.c: 788: index_04_count=0x00;
	clrf	(_index_04_count)^0200h
	clrf	(_index_04_count+1)^0200h
	line	789
	
l17750:	
;task.c: 789: index_05_count=0x00;
	clrf	(_index_05_count)^0200h
	clrf	(_index_05_count+1)^0200h
	line	790
	
l17752:	
;task.c: 790: index_01_count=0x00;
	clrf	(_index_01_count)^0200h
	clrf	(_index_01_count+1)^0200h
	line	791
	
l17754:	
;task.c: 791: if(index_06_count>100)
	movlw	high(065h)
	subwf	(_index_06_count+1)^0200h,w
	movlw	low(065h)
	skipnz
	subwf	(_index_06_count)^0200h,w
	skipc
	goto	u11121
	goto	u11120
u11121:
	goto	l17762
u11120:
	line	793
	
l17756:	
;task.c: 792: {
;task.c: 793: voltage_adjust_index=0x06;
	movlw	(06h)
	movlb 1	; select bank1
	movwf	(_voltage_adjust_index)^080h
	line	794
	
l17758:	
;task.c: 794: index_06_count=0x00;
	movlb 4	; select bank4
	clrf	(_index_06_count)^0200h
	clrf	(_index_06_count+1)^0200h
	goto	l17762
	line	799
	
l17760:	
;task.c: 797: else
;task.c: 798: {
;task.c: 799: index_01_count=0x00;
	movlb 4	; select bank4
	clrf	(_index_01_count)^0200h
	clrf	(_index_01_count+1)^0200h
	line	800
;task.c: 800: index_02_count=0x00;
	clrf	(_index_02_count)^0200h
	clrf	(_index_02_count+1)^0200h
	line	801
;task.c: 801: index_03_count=0x00;
	clrf	(_index_03_count)^0200h
	clrf	(_index_03_count+1)^0200h
	line	802
;task.c: 802: index_04_count=0x00;
	clrf	(_index_04_count)^0200h
	clrf	(_index_04_count+1)^0200h
	line	803
;task.c: 803: index_05_count=0x00;
	clrf	(_index_05_count)^0200h
	clrf	(_index_05_count+1)^0200h
	line	804
;task.c: 804: index_06_count=0x00;
	clrf	(_index_06_count)^0200h
	clrf	(_index_06_count+1)^0200h
	line	807
	
l17762:	
;task.c: 805: }
;task.c: 807: if( ((load_cc_I/100)*160) > (Load_Pmax*160/(load_voltage_value*61/1000)) )
	movlw	03Dh
	movlb 0	; select bank0
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	movlb 1	; select bank1
	movf	(_load_voltage_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___wmul@multiplier+1)
	movlb 1	; select bank1
	movf	(_load_voltage_value)^080h,w
	movlb 0	; select bank0
	movwf	(___wmul@multiplier)
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(___lwdiv@dividend+1)
	movf	(0+(?___wmul)),w
	movwf	(___lwdiv@dividend)
	movlw	low(03E8h)
	movwf	(___lwdiv@divisor)
	movlw	high(03E8h)
	movwf	((___lwdiv@divisor))+1
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(___lwtofl@c+1)
	movf	(0+(?___lwdiv)),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___fldiv@f2+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___fldiv@f2+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___fldiv@f2+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___fldiv@f2)

	movlw	0x43
	movwf	(___flmul@f1+3)
	movlw	0x20
	movwf	(___flmul@f1+2)
	movlw	0x0
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	movlb 5	; select bank5
	movf	(_Load_Pmax+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 5	; select bank5
	movf	(_Load_Pmax+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 5	; select bank5
	movf	(_Load_Pmax+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 5	; select bank5
	movf	(_Load_Pmax)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___fldiv@f1+3)
	movf	(2+(?___flmul)),w
	movwf	(___fldiv@f1+2)
	movf	(1+(?___flmul)),w
	movwf	(___fldiv@f1+1)
	movf	(0+(?___flmul)),w
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	(___flge@ff1+3)
	movf	(2+(?___fldiv)),w
	movwf	(___flge@ff1+2)
	movf	(1+(?___fldiv)),w
	movwf	(___flge@ff1+1)
	movf	(0+(?___fldiv)),w
	movwf	(___flge@ff1)

	movlw	0x43
	movwf	(___flmul@f1+3)
	movlw	0x20
	movwf	(___flmul@f1+2)
	movlw	0x0
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	movlw	0x42
	movwf	(___fldiv@f2+3)
	movlw	0xc8
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	movlb 1	; select bank1
	movf	(_load_cc_I+3)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+3)
	movlb 1	; select bank1
	movf	(_load_cc_I+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+2)
	movlb 1	; select bank1
	movf	(_load_cc_I+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+1)
	movlb 1	; select bank1
	movf	(_load_cc_I)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	(___flmul@f2+3)
	movf	(2+(?___fldiv)),w
	movwf	(___flmul@f2+2)
	movf	(1+(?___fldiv)),w
	movwf	(___flmul@f2+1)
	movf	(0+(?___fldiv)),w
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___flge@ff2+3)
	movf	(2+(?___flmul)),w
	movwf	(___flge@ff2+2)
	movf	(1+(?___flmul)),w
	movwf	(___flge@ff2+1)
	movf	(0+(?___flmul)),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u11131
	goto	u11130
u11131:
	goto	l17794
u11130:
	line	809
	
l17764:	
;task.c: 808: {
;task.c: 809: PID_CC_discharge.SetPoint=(Load_Pmax*160)/(load_voltage_value*61/1000);
	movlw	03Dh
	movwf	(___wmul@multiplicand)
	clrf	(___wmul@multiplicand+1)
	movlb 1	; select bank1
	movf	(_load_voltage_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___wmul@multiplier+1)
	movlb 1	; select bank1
	movf	(_load_voltage_value)^080h,w
	movlb 0	; select bank0
	movwf	(___wmul@multiplier)
	fcall	___wmul
	movf	(1+(?___wmul)),w
	movwf	(___lwdiv@dividend+1)
	movf	(0+(?___wmul)),w
	movwf	(___lwdiv@dividend)
	movlw	low(03E8h)
	movwf	(___lwdiv@divisor)
	movlw	high(03E8h)
	movwf	((___lwdiv@divisor))+1
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(___lwtofl@c+1)
	movf	(0+(?___lwdiv)),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___fldiv@f2+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___fldiv@f2+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___fldiv@f2+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___fldiv@f2)

	movlw	0x43
	movwf	(___flmul@f1+3)
	movlw	0x20
	movwf	(___flmul@f1+2)
	movlw	0x0
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	movlb 5	; select bank5
	movf	(_Load_Pmax+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 5	; select bank5
	movf	(_Load_Pmax+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 5	; select bank5
	movf	(_Load_Pmax+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 5	; select bank5
	movf	(_Load_Pmax)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___fldiv@f1+3)
	movf	(2+(?___flmul)),w
	movwf	(___fldiv@f1+2)
	movf	(1+(?___flmul)),w
	movwf	(___fldiv@f1+1)
	movf	(0+(?___flmul)),w
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	811
	
l17766:	
;task.c: 811: limit_power_pid_flag=0x01;
	clrf	(_limit_power_pid_flag)^0180h
	incf	(_limit_power_pid_flag)^0180h,f
	line	813
	
l17768:	
;task.c: 813: data_cc_var = PID_CC_discharge.SetPoint;
	movf	(_PID_CC_discharge+3)^0180h,w
	movlb 5	; select bank5
	movwf	(handle_ad_loop@data_cc_var+3)^0280h
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 5	; select bank5
	movwf	(handle_ad_loop@data_cc_var+2)^0280h
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 5	; select bank5
	movwf	(handle_ad_loop@data_cc_var+1)^0280h
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 5	; select bank5
	movwf	(handle_ad_loop@data_cc_var)^0280h

	line	815
	
l17770:	
;task.c: 815: if(Adjust_Pout_Flag==0x01)
	movlb 1	; select bank1
	decf	(_Adjust_Pout_Flag)^080h,w
	skipz
	goto	u11141
	goto	u11140
u11141:
	goto	l17774
u11140:
	line	817
	
l17772:	
;task.c: 816: {
;task.c: 817: PID_CC_discharge.SetPoint = (data_cc_var)*step_01_load_percent/100;
	movlw	0x42
	movlb 0	; select bank0
	movwf	(___fldiv@f2+3)
	movlw	0xc8
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	movlb 2	; select bank2
	movf	(_step_01_load_percent+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlb 2	; select bank2
	movf	(_step_01_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+2)
	movlb 2	; select bank2
	movf	(_step_01_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+1)
	movlb 2	; select bank2
	movf	(_step_01_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1)

	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___fldiv@f1+3)
	movf	(2+(?___flmul)),w
	movwf	(___fldiv@f1+2)
	movf	(1+(?___flmul)),w
	movwf	(___fldiv@f1+1)
	movf	(0+(?___flmul)),w
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	818
;task.c: 818: }
	goto	l17822
	line	819
	
l17774:	
;task.c: 819: else if(Adjust_Pout_Flag==0x02)
	movf	(_Adjust_Pout_Flag)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u11151
	goto	u11150
u11151:
	goto	l17778
u11150:
	line	821
	
l17776:	
;task.c: 820: {
;task.c: 821: PID_CC_discharge.SetPoint = (data_cc_var)*step_02_load_percent/100;
	movlw	0x42
	movlb 0	; select bank0
	movwf	(___fldiv@f2+3)
	movlw	0xc8
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	movlb 2	; select bank2
	movf	(_step_02_load_percent+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlb 2	; select bank2
	movf	(_step_02_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+2)
	movlb 2	; select bank2
	movf	(_step_02_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+1)
	movlb 2	; select bank2
	movf	(_step_02_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1)

	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___fldiv@f1+3)
	movf	(2+(?___flmul)),w
	movwf	(___fldiv@f1+2)
	movf	(1+(?___flmul)),w
	movwf	(___fldiv@f1+1)
	movf	(0+(?___flmul)),w
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	822
;task.c: 822: }
	goto	l17822
	line	823
	
l17778:	
;task.c: 823: else if(Adjust_Pout_Flag==0x03)
	movf	(_Adjust_Pout_Flag)^080h,w
	xorlw	03h&0ffh
	skipz
	goto	u11161
	goto	u11160
u11161:
	goto	l17782
u11160:
	line	825
	
l17780:	
;task.c: 824: {
;task.c: 825: PID_CC_discharge.SetPoint = (data_cc_var)*step_03_load_percent/100;
	movlw	0x42
	movlb 0	; select bank0
	movwf	(___fldiv@f2+3)
	movlw	0xc8
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	movlb 2	; select bank2
	movf	(_step_03_load_percent+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlb 2	; select bank2
	movf	(_step_03_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+2)
	movlb 2	; select bank2
	movf	(_step_03_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+1)
	movlb 2	; select bank2
	movf	(_step_03_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1)

	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___fldiv@f1+3)
	movf	(2+(?___flmul)),w
	movwf	(___fldiv@f1+2)
	movf	(1+(?___flmul)),w
	movwf	(___fldiv@f1+1)
	movf	(0+(?___flmul)),w
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	826
;task.c: 826: }
	goto	l17822
	line	827
	
l17782:	
;task.c: 827: else if(Adjust_Pout_Flag==0x04)
	movf	(_Adjust_Pout_Flag)^080h,w
	xorlw	04h&0ffh
	skipz
	goto	u11171
	goto	u11170
u11171:
	goto	l17786
u11170:
	line	829
	
l17784:	
;task.c: 828: {
;task.c: 829: PID_CC_discharge.SetPoint = (data_cc_var)*step_04_load_percent/100;
	movlw	0x42
	movlb 0	; select bank0
	movwf	(___fldiv@f2+3)
	movlw	0xc8
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	movlb 2	; select bank2
	movf	(_step_04_load_percent+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlb 2	; select bank2
	movf	(_step_04_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+2)
	movlb 2	; select bank2
	movf	(_step_04_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+1)
	movlb 2	; select bank2
	movf	(_step_04_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1)

	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___fldiv@f1+3)
	movf	(2+(?___flmul)),w
	movwf	(___fldiv@f1+2)
	movf	(1+(?___flmul)),w
	movwf	(___fldiv@f1+1)
	movf	(0+(?___flmul)),w
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	830
;task.c: 830: }
	goto	l17822
	line	831
	
l17786:	
;task.c: 831: else if(Adjust_Pout_Flag==0x05)
	movf	(_Adjust_Pout_Flag)^080h,w
	xorlw	05h&0ffh
	skipz
	goto	u11181
	goto	u11180
u11181:
	goto	l17790
u11180:
	line	833
	
l17788:	
;task.c: 832: {
;task.c: 833: PID_CC_discharge.SetPoint = (data_cc_var)*step_05_load_percent/100;
	movlw	0x42
	movlb 0	; select bank0
	movwf	(___fldiv@f2+3)
	movlw	0xc8
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	movlb 2	; select bank2
	movf	(_step_05_load_percent+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlb 2	; select bank2
	movf	(_step_05_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+2)
	movlb 2	; select bank2
	movf	(_step_05_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+1)
	movlb 2	; select bank2
	movf	(_step_05_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1)

	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___fldiv@f1+3)
	movf	(2+(?___flmul)),w
	movwf	(___fldiv@f1+2)
	movf	(1+(?___flmul)),w
	movwf	(___fldiv@f1+1)
	movf	(0+(?___flmul)),w
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	834
;task.c: 834: }
	goto	l17822
	line	835
	
l17790:	
;task.c: 835: else if(Adjust_Pout_Flag==0x00)
	movf	(_Adjust_Pout_Flag)^080h,f
	skipz
	goto	u11191
	goto	u11190
u11191:
	goto	l1439
u11190:
	line	837
	
l17792:	
;task.c: 836: {
;task.c: 837: PID_CC_discharge.SetPoint =0;
	movlb 3	; select bank3
	clrf	(_PID_CC_discharge)^0180h
	clrf	(_PID_CC_discharge+1)^0180h
	clrf	(_PID_CC_discharge+2)^0180h
	clrf	(_PID_CC_discharge+3)^0180h
	goto	l17822
	line	840
	
l1439:	
	goto	l17822
	line	843
	
l17794:	
;task.c: 841: else
;task.c: 842: {
;task.c: 843: PID_CC_discharge.SetPoint=(load_cc_I/100)*160;
	movlw	0x43
	movwf	(___flmul@f1+3)
	movlw	0x20
	movwf	(___flmul@f1+2)
	movlw	0x0
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	movlw	0x42
	movwf	(___fldiv@f2+3)
	movlw	0xc8
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	movlb 1	; select bank1
	movf	(_load_cc_I+3)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+3)
	movlb 1	; select bank1
	movf	(_load_cc_I+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+2)
	movlb 1	; select bank1
	movf	(_load_cc_I+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+1)
	movlb 1	; select bank1
	movf	(_load_cc_I)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	(___flmul@f2+3)
	movf	(2+(?___fldiv)),w
	movwf	(___flmul@f2+2)
	movf	(1+(?___fldiv)),w
	movwf	(___flmul@f2+1)
	movf	(0+(?___fldiv)),w
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	845
	
l17796:	
;task.c: 845: data_cc_var = PID_CC_discharge.SetPoint;
	movf	(_PID_CC_discharge+3)^0180h,w
	movlb 5	; select bank5
	movwf	(handle_ad_loop@data_cc_var+3)^0280h
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 5	; select bank5
	movwf	(handle_ad_loop@data_cc_var+2)^0280h
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 5	; select bank5
	movwf	(handle_ad_loop@data_cc_var+1)^0280h
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 5	; select bank5
	movwf	(handle_ad_loop@data_cc_var)^0280h

	line	847
	
l17798:	
;task.c: 847: if(Adjust_Pout_Flag==0x01)
	movlb 1	; select bank1
	decf	(_Adjust_Pout_Flag)^080h,w
	skipz
	goto	u11201
	goto	u11200
u11201:
	goto	l17802
u11200:
	line	849
	
l17800:	
;task.c: 848: {
;task.c: 849: PID_CC_discharge.SetPoint = (data_cc_var)*step_01_load_percent/100;
	movlw	0x42
	movlb 0	; select bank0
	movwf	(___fldiv@f2+3)
	movlw	0xc8
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	movlb 2	; select bank2
	movf	(_step_01_load_percent+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlb 2	; select bank2
	movf	(_step_01_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+2)
	movlb 2	; select bank2
	movf	(_step_01_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+1)
	movlb 2	; select bank2
	movf	(_step_01_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1)

	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___fldiv@f1+3)
	movf	(2+(?___flmul)),w
	movwf	(___fldiv@f1+2)
	movf	(1+(?___flmul)),w
	movwf	(___fldiv@f1+1)
	movf	(0+(?___flmul)),w
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	850
;task.c: 850: }
	goto	l17822
	line	851
	
l17802:	
;task.c: 851: else if(Adjust_Pout_Flag==0x02)
	movf	(_Adjust_Pout_Flag)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u11211
	goto	u11210
u11211:
	goto	l17806
u11210:
	line	853
	
l17804:	
;task.c: 852: {
;task.c: 853: PID_CC_discharge.SetPoint = (data_cc_var)*step_02_load_percent/100;
	movlw	0x42
	movlb 0	; select bank0
	movwf	(___fldiv@f2+3)
	movlw	0xc8
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	movlb 2	; select bank2
	movf	(_step_02_load_percent+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlb 2	; select bank2
	movf	(_step_02_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+2)
	movlb 2	; select bank2
	movf	(_step_02_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+1)
	movlb 2	; select bank2
	movf	(_step_02_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1)

	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___fldiv@f1+3)
	movf	(2+(?___flmul)),w
	movwf	(___fldiv@f1+2)
	movf	(1+(?___flmul)),w
	movwf	(___fldiv@f1+1)
	movf	(0+(?___flmul)),w
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	854
;task.c: 854: }
	goto	l17822
	line	855
	
l17806:	
;task.c: 855: else if(Adjust_Pout_Flag==0x03)
	movf	(_Adjust_Pout_Flag)^080h,w
	xorlw	03h&0ffh
	skipz
	goto	u11221
	goto	u11220
u11221:
	goto	l17810
u11220:
	line	857
	
l17808:	
;task.c: 856: {
;task.c: 857: PID_CC_discharge.SetPoint = (data_cc_var)*step_03_load_percent/100;
	movlw	0x42
	movlb 0	; select bank0
	movwf	(___fldiv@f2+3)
	movlw	0xc8
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	movlb 2	; select bank2
	movf	(_step_03_load_percent+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlb 2	; select bank2
	movf	(_step_03_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+2)
	movlb 2	; select bank2
	movf	(_step_03_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+1)
	movlb 2	; select bank2
	movf	(_step_03_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1)

	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___fldiv@f1+3)
	movf	(2+(?___flmul)),w
	movwf	(___fldiv@f1+2)
	movf	(1+(?___flmul)),w
	movwf	(___fldiv@f1+1)
	movf	(0+(?___flmul)),w
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	858
;task.c: 858: }
	goto	l17822
	line	859
	
l17810:	
;task.c: 859: else if(Adjust_Pout_Flag==0x04)
	movf	(_Adjust_Pout_Flag)^080h,w
	xorlw	04h&0ffh
	skipz
	goto	u11231
	goto	u11230
u11231:
	goto	l17814
u11230:
	line	861
	
l17812:	
;task.c: 860: {
;task.c: 861: PID_CC_discharge.SetPoint = (data_cc_var)*step_04_load_percent/100;
	movlw	0x42
	movlb 0	; select bank0
	movwf	(___fldiv@f2+3)
	movlw	0xc8
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	movlb 2	; select bank2
	movf	(_step_04_load_percent+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlb 2	; select bank2
	movf	(_step_04_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+2)
	movlb 2	; select bank2
	movf	(_step_04_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+1)
	movlb 2	; select bank2
	movf	(_step_04_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1)

	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___fldiv@f1+3)
	movf	(2+(?___flmul)),w
	movwf	(___fldiv@f1+2)
	movf	(1+(?___flmul)),w
	movwf	(___fldiv@f1+1)
	movf	(0+(?___flmul)),w
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	862
;task.c: 862: }
	goto	l17822
	line	863
	
l17814:	
;task.c: 863: else if(Adjust_Pout_Flag==0x05)
	movf	(_Adjust_Pout_Flag)^080h,w
	xorlw	05h&0ffh
	skipz
	goto	u11241
	goto	u11240
u11241:
	goto	l17818
u11240:
	line	865
	
l17816:	
;task.c: 864: {
;task.c: 865: PID_CC_discharge.SetPoint = (data_cc_var)*step_05_load_percent/100;
	movlw	0x42
	movlb 0	; select bank0
	movwf	(___fldiv@f2+3)
	movlw	0xc8
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	movlb 2	; select bank2
	movf	(_step_05_load_percent+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlb 2	; select bank2
	movf	(_step_05_load_percent+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+2)
	movlb 2	; select bank2
	movf	(_step_05_load_percent+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+1)
	movlb 2	; select bank2
	movf	(_step_05_load_percent)^0100h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1)

	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___fldiv@f1+3)
	movf	(2+(?___flmul)),w
	movwf	(___fldiv@f1+2)
	movf	(1+(?___flmul)),w
	movwf	(___fldiv@f1+1)
	movf	(0+(?___flmul)),w
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___fldiv)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	866
;task.c: 866: }
	goto	l17822
	line	867
	
l17818:	
;task.c: 867: else if(Adjust_Pout_Flag==0x00)
	movf	(_Adjust_Pout_Flag)^080h,f
	skipz
	goto	u11251
	goto	u11250
u11251:
	goto	l1439
u11250:
	line	869
	
l17820:	
;task.c: 868: {
;task.c: 869: PID_CC_discharge.SetPoint =0;
	movlb 3	; select bank3
	clrf	(_PID_CC_discharge)^0180h
	clrf	(_PID_CC_discharge+1)^0180h
	clrf	(_PID_CC_discharge+2)^0180h
	clrf	(_PID_CC_discharge+3)^0180h
	line	874
	
l17822:	
;task.c: 870: }
;task.c: 872: }
;task.c: 874: if(voltage_adjust_index==0x01)
	movlb 1	; select bank1
	decf	(_voltage_adjust_index)^080h,w
	skipz
	goto	u11261
	goto	u11260
u11261:
	goto	l17826
u11260:
	line	876
	
l17824:	
;task.c: 875: {
;task.c: 876: PID_CC_discharge.SetPoint = PID_CC_discharge.SetPoint*1.0;
	movlw	0x3f
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0x80
	movwf	(___flmul@f1+2)
	movlw	0x0
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	movlb 3	; select bank3
	movf	(_PID_CC_discharge+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	877
;task.c: 877: }
	goto	l17846
	line	878
	
l17826:	
;task.c: 878: else if(voltage_adjust_index==0x02)
	movf	(_voltage_adjust_index)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u11271
	goto	u11270
u11271:
	goto	l17830
u11270:
	line	880
	
l17828:	
;task.c: 879: {
;task.c: 880: PID_CC_discharge.SetPoint = PID_CC_discharge.SetPoint*0.60;
	movlw	0x3f
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0x19
	movwf	(___flmul@f1+2)
	movlw	0x99
	movwf	(___flmul@f1+1)
	movlw	0x9a
	movwf	(___flmul@f1)

	movlb 3	; select bank3
	movf	(_PID_CC_discharge+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	881
;task.c: 881: }
	goto	l17846
	line	882
	
l17830:	
;task.c: 882: else if(voltage_adjust_index==0x03)
	movf	(_voltage_adjust_index)^080h,w
	xorlw	03h&0ffh
	skipz
	goto	u11281
	goto	u11280
u11281:
	goto	l17834
u11280:
	line	884
	
l17832:	
;task.c: 883: {
;task.c: 884: PID_CC_discharge.SetPoint = PID_CC_discharge.SetPoint*0.35;
	movlw	0x3e
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0xb3
	movwf	(___flmul@f1+2)
	movlw	0x33
	movwf	(___flmul@f1+1)
	movlw	0x33
	movwf	(___flmul@f1)

	movlb 3	; select bank3
	movf	(_PID_CC_discharge+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	885
;task.c: 885: }
	goto	l17846
	line	886
	
l17834:	
;task.c: 886: else if(voltage_adjust_index==0x04)
	movf	(_voltage_adjust_index)^080h,w
	xorlw	04h&0ffh
	skipz
	goto	u11291
	goto	u11290
u11291:
	goto	l17838
u11290:
	line	888
	
l17836:	
;task.c: 887: {
;task.c: 888: PID_CC_discharge.SetPoint = PID_CC_discharge.SetPoint*0.20;
	movlw	0x3e
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0x4c
	movwf	(___flmul@f1+2)
	movlw	0xcc
	movwf	(___flmul@f1+1)
	movlw	0xcd
	movwf	(___flmul@f1)

	movlb 3	; select bank3
	movf	(_PID_CC_discharge+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	889
;task.c: 889: }
	goto	l17846
	line	890
	
l17838:	
;task.c: 890: else if(voltage_adjust_index==0x05)
	movf	(_voltage_adjust_index)^080h,w
	xorlw	05h&0ffh
	skipz
	goto	u11301
	goto	u11300
u11301:
	goto	l17842
u11300:
	line	892
	
l17840:	
;task.c: 891: {
;task.c: 892: PID_CC_discharge.SetPoint = PID_CC_discharge.SetPoint*0.10;
	movlw	0x3d
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0xcc
	movwf	(___flmul@f1+2)
	movlw	0xcc
	movwf	(___flmul@f1+1)
	movlw	0xcd
	movwf	(___flmul@f1)

	movlb 3	; select bank3
	movf	(_PID_CC_discharge+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	893
;task.c: 893: }
	goto	l17846
	line	894
	
l17842:	
;task.c: 894: else if(voltage_adjust_index==0x06)
	movf	(_voltage_adjust_index)^080h,w
	xorlw	06h&0ffh
	skipz
	goto	u11311
	goto	u11310
u11311:
	goto	l1462
u11310:
	line	896
	
l17844:	
;task.c: 895: {
;task.c: 896: PID_CC_discharge.SetPoint = PID_CC_discharge.SetPoint*0.03;
	movlw	0x3c
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0xf5
	movwf	(___flmul@f1+2)
	movlw	0xc2
	movwf	(___flmul@f1+1)
	movlw	0x8f
	movwf	(___flmul@f1)

	movlb 3	; select bank3
	movf	(_PID_CC_discharge+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	goto	l17846
	line	899
	
l1462:	
	
l17846:	
;task.c: 897: }
;task.c: 899: if(mcu_temp_index==0x01)
	movlb 1	; select bank1
	decf	(_mcu_temp_index)^080h,w
	skipz
	goto	u11321
	goto	u11320
u11321:
	goto	l17850
u11320:
	line	901
	
l17848:	
;task.c: 900: {
;task.c: 901: PID_CC_discharge.SetPoint = PID_CC_discharge.SetPoint*0.5;
	movlw	0x3f
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0x0
	movwf	(___flmul@f1+2)
	movlw	0x0
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	movlb 3	; select bank3
	movf	(_PID_CC_discharge+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	902
;task.c: 902: }
	goto	l17858
	line	903
	
l17850:	
;task.c: 903: else if(mcu_temp_index==0x02)
	movf	(_mcu_temp_index)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u11331
	goto	u11330
u11331:
	goto	l17854
u11330:
	line	905
	
l17852:	
;task.c: 904: {
;task.c: 905: PID_CC_discharge.SetPoint = PID_CC_discharge.SetPoint*0.2;
	movlw	0x3e
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0x4c
	movwf	(___flmul@f1+2)
	movlw	0xcc
	movwf	(___flmul@f1+1)
	movlw	0xcd
	movwf	(___flmul@f1)

	movlb 3	; select bank3
	movf	(_PID_CC_discharge+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	906
;task.c: 906: }
	goto	l17858
	line	907
	
l17854:	
;task.c: 907: else if(mcu_temp_index==0x03)
	movf	(_mcu_temp_index)^080h,w
	xorlw	03h&0ffh
	skipz
	goto	u11341
	goto	u11340
u11341:
	goto	l17858
u11340:
	line	909
	
l17856:	
;task.c: 908: {
;task.c: 909: PID_CC_discharge.SetPoint =0;
	movlb 3	; select bank3
	clrf	(_PID_CC_discharge)^0180h
	clrf	(_PID_CC_discharge+1)^0180h
	clrf	(_PID_CC_discharge+2)^0180h
	clrf	(_PID_CC_discharge+3)^0180h
	line	913
	
l17858:	
;task.c: 910: }
;task.c: 913: if(light_mode==0x00 && work_mode==0x00)
	movlb 1	; select bank1
	movf	(_light_mode)^080h,f
	skipz
	goto	u11351
	goto	u11350
u11351:
	goto	l17886
u11350:
	
l17860:	
	movf	(_work_mode)^080h,f
	skipz
	goto	u11361
	goto	u11360
u11361:
	goto	l17886
u11360:
	line	915
	
l17862:	
;task.c: 914: {
;task.c: 915: if(ho_cnt==0 && mi_cnt<30)
	movf	((_ho_cnt+1)),w
	iorwf	((_ho_cnt)),w
	skipz
	goto	u11371
	goto	u11370
u11371:
	goto	l17872
u11370:
	
l17864:	
	movlw	high(01Eh)
	movlb 2	; select bank2
	subwf	(_mi_cnt+1)^0100h,w
	movlw	low(01Eh)
	skipnz
	subwf	(_mi_cnt)^0100h,w
	skipnc
	goto	u11381
	goto	u11380
u11381:
	goto	l17872
u11380:
	line	917
	
l17866:	
;task.c: 916: {
;task.c: 917: if(voltage_adjust_index==0x05)
	movlb 1	; select bank1
	movf	(_voltage_adjust_index)^080h,w
	xorlw	05h&0ffh
	skipz
	goto	u11391
	goto	u11390
u11391:
	goto	l17870
u11390:
	line	919
	
l17868:	
;task.c: 918: {
;task.c: 919: PID_CC_discharge.SetPoint = data_cc_var*0.01;
	movlw	0x3c
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0x23
	movwf	(___flmul@f1+2)
	movlw	0xd7
	movwf	(___flmul@f1+1)
	movlw	0xa
	movwf	(___flmul@f1)

	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	920
;task.c: 920: }
	goto	l17938
	line	923
	
l17870:	
;task.c: 921: else
;task.c: 922: {
;task.c: 923: PID_CC_discharge.SetPoint = PID_CC_discharge.SetPoint*0.5;
	movlw	0x3f
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0x0
	movwf	(___flmul@f1+2)
	movlw	0x0
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	movlb 3	; select bank3
	movf	(_PID_CC_discharge+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	goto	l17938
	line	929
	
l17872:	
;task.c: 927: else
;task.c: 928: {
;task.c: 929: if(have_person1_flag==0x01)
	movlb 1	; select bank1
	decf	(_have_person1_flag)^080h,w
	skipz
	goto	u11401
	goto	u11400
u11401:
	goto	l17880
u11400:
	line	931
	
l17874:	
;task.c: 930: {
;task.c: 931: if(voltage_adjust_index==0x05)
	movf	(_voltage_adjust_index)^080h,w
	xorlw	05h&0ffh
	skipz
	goto	u11411
	goto	u11410
u11411:
	goto	l17878
u11410:
	line	933
	
l17876:	
;task.c: 932: {
;task.c: 933: PID_CC_discharge.SetPoint = data_cc_var*0.01;
	movlw	0x3c
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0x23
	movwf	(___flmul@f1+2)
	movlw	0xd7
	movwf	(___flmul@f1+1)
	movlw	0xa
	movwf	(___flmul@f1)

	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	934
;task.c: 934: }
	goto	l17938
	line	937
	
l17878:	
;task.c: 935: else
;task.c: 936: {
;task.c: 937: PID_CC_discharge.SetPoint = PID_CC_discharge.SetPoint*0.5;
	movlw	0x3f
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0x0
	movwf	(___flmul@f1+2)
	movlw	0x0
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	movlb 3	; select bank3
	movf	(_PID_CC_discharge+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	goto	l17938
	line	942
	
l17880:	
;task.c: 940: else
;task.c: 941: {
;task.c: 942: if(voltage_adjust_index==0x05)
	movf	(_voltage_adjust_index)^080h,w
	xorlw	05h&0ffh
	skipz
	goto	u11421
	goto	u11420
u11421:
	goto	l17884
u11420:
	line	944
	
l17882:	
;task.c: 943: {
;task.c: 944: PID_CC_discharge.SetPoint = data_cc_var*0.01*0.7;
	movlw	0x3b
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0xe5
	movwf	(___flmul@f1+2)
	movlw	0x60
	movwf	(___flmul@f1+1)
	movlw	0x42
	movwf	(___flmul@f1)

	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	945
;task.c: 945: }
	goto	l17938
	line	948
	
l17884:	
;task.c: 946: else
;task.c: 947: {
;task.c: 948: PID_CC_discharge.SetPoint = PID_CC_discharge.SetPoint*0.5*0.7;
	movlw	0x3e
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0xb3
	movwf	(___flmul@f1+2)
	movlw	0x33
	movwf	(___flmul@f1+1)
	movlw	0x33
	movwf	(___flmul@f1)

	movlb 3	; select bank3
	movf	(_PID_CC_discharge+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	goto	l17938
	line	954
	
l17886:	
;task.c: 954: else if(light_mode==0x01 && work_mode==0x00)
	decf	(_light_mode)^080h,w
	skipz
	goto	u11431
	goto	u11430
u11431:
	goto	l17896
u11430:
	
l17888:	
	movf	(_work_mode)^080h,f
	skipz
	goto	u11441
	goto	u11440
u11441:
	goto	l17896
u11440:
	line	956
	
l17890:	
;task.c: 955: {
;task.c: 956: if(have_person1_flag==0x01)
	decf	(_have_person1_flag)^080h,w
	skipz
	goto	u11451
	goto	u11450
u11451:
	goto	l17894
u11450:
	line	958
	
l17892:	
;task.c: 957: {
;task.c: 958: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	959
;task.c: 959: }
	goto	l17938
	line	962
	
l17894:	
;task.c: 960: else
;task.c: 961: {
;task.c: 962: PID_CC_discharge.SetPoint = data_cc_var*0.03;
	movlw	0x3c
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0xf5
	movwf	(___flmul@f1+2)
	movlw	0xc2
	movwf	(___flmul@f1+1)
	movlw	0x8f
	movwf	(___flmul@f1)

	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	goto	l17938
	line	965
	
l17896:	
;task.c: 965: else if(light_mode==0x02 && work_mode==0x00)
	movf	(_light_mode)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u11461
	goto	u11460
u11461:
	goto	l17938
u11460:
	
l17898:	
	movf	(_work_mode)^080h,f
	skipz
	goto	u11471
	goto	u11470
u11471:
	goto	l17938
u11470:
	line	967
	
l17900:	
;task.c: 966: {
;task.c: 967: if(Adjust_Pout_Flag==0x01 && voltage_adjust_index<0x04)
	decf	(_Adjust_Pout_Flag)^080h,w
	skipz
	goto	u11481
	goto	u11480
u11481:
	goto	l17928
u11480:
	
l17902:	
	movlw	(04h)
	subwf	(_voltage_adjust_index)^080h,w
	skipnc
	goto	u11491
	goto	u11490
u11491:
	goto	l17928
u11490:
	line	969
	
l17904:	
;task.c: 968: {
;task.c: 969: if(ho_cnt==0 && mi_cnt<30)
	movf	((_ho_cnt+1)),w
	iorwf	((_ho_cnt)),w
	skipz
	goto	u11501
	goto	u11500
u11501:
	goto	l17914
u11500:
	
l17906:	
	movlw	high(01Eh)
	movlb 2	; select bank2
	subwf	(_mi_cnt+1)^0100h,w
	movlw	low(01Eh)
	skipnz
	subwf	(_mi_cnt)^0100h,w
	skipnc
	goto	u11511
	goto	u11510
u11511:
	goto	l17914
u11510:
	line	971
	
l17908:	
;task.c: 970: {
;task.c: 971: if(voltage_adjust_index==0x05)
	movlb 1	; select bank1
	movf	(_voltage_adjust_index)^080h,w
	xorlw	05h&0ffh
	skipz
	goto	u11521
	goto	u11520
u11521:
	goto	l17912
u11520:
	line	973
	
l17910:	
;task.c: 972: {
;task.c: 973: PID_CC_discharge.SetPoint = data_cc_var*0.01;
	movlw	0x3c
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0x23
	movwf	(___flmul@f1+2)
	movlw	0xd7
	movwf	(___flmul@f1+1)
	movlw	0xa
	movwf	(___flmul@f1)

	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	974
;task.c: 974: }
	goto	l17938
	line	977
	
l17912:	
;task.c: 975: else
;task.c: 976: {
;task.c: 977: PID_CC_discharge.SetPoint = PID_CC_discharge.SetPoint*0.5;
	movlw	0x3f
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0x0
	movwf	(___flmul@f1+2)
	movlw	0x0
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	movlb 3	; select bank3
	movf	(_PID_CC_discharge+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	goto	l17938
	line	983
	
l17914:	
;task.c: 981: else
;task.c: 982: {
;task.c: 983: if(have_person1_flag==0x01)
	movlb 1	; select bank1
	decf	(_have_person1_flag)^080h,w
	skipz
	goto	u11531
	goto	u11530
u11531:
	goto	l17922
u11530:
	line	985
	
l17916:	
;task.c: 984: {
;task.c: 985: if(voltage_adjust_index==0x05)
	movf	(_voltage_adjust_index)^080h,w
	xorlw	05h&0ffh
	skipz
	goto	u11541
	goto	u11540
u11541:
	goto	l17920
u11540:
	line	987
	
l17918:	
;task.c: 986: {
;task.c: 987: PID_CC_discharge.SetPoint = data_cc_var*0.01;
	movlw	0x3c
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0x23
	movwf	(___flmul@f1+2)
	movlw	0xd7
	movwf	(___flmul@f1+1)
	movlw	0xa
	movwf	(___flmul@f1)

	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	988
;task.c: 988: }
	goto	l17938
	line	991
	
l17920:	
;task.c: 989: else
;task.c: 990: {
;task.c: 991: PID_CC_discharge.SetPoint = PID_CC_discharge.SetPoint*0.5;
	movlw	0x3f
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0x0
	movwf	(___flmul@f1+2)
	movlw	0x0
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	movlb 3	; select bank3
	movf	(_PID_CC_discharge+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	goto	l17938
	line	996
	
l17922:	
;task.c: 994: else
;task.c: 995: {
;task.c: 996: if(voltage_adjust_index==0x05)
	movf	(_voltage_adjust_index)^080h,w
	xorlw	05h&0ffh
	skipz
	goto	u11551
	goto	u11550
u11551:
	goto	l17926
u11550:
	line	998
	
l17924:	
;task.c: 997: {
;task.c: 998: PID_CC_discharge.SetPoint = data_cc_var*0.01*0.7;
	movlw	0x3b
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0xe5
	movwf	(___flmul@f1+2)
	movlw	0x60
	movwf	(___flmul@f1+1)
	movlw	0x42
	movwf	(___flmul@f1)

	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	999
;task.c: 999: }
	goto	l17938
	line	1002
	
l17926:	
;task.c: 1000: else
;task.c: 1001: {
;task.c: 1002: PID_CC_discharge.SetPoint = PID_CC_discharge.SetPoint*0.5*0.7;
	movlw	0x3e
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0xb3
	movwf	(___flmul@f1+2)
	movlw	0x33
	movwf	(___flmul@f1+1)
	movlw	0x33
	movwf	(___flmul@f1)

	movlb 3	; select bank3
	movf	(_PID_CC_discharge+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	goto	l17938
	line	1007
	
l17928:	
;task.c: 1007: else if(Adjust_Pout_Flag>=0x02 || voltage_adjust_index>=0x04)
	movlw	(02h)
	subwf	(_Adjust_Pout_Flag)^080h,w
	skipnc
	goto	u11561
	goto	u11560
u11561:
	goto	l17932
u11560:
	
l17930:	
	movlw	(04h)
	subwf	(_voltage_adjust_index)^080h,w
	skipc
	goto	u11571
	goto	u11570
u11571:
	goto	l17938
u11570:
	line	1009
	
l17932:	
;task.c: 1008: {
;task.c: 1009: if(have_person1_flag==0x01)
	decf	(_have_person1_flag)^080h,w
	skipz
	goto	u11581
	goto	u11580
u11581:
	goto	l17936
u11580:
	goto	l17892
	line	1015
	
l17936:	
;task.c: 1013: else
;task.c: 1014: {
;task.c: 1015: PID_CC_discharge.SetPoint = data_cc_var*0.03;
	movlw	0x3c
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0xf5
	movwf	(___flmul@f1+2)
	movlw	0xc2
	movwf	(___flmul@f1+1)
	movlw	0x8f
	movwf	(___flmul@f1)

	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 5	; select bank5
	movf	(handle_ad_loop@data_cc_var)^0280h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	1020
	
l17938:	
;task.c: 1016: }
;task.c: 1017: }
;task.c: 1018: }
;task.c: 1020: if(led_out_ctrl==0x01 && work_mode==0x00)
	movlb 1	; select bank1
	decf	(_led_out_ctrl)^080h,w
	skipz
	goto	u11591
	goto	u11590
u11591:
	goto	l1507
u11590:
	
l17940:	
	movf	(_work_mode)^080h,f
	skipz
	goto	u11601
	goto	u11600
u11601:
	goto	l1507
u11600:
	line	1022
	
l17942:	
;task.c: 1021: {
;task.c: 1022: PID_CC_discharge.SetPoint = 0;
	movlb 3	; select bank3
	clrf	(_PID_CC_discharge)^0180h
	clrf	(_PID_CC_discharge+1)^0180h
	clrf	(_PID_CC_discharge+2)^0180h
	clrf	(_PID_CC_discharge+3)^0180h
	line	1023
	
l1507:	
	line	1025
;task.c: 1023: }
;task.c: 1025: pid_index = 0x01;
	movlb 2	; select bank2
	clrf	(_pid_index)^0100h
	incf	(_pid_index)^0100h,f
	line	1027
	
l17944:	
;task.c: 1027: PWM_I=pid_calc(&PID_CC_discharge,discharge_current_value);
	movlw	low(_PID_CC_discharge)
	movlb 0	; select bank0
	movwf	(pid_calc@pp)
	movlw	high(_PID_CC_discharge)
	movwf	(pid_calc@pp+1)
	movlb 1	; select bank1
	movf	(_discharge_current_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(pid_calc@NowPoint+1)
	movlb 1	; select bank1
	movf	(_discharge_current_value)^080h,w
	movlb 0	; select bank0
	movwf	(pid_calc@NowPoint)
	fcall	_pid_calc
	movf	(3+(?_pid_calc)),w
	movlb 5	; select bank5
	movwf	(_PWM_I+3)^0280h
	movlb 0	; select bank0
	movf	(2+(?_pid_calc)),w
	movlb 5	; select bank5
	movwf	(_PWM_I+2)^0280h
	movlb 0	; select bank0
	movf	(1+(?_pid_calc)),w
	movlb 5	; select bank5
	movwf	(_PWM_I+1)^0280h
	movlb 0	; select bank0
	movf	(0+(?_pid_calc)),w
	movlb 5	; select bank5
	movwf	(_PWM_I)^0280h

	line	1029
	
l17946:	
;task.c: 1029: PWM = PWM+PWM_I;
	movf	(_PWM_I+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___fladd@f1+3)
	movlb 5	; select bank5
	movf	(_PWM_I+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___fladd@f1+2)
	movlb 5	; select bank5
	movf	(_PWM_I+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___fladd@f1+1)
	movlb 5	; select bank5
	movf	(_PWM_I)^0280h,w
	movlb 0	; select bank0
	movwf	(___fladd@f1)

	movlb 1	; select bank1
	movf	(_PWM+3)^080h,w
	movlb 0	; select bank0
	movwf	(___fladd@f2+3)
	movlb 1	; select bank1
	movf	(_PWM+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fladd@f2+2)
	movlb 1	; select bank1
	movf	(_PWM+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fladd@f2+1)
	movlb 1	; select bank1
	movf	(_PWM)^080h,w
	movlb 0	; select bank0
	movwf	(___fladd@f2)

	fcall	___fladd
	movf	(3+(?___fladd)),w
	movlb 1	; select bank1
	movwf	(_PWM+3)^080h
	movlb 0	; select bank0
	movf	(2+(?___fladd)),w
	movlb 1	; select bank1
	movwf	(_PWM+2)^080h
	movlb 0	; select bank0
	movf	(1+(?___fladd)),w
	movlb 1	; select bank1
	movwf	(_PWM+1)^080h
	movlb 0	; select bank0
	movf	(0+(?___fladd)),w
	movlb 1	; select bank1
	movwf	(_PWM)^080h

	line	1031
	
l17948:	
;task.c: 1031: if( PWM>=900)
	movf	(_PWM+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 1	; select bank1
	movf	(_PWM+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 1	; select bank1
	movf	(_PWM+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 1	; select bank1
	movf	(_PWM)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlw	0x44
	movwf	(___flge@ff2+3)
	movlw	0x61
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u11611
	goto	u11610
u11611:
	goto	l17952
u11610:
	line	1033
	
l17950:	
;task.c: 1032: {
;task.c: 1033: PWM=900;
	movlw	0x44
	movlb 1	; select bank1
	movwf	(_PWM+3)^080h
	movlw	0x61
	movwf	(_PWM+2)^080h
	movlw	0x0
	movwf	(_PWM+1)^080h
	movlw	0x0
	movwf	(_PWM)^080h

	line	1034
;task.c: 1034: }
	goto	l17956
	line	1035
	
l17952:	
;task.c: 1035: else if(PWM<=5)
	movlw	0x40
	movwf	(___flge@ff1+3)
	movlw	0xa0
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(_PWM+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 1	; select bank1
	movf	(_PWM+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 1	; select bank1
	movf	(_PWM+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 1	; select bank1
	movf	(_PWM)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u11621
	goto	u11620
u11621:
	goto	l17956
u11620:
	line	1037
	
l17954:	
;task.c: 1036: {
;task.c: 1037: PWM=5;
	movlw	0x40
	movlb 1	; select bank1
	movwf	(_PWM+3)^080h
	movlw	0xa0
	movwf	(_PWM+2)^080h
	movlw	0x0
	movwf	(_PWM+1)^080h
	movlw	0x0
	movwf	(_PWM)^080h

	line	1040
	
l17956:	
;task.c: 1038: }
;task.c: 1040: bost_pwm_value = (unsigned int)PWM;
	movlb 1	; select bank1
	movf	(_PWM+3)^080h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+3)
	movlb 1	; select bank1
	movf	(_PWM+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+2)
	movlb 1	; select bank1
	movf	(_PWM+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+1)
	movlb 1	; select bank1
	movf	(_PWM)^080h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	1+(((0+(?___fltol)))),w
	movlb 1	; select bank1
	movwf	(_bost_pwm_value+1)^080h
	movlb 0	; select bank0
	movf	0+(((0+(?___fltol)))),w
	movlb 1	; select bank1
	movwf	(_bost_pwm_value)^080h
	line	1042
	
l17958:	
;task.c: 1042: if(PID_CC_discharge.SetPoint==0)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+3)^0180h,w
	iorwf	(_PID_CC_discharge+2)^0180h,w
	iorwf	(_PID_CC_discharge+1)^0180h,w
	iorwf	(_PID_CC_discharge)^0180h,w
	skipz
	goto	u11631
	goto	u11630
u11631:
	goto	l17962
u11630:
	line	1044
	
l17960:	
;task.c: 1043: {
;task.c: 1044: bost_pwm_value = 0;
	movlb 1	; select bank1
	clrf	(_bost_pwm_value)^080h
	clrf	(_bost_pwm_value+1)^080h
	line	1045
;task.c: 1045: }
	goto	l17966
	line	1046
	
l17962:	
;task.c: 1046: else if(PID_CC_discharge.SetPoint<=1)
	movlw	0x3f
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlw	0x80
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movlb 3	; select bank3
	movf	(_PID_CC_discharge+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 3	; select bank3
	movf	(_PID_CC_discharge)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u11641
	goto	u11640
u11641:
	goto	l17966
u11640:
	line	1048
	
l17964:	
;task.c: 1047: {
;task.c: 1048: bost_pwm_value = 25;
	movlw	019h
	movlb 1	; select bank1
	movwf	(_bost_pwm_value)^080h
	clrf	(_bost_pwm_value+1)^080h
	line	1052
	
l17966:	
;task.c: 1049: }
;task.c: 1052: Set_Bost_Pwm_Duty(bost_pwm_value);
	movlb 1	; select bank1
	movf	(_bost_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty+1)
	movlb 1	; select bank1
	movf	(_bost_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	fcall	_Set_Bost_Pwm_Duty
	line	1054
	
l17968:	
;task.c: 1054: limit_power_pid_flag=0x00;
	movlb 3	; select bank3
	clrf	(_limit_power_pid_flag)^0180h
	line	1057
;task.c: 1057: }
	goto	l17980
	line	1058
	
l17970:	
;task.c: 1058: else if((discharge_current_value>discharge_i_limit)&&(discharge_index==0x02))
	movlb 5	; select bank5
	movf	(_discharge_i_limit+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 5	; select bank5
	movf	(_discharge_i_limit+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 5	; select bank5
	movf	(_discharge_i_limit+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 5	; select bank5
	movf	(_discharge_i_limit)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(_discharge_current_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c+1)
	movlb 1	; select bank1
	movf	(_discharge_current_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff2+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff2+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff2+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u11651
	goto	u11650
u11651:
	goto	l17980
u11650:
	
l17972:	
	movlb 1	; select bank1
	movf	(_discharge_index)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u11661
	goto	u11660
u11661:
	goto	l17980
u11660:
	line	1060
	
l17974:	
;task.c: 1059: {
;task.c: 1060: if(bost_pwm_value>10)
	movlw	high(0Bh)
	subwf	(_bost_pwm_value+1)^080h,w
	movlw	low(0Bh)
	skipnz
	subwf	(_bost_pwm_value)^080h,w
	skipc
	goto	u11671
	goto	u11670
u11671:
	goto	l17978
u11670:
	line	1062
	
l17976:	
;task.c: 1061: {
;task.c: 1062: bost_pwm_value = bost_pwm_value-1;
	movlw	low(0FFFFh)
	addwf	(_bost_pwm_value)^080h,f
	movlw	high(0FFFFh)
	addwfc	(_bost_pwm_value+1)^080h,f
	line	1065
	
l17978:	
;task.c: 1063: }
;task.c: 1065: Set_Bost_Pwm_Duty(bost_pwm_value);
	movf	(_bost_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty+1)
	movlb 1	; select bank1
	movf	(_bost_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	fcall	_Set_Bost_Pwm_Duty
	line	1068
	
l17980:	
;task.c: 1066: }
;task.c: 1068: battery_low_time_count=0;
	movlb 4	; select bank4
	clrf	(_battery_low_time_count)^0200h
	clrf	(_battery_low_time_count+1)^0200h
	line	1070
;task.c: 1070: }
	goto	l1393
	line	1071
	
l17982:	
;task.c: 1071: else if((battery_voltage_value<dianchi_qianya_baohu)&&(discharge_index==0x02))
	movlb 0	; select bank0
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff1)

	movlb 5	; select bank5
	movf	(_dianchi_qianya_baohu+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 5	; select bank5
	movf	(_dianchi_qianya_baohu+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 5	; select bank5
	movf	(_dianchi_qianya_baohu+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 5	; select bank5
	movf	(_dianchi_qianya_baohu)^0280h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u11681
	goto	u11680
u11681:
	goto	l17980
u11680:
	
l17984:	
	movlb 1	; select bank1
	movf	(_discharge_index)^080h,w
	xorlw	02h&0ffh
	skipz
	goto	u11691
	goto	u11690
u11691:
	goto	l17980
u11690:
	line	1074
	
l17986:	
;task.c: 1072: {
;task.c: 1074: battery_low_time_count++;
	movlb 4	; select bank4
	incf	(_battery_low_time_count)^0200h,f
	skipnz
	incf	(_battery_low_time_count+1)^0200h,f
	line	1076
	
l17988:	
;task.c: 1076: if(battery_low_time_count>1000)
	movlw	high(03E9h)
	subwf	(_battery_low_time_count+1)^0200h,w
	movlw	low(03E9h)
	skipnz
	subwf	(_battery_low_time_count)^0200h,w
	skipc
	goto	u11701
	goto	u11700
u11701:
	goto	l1393
u11700:
	line	1078
	
l17990:	
;task.c: 1077: {
;task.c: 1078: discharge_index=0x03;
	movlw	(03h)
	movlb 1	; select bank1
	movwf	(_discharge_index)^080h
	line	1080
;task.c: 1080: bost_pwm_value=2;
	movlw	02h
	movwf	(_bost_pwm_value)^080h
	clrf	(_bost_pwm_value+1)^080h
	line	1082
	
l17992:	
;task.c: 1082: Set_Bost_Pwm_Duty(bost_pwm_value);
	movf	(_bost_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty+1)
	movlb 1	; select bank1
	movf	(_bost_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	fcall	_Set_Bost_Pwm_Duty
	line	1084
	
l17994:	
;task.c: 1086: discharge_led_status=0x00;
	movlb 4	; select bank4
	clrf	(_battery_low_time_count)^0200h
	clrf	(_battery_low_time_count+1)^0200h
	line	1088
;task.c: 1088: while(1);
	
l1520:	
	
l1521:	
	goto	l1520
	line	1097
	
l1393:	
	line	1099
;task.c: 1095: }
;task.c: 1097: }
;task.c: 1099: handle_an10_process_flag=0x00;
	movlb 2	; select bank2
	clrf	(_handle_an10_process_flag)^0100h
	line	1104
	
l1524:	
	return
	opt stack 0
GLOBAL	__end_of_handle_ad_loop
	__end_of_handle_ad_loop:
	signat	_handle_ad_loop,88
	global	_start_ad_convert

;; *************** function _start_ad_convert *****************
;; Defined at:
;;		line 1114 in file "D:\MCUProject\ZH-SL-F60\src\task.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    0[BANK1 ] unsigned char 
;;  temp            2    5[BANK1 ] unsigned int 
;;  ad_l            2    3[BANK1 ] unsigned int 
;;  ad_h            2    1[BANK1 ] unsigned int 
;;  i               1    9[BANK1 ] unsigned char 
;;  j               1    8[BANK1 ] unsigned char 
;;  ad_ch           1    7[BANK1 ] unsigned char 
;;  k               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2   16[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1C/1
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0      10       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0      50       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      52      10       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       62 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwdiv
;; This function is called by:
;;		_auto_system
;;		_handle_ad_loop
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	line	1114
global __ptext11
__ptext11:	;psect for function _start_ad_convert
psect	text11
	file	"D:\MCUProject\ZH-SL-F60\src\task.c"
	line	1114
	global	__size_of_start_ad_convert
	__size_of_start_ad_convert	equ	__end_of_start_ad_convert-_start_ad_convert
	
_start_ad_convert:	
;incstack = 0
	opt	stack 10
; Regs used in _start_ad_convert: [wreg-fsr1h+status,2+status,0+pclath+cstack]
;start_ad_convert@ch stored from wreg
	movlb 1	; select bank1
	movwf	(start_ad_convert@ch)^080h
	line	1126
	
l16690:	
	line	1128
	
l16692:	
;task.c: 1128: ad_ch=ch;
	movf	(start_ad_convert@ch)^080h,w
	movwf	(start_ad_convert@ad_ch)^080h
	line	1130
	
l16694:	
;task.c: 1130: ADCON0bits.CHS =ch;
	movf	(start_ad_convert@ch)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0
	rlf	(??_start_ad_convert+0)+0,f
	rlf	(??_start_ad_convert+0)+0,f
	movlb 1	; select bank1
	movf	(157)^080h,w	;volatile
	movlb 0	; select bank0
	xorwf	(??_start_ad_convert+0)+0,w
	andlw	not (((1<<5)-1)<<2)
	xorwf	(??_start_ad_convert+0)+0,w
	movlb 1	; select bank1
	movwf	(157)^080h	;volatile
	line	1132
	
l16696:	
;task.c: 1132: ADCON0bits.ADON =1;
	bsf	(157)^080h,0	;volatile
	line	1134
	
l16698:	
;task.c: 1134: if((ad_ch==0b01010)||(ad_ch==0b01001))
	movf	(start_ad_convert@ad_ch)^080h,w
	xorlw	0Ah&0ffh
	skipnz
	goto	u9651
	goto	u9650
u9651:
	goto	l16702
u9650:
	
l16700:	
	movf	(start_ad_convert@ad_ch)^080h,w
	xorlw	09h&0ffh
	skipz
	goto	u9661
	goto	u9660
u9661:
	goto	l16750
u9660:
	line	1136
	
l16702:	
;task.c: 1135: {
;task.c: 1136: for(i=0;i<51;i++)
	clrf	(start_ad_convert@i)^080h
	line	1138
	
l16708:	
;task.c: 1137: {
;task.c: 1138: _delay((unsigned long)((5)*(32000000/4000000.0)));
	opt asmopt_off
movlw	13
	movlb 0	; select bank0
movwf	(??_start_ad_convert+0)+0,f
u13397:
decfsz	(??_start_ad_convert+0)+0,f
	goto	u13397
opt asmopt_on

	line	1140
	
l16710:	
;task.c: 1140: ADCON0bits.GO=1;
	movlb 1	; select bank1
	bsf	(157)^080h,1	;volatile
	line	1142
;task.c: 1142: while(ADCON0bits.nDONE);
	
l1532:	
	btfsc	(157)^080h,1	;volatile
	goto	u9671
	goto	u9670
u9671:
	goto	l1532
u9670:
	line	1144
	
l16712:	
;task.c: 1144: ad_h=0b00000011&ADRESH;
	movf	(156)^080h,w	;volatile
	andlw	03h
	movwf	(start_ad_convert@ad_h)^080h
	clrf	(start_ad_convert@ad_h+1)^080h
	line	1146
	
l16714:	
;task.c: 1146: ad_l=ADRESL;
	movf	(155)^080h,w	;volatile
	movwf	(start_ad_convert@ad_l)^080h
	clrf	(start_ad_convert@ad_l+1)^080h
	line	1148
	
l16716:	
;task.c: 1148: adc_buffer[i]=(ad_h<<8)|ad_l;
	movf	(start_ad_convert@ad_h)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0+1
	clrf	(??_start_ad_convert+0)+0
	movlb 1	; select bank1
	movf	(start_ad_convert@ad_l)^080h,w
	movlb 0	; select bank0
	iorwf	0+(??_start_ad_convert+0)+0,w
	movwf	(??_start_ad_convert+2)+0
	movlb 1	; select bank1
	movf	(start_ad_convert@ad_l+1)^080h,w
	movlb 0	; select bank0
	iorwf	1+(??_start_ad_convert+0)+0,w
	movwf	1+(??_start_ad_convert+2)+0
	movlb 1	; select bank1
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+4)+0
	clrf	(??_start_ad_convert+4)+0+1
	lslf	(??_start_ad_convert+4)+0,f
	rlf	(??_start_ad_convert+4)+1,f
	movlw	low(9072)
	movwf	(??_start_ad_convert+6)+0
	movlw	high(9072)
	movwf	(??_start_ad_convert+6)+0+1
	movf	0+(??_start_ad_convert+4)+0,w
	addwf	0+(??_start_ad_convert+6)+0,w
	movwf	fsr1l
	movf	1+(??_start_ad_convert+4)+0,w
	addwfc	1+(??_start_ad_convert+6)+0,w
	movwf	1+fsr1l
	movf	0+(??_start_ad_convert+2)+0,w
	movwi	[0]fsr1
	movf	1+(??_start_ad_convert+2)+0,w
	movwi	[1]fsr1
	line	1136
	
l16718:	
	movlb 1	; select bank1
	incf	(start_ad_convert@i)^080h,f
	
l16720:	
	movlw	(033h)
	subwf	(start_ad_convert@i)^080h,w
	skipc
	goto	u9681
	goto	u9680
u9681:
	goto	l16708
u9680:
	line	1150
	
l16722:	
;task.c: 1149: }
;task.c: 1150: for(j=0;j<50;j++)
	clrf	(start_ad_convert@j)^080h
	line	1152
	
l16728:	
;task.c: 1151: {
;task.c: 1152: for(i=0;i<50-j;i++)
	clrf	(start_ad_convert@i)^080h
	goto	l16740
	line	1154
	
l16730:	
;task.c: 1153: {
;task.c: 1154: if(adc_buffer[i]>adc_buffer[i+1])
	movlb 1	; select bank1
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0
	clrf	(??_start_ad_convert+0)+0+1
	lslf	(??_start_ad_convert+0)+0,f
	rlf	(??_start_ad_convert+0)+1,f
	movlw	low(9072)
	movwf	(??_start_ad_convert+2)+0
	movlw	high(9072)
	movwf	(??_start_ad_convert+2)+0+1
	movf	0+(??_start_ad_convert+0)+0,w
	addwf	0+(??_start_ad_convert+2)+0,w
	movwf	fsr1l
	movf	1+(??_start_ad_convert+0)+0,w
	addwfc	1+(??_start_ad_convert+2)+0,w
	movwf	1+fsr1l
	moviw	[0]fsr1
	movwf	(??_start_ad_convert+4)+0
	moviw	[1]fsr1
	movwf	(??_start_ad_convert+4)+0+1
	movlb 1	; select bank1
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+6)+0
	clrf	(??_start_ad_convert+6)+0+1
	lslf	(??_start_ad_convert+6)+0,f
	rlf	(??_start_ad_convert+6)+1,f
	movlw	low(9072+02h)
	movwf	(??_start_ad_convert+8)+0
	movlw	high(9072+02h)
	movwf	(??_start_ad_convert+8)+0+1
	movf	0+(??_start_ad_convert+6)+0,w
	addwf	0+(??_start_ad_convert+8)+0,w
	movwf	fsr1l
	movf	1+(??_start_ad_convert+6)+0,w
	addwfc	1+(??_start_ad_convert+8)+0,w
	movwf	1+fsr1l
	moviw	[0]fsr1
	movwf	(??_start_ad_convert+10)+0
	moviw	[1]fsr1
	movwf	(??_start_ad_convert+10)+0+1
	movf	1+(??_start_ad_convert+4)+0,w
	subwf	1+(??_start_ad_convert+10)+0,w
	skipz
	goto	u9695
	movf	0+(??_start_ad_convert+4)+0,w
	subwf	0+(??_start_ad_convert+10)+0,w
u9695:
	skipnc
	goto	u9691
	goto	u9690
u9691:
	goto	l16738
u9690:
	line	1156
	
l16732:	
;task.c: 1155: {
;task.c: 1156: temp=adc_buffer[i];
	movlb 1	; select bank1
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0
	clrf	(??_start_ad_convert+0)+0+1
	lslf	(??_start_ad_convert+0)+0,f
	rlf	(??_start_ad_convert+0)+1,f
	movlw	low(9072)
	movwf	(??_start_ad_convert+2)+0
	movlw	high(9072)
	movwf	(??_start_ad_convert+2)+0+1
	movf	0+(??_start_ad_convert+0)+0,w
	addwf	0+(??_start_ad_convert+2)+0,w
	movwf	fsr1l
	movf	1+(??_start_ad_convert+0)+0,w
	addwfc	1+(??_start_ad_convert+2)+0,w
	movwf	1+fsr1l
	moviw	[0]fsr1
	movlb 1	; select bank1
	movwf	(start_ad_convert@temp)^080h
	moviw	[1]fsr1
	movwf	(start_ad_convert@temp+1)^080h
	line	1158
	
l16734:	
;task.c: 1158: adc_buffer[i]=adc_buffer[i+1];
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0
	clrf	(??_start_ad_convert+0)+0+1
	lslf	(??_start_ad_convert+0)+0,f
	rlf	(??_start_ad_convert+0)+1,f
	movlw	low(9072+02h)
	movwf	(??_start_ad_convert+2)+0
	movlw	high(9072+02h)
	movwf	(??_start_ad_convert+2)+0+1
	movf	0+(??_start_ad_convert+0)+0,w
	addwf	0+(??_start_ad_convert+2)+0,w
	movwf	fsr1l
	movf	1+(??_start_ad_convert+0)+0,w
	addwfc	1+(??_start_ad_convert+2)+0,w
	movwf	1+fsr1l
	movlb 1	; select bank1
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+4)+0
	clrf	(??_start_ad_convert+4)+0+1
	lslf	(??_start_ad_convert+4)+0,f
	rlf	(??_start_ad_convert+4)+1,f
	movlw	low(9072)
	movwf	(??_start_ad_convert+6)+0
	movlw	high(9072)
	movwf	(??_start_ad_convert+6)+0+1
	movf	0+(??_start_ad_convert+4)+0,w
	addwf	0+(??_start_ad_convert+6)+0,w
	movwf	fsr0l
	movf	1+(??_start_ad_convert+4)+0,w
	addwfc	1+(??_start_ad_convert+6)+0,w
	movwf	1+fsr0l
	moviw	[0]fsr1
	movwi	[0]fsr0
	moviw	[1]fsr1
	movwi	[1]fsr0
	line	1160
	
l16736:	
;task.c: 1160: adc_buffer[i+1]=temp;
	movlb 1	; select bank1
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0
	clrf	(??_start_ad_convert+0)+0+1
	lslf	(??_start_ad_convert+0)+0,f
	rlf	(??_start_ad_convert+0)+1,f
	movlw	low(9072+02h)
	movwf	(??_start_ad_convert+2)+0
	movlw	high(9072+02h)
	movwf	(??_start_ad_convert+2)+0+1
	movf	0+(??_start_ad_convert+0)+0,w
	addwf	0+(??_start_ad_convert+2)+0,w
	movwf	fsr1l
	movf	1+(??_start_ad_convert+0)+0,w
	addwfc	1+(??_start_ad_convert+2)+0,w
	movwf	1+fsr1l
	movlb 1	; select bank1
	movf	(start_ad_convert@temp)^080h,w
	movwi	[0]fsr1
	movf	(start_ad_convert@temp+1)^080h,w
	movwi	[1]fsr1
	line	1152
	
l16738:	
	movlb 1	; select bank1
	incf	(start_ad_convert@i)^080h,f
	
l16740:	
	movlw	high(032h)
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0+1
	movlb 1	; select bank1
	movf	(start_ad_convert@j)^080h,w
	sublw	low(032h)
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0
	skipc
	decf	(??_start_ad_convert+0)+0+1,f
	movf	1+(??_start_ad_convert+0)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u9705
	movf	0+(??_start_ad_convert+0)+0,w
	movlb 1	; select bank1
	subwf	(start_ad_convert@i)^080h,w
u9705:

	skipc
	goto	u9701
	goto	u9700
u9701:
	goto	l16730
u9700:
	line	1150
	
l16742:	
	movlb 1	; select bank1
	incf	(start_ad_convert@j)^080h,f
	
l16744:	
	movlw	(032h)
	subwf	(start_ad_convert@j)^080h,w
	skipc
	goto	u9711
	goto	u9710
u9711:
	goto	l16728
u9710:
	
l1536:	
	line	1166
;task.c: 1161: }
;task.c: 1163: }
;task.c: 1164: }
;task.c: 1166: ADCON0bits.ADON =0;
	bcf	(157)^080h,0	;volatile
	line	1180
	
l16746:	
;task.c: 1168: return((adc_buffer[24]+adc_buffer[26]+
;task.c: 1169: adc_buffer[22]+adc_buffer[28]+
;task.c: 1170: adc_buffer[20]+adc_buffer[30]+
;task.c: 1171: adc_buffer[18]+adc_buffer[32]+
;task.c: 1172: adc_buffer[16]+adc_buffer[34]+
;task.c: 1173: adc_buffer[14]+adc_buffer[36]+
;task.c: 1174: adc_buffer[12]+adc_buffer[38]+
;task.c: 1175: adc_buffer[10]+adc_buffer[40]+
;task.c: 1176: adc_buffer[8]+adc_buffer[42]+
;task.c: 1177: adc_buffer[6]+adc_buffer[44]+
;task.c: 1178: adc_buffer[4]+adc_buffer[46]+
;task.c: 1179: adc_buffer[2]+adc_buffer[48]+
	movlw	01Ah
	movlb 0	; select bank0
	movwf	(___lwdiv@divisor)
	clrf	(___lwdiv@divisor+1)
	movlw	low(9072)
	movwf	fsr1l
	movlw	high(9072)
	movwf	fsr1h
	movlw	low (9072+(030h))
	movwf	fsr0l
	movlw	high (9072+(030h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	movwf	(??_start_ad_convert+0)+0
	moviw	[1]fsr0
	movwf	(??_start_ad_convert+0)+0+1
	movlw	low (9072+(034h))
	movwf	fsr0l
	movlw	high (9072+(034h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+0)+0,w
	movwf	(??_start_ad_convert+2)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+0)+0,w
	movwf	(??_start_ad_convert+2)+0+1
	movlw	low (9072+(02Ch))
	movwf	fsr0l
	movlw	high (9072+(02Ch))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+2)+0,w
	movwf	(??_start_ad_convert+4)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+2)+0,w
	movwf	(??_start_ad_convert+4)+0+1
	movlw	low (9072+(038h))
	movwf	fsr0l
	movlw	high (9072+(038h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+4)+0,w
	movwf	(??_start_ad_convert+6)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+4)+0,w
	movwf	(??_start_ad_convert+6)+0+1
	movlw	low (9072+(028h))
	movwf	fsr0l
	movlw	high (9072+(028h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+6)+0,w
	movwf	(??_start_ad_convert+8)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+6)+0,w
	movwf	(??_start_ad_convert+8)+0+1
	movlw	low (9072+(03Ch))
	movwf	fsr0l
	movlw	high (9072+(03Ch))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+8)+0,w
	movwf	(??_start_ad_convert+10)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+8)+0,w
	movwf	(??_start_ad_convert+10)+0+1
	movlw	low (9072+(024h))
	movwf	fsr0l
	movlw	high (9072+(024h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+10)+0,w
	movwf	(??_start_ad_convert+12)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+10)+0,w
	movwf	(??_start_ad_convert+12)+0+1
	movlw	low (9072+(040h))
	movwf	fsr0l
	movlw	high (9072+(040h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+12)+0,w
	movwf	(??_start_ad_convert+14)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+12)+0,w
	movwf	(??_start_ad_convert+14)+0+1
	movlw	low (9072+(020h))
	movwf	fsr0l
	movlw	high (9072+(020h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+14)+0,w
	movwf	(??_start_ad_convert+16)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+14)+0,w
	movwf	(??_start_ad_convert+16)+0+1
	movlw	low (9072+(044h))
	movwf	fsr0l
	movlw	high (9072+(044h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+16)+0,w
	movwf	(??_start_ad_convert+18)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+16)+0,w
	movwf	(??_start_ad_convert+18)+0+1
	movlw	low(9072)
	movwf	fsr0l
	movlw	high(9072)
	movwf	fsr0h
	addfsr	fsr0,01Ch
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+18)+0,w
	movwf	(??_start_ad_convert+20)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+18)+0,w
	movwf	(??_start_ad_convert+20)+0+1
	movlw	low (9072+(048h))
	movwf	fsr0l
	movlw	high (9072+(048h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+20)+0,w
	movwf	(??_start_ad_convert+22)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+20)+0,w
	movwf	(??_start_ad_convert+22)+0+1
	movlw	low(9072)
	movwf	fsr0l
	movlw	high(9072)
	movwf	fsr0h
	addfsr	fsr0,018h
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+22)+0,w
	movwf	(??_start_ad_convert+24)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+22)+0,w
	movwf	(??_start_ad_convert+24)+0+1
	movlw	low (9072+(04Ch))
	movwf	fsr0l
	movlw	high (9072+(04Ch))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+24)+0,w
	movwf	(??_start_ad_convert+26)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+24)+0,w
	movwf	(??_start_ad_convert+26)+0+1
	movlw	low(9072)
	movwf	fsr0l
	movlw	high(9072)
	movwf	fsr0h
	addfsr	fsr0,014h
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+26)+0,w
	movwf	(??_start_ad_convert+28)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+26)+0,w
	movwf	(??_start_ad_convert+28)+0+1
	movlw	low (9072+(050h))
	movwf	fsr0l
	movlw	high (9072+(050h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+28)+0,w
	movwf	(??_start_ad_convert+30)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+28)+0,w
	movwf	(??_start_ad_convert+30)+0+1
	movlw	low(9072)
	movwf	fsr0l
	movlw	high(9072)
	movwf	fsr0h
	addfsr	fsr0,010h
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+30)+0,w
	movwf	(??_start_ad_convert+32)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+30)+0,w
	movwf	(??_start_ad_convert+32)+0+1
	movlw	low (9072+(054h))
	movwf	fsr0l
	movlw	high (9072+(054h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+32)+0,w
	movwf	(??_start_ad_convert+34)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+32)+0,w
	movwf	(??_start_ad_convert+34)+0+1
	movlw	low(9072)
	movwf	fsr0l
	movlw	high(9072)
	movwf	fsr0h
	addfsr	fsr0,0Ch
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+34)+0,w
	movwf	(??_start_ad_convert+36)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+34)+0,w
	movwf	(??_start_ad_convert+36)+0+1
	movlw	low (9072+(058h))
	movwf	fsr0l
	movlw	high (9072+(058h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+36)+0,w
	movwf	(??_start_ad_convert+38)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+36)+0,w
	movwf	(??_start_ad_convert+38)+0+1
	movlw	low(9072)
	movwf	fsr0l
	movlw	high(9072)
	movwf	fsr0h
	addfsr	fsr0,08h
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+38)+0,w
	movwf	(??_start_ad_convert+40)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+38)+0,w
	movwf	(??_start_ad_convert+40)+0+1
	movlw	low (9072+(05Ch))
	movwf	fsr0l
	movlw	high (9072+(05Ch))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+40)+0,w
	movwf	(??_start_ad_convert+42)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+40)+0,w
	movwf	(??_start_ad_convert+42)+0+1
	movlw	low(9072)
	movwf	fsr0l
	movlw	high(9072)
	movwf	fsr0h
	addfsr	fsr0,04h
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+42)+0,w
	movwf	(??_start_ad_convert+44)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+42)+0,w
	movwf	(??_start_ad_convert+44)+0+1
	movlw	low (9072+(060h))
	movwf	fsr0l
	movlw	high (9072+(060h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+44)+0,w
	movwf	(??_start_ad_convert+46)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+44)+0,w
	movwf	(??_start_ad_convert+46)+0+1
	movlw	low (9072+(064h))
	movwf	fsr0l
	movlw	high (9072+(064h))
	movwf	(fsr0l)+1
	moviw	[0]fsr0
	addwf	0+(??_start_ad_convert+46)+0,w
	movwf	(??_start_ad_convert+48)+0
	moviw	[1]fsr0
	addwfc	1+(??_start_ad_convert+46)+0,w
	movwf	(??_start_ad_convert+48)+0+1
	moviw	[0]fsr1
	addwf	0+(??_start_ad_convert+48)+0,w
	movwf	(___lwdiv@dividend)
	moviw	[1]fsr1
	addwfc	1+(??_start_ad_convert+48)+0,w
	movwf	(___lwdiv@dividend)+1
	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	movwf	(?_start_ad_convert+1)
	movf	(0+(?___lwdiv)),w
	movwf	(?_start_ad_convert)
	goto	l1541
	line	1185
	
l16750:	
;task.c: 1181: }
;task.c: 1185: for(i=0;i<11;i++)
	clrf	(start_ad_convert@i)^080h
	line	1187
	
l16756:	
;task.c: 1186: {
;task.c: 1187: _delay((unsigned long)((10)*(32000000/4000000.0)));
	opt asmopt_off
movlw	26
	movlb 0	; select bank0
movwf	(??_start_ad_convert+0)+0,f
u13407:
decfsz	(??_start_ad_convert+0)+0,f
	goto	u13407
	nop
opt asmopt_on

	line	1189
	
l16758:	
;task.c: 1189: ADCON0bits.GO=1;
	movlb 1	; select bank1
	bsf	(157)^080h,1	;volatile
	line	1191
;task.c: 1191: while(ADCON0bits.nDONE);
	
l1544:	
	btfsc	(157)^080h,1	;volatile
	goto	u9721
	goto	u9720
u9721:
	goto	l1544
u9720:
	line	1193
	
l16760:	
;task.c: 1193: ad_h=0b00000011&ADRESH;
	movf	(156)^080h,w	;volatile
	andlw	03h
	movwf	(start_ad_convert@ad_h)^080h
	clrf	(start_ad_convert@ad_h+1)^080h
	line	1195
	
l16762:	
;task.c: 1195: ad_l=ADRESL;
	movf	(155)^080h,w	;volatile
	movwf	(start_ad_convert@ad_l)^080h
	clrf	(start_ad_convert@ad_l+1)^080h
	line	1197
	
l16764:	
;task.c: 1197: adc_buffer[i]=(ad_h<<8)|ad_l;
	movf	(start_ad_convert@ad_h)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0+1
	clrf	(??_start_ad_convert+0)+0
	movlb 1	; select bank1
	movf	(start_ad_convert@ad_l)^080h,w
	movlb 0	; select bank0
	iorwf	0+(??_start_ad_convert+0)+0,w
	movwf	(??_start_ad_convert+2)+0
	movlb 1	; select bank1
	movf	(start_ad_convert@ad_l+1)^080h,w
	movlb 0	; select bank0
	iorwf	1+(??_start_ad_convert+0)+0,w
	movwf	1+(??_start_ad_convert+2)+0
	movlb 1	; select bank1
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+4)+0
	clrf	(??_start_ad_convert+4)+0+1
	lslf	(??_start_ad_convert+4)+0,f
	rlf	(??_start_ad_convert+4)+1,f
	movlw	low(9072)
	movwf	(??_start_ad_convert+6)+0
	movlw	high(9072)
	movwf	(??_start_ad_convert+6)+0+1
	movf	0+(??_start_ad_convert+4)+0,w
	addwf	0+(??_start_ad_convert+6)+0,w
	movwf	fsr1l
	movf	1+(??_start_ad_convert+4)+0,w
	addwfc	1+(??_start_ad_convert+6)+0,w
	movwf	1+fsr1l
	movf	0+(??_start_ad_convert+2)+0,w
	movwi	[0]fsr1
	movf	1+(??_start_ad_convert+2)+0,w
	movwi	[1]fsr1
	line	1185
	
l16766:	
	movlb 1	; select bank1
	incf	(start_ad_convert@i)^080h,f
	
l16768:	
	movlw	(0Bh)
	subwf	(start_ad_convert@i)^080h,w
	skipc
	goto	u9731
	goto	u9730
u9731:
	goto	l16756
u9730:
	line	1200
	
l16770:	
;task.c: 1198: }
;task.c: 1200: for(j=0;j<11-1;j++)
	clrf	(start_ad_convert@j)^080h
	line	1202
	
l16776:	
;task.c: 1201: {
;task.c: 1202: for(i=0;i<11-j;i++)
	clrf	(start_ad_convert@i)^080h
	goto	l16788
	line	1204
	
l16778:	
;task.c: 1203: {
;task.c: 1204: if(adc_buffer[i]>adc_buffer[i+1])
	movlb 1	; select bank1
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0
	clrf	(??_start_ad_convert+0)+0+1
	lslf	(??_start_ad_convert+0)+0,f
	rlf	(??_start_ad_convert+0)+1,f
	movlw	low(9072)
	movwf	(??_start_ad_convert+2)+0
	movlw	high(9072)
	movwf	(??_start_ad_convert+2)+0+1
	movf	0+(??_start_ad_convert+0)+0,w
	addwf	0+(??_start_ad_convert+2)+0,w
	movwf	fsr1l
	movf	1+(??_start_ad_convert+0)+0,w
	addwfc	1+(??_start_ad_convert+2)+0,w
	movwf	1+fsr1l
	moviw	[0]fsr1
	movwf	(??_start_ad_convert+4)+0
	moviw	[1]fsr1
	movwf	(??_start_ad_convert+4)+0+1
	movlb 1	; select bank1
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+6)+0
	clrf	(??_start_ad_convert+6)+0+1
	lslf	(??_start_ad_convert+6)+0,f
	rlf	(??_start_ad_convert+6)+1,f
	movlw	low(9072+02h)
	movwf	(??_start_ad_convert+8)+0
	movlw	high(9072+02h)
	movwf	(??_start_ad_convert+8)+0+1
	movf	0+(??_start_ad_convert+6)+0,w
	addwf	0+(??_start_ad_convert+8)+0,w
	movwf	fsr1l
	movf	1+(??_start_ad_convert+6)+0,w
	addwfc	1+(??_start_ad_convert+8)+0,w
	movwf	1+fsr1l
	moviw	[0]fsr1
	movwf	(??_start_ad_convert+10)+0
	moviw	[1]fsr1
	movwf	(??_start_ad_convert+10)+0+1
	movf	1+(??_start_ad_convert+4)+0,w
	subwf	1+(??_start_ad_convert+10)+0,w
	skipz
	goto	u9745
	movf	0+(??_start_ad_convert+4)+0,w
	subwf	0+(??_start_ad_convert+10)+0,w
u9745:
	skipnc
	goto	u9741
	goto	u9740
u9741:
	goto	l16786
u9740:
	line	1206
	
l16780:	
;task.c: 1205: {
;task.c: 1206: temp=adc_buffer[i];
	movlb 1	; select bank1
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0
	clrf	(??_start_ad_convert+0)+0+1
	lslf	(??_start_ad_convert+0)+0,f
	rlf	(??_start_ad_convert+0)+1,f
	movlw	low(9072)
	movwf	(??_start_ad_convert+2)+0
	movlw	high(9072)
	movwf	(??_start_ad_convert+2)+0+1
	movf	0+(??_start_ad_convert+0)+0,w
	addwf	0+(??_start_ad_convert+2)+0,w
	movwf	fsr1l
	movf	1+(??_start_ad_convert+0)+0,w
	addwfc	1+(??_start_ad_convert+2)+0,w
	movwf	1+fsr1l
	moviw	[0]fsr1
	movlb 1	; select bank1
	movwf	(start_ad_convert@temp)^080h
	moviw	[1]fsr1
	movwf	(start_ad_convert@temp+1)^080h
	line	1208
	
l16782:	
;task.c: 1208: adc_buffer[i]=adc_buffer[i+1];
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0
	clrf	(??_start_ad_convert+0)+0+1
	lslf	(??_start_ad_convert+0)+0,f
	rlf	(??_start_ad_convert+0)+1,f
	movlw	low(9072+02h)
	movwf	(??_start_ad_convert+2)+0
	movlw	high(9072+02h)
	movwf	(??_start_ad_convert+2)+0+1
	movf	0+(??_start_ad_convert+0)+0,w
	addwf	0+(??_start_ad_convert+2)+0,w
	movwf	fsr1l
	movf	1+(??_start_ad_convert+0)+0,w
	addwfc	1+(??_start_ad_convert+2)+0,w
	movwf	1+fsr1l
	movlb 1	; select bank1
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+4)+0
	clrf	(??_start_ad_convert+4)+0+1
	lslf	(??_start_ad_convert+4)+0,f
	rlf	(??_start_ad_convert+4)+1,f
	movlw	low(9072)
	movwf	(??_start_ad_convert+6)+0
	movlw	high(9072)
	movwf	(??_start_ad_convert+6)+0+1
	movf	0+(??_start_ad_convert+4)+0,w
	addwf	0+(??_start_ad_convert+6)+0,w
	movwf	fsr0l
	movf	1+(??_start_ad_convert+4)+0,w
	addwfc	1+(??_start_ad_convert+6)+0,w
	movwf	1+fsr0l
	moviw	[0]fsr1
	movwi	[0]fsr0
	moviw	[1]fsr1
	movwi	[1]fsr0
	line	1210
	
l16784:	
;task.c: 1210: adc_buffer[i+1]=temp;
	movlb 1	; select bank1
	movf	(start_ad_convert@i)^080h,w
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0
	clrf	(??_start_ad_convert+0)+0+1
	lslf	(??_start_ad_convert+0)+0,f
	rlf	(??_start_ad_convert+0)+1,f
	movlw	low(9072+02h)
	movwf	(??_start_ad_convert+2)+0
	movlw	high(9072+02h)
	movwf	(??_start_ad_convert+2)+0+1
	movf	0+(??_start_ad_convert+0)+0,w
	addwf	0+(??_start_ad_convert+2)+0,w
	movwf	fsr1l
	movf	1+(??_start_ad_convert+0)+0,w
	addwfc	1+(??_start_ad_convert+2)+0,w
	movwf	1+fsr1l
	movlb 1	; select bank1
	movf	(start_ad_convert@temp)^080h,w
	movwi	[0]fsr1
	movf	(start_ad_convert@temp+1)^080h,w
	movwi	[1]fsr1
	line	1202
	
l16786:	
	movlb 1	; select bank1
	incf	(start_ad_convert@i)^080h,f
	
l16788:	
	movlw	high(0Bh)
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0+1
	movlb 1	; select bank1
	movf	(start_ad_convert@j)^080h,w
	sublw	low(0Bh)
	movlb 0	; select bank0
	movwf	(??_start_ad_convert+0)+0
	skipc
	decf	(??_start_ad_convert+0)+0+1,f
	movf	1+(??_start_ad_convert+0)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u9755
	movf	0+(??_start_ad_convert+0)+0,w
	movlb 1	; select bank1
	subwf	(start_ad_convert@i)^080h,w
u9755:

	skipc
	goto	u9751
	goto	u9750
u9751:
	goto	l16778
u9750:
	line	1200
	
l16790:	
	movlb 1	; select bank1
	incf	(start_ad_convert@j)^080h,f
	
l16792:	
	movlw	(0Ah)
	subwf	(start_ad_convert@j)^080h,w
	skipc
	goto	u9761
	goto	u9760
u9761:
	goto	l16776
u9760:
	
l1548:	
	line	1216
;task.c: 1211: }
;task.c: 1213: }
;task.c: 1214: }
;task.c: 1216: ADCON0bits.ADON =0;
	bcf	(157)^080h,0	;volatile
	line	1218
	
l16794:	
;task.c: 1218: return((adc_buffer[((11-1)/2)-1]+adc_buffer[((11-1)/2)+1])/2);
	movlw	low(9072)
	movwf	fsr1l
	movlw	high(9072)
	movwf	fsr1h
	addfsr	fsr1,0Ch
	movlw	low(9072)
	movwf	fsr0l
	movlw	high(9072)
	movwf	fsr0h
	addfsr	fsr0,08h
	moviw	[0]fsr1
	addwf	indf0,w
	movlb 0	; select bank0
	movwf	(?_start_ad_convert)
	addfsr	fsr0,1
	moviw	[1]fsr1
	addwfc	indf0,w
	movwf	(?_start_ad_convert)+1
	
l16796:	
	lsrf	(?_start_ad_convert+1),f
	rrf	(?_start_ad_convert),f
	line	1221
	
l1541:	
	return
	opt stack 0
GLOBAL	__end_of_start_ad_convert
	__end_of_start_ad_convert:
	signat	_start_ad_convert,4218
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    9[BANK0 ] unsigned int 
;;  dividend        2   11[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   14[BANK0 ] unsigned int 
;;  counter         1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    9[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       7       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_handle_ad_loop
;;		_start_ad_convert
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwdiv.c"
	line	6
global __ptext12
__ptext12:	;psect for function ___lwdiv
psect	text12
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 10
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l19208:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l19210:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u13331
	goto	u13330
u13331:
	goto	l19230
u13330:
	line	16
	
l19212:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l19216
	line	18
	
l19214:	
	lslf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	line	19
	incf	(___lwdiv@counter),f
	line	17
	
l19216:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u13341
	goto	u13340
u13341:
	goto	l19214
u13340:
	line	22
	
l19218:	
	lslf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	line	23
	
l19220:	
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u13355
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u13355:
	skipc
	goto	u13351
	goto	u13350
u13351:
	goto	l19226
u13350:
	line	24
	
l19222:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	subwfb	(___lwdiv@dividend+1),f
	line	25
	
l19224:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	line	27
	
l19226:	
	lsrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	line	28
	
l19228:	
	decfsz	(___lwdiv@counter),f
	goto	u13361
	goto	u13360
u13361:
	goto	l19218
u13360:
	line	30
	
l19230:	
	movf	(___lwdiv@quotient+1),w
	movwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	movwf	(?___lwdiv)
	line	31
	
l2315:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 4 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    3[BANK0 ] unsigned int 
;;  multiplicand    2    5[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    7[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    3[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_handle_ad_loop
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\wmul.c"
	line	4
global __ptext13
__ptext13:	;psect for function ___wmul
psect	text13
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\wmul.c"
	line	4
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 12
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	20
	
l19238:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	line	22
	
l19240:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u13371
	goto	u13370
u13371:
	goto	l19244
u13370:
	line	23
	
l19242:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	movf	(___wmul@multiplicand+1),w
	addwfc	(___wmul@product+1),f
	line	24
	
l19244:	
	lslf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	line	25
	
l19246:	
	lsrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	line	26
	
l19248:	
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u13381
	goto	u13380
u13381:
	goto	l19240
u13380:
	line	30
	
l19250:	
	movf	(___wmul@product+1),w
	movwf	(?___wmul+1)
	movf	(___wmul@product),w
	movwf	(?___wmul)
	line	31
	
l2348:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___lldiv

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 6 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    3[BANK0 ] unsigned long 
;;  dividend        4    7[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   11[BANK0 ] unsigned long 
;;  counter         1   15[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    3[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      13       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_handle_ad_loop
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lldiv.c"
	line	6
global __ptext14
__ptext14:	;psect for function ___lldiv
psect	text14
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lldiv.c"
	line	6
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
;incstack = 0
	opt	stack 12
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	14
	
l19182:	
	clrf	(___lldiv@quotient)
	clrf	(___lldiv@quotient+1)
	clrf	(___lldiv@quotient+2)
	clrf	(___lldiv@quotient+3)
	line	15
	
l19184:	
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u13291
	goto	u13290
u13291:
	goto	l19204
u13290:
	line	16
	
l19186:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	17
	goto	l19190
	line	18
	
l19188:	
	lslf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	line	19
	incf	(___lldiv@counter),f
	line	17
	
l19190:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u13301
	goto	u13300
u13301:
	goto	l19188
u13300:
	line	22
	
l19192:	
	lslf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	line	23
	
l19194:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u13315
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u13315
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u13315
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u13315:
	skipc
	goto	u13311
	goto	u13310
u13311:
	goto	l19200
u13310:
	line	24
	
l19196:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	subwfb	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	subwfb	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	subwfb	(___lldiv@dividend+3),f
	line	25
	
l19198:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	line	27
	
l19200:	
	lsrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	line	28
	
l19202:	
	decfsz	(___lldiv@counter),f
	goto	u13321
	goto	u13320
u13321:
	goto	l19192
u13320:
	line	30
	
l19204:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	line	31
	
l2259:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	_Mppt_Charge

;; *************** function _Mppt_Charge *****************
;; Defined at:
;;		line 1583 in file "D:\MCUProject\ZH-SL-F60\src\task.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/4
;;		On exit  : 1A/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_Set_Buck_Pwm_Duty
;;		___fladd
;;		___flge
;;		___fltol
;;		___lwtofl
;;		_pid_calc
;; This function is called by:
;;		_handle_ad_loop
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-F60\src\task.c"
	line	1583
global __ptext15
__ptext15:	;psect for function _Mppt_Charge
psect	text15
	file	"D:\MCUProject\ZH-SL-F60\src\task.c"
	line	1583
	global	__size_of_Mppt_Charge
	__size_of_Mppt_Charge	equ	__end_of_Mppt_Charge-_Mppt_Charge
	
_Mppt_Charge:	
;incstack = 0
	opt	stack 8
; Regs used in _Mppt_Charge: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	1586
	
l18828:	
;task.c: 1586: if((battery_voltage_value<dianchi_guoya_huifu)&&(charge_index==0x03))
	movlb 0	; select bank0
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff1)

	movlb 3	; select bank3
	movf	(_dianchi_guoya_huifu+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 3	; select bank3
	movf	(_dianchi_guoya_huifu+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 3	; select bank3
	movf	(_dianchi_guoya_huifu+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 3	; select bank3
	movf	(_dianchi_guoya_huifu)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u12641
	goto	u12640
u12641:
	goto	l18880
u12640:
	
l18830:	
	movlb 1	; select bank1
	movf	(_charge_index)^080h,w
	xorlw	03h&0ffh
	skipz
	goto	u12651
	goto	u12650
u12651:
	goto	l18880
u12650:
	line	1589
	
l18832:	
;task.c: 1587: {
;task.c: 1589: if(mppt_status==0x00)
	movlb 3	; select bank3
	movf	(_mppt_status)^0180h,f
	skipz
	goto	u12661
	goto	u12660
u12661:
	goto	l18854
u12660:
	line	1591
	
l18834:	
;task.c: 1590: {
;task.c: 1591: if (charge_current_value>=I_prev)
	movf	(_I_prev+1)^0180h,w
	movlb 2	; select bank2
	subwf	(_charge_current_value+1)^0100h,w
	skipz
	goto	u12675
	movlb 3	; select bank3
	movf	(_I_prev)^0180h,w
	movlb 2	; select bank2
	subwf	(_charge_current_value)^0100h,w
u12675:
	skipc
	goto	u12671
	goto	u12670
u12671:
	goto	l1584
u12670:
	line	1594
	
l18836:	
;task.c: 1592: {
;task.c: 1594: buck_pwm_value=buck_pwm_value + 200 * 0.025;
	movlb 1	; select bank1
	movf	(_buck_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c+1)
	movlb 1	; select bank1
	movf	(_buck_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___fladd@f2+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___fladd@f2+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___fladd@f2+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___fladd@f2)

	movlw	0x40
	movwf	(___fladd@f1+3)
	movlw	0xa0
	movwf	(___fladd@f1+2)
	movlw	0x0
	movwf	(___fladd@f1+1)
	movlw	0x0
	movwf	(___fladd@f1)

	fcall	___fladd
	movf	(3+(?___fladd)),w
	movwf	(___fltol@f1+3)
	movf	(2+(?___fladd)),w
	movwf	(___fltol@f1+2)
	movf	(1+(?___fladd)),w
	movwf	(___fltol@f1+1)
	movf	(0+(?___fladd)),w
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	1+(((0+(?___fltol)))),w
	movlb 1	; select bank1
	movwf	(_buck_pwm_value+1)^080h
	movlb 0	; select bank0
	movf	0+(((0+(?___fltol)))),w
	movlb 1	; select bank1
	movwf	(_buck_pwm_value)^080h
	line	1596
	
l18838:	
;task.c: 1596: if(buck_pwm_value>=900)
	movlw	high(0384h)
	subwf	(_buck_pwm_value+1)^080h,w
	movlw	low(0384h)
	skipnz
	subwf	(_buck_pwm_value)^080h,w
	skipc
	goto	u12681
	goto	u12680
u12681:
	goto	l18842
u12680:
	line	1598
	
l18840:	
;task.c: 1597: {
;task.c: 1598: buck_pwm_value=900;
	movlw	low(0384h)
	movwf	(_buck_pwm_value)^080h
	movlw	high(0384h)
	movwf	((_buck_pwm_value)^080h)+1
	line	1601
	
l18842:	
;task.c: 1599: }
;task.c: 1601: Set_Buck_Pwm_Duty(buck_pwm_value);
	movlb 1	; select bank1
	movf	(_buck_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Buck_Pwm_Duty@duty+1)
	movlb 1	; select bank1
	movf	(_buck_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Buck_Pwm_Duty@duty)
	fcall	_Set_Buck_Pwm_Duty
	line	1603
;task.c: 1603: }
	goto	l18876
	line	1604
	
l1584:	
	line	1606
;task.c: 1604: else
;task.c: 1605: {
;task.c: 1606: mppt_status=1;
	movlb 3	; select bank3
	clrf	(_mppt_status)^0180h
	incf	(_mppt_status)^0180h,f
	line	1608
	
l18844:	
;task.c: 1608: buck_pwm_value=buck_pwm_value - 200 * 0.025;
	movlb 1	; select bank1
	movf	(_buck_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c+1)
	movlb 1	; select bank1
	movf	(_buck_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___fladd@f2+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___fladd@f2+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___fladd@f2+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___fladd@f2)

	movlw	0xc0
	movwf	(___fladd@f1+3)
	movlw	0xa0
	movwf	(___fladd@f1+2)
	movlw	0x0
	movwf	(___fladd@f1+1)
	movlw	0x0
	movwf	(___fladd@f1)

	fcall	___fladd
	movf	(3+(?___fladd)),w
	movwf	(___fltol@f1+3)
	movf	(2+(?___fladd)),w
	movwf	(___fltol@f1+2)
	movf	(1+(?___fladd)),w
	movwf	(___fltol@f1+1)
	movf	(0+(?___fladd)),w
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	1+(((0+(?___fltol)))),w
	movlb 1	; select bank1
	movwf	(_buck_pwm_value+1)^080h
	movlb 0	; select bank0
	movf	0+(((0+(?___fltol)))),w
	movlb 1	; select bank1
	movwf	(_buck_pwm_value)^080h
	line	1610
	
l18846:	
;task.c: 1610: if(buck_pwm_value<=50)
	movlw	high(033h)
	subwf	(_buck_pwm_value+1)^080h,w
	movlw	low(033h)
	skipnz
	subwf	(_buck_pwm_value)^080h,w
	skipnc
	goto	u12691
	goto	u12690
u12691:
	goto	l18842
u12690:
	line	1612
	
l18848:	
;task.c: 1611: {
;task.c: 1612: buck_pwm_value=50;
	movlw	032h
	movwf	(_buck_pwm_value)^080h
	clrf	(_buck_pwm_value+1)^080h
	line	1614
	
l18850:	
;task.c: 1614: mppt_status=0;
	movlb 3	; select bank3
	clrf	(_mppt_status)^0180h
	goto	l18842
	line	1623
	
l18854:	
;task.c: 1621: else
;task.c: 1622: {
;task.c: 1623: if (charge_current_value>=I_prev)
	movf	(_I_prev+1)^0180h,w
	movlb 2	; select bank2
	subwf	(_charge_current_value+1)^0100h,w
	skipz
	goto	u12705
	movlb 3	; select bank3
	movf	(_I_prev)^0180h,w
	movlb 2	; select bank2
	subwf	(_charge_current_value)^0100h,w
u12705:
	skipc
	goto	u12701
	goto	u12700
u12701:
	goto	l18866
u12700:
	line	1626
	
l18856:	
;task.c: 1624: {
;task.c: 1626: buck_pwm_value=buck_pwm_value-200 * 0.025;
	movlb 1	; select bank1
	movf	(_buck_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c+1)
	movlb 1	; select bank1
	movf	(_buck_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___fladd@f2+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___fladd@f2+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___fladd@f2+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___fladd@f2)

	movlw	0xc0
	movwf	(___fladd@f1+3)
	movlw	0xa0
	movwf	(___fladd@f1+2)
	movlw	0x0
	movwf	(___fladd@f1+1)
	movlw	0x0
	movwf	(___fladd@f1)

	fcall	___fladd
	movf	(3+(?___fladd)),w
	movwf	(___fltol@f1+3)
	movf	(2+(?___fladd)),w
	movwf	(___fltol@f1+2)
	movf	(1+(?___fladd)),w
	movwf	(___fltol@f1+1)
	movf	(0+(?___fladd)),w
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	1+(((0+(?___fltol)))),w
	movlb 1	; select bank1
	movwf	(_buck_pwm_value+1)^080h
	movlb 0	; select bank0
	movf	0+(((0+(?___fltol)))),w
	movlb 1	; select bank1
	movwf	(_buck_pwm_value)^080h
	line	1628
	
l18858:	
;task.c: 1628: if(buck_pwm_value<=50)
	movlw	high(033h)
	subwf	(_buck_pwm_value+1)^080h,w
	movlw	low(033h)
	skipnz
	subwf	(_buck_pwm_value)^080h,w
	skipnc
	goto	u12711
	goto	u12710
u12711:
	goto	l18842
u12710:
	goto	l18848
	line	1642
	
l18866:	
;task.c: 1640: else
;task.c: 1641: {
;task.c: 1642: mppt_status=0;
	movlb 3	; select bank3
	clrf	(_mppt_status)^0180h
	line	1644
	
l18868:	
;task.c: 1644: buck_pwm_value=buck_pwm_value+ 200 * 0.025;
	movlb 1	; select bank1
	movf	(_buck_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c+1)
	movlb 1	; select bank1
	movf	(_buck_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___fladd@f2+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___fladd@f2+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___fladd@f2+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___fladd@f2)

	movlw	0x40
	movwf	(___fladd@f1+3)
	movlw	0xa0
	movwf	(___fladd@f1+2)
	movlw	0x0
	movwf	(___fladd@f1+1)
	movlw	0x0
	movwf	(___fladd@f1)

	fcall	___fladd
	movf	(3+(?___fladd)),w
	movwf	(___fltol@f1+3)
	movf	(2+(?___fladd)),w
	movwf	(___fltol@f1+2)
	movf	(1+(?___fladd)),w
	movwf	(___fltol@f1+1)
	movf	(0+(?___fladd)),w
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	1+(((0+(?___fltol)))),w
	movlb 1	; select bank1
	movwf	(_buck_pwm_value+1)^080h
	movlb 0	; select bank0
	movf	0+(((0+(?___fltol)))),w
	movlb 1	; select bank1
	movwf	(_buck_pwm_value)^080h
	line	1646
	
l18870:	
;task.c: 1646: if(buck_pwm_value>=900)
	movlw	high(0384h)
	subwf	(_buck_pwm_value+1)^080h,w
	movlw	low(0384h)
	skipnz
	subwf	(_buck_pwm_value)^080h,w
	skipc
	goto	u12721
	goto	u12720
u12721:
	goto	l18842
u12720:
	goto	l18840
	line	1659
	
l18876:	
;task.c: 1653: }
;task.c: 1657: }
;task.c: 1659: PWM = buck_pwm_value;
	movlb 1	; select bank1
	movf	(_buck_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c+1)
	movlb 1	; select bank1
	movf	(_buck_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movlb 1	; select bank1
	movwf	(_PWM+3)^080h
	movlb 0	; select bank0
	movf	(2+(?___lwtofl)),w
	movlb 1	; select bank1
	movwf	(_PWM+2)^080h
	movlb 0	; select bank0
	movf	(1+(?___lwtofl)),w
	movlb 1	; select bank1
	movwf	(_PWM+1)^080h
	movlb 0	; select bank0
	movf	(0+(?___lwtofl)),w
	movlb 1	; select bank1
	movwf	(_PWM)^080h

	line	1661
	
l18878:	
;task.c: 1661: cv_level_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_cv_level_time_count)^0200h
	clrf	(_cv_level_time_count+1)^0200h
	line	1663
;task.c: 1663: }
	goto	l1602
	line	1664
	
l18880:	
;task.c: 1664: else if((battery_voltage_value>=dianchi_cv_level)&&(battery_voltage_value<dianchi_guoya_baohu)&&(charge_index==0x03))
	movlb 0	; select bank0
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff1)

	movlb 3	; select bank3
	movf	(_dianchi_cv_level+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 3	; select bank3
	movf	(_dianchi_cv_level+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 3	; select bank3
	movf	(_dianchi_cv_level+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 3	; select bank3
	movf	(_dianchi_cv_level)^0180h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12731
	goto	u12730
u12731:
	goto	l18896
u12730:
	
l18882:	
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff1)

	movlb 2	; select bank2
	movf	(_dianchi_guoya_baohu+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_baohu+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_baohu+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_baohu)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u12741
	goto	u12740
u12741:
	goto	l18896
u12740:
	
l18884:	
	movlb 1	; select bank1
	movf	(_charge_index)^080h,w
	xorlw	03h&0ffh
	skipz
	goto	u12751
	goto	u12750
u12751:
	goto	l18896
u12750:
	line	1666
	
l18886:	
;task.c: 1665: {
;task.c: 1666: cv_level_time_count++;
	movlb 4	; select bank4
	incf	(_cv_level_time_count)^0200h,f
	skipnz
	incf	(_cv_level_time_count+1)^0200h,f
	line	1668
	
l18888:	
;task.c: 1668: if(cv_level_time_count>=100)
	movlw	high(064h)
	subwf	(_cv_level_time_count+1)^0200h,w
	movlw	low(064h)
	skipnz
	subwf	(_cv_level_time_count)^0200h,w
	skipc
	goto	u12761
	goto	u12760
u12761:
	goto	l1602
u12760:
	line	1670
	
l18890:	
;task.c: 1669: {
;task.c: 1670: cv_level_time_count=0x00;
	clrf	(_cv_level_time_count)^0200h
	clrf	(_cv_level_time_count+1)^0200h
	line	1672
	
l18892:	
;task.c: 1672: charge_index=0x04;
	movlw	(04h)
	movlb 1	; select bank1
	movwf	(_charge_index)^080h
	line	1674
	
l18894:	
;task.c: 1674: PWM = buck_pwm_value;
	movf	(_buck_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c+1)
	movlb 1	; select bank1
	movf	(_buck_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movlb 1	; select bank1
	movwf	(_PWM+3)^080h
	movlb 0	; select bank0
	movf	(2+(?___lwtofl)),w
	movlb 1	; select bank1
	movwf	(_PWM+2)^080h
	movlb 0	; select bank0
	movf	(1+(?___lwtofl)),w
	movlb 1	; select bank1
	movwf	(_PWM+1)^080h
	movlb 0	; select bank0
	movf	(0+(?___lwtofl)),w
	movlb 1	; select bank1
	movwf	(_PWM)^080h

	goto	l1602
	line	1677
	
l18896:	
;task.c: 1677: else if( (battery_voltage_value<dianchi_guoya_baohu) && (charge_index==0x04) )
	movlb 0	; select bank0
	movf	(_battery_voltage_value+1),w
	movwf	(___lwtofl@c+1)
	movf	(_battery_voltage_value),w
	movwf	(___lwtofl@c)
	fcall	___lwtofl
	movf	(3+(?___lwtofl)),w
	movwf	(___flge@ff1+3)
	movf	(2+(?___lwtofl)),w
	movwf	(___flge@ff1+2)
	movf	(1+(?___lwtofl)),w
	movwf	(___flge@ff1+1)
	movf	(0+(?___lwtofl)),w
	movwf	(___flge@ff1)

	movlb 2	; select bank2
	movf	(_dianchi_guoya_baohu+3)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_baohu+2)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_baohu+1)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 2	; select bank2
	movf	(_dianchi_guoya_baohu)^0100h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u12771
	goto	u12770
u12771:
	goto	l18878
u12770:
	
l18898:	
	movlb 1	; select bank1
	movf	(_charge_index)^080h,w
	xorlw	04h&0ffh
	skipz
	goto	u12781
	goto	u12780
u12781:
	goto	l18878
u12780:
	line	1679
	
l18900:	
;task.c: 1678: {
;task.c: 1679: pid_index = 0x02;
	movlw	(02h)
	movlb 2	; select bank2
	movwf	(_pid_index)^0100h
	line	1681
	
l18902:	
;task.c: 1681: PWM_I=pid_calc(&PID_CV_charge,battery_voltage_value);
	movlw	low(_PID_CV_charge)
	movlb 0	; select bank0
	movwf	(pid_calc@pp)
	movlw	high(_PID_CV_charge)
	movwf	(pid_calc@pp+1)
	movf	(_battery_voltage_value+1),w
	movwf	(pid_calc@NowPoint+1)
	movf	(_battery_voltage_value),w
	movwf	(pid_calc@NowPoint)
	fcall	_pid_calc
	movf	(3+(?_pid_calc)),w
	movlb 5	; select bank5
	movwf	(_PWM_I+3)^0280h
	movlb 0	; select bank0
	movf	(2+(?_pid_calc)),w
	movlb 5	; select bank5
	movwf	(_PWM_I+2)^0280h
	movlb 0	; select bank0
	movf	(1+(?_pid_calc)),w
	movlb 5	; select bank5
	movwf	(_PWM_I+1)^0280h
	movlb 0	; select bank0
	movf	(0+(?_pid_calc)),w
	movlb 5	; select bank5
	movwf	(_PWM_I)^0280h

	line	1683
	
l18904:	
;task.c: 1683: PWM = PWM+PWM_I;
	movf	(_PWM_I+3)^0280h,w
	movlb 0	; select bank0
	movwf	(___fladd@f1+3)
	movlb 5	; select bank5
	movf	(_PWM_I+2)^0280h,w
	movlb 0	; select bank0
	movwf	(___fladd@f1+2)
	movlb 5	; select bank5
	movf	(_PWM_I+1)^0280h,w
	movlb 0	; select bank0
	movwf	(___fladd@f1+1)
	movlb 5	; select bank5
	movf	(_PWM_I)^0280h,w
	movlb 0	; select bank0
	movwf	(___fladd@f1)

	movlb 1	; select bank1
	movf	(_PWM+3)^080h,w
	movlb 0	; select bank0
	movwf	(___fladd@f2+3)
	movlb 1	; select bank1
	movf	(_PWM+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fladd@f2+2)
	movlb 1	; select bank1
	movf	(_PWM+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fladd@f2+1)
	movlb 1	; select bank1
	movf	(_PWM)^080h,w
	movlb 0	; select bank0
	movwf	(___fladd@f2)

	fcall	___fladd
	movf	(3+(?___fladd)),w
	movlb 1	; select bank1
	movwf	(_PWM+3)^080h
	movlb 0	; select bank0
	movf	(2+(?___fladd)),w
	movlb 1	; select bank1
	movwf	(_PWM+2)^080h
	movlb 0	; select bank0
	movf	(1+(?___fladd)),w
	movlb 1	; select bank1
	movwf	(_PWM+1)^080h
	movlb 0	; select bank0
	movf	(0+(?___fladd)),w
	movlb 1	; select bank1
	movwf	(_PWM)^080h

	line	1685
	
l18906:	
;task.c: 1685: if( PWM>=900)
	movf	(_PWM+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 1	; select bank1
	movf	(_PWM+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 1	; select bank1
	movf	(_PWM+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 1	; select bank1
	movf	(_PWM)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlw	0x44
	movwf	(___flge@ff2+3)
	movlw	0x61
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12791
	goto	u12790
u12791:
	goto	l18910
u12790:
	line	1687
	
l18908:	
;task.c: 1686: {
;task.c: 1687: PWM=900;
	movlw	0x44
	movlb 1	; select bank1
	movwf	(_PWM+3)^080h
	movlw	0x61
	movwf	(_PWM+2)^080h
	movlw	0x0
	movwf	(_PWM+1)^080h
	movlw	0x0
	movwf	(_PWM)^080h

	line	1688
;task.c: 1688: }
	goto	l18914
	line	1689
	
l18910:	
;task.c: 1689: else if(PWM<=50)
	movlw	0x42
	movwf	(___flge@ff1+3)
	movlw	0x48
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(_PWM+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 1	; select bank1
	movf	(_PWM+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 1	; select bank1
	movf	(_PWM+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 1	; select bank1
	movf	(_PWM)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12801
	goto	u12800
u12801:
	goto	l18914
u12800:
	line	1691
	
l18912:	
;task.c: 1690: {
;task.c: 1691: PWM=50;
	movlw	0x42
	movlb 1	; select bank1
	movwf	(_PWM+3)^080h
	movlw	0x48
	movwf	(_PWM+2)^080h
	movlw	0x0
	movwf	(_PWM+1)^080h
	movlw	0x0
	movwf	(_PWM)^080h

	line	1693
	
l18914:	
;task.c: 1692: }
;task.c: 1693: buck_pwm_value = (unsigned int)PWM;
	movlb 1	; select bank1
	movf	(_PWM+3)^080h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+3)
	movlb 1	; select bank1
	movf	(_PWM+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+2)
	movlb 1	; select bank1
	movf	(_PWM+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1+1)
	movlb 1	; select bank1
	movf	(_PWM)^080h,w
	movlb 0	; select bank0
	movwf	(___fltol@f1)

	fcall	___fltol
	movf	1+(((0+(?___fltol)))),w
	movlb 1	; select bank1
	movwf	(_buck_pwm_value+1)^080h
	movlb 0	; select bank0
	movf	0+(((0+(?___fltol)))),w
	movlb 1	; select bank1
	movwf	(_buck_pwm_value)^080h
	line	1695
	
l18916:	
;task.c: 1695: Set_Buck_Pwm_Duty(buck_pwm_value);
	movf	(_buck_pwm_value+1)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Buck_Pwm_Duty@duty+1)
	movlb 1	; select bank1
	movf	(_buck_pwm_value)^080h,w
	movlb 0	; select bank0
	movwf	(Set_Buck_Pwm_Duty@duty)
	fcall	_Set_Buck_Pwm_Duty
	line	1702
;task.c: 1696: }
	
l1602:	
	return
	opt stack 0
GLOBAL	__end_of_Mppt_Charge
	__end_of_Mppt_Charge:
	signat	_Mppt_Charge,88
	global	_pid_calc

;; *************** function _pid_calc *****************
;; Defined at:
;;		line 24 in file "D:\MCUProject\ZH-SL-F60\src\PID.c"
;; Parameters:    Size  Location     Type
;;  pp              2   70[BANK0 ] PTR struct PID_VAR
;;		 -> PID_CC_discharge(28), PID_CV_charge(28), PID_CC_charge(28), 
;;  NowPoint        2   72[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  PWM_var         4   24[BANK1 ] float 
;;  Error           4   20[BANK1 ] float 
;;  dk              4   16[BANK1 ] float 
;;  dError          4    4[BANK1 ] float 
;; Return value:  Size  Location     Type
;;                  4   70[BANK0 ] float 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0      24       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       4       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4      28       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       32 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___awtofl
;;		___fladd
;;		___flge
;;		___flmul
;;		___flsub
;; This function is called by:
;;		_handle_ad_loop
;;		_Mppt_Charge
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-F60\src\PID.c"
	line	24
global __ptext16
__ptext16:	;psect for function _pid_calc
psect	text16
	file	"D:\MCUProject\ZH-SL-F60\src\PID.c"
	line	24
	global	__size_of_pid_calc
	__size_of_pid_calc	equ	__end_of_pid_calc-_pid_calc
	
_pid_calc:	
;incstack = 0
	opt	stack 9
; Regs used in _pid_calc: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	32
	
l18636:	
;PID.c: 26: float PWM_var;
;PID.c: 28: float dError, Error;
;PID.c: 30: float dk;
;PID.c: 32: dk=5.0;
	movlw	0x40
	movlb 1	; select bank1
	movwf	(pid_calc@dk+3)^080h
	movlw	0xa0
	movwf	(pid_calc@dk+2)^080h
	movlw	0x0
	movwf	(pid_calc@dk+1)^080h
	movlw	0x0
	movwf	(pid_calc@dk)^080h

	line	34
	
l18638:	
;PID.c: 34: Error = pp->SetPoint - NowPoint;
	movlb 0	; select bank0
	movf	(pid_calc@NowPoint+1),w
	movwf	(___awtofl@c+1)
	movf	(pid_calc@NowPoint),w
	movwf	(___awtofl@c)
	fcall	___awtofl
	movf	(3+(?___awtofl)),w
	movwf	(___flsub@f2+3)
	movf	(2+(?___awtofl)),w
	movwf	(___flsub@f2+2)
	movf	(1+(?___awtofl)),w
	movwf	(___flsub@f2+1)
	movf	(0+(?___awtofl)),w
	movwf	(___flsub@f2)

	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h

	moviw	[0]fsr1
	movwf	(___flsub@f1)
	moviw	[1]fsr1
	movwf	(___flsub@f1+1)
	moviw	[2]fsr1
	movwf	(___flsub@f1+2)
	moviw	[3]fsr1
	movwf	(___flsub@f1+3)
	fcall	___flsub
	movf	(3+(?___flsub)),w
	movlb 1	; select bank1
	movwf	(pid_calc@Error+3)^080h
	movlb 0	; select bank0
	movf	(2+(?___flsub)),w
	movlb 1	; select bank1
	movwf	(pid_calc@Error+2)^080h
	movlb 0	; select bank0
	movf	(1+(?___flsub)),w
	movlb 1	; select bank1
	movwf	(pid_calc@Error+1)^080h
	movlb 0	; select bank0
	movf	(0+(?___flsub)),w
	movlb 1	; select bank1
	movwf	(pid_calc@Error)^080h

	line	36
	
l18640:	
;PID.c: 36: if(limit_power_pid_flag==0x01)
	movlb 3	; select bank3
	decf	(_limit_power_pid_flag)^0180h,w
	skipz
	goto	u12101
	goto	u12100
u12101:
	goto	l18656
u12100:
	line	38
	
l18642:	
;PID.c: 37: {
;PID.c: 38: if((Error<=2)&&(Error>=-2))
	movlw	0x40
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlw	0x0
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(pid_calc@Error+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12111
	goto	u12110
u12111:
	goto	l18648
u12110:
	
l18644:	
	movlb 1	; select bank1
	movf	(pid_calc@Error+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlw	0xc0
	movwf	(___flge@ff2+3)
	movlw	0x0
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12121
	goto	u12120
u12121:
	goto	l18648
u12120:
	line	40
	
l18646:	
;PID.c: 39: {
;PID.c: 40: Error=0;
	movlb 1	; select bank1
	clrf	(pid_calc@Error)^080h
	clrf	(pid_calc@Error+1)^080h
	clrf	(pid_calc@Error+2)^080h
	clrf	(pid_calc@Error+3)^080h
	line	41
;PID.c: 41: }
	goto	l18688
	line	42
	
l18648:	
;PID.c: 42: else if(Error>=4)
	movlb 1	; select bank1
	movf	(pid_calc@Error+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlw	0x40
	movwf	(___flge@ff2+3)
	movlw	0x80
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12131
	goto	u12130
u12131:
	goto	l18652
u12130:
	line	44
	
l18650:	
;PID.c: 43: {
;PID.c: 44: dk=200.0;
	movlw	0x43
	movlb 1	; select bank1
	movwf	(pid_calc@dk+3)^080h
	movlw	0x48
	movwf	(pid_calc@dk+2)^080h
	movlw	0x0
	movwf	(pid_calc@dk+1)^080h
	movlw	0x0
	movwf	(pid_calc@dk)^080h

	line	45
;PID.c: 45: }
	goto	l18688
	line	46
	
l18652:	
;PID.c: 46: else if(Error<=-4)
	movlw	0xc0
	movwf	(___flge@ff1+3)
	movlw	0x80
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(pid_calc@Error+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12141
	goto	u12140
u12141:
	goto	l867
u12140:
	line	48
	
l18654:	
;PID.c: 47: {
;PID.c: 48: dk=200.0;
	movlw	0x43
	movlb 1	; select bank1
	movwf	(pid_calc@dk+3)^080h
	movlw	0x48
	movwf	(pid_calc@dk+2)^080h
	movlw	0x0
	movwf	(pid_calc@dk+1)^080h
	movlw	0x0
	movwf	(pid_calc@dk)^080h

	goto	l18688
	line	50
	
l867:	
;PID.c: 49: }
;PID.c: 50: }
	goto	l18688
	line	53
	
l18656:	
;PID.c: 51: else
;PID.c: 52: {
;PID.c: 53: if(pid_index==0x01)
	movlb 2	; select bank2
	decf	(_pid_index)^0100h,w
	skipz
	goto	u12151
	goto	u12150
u12151:
	goto	l18674
u12150:
	line	56
	
l18658:	
;PID.c: 54: {
;PID.c: 56: if((Error<=1)&&(Error>=-1))
	movlw	0x3f
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlw	0x80
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(pid_calc@Error+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12161
	goto	u12160
u12161:
	goto	l18664
u12160:
	
l18660:	
	movlb 1	; select bank1
	movf	(pid_calc@Error+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlw	0xbf
	movwf	(___flge@ff2+3)
	movlw	0x80
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12171
	goto	u12170
u12171:
	goto	l18664
u12170:
	line	58
	
l18662:	
;PID.c: 57: {
;PID.c: 58: Error=0;
	movlb 1	; select bank1
	clrf	(pid_calc@Error)^080h
	clrf	(pid_calc@Error+1)^080h
	clrf	(pid_calc@Error+2)^080h
	clrf	(pid_calc@Error+3)^080h
	line	59
;PID.c: 59: }
	goto	l18688
	line	60
	
l18664:	
;PID.c: 60: else if(Error>=2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlw	0x40
	movwf	(___flge@ff2+3)
	movlw	0x0
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12181
	goto	u12180
u12181:
	goto	l18668
u12180:
	line	62
	
l18666:	
;PID.c: 61: {
;PID.c: 62: dk=200.0;
	movlw	0x43
	movlb 1	; select bank1
	movwf	(pid_calc@dk+3)^080h
	movlw	0x48
	movwf	(pid_calc@dk+2)^080h
	movlw	0x0
	movwf	(pid_calc@dk+1)^080h
	movlw	0x0
	movwf	(pid_calc@dk)^080h

	line	63
;PID.c: 63: }
	goto	l18688
	line	64
	
l18668:	
;PID.c: 64: else if(Error<=-2)
	movlw	0xc0
	movwf	(___flge@ff1+3)
	movlw	0x0
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(pid_calc@Error+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12191
	goto	u12190
u12191:
	goto	l18672
u12190:
	line	66
	
l18670:	
;PID.c: 65: {
;PID.c: 66: dk=200.0;
	movlw	0x43
	movlb 1	; select bank1
	movwf	(pid_calc@dk+3)^080h
	movlw	0x48
	movwf	(pid_calc@dk+2)^080h
	movlw	0x0
	movwf	(pid_calc@dk+1)^080h
	movlw	0x0
	movwf	(pid_calc@dk)^080h

	line	67
;PID.c: 67: }
	goto	l18688
	line	70
	
l18672:	
;PID.c: 68: else
;PID.c: 69: {
;PID.c: 70: dk=200.0;
	movlw	0x43
	movlb 1	; select bank1
	movwf	(pid_calc@dk+3)^080h
	movlw	0x48
	movwf	(pid_calc@dk+2)^080h
	movlw	0x0
	movwf	(pid_calc@dk+1)^080h
	movlw	0x0
	movwf	(pid_calc@dk)^080h

	goto	l18688
	line	74
	
l18674:	
;PID.c: 74: else if(pid_index==0x02)
	movf	(_pid_index)^0100h,w
	xorlw	02h&0ffh
	skipz
	goto	u12201
	goto	u12200
u12201:
	goto	l18688
u12200:
	line	76
	
l18676:	
;PID.c: 75: {
;PID.c: 76: if((Error<=1)&&(Error>=-1))
	movlw	0x3f
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlw	0x80
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(pid_calc@Error+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12211
	goto	u12210
u12211:
	goto	l18682
u12210:
	
l18678:	
	movlb 1	; select bank1
	movf	(pid_calc@Error+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlw	0xbf
	movwf	(___flge@ff2+3)
	movlw	0x80
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12221
	goto	u12220
u12221:
	goto	l18682
u12220:
	line	78
	
l18680:	
;PID.c: 77: {
;PID.c: 78: Error=0;
	movlb 1	; select bank1
	clrf	(pid_calc@Error)^080h
	clrf	(pid_calc@Error+1)^080h
	clrf	(pid_calc@Error+2)^080h
	clrf	(pid_calc@Error+3)^080h
	line	79
;PID.c: 79: }
	goto	l18688
	line	80
	
l18682:	
;PID.c: 80: else if((Error>=2)||(Error<=-2))
	movlb 1	; select bank1
	movf	(pid_calc@Error+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlw	0x40
	movwf	(___flge@ff2+3)
	movlw	0x0
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u12231
	goto	u12230
u12231:
	goto	l18686
u12230:
	
l18684:	
	movlw	0xc0
	movwf	(___flge@ff1+3)
	movlw	0x0
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(pid_calc@Error+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12241
	goto	u12240
u12241:
	goto	l18688
u12240:
	line	82
	
l18686:	
;PID.c: 81: {
;PID.c: 82: dk=100.0;
	movlw	0x42
	movlb 1	; select bank1
	movwf	(pid_calc@dk+3)^080h
	movlw	0xc8
	movwf	(pid_calc@dk+2)^080h
	movlw	0x0
	movwf	(pid_calc@dk+1)^080h
	movlw	0x0
	movwf	(pid_calc@dk)^080h

	line	89
	
l18688:	
;PID.c: 83: }
;PID.c: 84: }
;PID.c: 86: }
;PID.c: 89: pp->SumError += Error;
	movlb 1	; select bank1
	movf	(pid_calc@Error+3)^080h,w
	movlb 0	; select bank0
	movwf	(___fladd@f1+3)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fladd@f1+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fladd@f1+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___fladd@f1)

	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,018h
	moviw	[0]fsr1
	movwf	(___fladd@f2)
	moviw	[1]fsr1
	movwf	(___fladd@f2+1)
	moviw	[2]fsr1
	movwf	(___fladd@f2+2)
	moviw	[3]fsr1
	movwf	(___fladd@f2+3)
	fcall	___fladd
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,018h
	movf	(0+(?___fladd)),w
	movwi	[0]fsr1
	movf	(1+(?___fladd)),w
	movwi	[1]fsr1
	movf	(2+(?___fladd)),w
	movwi	[2]fsr1
	movf	(3+(?___fladd)),w
	movwi	[3]fsr1
	line	93
	
l18690:	
;PID.c: 93: if((pp->SumError)>=2) pp->SumError= 2;
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,018h
	moviw	[0]fsr1
	movwf	(___flge@ff1)
	moviw	[1]fsr1
	movwf	(___flge@ff1+1)
	moviw	[2]fsr1
	movwf	(___flge@ff1+2)
	moviw	[3]fsr1
	movwf	(___flge@ff1+3)
	movlw	0x40
	movwf	(___flge@ff2+3)
	movlw	0x0
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12251
	goto	u12250
u12251:
	goto	l18694
u12250:
	
l18692:	
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,018h
	movlw	0x0
	movwi	[0]fsr1
	movlw	0x0
	movwi	[1]fsr1
	movlw	0x0
	movwi	[2]fsr1
	movlw	0x40
	movwi	[3]fsr1
	goto	l18698
	line	94
	
l18694:	
;PID.c: 94: else if((pp->SumError)<=-2) pp->SumError= -2;
	movlw	0xc0
	movwf	(___flge@ff1+3)
	movlw	0x0
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,018h
	moviw	[0]fsr1
	movwf	(___flge@ff2)
	moviw	[1]fsr1
	movwf	(___flge@ff2+1)
	moviw	[2]fsr1
	movwf	(___flge@ff2+2)
	moviw	[3]fsr1
	movwf	(___flge@ff2+3)
	fcall	___flge
	btfss	status,0
	goto	u12261
	goto	u12260
u12261:
	goto	l18698
u12260:
	
l18696:	
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,018h
	movlw	0x0
	movwi	[0]fsr1
	movlw	0x0
	movwi	[1]fsr1
	movlw	0x0
	movwi	[2]fsr1
	movlw	0xc0
	movwi	[3]fsr1
	line	96
	
l18698:	
;PID.c: 96: dError = pp->LastError - pp->PrevError;
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,014h
	moviw	[0]fsr1
	movwf	(___flsub@f2)
	moviw	[1]fsr1
	movwf	(___flsub@f2+1)
	moviw	[2]fsr1
	movwf	(___flsub@f2+2)
	moviw	[3]fsr1
	movwf	(___flsub@f2+3)
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,010h
	moviw	[0]fsr1
	movwf	(___flsub@f1)
	moviw	[1]fsr1
	movwf	(___flsub@f1+1)
	moviw	[2]fsr1
	movwf	(___flsub@f1+2)
	moviw	[3]fsr1
	movwf	(___flsub@f1+3)
	fcall	___flsub
	movf	(3+(?___flsub)),w
	movlb 1	; select bank1
	movwf	(pid_calc@dError+3)^080h
	movlb 0	; select bank0
	movf	(2+(?___flsub)),w
	movlb 1	; select bank1
	movwf	(pid_calc@dError+2)^080h
	movlb 0	; select bank0
	movf	(1+(?___flsub)),w
	movlb 1	; select bank1
	movwf	(pid_calc@dError+1)^080h
	movlb 0	; select bank0
	movf	(0+(?___flsub)),w
	movlb 1	; select bank1
	movwf	(pid_calc@dError)^080h

	line	98
	
l18700:	
;PID.c: 98: pp->PrevError = pp->LastError;
	movlb 0	; select bank0
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,010h
	moviw	[0]fsr1
	movlb 1	; select bank1
	movwf	((??_pid_calc+0)^080h+0+0)
	moviw	[1]fsr1
	movwf	((??_pid_calc+0)^080h+0+1)
	moviw	[2]fsr1
	movwf	((??_pid_calc+0)^080h+0+2)
	moviw	[3]fsr1
	movwf	((??_pid_calc+0)^080h+0+3)
	movlb 0	; select bank0
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,014h
	movlb 1	; select bank1
	movf	0+(??_pid_calc+0)^080h+0,w
	movwi	[0]fsr1
	movf	1+(??_pid_calc+0)^080h+0,w
	movwi	[1]fsr1
	movf	2+(??_pid_calc+0)^080h+0,w
	movwi	[2]fsr1
	movf	3+(??_pid_calc+0)^080h+0,w
	movwi	[3]fsr1
	line	100
	
l18702:	
;PID.c: 100: pp->LastError = Error;
	movlb 0	; select bank0
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,010h
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movwi	[0]fsr1
	movf	(pid_calc@Error+1)^080h,w
	movwi	[1]fsr1
	movf	(pid_calc@Error+2)^080h,w
	movwi	[2]fsr1
	movf	(pid_calc@Error+3)^080h,w
	movwi	[3]fsr1
	line	102
	
l18704:	
;PID.c: 102: PWM_var=(pp->Proportion * Error*dk + pp->Integral * pp->SumError + pp->Derivative * dError ) ;
	movf	(pid_calc@Error+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1)

	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,04h
	moviw	[0]fsr1
	movwf	(___flmul@f2)
	moviw	[1]fsr1
	movwf	(___flmul@f2+1)
	moviw	[2]fsr1
	movwf	(___flmul@f2+2)
	moviw	[3]fsr1
	movwf	(___flmul@f2+3)
	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 1	; select bank1
	movwf	(_pid_calc$2854+3)^080h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 1	; select bank1
	movwf	(_pid_calc$2854+2)^080h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 1	; select bank1
	movwf	(_pid_calc$2854+1)^080h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 1	; select bank1
	movwf	(_pid_calc$2854)^080h

	
l18706:	
;PID.c: 102: PWM_var=(pp->Proportion * Error*dk + pp->Integral * pp->SumError + pp->Derivative * dError ) ;
	movlb 0	; select bank0
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,018h
	moviw	[0]fsr1
	movwf	(___flmul@f1)
	moviw	[1]fsr1
	movwf	(___flmul@f1+1)
	moviw	[2]fsr1
	movwf	(___flmul@f1+2)
	moviw	[3]fsr1
	movwf	(___flmul@f1+3)
	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,08h
	moviw	[0]fsr1
	movwf	(___flmul@f2)
	moviw	[1]fsr1
	movwf	(___flmul@f2+1)
	moviw	[2]fsr1
	movwf	(___flmul@f2+2)
	moviw	[3]fsr1
	movwf	(___flmul@f2+3)
	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___fladd@f1+3)
	movf	(2+(?___flmul)),w
	movwf	(___fladd@f1+2)
	movf	(1+(?___flmul)),w
	movwf	(___fladd@f1+1)
	movf	(0+(?___flmul)),w
	movwf	(___fladd@f1)

	movlb 1	; select bank1
	movf	(pid_calc@dk+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlb 1	; select bank1
	movf	(pid_calc@dk+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+2)
	movlb 1	; select bank1
	movf	(pid_calc@dk+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+1)
	movlb 1	; select bank1
	movf	(pid_calc@dk)^080h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1)

	movlb 1	; select bank1
	movf	(_pid_calc$2854+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+3)
	movlb 1	; select bank1
	movf	(_pid_calc$2854+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+2)
	movlb 1	; select bank1
	movf	(_pid_calc$2854+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2+1)
	movlb 1	; select bank1
	movf	(_pid_calc$2854)^080h,w
	movlb 0	; select bank0
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___fladd@f2+3)
	movf	(2+(?___flmul)),w
	movwf	(___fladd@f2+2)
	movf	(1+(?___flmul)),w
	movwf	(___fladd@f2+1)
	movf	(0+(?___flmul)),w
	movwf	(___fladd@f2)

	fcall	___fladd
	movf	(3+(?___fladd)),w
	movlb 1	; select bank1
	movwf	(_pid_calc$2855+3)^080h
	movlb 0	; select bank0
	movf	(2+(?___fladd)),w
	movlb 1	; select bank1
	movwf	(_pid_calc$2855+2)^080h
	movlb 0	; select bank0
	movf	(1+(?___fladd)),w
	movlb 1	; select bank1
	movwf	(_pid_calc$2855+1)^080h
	movlb 0	; select bank0
	movf	(0+(?___fladd)),w
	movlb 1	; select bank1
	movwf	(_pid_calc$2855)^080h

	
l18708:	
;PID.c: 102: PWM_var=(pp->Proportion * Error*dk + pp->Integral * pp->SumError + pp->Derivative * dError ) ;
	movf	(pid_calc@dError+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlb 1	; select bank1
	movf	(pid_calc@dError+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+2)
	movlb 1	; select bank1
	movf	(pid_calc@dError+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1+1)
	movlb 1	; select bank1
	movf	(pid_calc@dError)^080h,w
	movlb 0	; select bank0
	movwf	(___flmul@f1)

	movf	(pid_calc@pp),w
	movwf	fsr1l
	movf	(pid_calc@pp+1),w
	movwf	fsr1h
	addfsr	fsr1,0Ch
	moviw	[0]fsr1
	movwf	(___flmul@f2)
	moviw	[1]fsr1
	movwf	(___flmul@f2+1)
	moviw	[2]fsr1
	movwf	(___flmul@f2+2)
	moviw	[3]fsr1
	movwf	(___flmul@f2+3)
	fcall	___flmul
	movf	(3+(?___flmul)),w
	movwf	(___fladd@f1+3)
	movf	(2+(?___flmul)),w
	movwf	(___fladd@f1+2)
	movf	(1+(?___flmul)),w
	movwf	(___fladd@f1+1)
	movf	(0+(?___flmul)),w
	movwf	(___fladd@f1)

	movlb 1	; select bank1
	movf	(_pid_calc$2855+3)^080h,w
	movlb 0	; select bank0
	movwf	(___fladd@f2+3)
	movlb 1	; select bank1
	movf	(_pid_calc$2855+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fladd@f2+2)
	movlb 1	; select bank1
	movf	(_pid_calc$2855+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fladd@f2+1)
	movlb 1	; select bank1
	movf	(_pid_calc$2855)^080h,w
	movlb 0	; select bank0
	movwf	(___fladd@f2)

	fcall	___fladd
	movf	(3+(?___fladd)),w
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var+3)^080h
	movlb 0	; select bank0
	movf	(2+(?___fladd)),w
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var+2)^080h
	movlb 0	; select bank0
	movf	(1+(?___fladd)),w
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var+1)^080h
	movlb 0	; select bank0
	movf	(0+(?___fladd)),w
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var)^080h

	line	105
	
l18710:	
;PID.c: 105: if((Error>=3 && Error<=5)||(Error<=-3 && Error>=-5))
	movf	(pid_calc@Error+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlw	0x40
	movwf	(___flge@ff2+3)
	movlw	0x40
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12271
	goto	u12270
u12271:
	goto	l18714
u12270:
	
l18712:	
	movlw	0x40
	movwf	(___flge@ff1+3)
	movlw	0xa0
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(pid_calc@Error+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u12281
	goto	u12280
u12281:
	goto	l18718
u12280:
	
l18714:	
	movlw	0xc0
	movwf	(___flge@ff1+3)
	movlw	0x40
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(pid_calc@Error+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12291
	goto	u12290
u12291:
	goto	l18750
u12290:
	
l18716:	
	movlb 1	; select bank1
	movf	(pid_calc@Error+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlw	0xc0
	movwf	(___flge@ff2+3)
	movlw	0xa0
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12301
	goto	u12300
u12301:
	goto	l18750
u12300:
	line	107
	
l18718:	
;PID.c: 106: {
;PID.c: 107: if(light_mode==0x00)
	movlb 1	; select bank1
	movf	(_light_mode)^080h,f
	skipz
	goto	u12311
	goto	u12310
u12311:
	goto	l18742
u12310:
	line	109
	
l18720:	
;PID.c: 108: {
;PID.c: 109: if(ho_cnt==0 && mi_cnt==0 && se_cnt<30)
	movf	((_ho_cnt+1)),w
	iorwf	((_ho_cnt)),w
	skipz
	goto	u12321
	goto	u12320
u12321:
	goto	l18734
u12320:
	
l18722:	
	movlb 2	; select bank2
	movf	((_mi_cnt+1)^0100h),w
	iorwf	((_mi_cnt)^0100h),w
	skipz
	goto	u12331
	goto	u12330
u12331:
	goto	l18734
u12330:
	
l18724:	
	movlw	high(01Eh)
	movlb 3	; select bank3
	subwf	(_se_cnt+1)^0180h,w
	movlw	low(01Eh)
	skipnz
	subwf	(_se_cnt)^0180h,w
	skipnc
	goto	u12341
	goto	u12340
u12341:
	goto	l18734
u12340:
	line	111
	
l18726:	
;PID.c: 110: {
;PID.c: 111: if(PWM_var>=2)PWM_var = 2;
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlw	0x40
	movwf	(___flge@ff2+3)
	movlw	0x0
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12351
	goto	u12350
u12351:
	goto	l18730
u12350:
	
l18728:	
	movlw	0x40
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var+3)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+2)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var)^080h

	goto	l907
	line	112
	
l18730:	
;PID.c: 112: else if(PWM_var <= -2)PWM_var = -2;
	movlw	0xc0
	movwf	(___flge@ff1+3)
	movlw	0x0
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12361
	goto	u12360
u12361:
	goto	l899
u12360:
	
l18732:	
	movlw	0xc0
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var+3)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+2)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var)^080h

	goto	l907
	line	116
	
l18734:	
;PID.c: 114: else
;PID.c: 115: {
;PID.c: 116: if(PWM_var>=0.1)PWM_var = 0.1;
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlw	0x3d
	movwf	(___flge@ff2+3)
	movlw	0xcc
	movwf	(___flge@ff2+2)
	movlw	0xcc
	movwf	(___flge@ff2+1)
	movlw	0xcd
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12371
	goto	u12370
u12371:
	goto	l18738
u12370:
	
l18736:	
	movlw	0x3d
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var+3)^080h
	movlw	0xcc
	movwf	(pid_calc@PWM_var+2)^080h
	movlw	0xcc
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0xcd
	movwf	(pid_calc@PWM_var)^080h

	goto	l907
	line	117
	
l18738:	
;PID.c: 117: else if(PWM_var <= -0.1)PWM_var = -0.1;
	movlw	0xbd
	movwf	(___flge@ff1+3)
	movlw	0xcc
	movwf	(___flge@ff1+2)
	movlw	0xcc
	movwf	(___flge@ff1+1)
	movlw	0xcd
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12381
	goto	u12380
u12381:
	goto	l899
u12380:
	
l18740:	
	movlw	0xbd
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var+3)^080h
	movlw	0xcc
	movwf	(pid_calc@PWM_var+2)^080h
	movlw	0xcc
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0xcd
	movwf	(pid_calc@PWM_var)^080h

	goto	l907
	line	118
	
l899:	
	line	119
;PID.c: 118: }
;PID.c: 119: }
	goto	l907
	line	122
	
l18742:	
;PID.c: 120: else
;PID.c: 121: {
;PID.c: 122: if(PWM_var>=2)PWM_var = 2;
	movf	(pid_calc@PWM_var+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlw	0x40
	movwf	(___flge@ff2+3)
	movlw	0x0
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12391
	goto	u12390
u12391:
	goto	l18746
u12390:
	
l18744:	
	movlw	0x40
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var+3)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+2)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var)^080h

	goto	l907
	line	123
	
l18746:	
;PID.c: 123: else if(PWM_var <= -2)PWM_var = -2;
	movlw	0xc0
	movwf	(___flge@ff1+3)
	movlw	0x0
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12401
	goto	u12400
u12401:
	goto	l907
u12400:
	
l18748:	
	movlw	0xc0
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var+3)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+2)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var)^080h

	goto	l907
	line	127
	
l18750:	
;PID.c: 127: else if((Error>5)||(Error<-5))
	movlw	0x40
	movwf	(___flge@ff1+3)
	movlw	0xa0
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(pid_calc@Error+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12411
	goto	u12410
u12411:
	goto	l18754
u12410:
	
l18752:	
	movlb 1	; select bank1
	movf	(pid_calc@Error+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 1	; select bank1
	movf	(pid_calc@Error+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@Error+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@Error)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlw	0xc0
	movwf	(___flge@ff2+3)
	movlw	0xa0
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfsc	status,0
	goto	u12421
	goto	u12420
u12421:
	goto	l18786
u12420:
	line	129
	
l18754:	
;PID.c: 128: {
;PID.c: 129: if(light_mode==0x00)
	movlb 1	; select bank1
	movf	(_light_mode)^080h,f
	skipz
	goto	u12431
	goto	u12430
u12431:
	goto	l18778
u12430:
	line	131
	
l18756:	
;PID.c: 130: {
;PID.c: 131: if(ho_cnt==0 && mi_cnt==0 && se_cnt<30)
	movf	((_ho_cnt+1)),w
	iorwf	((_ho_cnt)),w
	skipz
	goto	u12441
	goto	u12440
u12441:
	goto	l18770
u12440:
	
l18758:	
	movlb 2	; select bank2
	movf	((_mi_cnt+1)^0100h),w
	iorwf	((_mi_cnt)^0100h),w
	skipz
	goto	u12451
	goto	u12450
u12451:
	goto	l18770
u12450:
	
l18760:	
	movlw	high(01Eh)
	movlb 3	; select bank3
	subwf	(_se_cnt+1)^0180h,w
	movlw	low(01Eh)
	skipnz
	subwf	(_se_cnt)^0180h,w
	skipnc
	goto	u12461
	goto	u12460
u12461:
	goto	l18770
u12460:
	line	133
	
l18762:	
;PID.c: 132: {
;PID.c: 133: if(PWM_var>=5)PWM_var = 5;
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlw	0x40
	movwf	(___flge@ff2+3)
	movlw	0xa0
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12471
	goto	u12470
u12471:
	goto	l18766
u12470:
	
l18764:	
	movlw	0x40
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var+3)^080h
	movlw	0xa0
	movwf	(pid_calc@PWM_var+2)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var)^080h

	goto	l907
	line	134
	
l18766:	
;PID.c: 134: else if(PWM_var <= -5)PWM_var = -5;
	movlw	0xc0
	movwf	(___flge@ff1+3)
	movlw	0xa0
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12481
	goto	u12480
u12481:
	goto	l899
u12480:
	
l18768:	
	movlw	0xc0
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var+3)^080h
	movlw	0xa0
	movwf	(pid_calc@PWM_var+2)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var)^080h

	goto	l907
	line	138
	
l18770:	
;PID.c: 136: else
;PID.c: 137: {
;PID.c: 138: if(PWM_var>=0.1)PWM_var = 0.1;
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlw	0x3d
	movwf	(___flge@ff2+3)
	movlw	0xcc
	movwf	(___flge@ff2+2)
	movlw	0xcc
	movwf	(___flge@ff2+1)
	movlw	0xcd
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12491
	goto	u12490
u12491:
	goto	l18774
u12490:
	
l18772:	
	movlw	0x3d
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var+3)^080h
	movlw	0xcc
	movwf	(pid_calc@PWM_var+2)^080h
	movlw	0xcc
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0xcd
	movwf	(pid_calc@PWM_var)^080h

	goto	l907
	line	139
	
l18774:	
;PID.c: 139: else if(PWM_var <= -0.1)PWM_var = -0.1;
	movlw	0xbd
	movwf	(___flge@ff1+3)
	movlw	0xcc
	movwf	(___flge@ff1+2)
	movlw	0xcc
	movwf	(___flge@ff1+1)
	movlw	0xcd
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12501
	goto	u12500
u12501:
	goto	l899
u12500:
	
l18776:	
	movlw	0xbd
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var+3)^080h
	movlw	0xcc
	movwf	(pid_calc@PWM_var+2)^080h
	movlw	0xcc
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0xcd
	movwf	(pid_calc@PWM_var)^080h

	goto	l907
	line	144
	
l18778:	
;PID.c: 142: else
;PID.c: 143: {
;PID.c: 144: if(PWM_var>=5)PWM_var = 5;
	movf	(pid_calc@PWM_var+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlw	0x40
	movwf	(___flge@ff2+3)
	movlw	0xa0
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12511
	goto	u12510
u12511:
	goto	l18782
u12510:
	
l18780:	
	movlw	0x40
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var+3)^080h
	movlw	0xa0
	movwf	(pid_calc@PWM_var+2)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var)^080h

	goto	l907
	line	145
	
l18782:	
;PID.c: 145: else if(PWM_var <= -5)PWM_var = -5;
	movlw	0xc0
	movwf	(___flge@ff1+3)
	movlw	0xa0
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12521
	goto	u12520
u12521:
	goto	l899
u12520:
	
l18784:	
	movlw	0xc0
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var+3)^080h
	movlw	0xa0
	movwf	(pid_calc@PWM_var+2)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var)^080h

	goto	l907
	line	150
	
l18786:	
;PID.c: 148: else
;PID.c: 149: {
;PID.c: 150: if(have_person1_flag)
	movlb 1	; select bank1
	movf	(_have_person1_flag)^080h,w
	skipz
	goto	u12530
	goto	l18806
u12530:
	line	152
	
l18788:	
;PID.c: 151: {
;PID.c: 152: if(light_mode==0x00)
	movf	(_light_mode)^080h,f
	skipz
	goto	u12541
	goto	u12540
u12541:
	goto	l18798
u12540:
	line	154
	
l18790:	
;PID.c: 153: {
;PID.c: 154: if(PWM_var>=0.1)PWM_var = 0.1;
	movf	(pid_calc@PWM_var+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlw	0x3d
	movwf	(___flge@ff2+3)
	movlw	0xcc
	movwf	(___flge@ff2+2)
	movlw	0xcc
	movwf	(___flge@ff2+1)
	movlw	0xcd
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12551
	goto	u12550
u12551:
	goto	l18794
u12550:
	
l18792:	
	movlw	0x3d
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var+3)^080h
	movlw	0xcc
	movwf	(pid_calc@PWM_var+2)^080h
	movlw	0xcc
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0xcd
	movwf	(pid_calc@PWM_var)^080h

	goto	l907
	line	155
	
l18794:	
;PID.c: 155: else if(PWM_var <= -0.1)PWM_var = -0.1;
	movlw	0xbd
	movwf	(___flge@ff1+3)
	movlw	0xcc
	movwf	(___flge@ff1+2)
	movlw	0xcc
	movwf	(___flge@ff1+1)
	movlw	0xcd
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12561
	goto	u12560
u12561:
	goto	l899
u12560:
	
l18796:	
	movlw	0xbd
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var+3)^080h
	movlw	0xcc
	movwf	(pid_calc@PWM_var+2)^080h
	movlw	0xcc
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0xcd
	movwf	(pid_calc@PWM_var)^080h

	goto	l907
	line	159
	
l18798:	
;PID.c: 157: else
;PID.c: 158: {
;PID.c: 159: if(PWM_var>=0.5)PWM_var = 0.5;
	movf	(pid_calc@PWM_var+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlw	0x3f
	movwf	(___flge@ff2+3)
	movlw	0x0
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12571
	goto	u12570
u12571:
	goto	l18802
u12570:
	
l18800:	
	movlw	0x3f
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var+3)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+2)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var)^080h

	goto	l907
	line	160
	
l18802:	
;PID.c: 160: else if(PWM_var <= -0.5)PWM_var = -0.5;
	movlw	0xbf
	movwf	(___flge@ff1+3)
	movlw	0x0
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12581
	goto	u12580
u12581:
	goto	l899
u12580:
	
l18804:	
	movlw	0xbf
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var+3)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+2)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var)^080h

	goto	l907
	line	166
	
l18806:	
;PID.c: 164: else
;PID.c: 165: {
;PID.c: 166: if(light_mode==0x00)
	movf	(_light_mode)^080h,f
	skipz
	goto	u12591
	goto	u12590
u12591:
	goto	l18816
u12590:
	line	168
	
l18808:	
;PID.c: 167: {
;PID.c: 168: if(PWM_var>=0.1)PWM_var = 0.1;
	movf	(pid_calc@PWM_var+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlw	0x3d
	movwf	(___flge@ff2+3)
	movlw	0xcc
	movwf	(___flge@ff2+2)
	movlw	0xcc
	movwf	(___flge@ff2+1)
	movlw	0xcd
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12601
	goto	u12600
u12601:
	goto	l18812
u12600:
	
l18810:	
	movlw	0x3d
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var+3)^080h
	movlw	0xcc
	movwf	(pid_calc@PWM_var+2)^080h
	movlw	0xcc
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0xcd
	movwf	(pid_calc@PWM_var)^080h

	goto	l907
	line	169
	
l18812:	
;PID.c: 169: else if(PWM_var <= -0.1)PWM_var = -0.1;
	movlw	0xbd
	movwf	(___flge@ff1+3)
	movlw	0xcc
	movwf	(___flge@ff1+2)
	movlw	0xcc
	movwf	(___flge@ff1+1)
	movlw	0xcd
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12611
	goto	u12610
u12611:
	goto	l907
u12610:
	
l18814:	
	movlw	0xbd
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var+3)^080h
	movlw	0xcc
	movwf	(pid_calc@PWM_var+2)^080h
	movlw	0xcc
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0xcd
	movwf	(pid_calc@PWM_var)^080h

	goto	l907
	line	173
	
l18816:	
;PID.c: 171: else
;PID.c: 172: {
;PID.c: 173: if(PWM_var>=0.5)PWM_var = 0.5;
	movf	(pid_calc@PWM_var+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+3)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff1)

	movlw	0x3f
	movwf	(___flge@ff2+3)
	movlw	0x0
	movwf	(___flge@ff2+2)
	movlw	0x0
	movwf	(___flge@ff2+1)
	movlw	0x0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12621
	goto	u12620
u12621:
	goto	l18820
u12620:
	
l18818:	
	movlw	0x3f
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var+3)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+2)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var)^080h

	goto	l907
	line	174
	
l18820:	
;PID.c: 174: else if(PWM_var <= -0.5)PWM_var = -0.5;
	movlw	0xbf
	movwf	(___flge@ff1+3)
	movlw	0x0
	movwf	(___flge@ff1+2)
	movlw	0x0
	movwf	(___flge@ff1+1)
	movlw	0x0
	movwf	(___flge@ff1)

	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+3)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+3)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(___flge@ff2)

	fcall	___flge
	btfss	status,0
	goto	u12631
	goto	u12630
u12631:
	goto	l907
u12630:
	
l18822:	
	movlw	0xbf
	movlb 1	; select bank1
	movwf	(pid_calc@PWM_var+3)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+2)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var+1)^080h
	movlw	0x0
	movwf	(pid_calc@PWM_var)^080h

	line	178
	
l907:	
	line	181
;PID.c: 175: }
;PID.c: 176: }
;PID.c: 178: }
;PID.c: 181: return (PWM_var );
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+3)^080h,w
	movlb 0	; select bank0
	movwf	(?_pid_calc+3)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+2)^080h,w
	movlb 0	; select bank0
	movwf	(?_pid_calc+2)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var+1)^080h,w
	movlb 0	; select bank0
	movwf	(?_pid_calc+1)
	movlb 1	; select bank1
	movf	(pid_calc@PWM_var)^080h,w
	movlb 0	; select bank0
	movwf	(?_pid_calc)

	line	182
	
l943:	
	return
	opt stack 0
GLOBAL	__end_of_pid_calc
	__end_of_pid_calc:
	signat	_pid_calc,8316
	global	___flsub

;; *************** function ___flsub *****************
;; Defined at:
;;		line 18 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\flsub.c"
;; Parameters:    Size  Location     Type
;;  f2              4   54[BANK0 ] float 
;;  f1              4   58[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   54[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___fladd
;; This function is called by:
;;		_pid_calc
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\flsub.c"
	line	18
global __ptext17
__ptext17:	;psect for function ___flsub
psect	text17
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\flsub.c"
	line	18
	global	__size_of___flsub
	__size_of___flsub	equ	__end_of___flsub-___flsub
	
___flsub:	
;incstack = 0
	opt	stack 9
; Regs used in ___flsub: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l19140:	
	movlw	080h
	xorwf	(___flsub@f2+3),f
	line	26
	
l19142:	
	movf	(___flsub@f2+3),w
	movwf	(___fladd@f1+3)
	movf	(___flsub@f2+2),w
	movwf	(___fladd@f1+2)
	movf	(___flsub@f2+1),w
	movwf	(___fladd@f1+1)
	movf	(___flsub@f2),w
	movwf	(___fladd@f1)

	movf	(___flsub@f1+3),w
	movwf	(___fladd@f2+3)
	movf	(___flsub@f1+2),w
	movwf	(___fladd@f2+2)
	movf	(___flsub@f1+1),w
	movwf	(___fladd@f2+1)
	movf	(___flsub@f1),w
	movwf	(___fladd@f2)

	fcall	___fladd
	movf	(3+(?___fladd)),w
	movwf	(?___flsub+3)
	movf	(2+(?___fladd)),w
	movwf	(?___flsub+2)
	movf	(1+(?___fladd)),w
	movwf	(?___flsub+1)
	movf	(0+(?___fladd)),w
	movwf	(?___flsub)

	line	30
	
l2214:	
	return
	opt stack 0
GLOBAL	__end_of___flsub
	__end_of___flsub:
	signat	___flsub,8316
	global	___flge

;; *************** function ___flge *****************
;; Defined at:
;;		line 4 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\flge.c"
;; Parameters:    Size  Location     Type
;;  ff1             4   58[BANK0 ] float 
;;  ff2             4   62[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      12       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_auto_system
;;		_pid_calc
;;		_handle_ad_loop
;;		_Mppt_Charge
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\flge.c"
	line	4
global __ptext18
__ptext18:	;psect for function ___flge
psect	text18
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\flge.c"
	line	4
	global	__size_of___flge
	__size_of___flge	equ	__end_of___flge-___flge
	
___flge:	
;incstack = 0
	opt	stack 11
; Regs used in ___flge: [wreg+status,2+status,0]
	line	6
	
l19074:	
	btfss	(___flge@ff1+3),(31)&7
	goto	u13121
	goto	u13120
u13121:
	goto	l19078
u13120:
	line	7
	
l19076:	
	movlw	0
	movwf	((??___flge+0)+0)
	movlw	0
	movwf	((??___flge+0)+0+1)
	movlw	0
	movwf	((??___flge+0)+0+2)
	movlw	080h
	movwf	((??___flge+0)+0+3)
	movf	(___flge@ff1),w
	subwf	(??___flge+0)+0,f
	movf	(___flge@ff1+1),w
	subwfb	(??___flge+0)+1,f
	movf	(___flge@ff1+2),w
	subwfb	(??___flge+0)+2,f
	movf	(___flge@ff1+3),w
	subwfb	(??___flge+0)+3,f
	movf	3+(??___flge+0)+0,w
	movwf	(___flge@ff1+3)
	movf	2+(??___flge+0)+0,w
	movwf	(___flge@ff1+2)
	movf	1+(??___flge+0)+0,w
	movwf	(___flge@ff1+1)
	movf	0+(??___flge+0)+0,w
	movwf	(___flge@ff1)

	line	8
	
l19078:	
	btfss	(___flge@ff2+3),(31)&7
	goto	u13131
	goto	u13130
u13131:
	goto	l2191
u13130:
	line	9
	
l19080:	
	movlw	0
	movwf	((??___flge+0)+0)
	movlw	0
	movwf	((??___flge+0)+0+1)
	movlw	0
	movwf	((??___flge+0)+0+2)
	movlw	080h
	movwf	((??___flge+0)+0+3)
	movf	(___flge@ff2),w
	subwf	(??___flge+0)+0,f
	movf	(___flge@ff2+1),w
	subwfb	(??___flge+0)+1,f
	movf	(___flge@ff2+2),w
	subwfb	(??___flge+0)+2,f
	movf	(___flge@ff2+3),w
	subwfb	(??___flge+0)+3,f
	movf	3+(??___flge+0)+0,w
	movwf	(___flge@ff2+3)
	movf	2+(??___flge+0)+0,w
	movwf	(___flge@ff2+2)
	movf	1+(??___flge+0)+0,w
	movwf	(___flge@ff2+1)
	movf	0+(??___flge+0)+0,w
	movwf	(___flge@ff2)

	
l2191:	
	line	10
	movlw	080h
	xorwf	(___flge@ff1+3),f
	line	11
	movlw	080h
	xorwf	(___flge@ff2+3),f
	line	12
	movf	(___flge@ff2+3),w
	subwf	(___flge@ff1+3),w
	skipz
	goto	u13145
	movf	(___flge@ff2+2),w
	subwf	(___flge@ff1+2),w
	skipz
	goto	u13145
	movf	(___flge@ff2+1),w
	subwf	(___flge@ff1+1),w
	skipz
	goto	u13145
	movf	(___flge@ff2),w
	subwf	(___flge@ff1),w
u13145:
	skipnc
	goto	u13141
	goto	u13140
u13141:
	goto	l19084
u13140:
	
l19082:	
	clrc
	
	goto	l2192
	
l19084:	
	setc
	
	line	13
	
l2192:	
	return
	opt stack 0
GLOBAL	__end_of___flge
	__end_of___flge:
	signat	___flge,8312
	global	___awtofl

;; *************** function ___awtofl *****************
;; Defined at:
;;		line 31 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awtofl.c"
;; Parameters:    Size  Location     Type
;;  c               2   13[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  f1              4    0        int 
;;  sign            1   17[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   13[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       5       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_read_param_eeprom
;;		_pid_calc
;;		_handle_ad_loop
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awtofl.c"
	line	31
global __ptext19
__ptext19:	;psect for function ___awtofl
psect	text19
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\awtofl.c"
	line	31
	global	__size_of___awtofl
	__size_of___awtofl	equ	__end_of___awtofl-___awtofl
	
___awtofl:	
;incstack = 0
	opt	stack 10
; Regs used in ___awtofl: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l18946:	
	clrf	(___awtofl@sign)
	line	37
	
l18948:	
	btfss	(___awtofl@c+1),7
	goto	u12881
	goto	u12880
u12881:
	goto	l18952
u12880:
	line	38
	
l18950:	
	comf	(___awtofl@c),f
	comf	(___awtofl@c+1),f
	incf	(___awtofl@c),f
	skipnz
	incf	(___awtofl@c+1),f
	line	39
	incf	(___awtofl@sign),f
	line	41
	
l18952:	
	movf	(___awtofl@c),w
	movwf	(___flpack@arg)
	movf	(___awtofl@c+1),w
	movwf	((___flpack@arg))+1
	clrf	2+((___flpack@arg))
	clrf	3+((___flpack@arg))
	movlw	(096h)
	movwf	(___flpack@exp)
	movf	(___awtofl@sign),w
	movwf	(___flpack@sign)
	fcall	___flpack
	movf	(3+(?___flpack)),w
	movwf	(?___awtofl+3)
	movf	(2+(?___flpack)),w
	movwf	(?___awtofl+2)
	movf	(1+(?___flpack)),w
	movwf	(?___awtofl+1)
	movf	(0+(?___flpack)),w
	movwf	(?___awtofl)

	line	42
	
l2121:	
	return
	opt stack 0
GLOBAL	__end_of___awtofl
	__end_of___awtofl:
	signat	___awtofl,4220
	global	___lwtofl

;; *************** function ___lwtofl *****************
;; Defined at:
;;		line 28 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwtofl.c"
;; Parameters:    Size  Location     Type
;;  c               2   16[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   16[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_auto_system
;;		_handle_ad_loop
;;		_Mppt_Charge
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwtofl.c"
	line	28
global __ptext20
__ptext20:	;psect for function ___lwtofl
psect	text20
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\lwtofl.c"
	line	28
	global	__size_of___lwtofl
	__size_of___lwtofl	equ	__end_of___lwtofl-___lwtofl
	
___lwtofl:	
;incstack = 0
	opt	stack 10
; Regs used in ___lwtofl: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l19234:	
	movf	(___lwtofl@c),w
	movwf	(___flpack@arg)
	movf	(___lwtofl@c+1),w
	movwf	((___flpack@arg))+1
	clrf	2+((___flpack@arg))
	clrf	3+((___flpack@arg))
	movlw	(096h)
	movwf	(___flpack@exp)
	clrf	(___flpack@sign)
	fcall	___flpack
	movf	(3+(?___flpack)),w
	movwf	(?___lwtofl+3)
	movf	(2+(?___flpack)),w
	movwf	(?___lwtofl+2)
	movf	(1+(?___flpack)),w
	movwf	(?___lwtofl+1)
	movf	(0+(?___flpack)),w
	movwf	(?___lwtofl)

	line	31
	
l2330:	
	return
	opt stack 0
GLOBAL	__end_of___lwtofl
	__end_of___lwtofl:
	signat	___lwtofl,4220
	global	___fltol

;; *************** function ___fltol *****************
;; Defined at:
;;		line 43 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\fltol.c"
;; Parameters:    Size  Location     Type
;;  f1              4   58[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  exp1            1   67[BANK0 ] unsigned char 
;;  sign1           1   66[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   58[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      10       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_handle_ad_loop
;;		_handle_task_process
;;		_Mppt_Charge
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\fltol.c"
	line	43
global __ptext21
__ptext21:	;psect for function ___fltol
psect	text21
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\fltol.c"
	line	43
	global	__size_of___fltol
	__size_of___fltol	equ	__end_of___fltol-___fltol
	
___fltol:	
;incstack = 0
	opt	stack 12
; Regs used in ___fltol: [wreg+status,2+status,0]
	line	47
	
l19146:	
	movf	(___fltol@f1),w
	movwf	(??___fltol+0)+0
	movf	(___fltol@f1+1),w
	movwf	((??___fltol+0)+0+1)
	movf	(___fltol@f1+2),w
	movwf	((??___fltol+0)+0+2)
	movf	(___fltol@f1+3),w
	movwf	((??___fltol+0)+0+3)
	clrc
	rlf	(??___fltol+0)+2,w
	rlf	(??___fltol+0)+3,w
	movwf	(___fltol@exp1)
	movf	((___fltol@exp1)),f
	skipz
	goto	u13211
	goto	u13210
u13211:
	goto	l19150
u13210:
	line	48
	
l19148:	
	clrf	(?___fltol)
	clrf	(?___fltol+1)
	clrf	(?___fltol+2)
	clrf	(?___fltol+3)
	goto	l2218
	line	49
	
l19150:	
	movf	(___fltol@f1),w
	movwf	(??___fltol+0)+0
	movf	(___fltol@f1+1),w
	movwf	((??___fltol+0)+0+1)
	movf	(___fltol@f1+2),w
	movwf	((??___fltol+0)+0+2)
	movf	(___fltol@f1+3),w
	movwf	((??___fltol+0)+0+3)
	movlw	01Fh
u13225:
	lsrf	(??___fltol+0)+3,f
	rrf	(??___fltol+0)+2,f
	rrf	(??___fltol+0)+1,f
	rrf	(??___fltol+0)+0,f
u13220:
	decfsz	wreg,f
	goto	u13225
	movf	0+(??___fltol+0)+0,w
	movwf	(___fltol@sign1)
	line	50
	
l19152:	
	bsf	(___fltol@f1)+(23/8),(23)&7
	line	51
	
l19154:	
	movlw	0FFh
	andwf	(___fltol@f1),f
	movlw	0FFh
	andwf	(___fltol@f1+1),f
	movlw	0FFh
	andwf	(___fltol@f1+2),f
	movlw	0
	andwf	(___fltol@f1+3),f
	line	52
	
l19156:	
	movlw	low(096h)
	subwf	(___fltol@exp1),f
	line	53
	
l19158:	
	btfss	(___fltol@exp1),7
	goto	u13231
	goto	u13230
u13231:
	goto	l19168
u13230:
	line	54
	
l19160:	
	movf	(___fltol@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u13241
	goto	u13240
u13241:
	goto	l19164
u13240:
	goto	l19148
	line	57
	
l19164:	
	lsrf	(___fltol@f1+3),f
	rrf	(___fltol@f1+2),f
	rrf	(___fltol@f1+1),f
	rrf	(___fltol@f1),f
	line	58
	
l19166:	
	incfsz	(___fltol@exp1),f
	goto	u13251
	goto	u13250
u13251:
	goto	l19164
u13250:
	goto	l19174
	line	60
	
l19168:	
	movlw	(020h)
	subwf	(___fltol@exp1),w
	skipc
	goto	u13261
	goto	u13260
u13261:
	goto	l2225
u13260:
	goto	l19148
	line	63
	
l19172:	
	lslf	(___fltol@f1),f
	rlf	(___fltol@f1+1),f
	rlf	(___fltol@f1+2),f
	rlf	(___fltol@f1+3),f
	line	64
	decf	(___fltol@exp1),f
	line	65
	
l2225:	
	line	62
	movf	(___fltol@exp1),f
	skipz
	goto	u13271
	goto	u13270
u13271:
	goto	l19172
u13270:
	line	67
	
l19174:	
	movf	(___fltol@sign1),w
	skipz
	goto	u13280
	goto	l2228
u13280:
	line	68
	
l19176:	
	comf	(___fltol@f1),f
	comf	(___fltol@f1+1),f
	comf	(___fltol@f1+2),f
	comf	(___fltol@f1+3),f
	incf	(___fltol@f1),f
	skipnz
	incf	(___fltol@f1+1),f
	skipnz
	incf	(___fltol@f1+2),f
	skipnz
	incf	(___fltol@f1+3),f
	
l2228:	
	line	69
	line	70
	
l2218:	
	return
	opt stack 0
GLOBAL	__end_of___fltol
	__end_of___fltol:
	signat	___fltol,4220
	global	_Enable_Buck_Pwm

;; *************** function _Enable_Buck_Pwm *****************
;; Defined at:
;;		line 123 in file "D:\MCUProject\ZH-SL-F60\src\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1F/8
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_handle_ad_loop
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-F60\src\pwm.c"
	line	123
global __ptext22
__ptext22:	;psect for function _Enable_Buck_Pwm
psect	text22
	file	"D:\MCUProject\ZH-SL-F60\src\pwm.c"
	line	123
	global	__size_of_Enable_Buck_Pwm
	__size_of_Enable_Buck_Pwm	equ	__end_of_Enable_Buck_Pwm-_Enable_Buck_Pwm
	
_Enable_Buck_Pwm:	
;incstack = 0
	opt	stack 12
; Regs used in _Enable_Buck_Pwm: []
	line	125
	
l18826:	
;pwm.c: 125: TRISCbits.TRISC2=0;
	bcf	(142)^080h,2	;volatile
	line	127
;pwm.c: 127: TMR6ON=1;
	movlb 8	; select bank8
	bsf	(8434/8)^0400h,(8434)&7	;volatile
	line	129
	
l1010:	
	return
	opt stack 0
GLOBAL	__end_of_Enable_Buck_Pwm
	__end_of_Enable_Buck_Pwm:
	signat	_Enable_Buck_Pwm,88
	global	_driver_init

;; *************** function _driver_init *****************
;; Defined at:
;;		line 214 in file "D:\MCUProject\ZH-SL-F60\src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/2
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Init_Ird
;;		_init_adc
;;		_init_interrupt
;;		_init_key
;;		_init_osc
;;		_init_port
;;		_init_pwm
;;		_init_timer1
;;		_init_uart1
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-F60\src\main.c"
	line	214
global __ptext23
__ptext23:	;psect for function _driver_init
psect	text23
	file	"D:\MCUProject\ZH-SL-F60\src\main.c"
	line	214
	global	__size_of_driver_init
	__size_of_driver_init	equ	__end_of_driver_init-_driver_init
	
_driver_init:	
;incstack = 0
	opt	stack 12
; Regs used in _driver_init: [wreg+status,2+status,0+pclath+cstack]
	line	216
	
l13244:	
;main.c: 216: init_osc();
	fcall	_init_osc
	line	218
	
l13246:	
;main.c: 218: init_port();
	fcall	_init_port
	line	220
	
l13248:	
;main.c: 220: init_key();
	fcall	_init_key
	line	222
;main.c: 222: init_timer1();
	fcall	_init_timer1
	line	224
;main.c: 224: init_uart1();
	fcall	_init_uart1
	line	226
;main.c: 226: Init_Ird();
	fcall	_Init_Ird
	line	228
;main.c: 228: init_adc();
	fcall	_init_adc
	line	230
;main.c: 230: init_pwm();
	fcall	_init_pwm
	line	232
;main.c: 232: init_interrupt();
	fcall	_init_interrupt
	line	235
	
l806:	
	return
	opt stack 0
GLOBAL	__end_of_driver_init
	__end_of_driver_init:
	signat	_driver_init,88
	global	_init_uart1

;; *************** function _init_uart1 *****************
;; Defined at:
;;		line 81 in file "D:\MCUProject\ZH-SL-F60\src\uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/1
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-F60\src\uart.c"
	line	81
global __ptext24
__ptext24:	;psect for function _init_uart1
psect	text24
	file	"D:\MCUProject\ZH-SL-F60\src\uart.c"
	line	81
	global	__size_of_init_uart1
	__size_of_init_uart1	equ	__end_of_init_uart1-_init_uart1
	
_init_uart1:	
;incstack = 0
	opt	stack 12
; Regs used in _init_uart1: [wreg+status,2]
	line	84
	
l13258:	
;uart.c: 84: SP1BRGL = 0x40;
	movlw	(040h)
	movlb 3	; select bank3
	movwf	(411)^0180h	;volatile
	line	85
;uart.c: 85: SP1BRGH = 0x03;
	movlw	(03h)
	movwf	(412)^0180h	;volatile
	line	86
;uart.c: 86: BAUDCON = 0x08;
	movlw	(08h)
	movwf	(415)^0180h	;volatile
	line	96
	
l13260:	
;uart.c: 96: (TRISCbits.TRISC6) = 0x01;
	movlb 1	; select bank1
	bsf	(142)^080h,6	;volatile
	line	97
	
l13262:	
;uart.c: 97: (TRISCbits.TRISC7) = 0x01;
	bsf	(142)^080h,7	;volatile
	line	98
	
l13264:	
;uart.c: 98: TXSTA = 0x00;
	movlb 3	; select bank3
	clrf	(414)^0180h	;volatile
	line	107
	
l13266:	
;uart.c: 107: RCSTA = 0x90;
	movlw	(090h)
	movwf	(413)^0180h	;volatile
	line	108
	
l13268:	
;uart.c: 108: RCIE = 0x01;
	movlb 1	; select bank1
	bsf	(1165/8)^080h,(1165)&7	;volatile
	line	109
	
l1817:	
	return
	opt stack 0
GLOBAL	__end_of_init_uart1
	__end_of_init_uart1:
	signat	_init_uart1,88
	global	_init_timer1

;; *************** function _init_timer1 *****************
;; Defined at:
;;		line 42 in file "D:\MCUProject\ZH-SL-F60\src\timer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 17F/1
;;		On exit  : 17F/0
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-F60\src\timer.c"
	line	42
global __ptext25
__ptext25:	;psect for function _init_timer1
psect	text25
	file	"D:\MCUProject\ZH-SL-F60\src\timer.c"
	line	42
	global	__size_of_init_timer1
	__size_of_init_timer1	equ	__end_of_init_timer1-_init_timer1
	
_init_timer1:	
;incstack = 0
	opt	stack 12
; Regs used in _init_timer1: [wreg]
	line	44
	
l13250:	
;timer.c: 44: TMR1H = 0xE0;
	movlw	(0E0h)
	movlb 0	; select bank0
	movwf	(23)	;volatile
	line	45
;timer.c: 45: TMR1L = 0xC0;
	movlw	(0C0h)
	movwf	(22)	;volatile
	line	46
;timer.c: 46: T1CON = 0x60;
	movlw	(060h)
	movwf	(24)	;volatile
	line	50
	
l13252:	
;timer.c: 50: T1GCONbits.TMR1GE=0;
	bcf	(25),7	;volatile
	line	52
	
l13254:	
;timer.c: 52: TMR1IE = 0x01;
	movlb 1	; select bank1
	bsf	(1160/8)^080h,(1160)&7	;volatile
	line	53
	
l13256:	
;timer.c: 53: TMR1ON =0;
	movlb 0	; select bank0
	bcf	(192/8),(192)&7	;volatile
	line	54
	
l1632:	
	return
	opt stack 0
GLOBAL	__end_of_init_timer1
	__end_of_init_timer1:
	signat	_init_timer1,88
	global	_init_pwm

;; *************** function _init_pwm *****************
;; Defined at:
;;		line 30 in file "D:\MCUProject\ZH-SL-F60\src\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-F60\src\pwm.c"
	line	30
global __ptext26
__ptext26:	;psect for function _init_pwm
psect	text26
	file	"D:\MCUProject\ZH-SL-F60\src\pwm.c"
	line	30
	global	__size_of_init_pwm
	__size_of_init_pwm	equ	__end_of_init_pwm-_init_pwm
	
_init_pwm:	
;incstack = 0
	opt	stack 12
; Regs used in _init_pwm: [wreg+status,2+status,0]
	line	33
	
l13270:	
;pwm.c: 33: TRISCbits.TRISC2=1;
	movlb 1	; select bank1
	bsf	(142)^080h,2	;volatile
	line	35
;pwm.c: 35: TRISBbits.TRISB2=1;
	bsf	(141)^080h,2	;volatile
	line	37
;pwm.c: 37: TRISBbits.TRISB5 =1;
	bsf	(141)^080h,5	;volatile
	line	39
;pwm.c: 39: APFCONbits.CCP3SEL=1;
	movlb 2	; select bank2
	bsf	(285)^0100h,6	;volatile
	line	45
	
l13272:	
;pwm.c: 45: PR6=0xFF;
	movlw	(0FFh)
	movlb 8	; select bank8
	movwf	(1053)^0400h	;volatile
	line	47
	
l13274:	
;pwm.c: 47: CCP1CONbits.CCP1M=0b1100;
	movlb 5	; select bank5
	movf	(659)^0280h,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(0Ch & ((1<<4)-1))<<0
	movwf	(659)^0280h	;volatile
	line	49
	
l13276:	
;pwm.c: 49: CCP1CONbits.P1M=0b10;
	movf	(659)^0280h,w	;volatile
	andlw	not (((1<<2)-1)<<6)
	iorlw	(02h & ((1<<2)-1))<<6
	movwf	(659)^0280h	;volatile
	line	51
	
l13278:	
;pwm.c: 51: CCPTMRS0bits.C1TSEL=0b10;
	movf	(670)^0280h,w	;volatile
	andlw	not (((1<<2)-1)<<0)
	iorlw	(02h & ((1<<2)-1))<<0
	movwf	(670)^0280h	;volatile
	line	53
	
l13280:	
;pwm.c: 53: CCPR1L=0x00;
	clrf	(657)^0280h	;volatile
	line	55
	
l13282:	
;pwm.c: 55: CCP1CONbits.DC1B=0b00;
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	(659)^0280h,f	;volatile
	line	57
	
l13284:	
;pwm.c: 57: TMR6IF=0;
	movlb 0	; select bank0
	bcf	(155/8),(155)&7	;volatile
	line	59
	
l13286:	
;pwm.c: 59: T6CONbits.T6OUTPS=0b0000;
	movlw	((0 & ((1<<4)-1))<<3)|not (((1<<4)-1)<<3)
	movlb 8	; select bank8
	andwf	(1054)^0400h,f	;volatile
	line	61
	
l13288:	
;pwm.c: 61: TMR6ON=0;
	bcf	(8434/8)^0400h,(8434)&7	;volatile
	line	63
	
l13290:	
;pwm.c: 63: T6CONbits.T6CKPS=0b00;
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	andwf	(1054)^0400h,f	;volatile
	line	69
	
l13292:	
;pwm.c: 69: PR4=0xFF;
	movlw	(0FFh)
	movwf	(1046)^0400h	;volatile
	line	71
	
l13294:	
;pwm.c: 71: CCP3CONbits.CCP3M=0b1100;
	movlb 6	; select bank6
	movf	(787)^0300h,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(0Ch & ((1<<4)-1))<<0
	movwf	(787)^0300h	;volatile
	line	73
	
l13296:	
;pwm.c: 73: CCP3CONbits.P3M=0b00;
	movlw	((0 & ((1<<2)-1))<<6)|not (((1<<2)-1)<<6)
	andwf	(787)^0300h,f	;volatile
	line	75
	
l13298:	
;pwm.c: 75: CCPTMRS0bits.C3TSEL=0b01;
	movlb 5	; select bank5
	movf	(670)^0280h,w	;volatile
	andlw	not (((1<<2)-1)<<4)
	iorlw	(01h & ((1<<2)-1))<<4
	movwf	(670)^0280h	;volatile
	line	77
	
l13300:	
;pwm.c: 77: CCPR3L=0x00;
	movlb 6	; select bank6
	clrf	(785)^0300h	;volatile
	line	79
;pwm.c: 79: CCP3CONbits.DC3B=0b00;
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	(787)^0300h,f	;volatile
	line	81
	
l13302:	
;pwm.c: 81: TMR4IF=0;
	movlb 0	; select bank0
	bcf	(153/8),(153)&7	;volatile
	line	83
;pwm.c: 83: T4CONbits.T4OUTPS=0b0000;
	movlw	((0 & ((1<<4)-1))<<3)|not (((1<<4)-1)<<3)
	movlb 8	; select bank8
	andwf	(1047)^0400h,f	;volatile
	line	85
	
l13304:	
;pwm.c: 85: TMR4ON=0;
	bcf	(8378/8)^0400h,(8378)&7	;volatile
	line	87
;pwm.c: 87: T4CONbits.T4CKPS=0b00;
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	andwf	(1047)^0400h,f	;volatile
	line	91
	
l13306:	
;pwm.c: 91: TRISAbits.TRISA4=0;
	movlb 1	; select bank1
	bcf	(140)^080h,4	;volatile
	line	93
	
l13308:	
;pwm.c: 93: PR2=0xCE;
	movlw	(0CEh)
	movlb 0	; select bank0
	movwf	(27)	;volatile
	line	95
	
l13310:	
;pwm.c: 95: CCP5CONbits.CCP5M=0b1100;
	movlb 6	; select bank6
	movf	(798)^0300h,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(0Ch & ((1<<4)-1))<<0
	movwf	(798)^0300h	;volatile
	line	97
	
l13312:	
;pwm.c: 97: CCP5CONbits.P5M=0b00;
	movlw	((0 & ((1<<2)-1))<<6)|not (((1<<2)-1)<<6)
	andwf	(798)^0300h,f	;volatile
	line	99
	
l13314:	
;pwm.c: 99: CCPTMRS1bits.C5TSEL=0b00;
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	movlb 5	; select bank5
	andwf	(671)^0280h,f	;volatile
	line	101
;pwm.c: 101: CCPR5L=(unsigned char)(0x114>>2);
	movlw	(045h)
	movlb 6	; select bank6
	movwf	(796)^0300h	;volatile
	line	103
	
l13316:	
;pwm.c: 103: CCP5CONbits.DC5B=(unsigned char)(0x114&0b11);
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	(798)^0300h,f	;volatile
	line	105
	
l13318:	
;pwm.c: 105: TMR2IF=0;
	movlb 0	; select bank0
	bcf	(137/8),(137)&7	;volatile
	line	107
	
l13320:	
;pwm.c: 107: T2CONbits.T2OUTPS=0b0000;
	movlw	((0 & ((1<<4)-1))<<3)|not (((1<<4)-1)<<3)
	andwf	(28),f	;volatile
	line	109
	
l13322:	
;pwm.c: 109: TMR2ON=0;
	bcf	(226/8),(226)&7	;volatile
	line	111
	
l13324:	
;pwm.c: 111: T2CONbits.T2CKPS=0b00;
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	andwf	(28),f	;volatile
	line	113
	
l1007:	
	return
	opt stack 0
GLOBAL	__end_of_init_pwm
	__end_of_init_pwm:
	signat	_init_pwm,88
	global	_init_port

;; *************** function _init_port *****************
;; Defined at:
;;		line 174 in file "D:\MCUProject\ZH-SL-F60\src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
;; Tracked objects:
;;		On entry : 17F/1
;;		On exit  : 17F/2
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-F60\src\main.c"
	line	174
global __ptext27
__ptext27:	;psect for function _init_port
psect	text27
	file	"D:\MCUProject\ZH-SL-F60\src\main.c"
	line	174
	global	__size_of_init_port
	__size_of_init_port	equ	__end_of_init_port-_init_port
	
_init_port:	
;incstack = 0
	opt	stack 12
; Regs used in _init_port: [status,2]
	line	176
	
l13210:	
;main.c: 176: ANSELA = 0x00;
	movlb 3	; select bank3
	clrf	(396)^0180h	;volatile
	line	177
;main.c: 177: ANSELB = 0x00;
	clrf	(397)^0180h	;volatile
	line	179
	
l13212:	
;main.c: 179: ANSA0 = 1;
	bsf	(3168/8)^0180h,(3168)&7	;volatile
	line	180
	
l13214:	
;main.c: 180: ANSA1 = 1;
	bsf	(3169/8)^0180h,(3169)&7	;volatile
	line	181
	
l13216:	
;main.c: 181: ANSA2 = 1;
	bsf	(3170/8)^0180h,(3170)&7	;volatile
	line	182
	
l13218:	
;main.c: 182: ANSA3 = 1;
	bsf	(3171/8)^0180h,(3171)&7	;volatile
	line	183
	
l13220:	
;main.c: 183: ANSA5 = 1;
	bsf	(3173/8)^0180h,(3173)&7	;volatile
	line	185
	
l13222:	
;main.c: 185: ANSB1 = 1;
	bsf	(3177/8)^0180h,(3177)&7	;volatile
	line	186
	
l13224:	
;main.c: 186: ANSB3 = 1;
	bsf	(3179/8)^0180h,(3179)&7	;volatile
	line	187
	
l13226:	
;main.c: 187: ANSB0 = 1;
	bsf	(3176/8)^0180h,(3176)&7	;volatile
	line	189
	
l13228:	
;main.c: 189: TRISCbits.TRISC1=1;
	movlb 1	; select bank1
	bsf	(142)^080h,1	;volatile
	line	191
	
l13230:	
;main.c: 191: TRISCbits.TRISC3=0;
	bcf	(142)^080h,3	;volatile
	line	193
	
l13232:	
;main.c: 193: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	195
	
l13234:	
;main.c: 195: TRISCbits.TRISC2=1;
	movlb 1	; select bank1
	bsf	(142)^080h,2	;volatile
	line	197
	
l13236:	
;main.c: 197: TRISBbits.TRISB2=1;
	bsf	(141)^080h,2	;volatile
	line	199
	
l13238:	
;main.c: 199: TRISBbits.TRISB5 =1;
	bsf	(141)^080h,5	;volatile
	line	201
	
l13240:	
;main.c: 201: TRISCbits.TRISC0 = 0;
	bcf	(142)^080h,0	;volatile
	line	202
	
l13242:	
;main.c: 202: (LATCbits.LATC0 = 0x01);
	movlb 2	; select bank2
	bsf	(270)^0100h,0	;volatile
	line	203
	
l803:	
	return
	opt stack 0
GLOBAL	__end_of_init_port
	__end_of_init_port:
	signat	_init_port,88
	global	_init_osc

;; *************** function _init_osc *****************
;; Defined at:
;;		line 157 in file "D:\MCUProject\ZH-SL-F60\src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/1
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	line	157
global __ptext28
__ptext28:	;psect for function _init_osc
psect	text28
	file	"D:\MCUProject\ZH-SL-F60\src\main.c"
	line	157
	global	__size_of_init_osc
	__size_of_init_osc	equ	__end_of_init_osc-_init_osc
	
_init_osc:	
;incstack = 0
	opt	stack 12
; Regs used in _init_osc: [wreg+status,2+status,0]
	line	159
	
l13206:	
;main.c: 159: OSCCON = 0x70;
	movlw	(070h)
	movlb 1	; select bank1
	movwf	(153)^080h	;volatile
	line	160
	
l13208:	
;main.c: 160: WDTCONbits.WDTPS=0b01110;
	movf	(151)^080h,w	;volatile
	andlw	not (((1<<5)-1)<<1)
	iorlw	(0Eh & ((1<<5)-1))<<1
	movwf	(151)^080h	;volatile
	line	161
	
l800:	
	return
	opt stack 0
GLOBAL	__end_of_init_osc
	__end_of_init_osc:
	signat	_init_osc,88
	global	_init_key

;; *************** function _init_key *****************
;; Defined at:
;;		line 46 in file "D:\MCUProject\ZH-SL-F60\src\key.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 17F/2
;;		On exit  : 17F/1
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-F60\src\key.c"
	line	46
global __ptext29
__ptext29:	;psect for function _init_key
psect	text29
	file	"D:\MCUProject\ZH-SL-F60\src\key.c"
	line	46
	global	__size_of_init_key
	__size_of_init_key	equ	__end_of_init_key-_init_key
	
_init_key:	
;incstack = 0
	opt	stack 12
; Regs used in _init_key: []
	line	48
	
l13204:	
;key.c: 48: (TRISBbits.TRISB4) = 1;
	movlb 1	; select bank1
	bsf	(141)^080h,4	;volatile
	line	49
;key.c: 49: (TRISCbits.TRISC6) = 1;
	bsf	(142)^080h,6	;volatile
	line	50
;key.c: 50: (TRISCbits.TRISC5) = 1;
	bsf	(142)^080h,5	;volatile
	line	51
;key.c: 51: (TRISCbits.TRISC4) = 1;
	bsf	(142)^080h,4	;volatile
	line	54
	
l638:	
	return
	opt stack 0
GLOBAL	__end_of_init_key
	__end_of_init_key:
	signat	_init_key,88
	global	_init_interrupt

;; *************** function _init_interrupt *****************
;; Defined at:
;;		line 519 in file "D:\MCUProject\ZH-SL-F60\src\interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/2
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-F60\src\interrupt.c"
	line	519
global __ptext30
__ptext30:	;psect for function _init_interrupt
psect	text30
	file	"D:\MCUProject\ZH-SL-F60\src\interrupt.c"
	line	519
	global	__size_of_init_interrupt
	__size_of_init_interrupt	equ	__end_of_init_interrupt-_init_interrupt
	
_init_interrupt:	
;incstack = 0
	opt	stack 12
; Regs used in _init_interrupt: [wreg+status,2+status,0]
	line	524
	
l12686:	
;interrupt.c: 524: CM1CON0bits.C1POL=0;
	movlb 2	; select bank2
	bcf	(273)^0100h,4	;volatile
	line	526
;interrupt.c: 526: CM1CON0bits.C1OE=0;
	bcf	(273)^0100h,5	;volatile
	line	528
;interrupt.c: 528: CM1CON0bits.C1SP=1;
	bsf	(273)^0100h,2	;volatile
	line	530
;interrupt.c: 530: CM1CON0bits.C1HYS=1;
	bsf	(273)^0100h,1	;volatile
	line	532
;interrupt.c: 532: CM1CON0bits.C1SYNC=0;
	bcf	(273)^0100h,0	;volatile
	line	534
;interrupt.c: 534: CM1CON1bits.C1INTN=1;
	bsf	(274)^0100h,6	;volatile
	line	536
	
l12688:	
;interrupt.c: 536: CM1CON1bits.C1PCH=0b00;
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	(274)^0100h,f	;volatile
	line	538
;interrupt.c: 538: CM1CON1bits.C1NCH=0b00;
	movlw	((0 & ((1<<2)-1))<<0)|not (((1<<2)-1)<<0)
	andwf	(274)^0100h,f	;volatile
	line	540
	
l12690:	
;interrupt.c: 540: PIE2bits.C1IE=1;
	movlb 1	; select bank1
	bsf	(146)^080h,5	;volatile
	line	542
	
l12692:	
;interrupt.c: 542: PIR2bits.C1IF=0;
	movlb 0	; select bank0
	bcf	(18),5	;volatile
	line	544
	
l12694:	
;interrupt.c: 544: CM1CON0bits.C1ON=1;
	movlb 2	; select bank2
	bsf	(273)^0100h,7	;volatile
	line	546
	
l12696:	
;interrupt.c: 546: PEIE = 0x01;
	bsf	(94/8),(94)&7	;volatile
	line	547
	
l12698:	
;interrupt.c: 547: GIE = 0x01;
	bsf	(95/8),(95)&7	;volatile
	line	548
	
l295:	
	return
	opt stack 0
GLOBAL	__end_of_init_interrupt
	__end_of_init_interrupt:
	signat	_init_interrupt,88
	global	_init_adc

;; *************** function _init_adc *****************
;; Defined at:
;;		line 37 in file "D:\MCUProject\ZH-SL-F60\src\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 17F/0
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-F60\src\adc.c"
	line	37
global __ptext31
__ptext31:	;psect for function _init_adc
psect	text31
	file	"D:\MCUProject\ZH-SL-F60\src\adc.c"
	line	37
	global	__size_of_init_adc
	__size_of_init_adc	equ	__end_of_init_adc-_init_adc
	
_init_adc:	
;incstack = 0
	opt	stack 12
; Regs used in _init_adc: [wreg+status,2+status,0]
	line	40
	
l12640:	
;adc.c: 40: TRISAbits.TRISA0 = 1;
	movlb 1	; select bank1
	bsf	(140)^080h,0	;volatile
	line	42
;adc.c: 42: TRISAbits.TRISA1 = 1;
	bsf	(140)^080h,1	;volatile
	line	44
;adc.c: 44: TRISAbits.TRISA2 = 1;
	bsf	(140)^080h,2	;volatile
	line	46
;adc.c: 46: TRISAbits.TRISA3 = 1;
	bsf	(140)^080h,3	;volatile
	line	48
;adc.c: 48: TRISAbits.TRISA5 = 1;
	bsf	(140)^080h,5	;volatile
	line	50
;adc.c: 50: TRISBbits.TRISB3 = 1;
	bsf	(141)^080h,3	;volatile
	line	52
;adc.c: 52: TRISBbits.TRISB1 = 1;
	bsf	(141)^080h,1	;volatile
	line	54
;adc.c: 54: TRISBbits.TRISB0 = 1;
	bsf	(141)^080h,0	;volatile
	line	58
;adc.c: 58: ADCON1bits.ADFM =0b1;
	bsf	(158)^080h,7	;volatile
	line	60
	
l12642:	
;adc.c: 60: ADCON1bits.ADCS =0b110;
	movf	(158)^080h,w	;volatile
	andlw	not (((1<<3)-1)<<4)
	iorlw	(06h & ((1<<3)-1))<<4
	movwf	(158)^080h	;volatile
	line	62
	
l12644:	
;adc.c: 62: ADCON1bits.ADNREF =0b0;
	bcf	(158)^080h,2	;volatile
	line	64
;adc.c: 64: ADCON1bits.ADPREF =0b11;
	movlw	(03h & ((1<<2)-1))<<0
	iorwf	(158)^080h,f	;volatile
	line	66
;adc.c: 66: FVRCONbits.ADFVR =0b01;
	movlb 2	; select bank2
	movf	(279)^0100h,w	;volatile
	andlw	not (((1<<2)-1)<<0)
	iorlw	(01h & ((1<<2)-1))<<0
	movwf	(279)^0100h	;volatile
	line	68
	
l12646:	
;adc.c: 68: FVRCONbits.FVREN =0b1;
	bsf	(279)^0100h,7	;volatile
	line	70
	
l12648:	
;adc.c: 70: FVRCONbits.TSEN =0b1;
	bsf	(279)^0100h,5	;volatile
	line	72
	
l12650:	
;adc.c: 72: FVRCONbits.TSRNG=0b1;
	bsf	(279)^0100h,4	;volatile
	line	74
;adc.c: 74: ADCON0bits.CHS =0b11101;
	movlb 1	; select bank1
	movf	(157)^080h,w	;volatile
	andlw	not (((1<<5)-1)<<2)
	iorlw	(01Dh & ((1<<5)-1))<<2
	movwf	(157)^080h	;volatile
	line	76
	
l12652:	
;adc.c: 76: ADCON0bits.ADON =0b0;
	bcf	(157)^080h,0	;volatile
	line	78
	
l12654:	
;adc.c: 78: PIE1bits.ADIE=0;
	bcf	(145)^080h,6	;volatile
	line	80
	
l12656:	
;adc.c: 80: PIR1bits.ADIF=0;
	movlb 0	; select bank0
	bcf	(17),6	;volatile
	line	84
	
l33:	
	return
	opt stack 0
GLOBAL	__end_of_init_adc
	__end_of_init_adc:
	signat	_init_adc,88
	global	_Init_Ird

;; *************** function _Init_Ird *****************
;; Defined at:
;;		line 532 in file "D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/1
;;		On exit  : 17F/0
;;		Unchanged: 160/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_driver_init
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	532
global __ptext32
__ptext32:	;psect for function _Init_Ird
psect	text32
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	532
	global	__size_of_Init_Ird
	__size_of_Init_Ird	equ	__end_of_Init_Ird-_Init_Ird
	
_Init_Ird:	
;incstack = 0
	opt	stack 12
; Regs used in _Init_Ird: [wreg+status,2+status,0]
	line	534
	
l12936:	
;ird_remote.c: 534: TRISBbits.TRISB7 = 1;
	bsf	(141)^080h,7	;volatile
	line	536
;ird_remote.c: 536: IOCBNbits.IOCBN7 = 1;
	movlb 7	; select bank7
	bsf	(917)^0380h,7	;volatile
	line	538
;ird_remote.c: 538: IOCBFbits.IOCBF7 = 0;
	bcf	(918)^0380h,7	;volatile
	line	540
;ird_remote.c: 540: TRISBbits.TRISB4 = 1;
	movlb 1	; select bank1
	bsf	(141)^080h,4	;volatile
	line	542
;ird_remote.c: 542: IOCBNbits.IOCBN4 = 1;
	movlb 7	; select bank7
	bsf	(917)^0380h,4	;volatile
	line	544
;ird_remote.c: 544: IOCBFbits.IOCBF4 = 0;
	bcf	(918)^0380h,4	;volatile
	line	546
;ird_remote.c: 546: IOCIF = 0;
	bcf	(88/8),(88)&7	;volatile
	line	548
;ird_remote.c: 548: IOCIE = 1;
	bsf	(91/8),(91)&7	;volatile
	line	551
;ird_remote.c: 551: TMR0CS = 0;
	movlb 1	; select bank1
	bcf	(1197/8)^080h,(1197)&7	;volatile
	line	553
;ird_remote.c: 553: PSA = 0;
	bcf	(1195/8)^080h,(1195)&7	;volatile
	line	555
	
l12938:	
;ird_remote.c: 555: OPTION_REGbits.PS = 0b111;
	movlw	(07h & ((1<<3)-1))<<0
	iorwf	(149)^080h,f	;volatile
	line	557
	
l12940:	
;ird_remote.c: 557: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	559
	
l12942:	
;ird_remote.c: 559: TMR0 = 0;
	movlb 0	; select bank0
	clrf	(21)	;volatile
	line	561
	
l12944:	
;ird_remote.c: 561: TMR0IE = 0;
	bcf	(93/8),(93)&7	;volatile
	line	563
	
l526:	
	return
	opt stack 0
GLOBAL	__end_of_Init_Ird
	__end_of_Init_Ird:
	signat	_Init_Ird,88
	global	_application_init

;; *************** function _application_init *****************
;; Defined at:
;;		line 266 in file "D:\MCUProject\ZH-SL-F60\src\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/2
;;		On exit  : 1F/3
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___fladd
;;		___fldiv
;;		___flmul
;;		_pid_init
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-F60\src\main.c"
	line	266
global __ptext33
__ptext33:	;psect for function _application_init
psect	text33
	file	"D:\MCUProject\ZH-SL-F60\src\main.c"
	line	266
	global	__size_of_application_init
	__size_of_application_init	equ	__end_of_application_init-_application_init
	
_application_init:	
;incstack = 0
	opt	stack 11
; Regs used in _application_init: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	269
	
l17082:	
;main.c: 269: TMR1ON =1;
	movlb 0	; select bank0
	bsf	(192/8),(192)&7	;volatile
	line	271
;main.c: 271: system_check_time=0x01;
	movlb 2	; select bank2
	clrf	(_system_check_time)^0100h
	incf	(_system_check_time)^0100h,f
	line	273
;main.c: 273: open_an0_time=0x01;
	clrf	(_open_an0_time)^0100h
	incf	(_open_an0_time)^0100h,f
	line	275
;main.c: 275: open_an1_time=0x01;
	clrf	(_open_an1_time)^0100h
	incf	(_open_an1_time)^0100h,f
	line	277
;main.c: 277: open_an2_time=0x01;
	clrf	(_open_an2_time)^0100h
	incf	(_open_an2_time)^0100h,f
	line	279
;main.c: 279: open_an3_time=0x01;
	clrf	(_open_an3_time)^0100h
	incf	(_open_an3_time)^0100h,f
	line	281
;main.c: 281: open_an4_time=0x01;
	clrf	(_open_an4_time)^0100h
	incf	(_open_an4_time)^0100h,f
	line	283
;main.c: 283: open_an9_time=0x01;
	clrf	(_open_an9_time)^0100h
	incf	(_open_an9_time)^0100h,f
	line	285
;main.c: 285: open_an10_time=0x01;
	clrf	(_open_an10_time)^0100h
	incf	(_open_an10_time)^0100h,f
	line	289
	
l17084:	
;main.c: 289: pid_init ( &PID_CC_charge);
	movlw	low(_PID_CC_charge)
	movlb 0	; select bank0
	movwf	(pid_init@pp)
	movlw	high(_PID_CC_charge)
	movwf	(pid_init@pp+1)
	fcall	_pid_init
	line	291
;main.c: 291: pid_init ( &PID_CV_charge);
	movlw	low(_PID_CV_charge)
	movwf	(pid_init@pp)
	movlw	high(_PID_CV_charge)
	movwf	(pid_init@pp+1)
	fcall	_pid_init
	line	293
;main.c: 293: pid_init ( &PID_CC_discharge);
	movlw	low(_PID_CC_discharge)
	movwf	(pid_init@pp)
	movlw	high(_PID_CC_discharge)
	movwf	(pid_init@pp+1)
	fcall	_pid_init
	line	298
	
l17086:	
;main.c: 298: PID_CC_charge.Proportion = 0.001;
	movlw	0x3a
	movlb 6	; select bank6
	movwf	3+(_PID_CC_charge)^0300h+04h
	movlw	0x83
	movwf	2+(_PID_CC_charge)^0300h+04h
	movlw	0x12
	movwf	1+(_PID_CC_charge)^0300h+04h
	movlw	0x6f
	movwf	0+(_PID_CC_charge)^0300h+04h

	line	300
	
l17088:	
;main.c: 300: PID_CC_charge.Integral = 0;
	clrf	0+(_PID_CC_charge)^0300h+08h
	clrf	1+(_PID_CC_charge)^0300h+08h
	clrf	2+(_PID_CC_charge)^0300h+08h
	clrf	3+(_PID_CC_charge)^0300h+08h
	line	302
	
l17090:	
;main.c: 302: PID_CC_charge.Derivative = 0;
	clrf	0+(_PID_CC_charge)^0300h+0Ch
	clrf	1+(_PID_CC_charge)^0300h+0Ch
	clrf	2+(_PID_CC_charge)^0300h+0Ch
	clrf	3+(_PID_CC_charge)^0300h+0Ch
	line	304
	
l17092:	
;main.c: 304: PID_CC_charge.SetPoint = 5.0*15.0;
	movlw	0x42
	movwf	(_PID_CC_charge+3)^0300h
	movlw	0x96
	movwf	(_PID_CC_charge+2)^0300h
	movlw	0x0
	movwf	(_PID_CC_charge+1)^0300h
	movlw	0x0
	movwf	(_PID_CC_charge)^0300h

	line	309
	
l17094:	
;main.c: 309: PID_CV_charge.Proportion = 0.001;
	movlw	0x3a
	movlb 5	; select bank5
	movwf	3+(_PID_CV_charge)^0280h+04h
	movlw	0x83
	movwf	2+(_PID_CV_charge)^0280h+04h
	movlw	0x12
	movwf	1+(_PID_CV_charge)^0280h+04h
	movlw	0x6f
	movwf	0+(_PID_CV_charge)^0280h+04h

	line	311
	
l17096:	
;main.c: 311: PID_CV_charge.Integral = 0;
	clrf	0+(_PID_CV_charge)^0280h+08h
	clrf	1+(_PID_CV_charge)^0280h+08h
	clrf	2+(_PID_CV_charge)^0280h+08h
	clrf	3+(_PID_CV_charge)^0280h+08h
	line	313
	
l17098:	
;main.c: 313: PID_CV_charge.Derivative = 0;
	clrf	0+(_PID_CV_charge)^0280h+0Ch
	clrf	1+(_PID_CV_charge)^0280h+0Ch
	clrf	2+(_PID_CV_charge)^0280h+0Ch
	clrf	3+(_PID_CV_charge)^0280h+0Ch
	line	315
	
l17100:	
;main.c: 315: PID_CV_charge.SetPoint = dianchi_cv_level+1;
	movlw	0x3f
	movlb 0	; select bank0
	movwf	(___fladd@f1+3)
	movlw	0x80
	movwf	(___fladd@f1+2)
	movlw	0x0
	movwf	(___fladd@f1+1)
	movlw	0x0
	movwf	(___fladd@f1)

	movlb 3	; select bank3
	movf	(_dianchi_cv_level+3)^0180h,w
	movlb 0	; select bank0
	movwf	(___fladd@f2+3)
	movlb 3	; select bank3
	movf	(_dianchi_cv_level+2)^0180h,w
	movlb 0	; select bank0
	movwf	(___fladd@f2+2)
	movlb 3	; select bank3
	movf	(_dianchi_cv_level+1)^0180h,w
	movlb 0	; select bank0
	movwf	(___fladd@f2+1)
	movlb 3	; select bank3
	movf	(_dianchi_cv_level)^0180h,w
	movlb 0	; select bank0
	movwf	(___fladd@f2)

	fcall	___fladd
	movf	(3+(?___fladd)),w
	movlb 5	; select bank5
	movwf	(_PID_CV_charge+3)^0280h
	movlb 0	; select bank0
	movf	(2+(?___fladd)),w
	movlb 5	; select bank5
	movwf	(_PID_CV_charge+2)^0280h
	movlb 0	; select bank0
	movf	(1+(?___fladd)),w
	movlb 5	; select bank5
	movwf	(_PID_CV_charge+1)^0280h
	movlb 0	; select bank0
	movf	(0+(?___fladd)),w
	movlb 5	; select bank5
	movwf	(_PID_CV_charge)^0280h

	line	319
	
l17102:	
;main.c: 319: PID_CC_discharge.Proportion = 0.001;
	movlw	0x3a
	movlb 3	; select bank3
	movwf	3+(_PID_CC_discharge)^0180h+04h
	movlw	0x83
	movwf	2+(_PID_CC_discharge)^0180h+04h
	movlw	0x12
	movwf	1+(_PID_CC_discharge)^0180h+04h
	movlw	0x6f
	movwf	0+(_PID_CC_discharge)^0180h+04h

	line	321
	
l17104:	
;main.c: 321: PID_CC_discharge.Integral = 0;
	clrf	0+(_PID_CC_discharge)^0180h+08h
	clrf	1+(_PID_CC_discharge)^0180h+08h
	clrf	2+(_PID_CC_discharge)^0180h+08h
	clrf	3+(_PID_CC_discharge)^0180h+08h
	line	323
	
l17106:	
;main.c: 323: PID_CC_discharge.Derivative = 0;
	clrf	0+(_PID_CC_discharge)^0180h+0Ch
	clrf	1+(_PID_CC_discharge)^0180h+0Ch
	clrf	2+(_PID_CC_discharge)^0180h+0Ch
	clrf	3+(_PID_CC_discharge)^0180h+0Ch
	line	325
	
l17108:	
;main.c: 325: PID_CC_discharge.SetPoint = (load_cc_I/100)*160;
	movlw	0x43
	movlb 0	; select bank0
	movwf	(___flmul@f1+3)
	movlw	0x20
	movwf	(___flmul@f1+2)
	movlw	0x0
	movwf	(___flmul@f1+1)
	movlw	0x0
	movwf	(___flmul@f1)

	movlw	0x42
	movwf	(___fldiv@f2+3)
	movlw	0xc8
	movwf	(___fldiv@f2+2)
	movlw	0x0
	movwf	(___fldiv@f2+1)
	movlw	0x0
	movwf	(___fldiv@f2)

	movlb 1	; select bank1
	movf	(_load_cc_I+3)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+3)
	movlb 1	; select bank1
	movf	(_load_cc_I+2)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+2)
	movlb 1	; select bank1
	movf	(_load_cc_I+1)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1+1)
	movlb 1	; select bank1
	movf	(_load_cc_I)^080h,w
	movlb 0	; select bank0
	movwf	(___fldiv@f1)

	fcall	___fldiv
	movf	(3+(?___fldiv)),w
	movwf	(___flmul@f2+3)
	movf	(2+(?___fldiv)),w
	movwf	(___flmul@f2+2)
	movf	(1+(?___fldiv)),w
	movwf	(___flmul@f2+1)
	movf	(0+(?___fldiv)),w
	movwf	(___flmul@f2)

	fcall	___flmul
	movf	(3+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+3)^0180h
	movlb 0	; select bank0
	movf	(2+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+2)^0180h
	movlb 0	; select bank0
	movf	(1+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge+1)^0180h
	movlb 0	; select bank0
	movf	(0+(?___flmul)),w
	movlb 3	; select bank3
	movwf	(_PID_CC_discharge)^0180h

	line	327
	
l17110:	
;main.c: 327: open_discharge_time=0x00;
	movlb 2	; select bank2
	clrf	(_open_discharge_time)^0100h
	line	329
	
l17112:	
;main.c: 329: ms_cnt=0x00;
	movlb 3	; select bank3
	clrf	(_ms_cnt)^0180h
	clrf	(_ms_cnt+1)^0180h
	line	330
	
l17114:	
;main.c: 330: se_cnt=0x00;
	clrf	(_se_cnt)^0180h
	clrf	(_se_cnt+1)^0180h
	line	331
	
l17116:	
;main.c: 331: mi_cnt=0x00;
	movlb 2	; select bank2
	clrf	(_mi_cnt)^0100h
	clrf	(_mi_cnt+1)^0100h
	line	332
	
l17118:	
;main.c: 332: ho_cnt=0x00;
	clrf	(_ho_cnt)
	clrf	(_ho_cnt+1)
	line	334
	
l17120:	
;main.c: 334: run_index=0x00;
	movlb 3	; select bank3
	clrf	(_run_index)^0180h
	line	335
	
l812:	
	return
	opt stack 0
GLOBAL	__end_of_application_init
	__end_of_application_init:
	signat	_application_init,88
	global	_pid_init

;; *************** function _pid_init *****************
;; Defined at:
;;		line 190 in file "D:\MCUProject\ZH-SL-F60\src\PID.c"
;; Parameters:    Size  Location     Type
;;  pp              2   11[BANK0 ] PTR struct PID_VAR
;;		 -> PID_CC_discharge(28), PID_CV_charge(28), PID_CC_charge(28), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_memset
;; This function is called by:
;;		_application_init
;;		_handle_task_process
;; This function uses a non-reentrant model
;;
psect	text34,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-F60\src\PID.c"
	line	190
global __ptext34
__ptext34:	;psect for function _pid_init
psect	text34
	file	"D:\MCUProject\ZH-SL-F60\src\PID.c"
	line	190
	global	__size_of_pid_init
	__size_of_pid_init	equ	__end_of_pid_init-_pid_init
	
_pid_init:	
;incstack = 0
	opt	stack 11
; Regs used in _pid_init: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
	line	192
	
l17122:	
;PID.c: 192: memset (pp,0,sizeof(PID));
	movf	(pid_init@pp+1),w
	movwf	(memset@p1+1)
	movf	(pid_init@pp),w
	movwf	(memset@p1)
	clrf	(memset@c)
	clrf	(memset@c+1)
	movlw	01Ch
	movwf	(memset@n)
	clrf	(memset@n+1)
	fcall	_memset
	line	193
	
l946:	
	return
	opt stack 0
GLOBAL	__end_of_pid_init
	__end_of_pid_init:
	signat	_pid_init,4216
	global	_memset

;; *************** function _memset *****************
;; Defined at:
;;		line 8 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\memset.c"
;; Parameters:    Size  Location     Type
;;  p1              2    3[BANK0 ] PTR void 
;;		 -> PID_CC_discharge(28), PID_CV_charge(28), PID_CC_charge(28), uart1_rx_buf(80), 
;;  c               2    5[BANK0 ] int 
;;  n               2    7[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  p               2    9[BANK0 ] PTR unsigned char 
;;		 -> PID_CC_discharge(28), PID_CV_charge(28), PID_CC_charge(28), uart1_rx_buf(80), 
;; Return value:  Size  Location     Type
;;                  2    3[BANK0 ] PTR void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pid_init
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text35,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\memset.c"
	line	8
global __ptext35
__ptext35:	;psect for function _memset
psect	text35
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\memset.c"
	line	8
	global	__size_of_memset
	__size_of_memset	equ	__end_of_memset-_memset
	
_memset:	
;incstack = 0
	opt	stack 12
; Regs used in _memset: [wreg+fsr1l+fsr1h+status,2+status,0]
	line	18
	
l15090:	
	movf	(memset@p1+1),w
	movwf	(memset@p+1)
	movf	(memset@p1),w
	movwf	(memset@p)
	line	19
	goto	l15096
	line	20
	
l15092:	
	movf	(memset@p),w
	movwf	fsr1l
	movf	(memset@p+1),w
	movwf	fsr1h
	movf	(memset@c),w
	movwf	indf1
	
l15094:	
	incf	(memset@p),f
	skipnz
	incf	(memset@p+1),f
	line	19
	
l15096:	
	movlw	low(01h)
	subwf	(memset@n),f
	movlw	high(01h)
	subwfb	(memset@n+1),f
	incf	((memset@n)),w
	skipnz
	incf	((memset@n+1)),w

	skipz
	goto	u7911
	goto	u7910
u7911:
	goto	l15092
u7910:
	line	22
	
l2336:	
	return
	opt stack 0
GLOBAL	__end_of_memset
	__end_of_memset:
	signat	_memset,12409
	global	_Key_Menu

;; *************** function _Key_Menu *****************
;; Defined at:
;;		line 568 in file "D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
;; Parameters:    Size  Location     Type
;;  key_value       4   70[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  remote_mac      2    0        unsigned int 
;;  code            1    2[BANK1 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       3       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       3       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Disable_Bost_Pwm
;;		_Disable_Buck_Pwm
;;		_Enable_Bost_Pwm
;;		_Set_Bost_Pwm_Duty
;;		_Set_Buck_Pwm_Duty
;;		_delay_ms
;;		_eeprom_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text36,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	568
global __ptext36
__ptext36:	;psect for function _Key_Menu
psect	text36
	file	"D:\MCUProject\ZH-SL-F60\src\ird_remote.c"
	line	568
	global	__size_of_Key_Menu
	__size_of_Key_Menu	equ	__end_of_Key_Menu-_Key_Menu
	
_Key_Menu:	
;incstack = 0
	opt	stack 12
; Regs used in _Key_Menu: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	574
	
l16820:	
;ird_remote.c: 570: unsigned char code;
;ird_remote.c: 572: unsigned int remote_mac;
;ird_remote.c: 574: code=(unsigned char)(key_value>>8);
	movf	0+(((Key_Menu@key_value))+1),w
	movlb 1	; select bank1
	movwf	(Key_Menu@code)^080h
	line	580
	goto	l17062
	line	588
;ird_remote.c: 587: {
;ird_remote.c: 588: case 0x00:
	
l531:	
	line	589
;ird_remote.c: 589: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	590
;ird_remote.c: 590: break;
	goto	l545
	line	592
	
l16822:	
;ird_remote.c: 592: if(device_status==0x01)
	decf	(_device_status)^080h,w
	skipz
	goto	u9801
	goto	u9800
u9801:
	goto	l545
u9800:
	line	594
	
l16824:	
;ird_remote.c: 593: {
;ird_remote.c: 594: light_mode =0x00;
	clrf	(_light_mode)^080h
	line	595
	
l16826:	
;ird_remote.c: 595: eeprom_write(0x36,(unsigned char)(light_mode));
	movf	(_light_mode)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(036h)
	fcall	_eeprom_write
	line	596
	
l16828:	
;ird_remote.c: 596: led_out_ctrl=0x00;
	movlb 1	; select bank1
	clrf	(_led_out_ctrl)^080h
	line	597
;ird_remote.c: 597: eeprom_write(0x39,(unsigned char)(led_out_ctrl));
	movf	(_led_out_ctrl)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(039h)
	fcall	_eeprom_write
	line	598
	
l16830:	
;ird_remote.c: 600: lr_cnt = 0x00;
	movlb 1	; select bank1
	clrf	(_work_mode)^080h
	line	602
	
l16832:	
;ird_remote.c: 602: nop_index=0x00;
	movlb 3	; select bank3
	clrf	(_nop_index)^0180h
	line	603
	
l16834:	
;ird_remote.c: 603: discharge_index=0x00;
	movlb 1	; select bank1
	clrf	(_discharge_index)^080h
	line	604
	
l16836:	
;ird_remote.c: 604: charge_index=0x00;
	clrf	(_charge_index)^080h
	line	606
	
l16838:	
;ird_remote.c: 606: Disable_Buck_Pwm();
	fcall	_Disable_Buck_Pwm
	line	607
	
l16840:	
;ird_remote.c: 607: Set_Buck_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Buck_Pwm_Duty@duty)
	clrf	(Set_Buck_Pwm_Duty@duty+1)
	fcall	_Set_Buck_Pwm_Duty
	line	608
;ird_remote.c: 608: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	609
	
l16842:	
;ird_remote.c: 609: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	610
	
l16844:	
;ird_remote.c: 610: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	613
	
l16846:	
;ird_remote.c: 613: (LATCbits.LATC3 = 0x01);
	movlb 2	; select bank2
	bsf	(270)^0100h,3	;volatile
	line	615
	
l16848:	
;ird_remote.c: 615: Enable_Bost_Pwm();
	fcall	_Enable_Bost_Pwm
	line	617
;ird_remote.c: 617: Set_Bost_Pwm_Duty(25);
	movlw	019h
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	619
;ird_remote.c: 619: delay_ms(1000);
	movlw	low(03E8h)
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	movlw	high(03E8h)
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	line	621
;ird_remote.c: 621: Set_Bost_Pwm_Duty(0);
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	623
	
l16850:	
;ird_remote.c: 623: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	624
	
l16852:	
;ird_remote.c: 624: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	625
	
l16854:	
;ird_remote.c: 625: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	627
	
l16856:	
;ird_remote.c: 627: pv_voltage_status=0x00;
	movlb 2	; select bank2
	clrf	(_pv_voltage_status)^0100h
	line	629
	
l16858:	
;ird_remote.c: 629: day_time_count=0x00;
	movlb 5	; select bank5
	clrf	(_day_time_count)^0280h
	clrf	(_day_time_count+1)^0280h
	clrf	(_day_time_count+2)^0280h
	clrf	(_day_time_count+3)^0280h
	line	631
	
l16860:	
;ird_remote.c: 631: night_time_count=0x00;
	movlb 4	; select bank4
	clrf	(_night_time_count)^0200h
	clrf	(_night_time_count+1)^0200h
	clrf	(_night_time_count+2)^0200h
	clrf	(_night_time_count+3)^0200h
	line	633
	
l16862:	
;ird_remote.c: 633: pv_time_count=0x00;
	movlb 5	; select bank5
	clrf	(_pv_time_count)^0280h
	clrf	(_pv_time_count+1)^0280h
	clrf	(_pv_time_count+2)^0280h
	clrf	(_pv_time_count+3)^0280h
	goto	l545
	line	637
	
l16864:	
;ird_remote.c: 637: if(device_status==0x01)
	decf	(_device_status)^080h,w
	skipz
	goto	u9811
	goto	u9810
u9811:
	goto	l545
u9810:
	line	639
	
l16866:	
;ird_remote.c: 638: {
;ird_remote.c: 639: light_mode =0x01;
	clrf	(_light_mode)^080h
	incf	(_light_mode)^080h,f
	line	640
	
l16868:	
;ird_remote.c: 640: eeprom_write(0x36,(unsigned char)(light_mode));
	movf	(_light_mode)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(036h)
	fcall	_eeprom_write
	line	641
	
l16870:	
;ird_remote.c: 641: led_out_ctrl=0x00;
	movlb 1	; select bank1
	clrf	(_led_out_ctrl)^080h
	line	642
	
l16872:	
;ird_remote.c: 642: eeprom_write(0x39,(unsigned char)(led_out_ctrl));
	movf	(_led_out_ctrl)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(039h)
	fcall	_eeprom_write
	line	643
;ird_remote.c: 645: lr_cnt = 0x00;
	movlb 1	; select bank1
	clrf	(_work_mode)^080h
	line	647
;ird_remote.c: 647: nop_index=0x00;
	movlb 3	; select bank3
	clrf	(_nop_index)^0180h
	line	648
;ird_remote.c: 648: discharge_index=0x00;
	movlb 1	; select bank1
	clrf	(_discharge_index)^080h
	line	649
;ird_remote.c: 649: charge_index=0x00;
	clrf	(_charge_index)^080h
	line	651
	
l16874:	
;ird_remote.c: 651: Disable_Buck_Pwm();
	fcall	_Disable_Buck_Pwm
	line	652
	
l16876:	
;ird_remote.c: 652: Set_Buck_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Buck_Pwm_Duty@duty)
	clrf	(Set_Buck_Pwm_Duty@duty+1)
	fcall	_Set_Buck_Pwm_Duty
	line	653
	
l16878:	
;ird_remote.c: 653: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	654
	
l16880:	
;ird_remote.c: 654: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	655
	
l16882:	
;ird_remote.c: 655: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	658
	
l16884:	
;ird_remote.c: 658: (LATCbits.LATC3 = 0x01);
	movlb 2	; select bank2
	bsf	(270)^0100h,3	;volatile
	line	660
	
l16886:	
;ird_remote.c: 660: Enable_Bost_Pwm();
	fcall	_Enable_Bost_Pwm
	line	662
	
l16888:	
;ird_remote.c: 662: Set_Bost_Pwm_Duty(25);
	movlw	019h
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	664
	
l16890:	
;ird_remote.c: 664: delay_ms(1000);
	movlw	low(03E8h)
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	movlw	high(03E8h)
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	line	666
	
l16892:	
;ird_remote.c: 666: Set_Bost_Pwm_Duty(0);
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	668
	
l16894:	
;ird_remote.c: 668: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	669
	
l16896:	
;ird_remote.c: 669: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	670
	
l16898:	
;ird_remote.c: 670: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	672
;ird_remote.c: 672: pv_voltage_status=0x00;
	movlb 2	; select bank2
	clrf	(_pv_voltage_status)^0100h
	goto	l16858
	line	682
	
l16906:	
;ird_remote.c: 682: if(device_status==0x01)
	decf	(_device_status)^080h,w
	skipz
	goto	u9821
	goto	u9820
u9821:
	goto	l545
u9820:
	line	684
	
l16908:	
;ird_remote.c: 683: {
;ird_remote.c: 684: light_mode =0x02;
	movlw	(02h)
	movwf	(_light_mode)^080h
	line	685
	
l16910:	
;ird_remote.c: 685: eeprom_write(0x36,(unsigned char)(light_mode));
	movf	(_light_mode)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(036h)
	fcall	_eeprom_write
	line	686
	
l16912:	
;ird_remote.c: 686: led_out_ctrl=0x00;
	movlb 1	; select bank1
	clrf	(_led_out_ctrl)^080h
	line	687
	
l16914:	
;ird_remote.c: 687: eeprom_write(0x39,(unsigned char)(led_out_ctrl));
	movf	(_led_out_ctrl)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(039h)
	fcall	_eeprom_write
	line	688
	
l16916:	
;ird_remote.c: 690: lr_cnt = 0x00;
	movlb 1	; select bank1
	clrf	(_work_mode)^080h
	line	692
	
l16918:	
;ird_remote.c: 692: nop_index=0x00;
	movlb 3	; select bank3
	clrf	(_nop_index)^0180h
	line	693
	
l16920:	
;ird_remote.c: 693: discharge_index=0x00;
	movlb 1	; select bank1
	clrf	(_discharge_index)^080h
	line	694
	
l16922:	
;ird_remote.c: 694: charge_index=0x00;
	clrf	(_charge_index)^080h
	line	696
	
l16924:	
;ird_remote.c: 696: Disable_Buck_Pwm();
	fcall	_Disable_Buck_Pwm
	line	697
	
l16926:	
;ird_remote.c: 697: Set_Buck_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Buck_Pwm_Duty@duty)
	clrf	(Set_Buck_Pwm_Duty@duty+1)
	fcall	_Set_Buck_Pwm_Duty
	line	698
	
l16928:	
;ird_remote.c: 698: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	699
	
l16930:	
;ird_remote.c: 699: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	700
	
l16932:	
;ird_remote.c: 700: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	703
	
l16934:	
;ird_remote.c: 703: (LATCbits.LATC3 = 0x01);
	movlb 2	; select bank2
	bsf	(270)^0100h,3	;volatile
	line	705
	
l16936:	
;ird_remote.c: 705: Enable_Bost_Pwm();
	fcall	_Enable_Bost_Pwm
	line	707
	
l16938:	
;ird_remote.c: 707: Set_Bost_Pwm_Duty(25);
	movlw	019h
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	709
	
l16940:	
;ird_remote.c: 709: delay_ms(1000);
	movlw	low(03E8h)
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	movlw	high(03E8h)
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	line	711
	
l16942:	
;ird_remote.c: 711: Set_Bost_Pwm_Duty(0);
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	goto	l16850
	line	727
	
l16958:	
;ird_remote.c: 727: if(device_status==0x01)
	decf	(_device_status)^080h,w
	skipz
	goto	u9831
	goto	u9830
u9831:
	goto	l16966
u9830:
	line	729
	
l16960:	
;ird_remote.c: 728: {
;ird_remote.c: 729: led_out_ctrl=led_out_ctrl+1;
	incf	(_led_out_ctrl)^080h,f
	line	731
	
l16962:	
;ird_remote.c: 731: led_out_ctrl=led_out_ctrl%2;
	movlw	(01h)
	andwf	(_led_out_ctrl)^080h,f
	line	733
	
l16964:	
;ird_remote.c: 733: eeprom_write(0x39,(unsigned char)(led_out_ctrl));
	movf	(_led_out_ctrl)^080h,w
	movlb 0	; select bank0
	movwf	(eeprom_write@value)
	movlw	(039h)
	fcall	_eeprom_write
	line	735
	
l16966:	
;ird_remote.c: 734: }
;ird_remote.c: 735: if(led_out_ctrl==0x00 && device_status==0x01)
	movlb 1	; select bank1
	movf	(_led_out_ctrl)^080h,f
	skipz
	goto	u9841
	goto	u9840
u9841:
	goto	l17004
u9840:
	
l16968:	
	decf	(_device_status)^080h,w
	skipz
	goto	u9851
	goto	u9850
u9851:
	goto	l17004
u9850:
	line	737
	
l16970:	
;ird_remote.c: 739: lr_cnt = 0x00;
	clrf	(_work_mode)^080h
	line	741
;ird_remote.c: 741: nop_index=0x00;
	movlb 3	; select bank3
	clrf	(_nop_index)^0180h
	line	742
;ird_remote.c: 742: discharge_index=0x00;
	movlb 1	; select bank1
	clrf	(_discharge_index)^080h
	line	743
;ird_remote.c: 743: charge_index=0x00;
	clrf	(_charge_index)^080h
	goto	l16874
	line	774
	
l17004:	
;ird_remote.c: 774: else if(led_out_ctrl==0x01 && device_status==0x01)
	decf	(_led_out_ctrl)^080h,w
	skipz
	goto	u9861
	goto	u9860
u9861:
	goto	l545
u9860:
	
l17006:	
	decf	(_device_status)^080h,w
	skipz
	goto	u9871
	goto	u9870
u9871:
	goto	l545
u9870:
	line	776
	
l17008:	
;ird_remote.c: 778: lr_cnt = 0x00;
	clrf	(_work_mode)^080h
	line	780
;ird_remote.c: 780: nop_index=0x00;
	movlb 3	; select bank3
	clrf	(_nop_index)^0180h
	line	781
;ird_remote.c: 781: discharge_index=0x00;
	movlb 1	; select bank1
	clrf	(_discharge_index)^080h
	line	782
;ird_remote.c: 782: charge_index=0x00;
	clrf	(_charge_index)^080h
	line	784
	
l17010:	
;ird_remote.c: 784: Disable_Buck_Pwm();
	fcall	_Disable_Buck_Pwm
	line	785
	
l17012:	
;ird_remote.c: 785: Set_Buck_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Buck_Pwm_Duty@duty)
	clrf	(Set_Buck_Pwm_Duty@duty+1)
	fcall	_Set_Buck_Pwm_Duty
	line	787
	
l17014:	
;ird_remote.c: 787: Disable_Bost_Pwm();
	fcall	_Disable_Bost_Pwm
	line	789
	
l17016:	
;ird_remote.c: 789: Set_Bost_Pwm_Duty(0);
	movlb 0	; select bank0
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	791
	
l17018:	
;ird_remote.c: 791: delay_ms(200);
	movlw	0C8h
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	clrf	(delay_ms@count+1)
	fcall	_delay_ms
	line	792
	
l17020:	
;ird_remote.c: 792: (LATCbits.LATC3 = 0x01);
	movlb 2	; select bank2
	bsf	(270)^0100h,3	;volatile
	line	793
	
l17022:	
;ird_remote.c: 793: Enable_Bost_Pwm();
	fcall	_Enable_Bost_Pwm
	line	795
	
l17024:	
;ird_remote.c: 795: Set_Bost_Pwm_Duty(35);
	movlw	023h
	movlb 0	; select bank0
	movwf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	797
	
l17026:	
;ird_remote.c: 797: delay_ms(500);
	movlw	low(01F4h)
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	movlw	high(01F4h)
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	line	799
	
l17028:	
;ird_remote.c: 799: Set_Bost_Pwm_Duty(0);
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	801
	
l17030:	
;ird_remote.c: 801: delay_ms(500);
	movlw	low(01F4h)
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	movlw	high(01F4h)
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	line	803
	
l17032:	
;ird_remote.c: 803: Set_Bost_Pwm_Duty(35);
	movlw	023h
	movwf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	805
	
l17034:	
;ird_remote.c: 805: delay_ms(500);
	movlw	low(01F4h)
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	movlw	high(01F4h)
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	line	807
	
l17036:	
;ird_remote.c: 807: Set_Bost_Pwm_Duty(0);
	clrf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	809
	
l17038:	
;ird_remote.c: 809: delay_ms(500);
	movlw	low(01F4h)
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	movlw	high(01F4h)
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	line	811
	
l17040:	
;ird_remote.c: 811: Set_Bost_Pwm_Duty(35);
	movlw	023h
	movwf	(Set_Bost_Pwm_Duty@dduty)
	clrf	(Set_Bost_Pwm_Duty@dduty+1)
	fcall	_Set_Bost_Pwm_Duty
	line	813
	
l17042:	
;ird_remote.c: 813: delay_ms(500);
	movlw	low(01F4h)
	movlb 0	; select bank0
	movwf	(delay_ms@count)
	movlw	high(01F4h)
	movwf	((delay_ms@count))+1
	fcall	_delay_ms
	goto	l16942
	line	586
	
l17062:	
	movf	(Key_Menu@code)^080h,w
	; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 0 to 136
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l531
	xorlw	16^0	; case 16
	skipnz
	goto	l16864
	xorlw	64^16	; case 64
	skipnz
	goto	l16822
	xorlw	80^64	; case 80
	skipnz
	goto	l16906
	xorlw	136^80	; case 136
	skipnz
	goto	l16958
	goto	l545
	opt asmopt_on

	line	836
	
l545:	
	return
	opt stack 0
GLOBAL	__end_of_Key_Menu
	__end_of_Key_Menu:
	signat	_Key_Menu,4216
	global	_eeprom_write

;; *************** function _eeprom_write *****************
;; Defined at:
;;		line 6 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\eewrite.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  value           1   68[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1   69[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/3
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       1       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_auto_system
;;		_Key_Menu
;;		_handle_task_process
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text37,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\eewrite.c"
	line	6
global __ptext37
__ptext37:	;psect for function _eeprom_write
psect	text37
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\eewrite.c"
	line	6
	global	__size_of_eeprom_write
	__size_of_eeprom_write	equ	__end_of_eeprom_write-_eeprom_write
	
_eeprom_write:	
;incstack = 0
	opt	stack 11
; Regs used in _eeprom_write: [wreg+status,2+status,0]
;eeprom_write@addr stored from wreg
	movwf	(eeprom_write@addr)
	line	8
	
l1906:	
	
l1907:	
	movlb 3	; select bank3
	btfsc	(3241/8)^0180h,(3241)&7	;volsfr
	goto	u9771
	goto	u9770
u9771:
	goto	l1907
u9770:
	
l16800:	
	movlb 0	; select bank0
	movf	(eeprom_write@addr),w
	movlb 3	; select bank3
	movwf	(401)^0180h	;volatile
	clrf	(401+1)^0180h	;volatile
	movlb 0	; select bank0
	movf	(eeprom_write@value),w
	movlb 3	; select bank3
	movwf	(403)^0180h	;volatile
	
l16802:	
	movlw	(03Fh)
	andwf	(405)^0180h,f	;volsfr
	
l16804:	
	bcf	(24/8),(24)&7	;volatile
	
l16806:	
	btfss	(95/8),(95)&7	;volatile
	goto	u9781
	goto	u9780
u9781:
	goto	l1910
u9780:
	
l16808:	
	bsf	(24/8),(24)&7	;volatile
	
l1910:	
	bcf	(95/8),(95)&7	;volatile
	bsf	(3242/8)^0180h,(3242)&7	;volsfr
	
l16810:	
	movlw	(055h)
	movwf	(406)^0180h	;volsfr
	movlw	(0AAh)
	movwf	(406)^0180h	;volsfr
	
l16812:	
	bsf	(3241/8)^0180h,(3241)&7	;volsfr
	
l16814:	
	bcf	(3242/8)^0180h,(3242)&7	;volsfr
	
l16816:	
	btfss	(24/8),(24)&7	;volatile
	goto	u9791
	goto	u9790
u9791:
	goto	l1913
u9790:
	
l16818:	
	bsf	(95/8),(95)&7	;volatile
	line	9
	
l1913:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_write
	__end_of_eeprom_write:
	signat	_eeprom_write,8312
	global	_delay_ms

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 64 in file "D:\MCUProject\ZH-SL-F60\src\delay.c"
;; Parameters:    Size  Location     Type
;;  count           2    3[BANK0 ] unsigned short 
;; Auto vars:     Size  Location     Type
;;  j               2    7[BANK0 ] unsigned short 
;;  i               2    5[BANK0 ] unsigned short 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_auto_system
;;		_Key_Menu
;;		_handle_ad_loop
;;		_handle_task_process
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text38,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-F60\src\delay.c"
	line	64
global __ptext38
__ptext38:	;psect for function _delay_ms
psect	text38
	file	"D:\MCUProject\ZH-SL-F60\src\delay.c"
	line	64
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
;incstack = 0
	opt	stack 11
; Regs used in _delay_ms: [wreg+status,2+status,0]
	line	68
	
l16560:	
;delay.c: 66: WORD i, j;
;delay.c: 68: for (i = 0; i < count; i++)
	clrf	(delay_ms@i)
	clrf	(delay_ms@i+1)
	goto	l16574
	line	70
	
l16562:	
;delay.c: 69: {
;delay.c: 70: for (j = 0; j < 1000; j++)
	clrf	(delay_ms@j)
	clrf	(delay_ms@j+1)
	line	71
	
l43:	
	line	72
;delay.c: 71: {
;delay.c: 72: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	73
;delay.c: 73: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	74
;delay.c: 74: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	75
;delay.c: 75: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	76
;delay.c: 76: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	77
;delay.c: 77: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	78
;delay.c: 78: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	79
;delay.c: 79: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	70
	
l16568:	
	movlb 0	; select bank0
	incf	(delay_ms@j),f
	skipnz
	incf	(delay_ms@j+1),f
	
l16570:	
	movlw	high(03E8h)
	subwf	(delay_ms@j+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(delay_ms@j),w
	skipc
	goto	u9521
	goto	u9520
u9521:
	goto	l43
u9520:
	line	68
	
l16572:	
	incf	(delay_ms@i),f
	skipnz
	incf	(delay_ms@i+1),f
	
l16574:	
	movf	(delay_ms@count+1),w
	subwf	(delay_ms@i+1),w
	skipz
	goto	u9535
	movf	(delay_ms@count),w
	subwf	(delay_ms@i),w
u9535:
	skipc
	goto	u9531
	goto	u9530
u9531:
	goto	l16562
u9530:
	line	82
	
l46:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4216
	global	_Set_Buck_Pwm_Duty

;; *************** function _Set_Buck_Pwm_Duty *****************
;; Defined at:
;;		line 157 in file "D:\MCUProject\ZH-SL-F60\src\pwm.c"
;; Parameters:    Size  Location     Type
;;  duty            2    3[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/5
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Key_Menu
;;		_handle_ad_loop
;;		_handle_task_process
;;		_Mppt_Charge
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text39,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-F60\src\pwm.c"
	line	157
global __ptext39
__ptext39:	;psect for function _Set_Buck_Pwm_Duty
psect	text39
	file	"D:\MCUProject\ZH-SL-F60\src\pwm.c"
	line	157
	global	__size_of_Set_Buck_Pwm_Duty
	__size_of_Set_Buck_Pwm_Duty	equ	__end_of_Set_Buck_Pwm_Duty-_Set_Buck_Pwm_Duty
	
_Set_Buck_Pwm_Duty:	
;incstack = 0
	opt	stack 12
; Regs used in _Set_Buck_Pwm_Duty: [wreg+status,2+status,0]
	line	159
	
l17066:	
;pwm.c: 159: buck_pwm_value=duty;
	movf	(Set_Buck_Pwm_Duty@duty+1),w
	movlb 1	; select bank1
	movwf	(_buck_pwm_value+1)^080h
	movlb 0	; select bank0
	movf	(Set_Buck_Pwm_Duty@duty),w
	movlb 1	; select bank1
	movwf	(_buck_pwm_value)^080h
	line	161
;pwm.c: 161: if(duty<=900)
	movlw	high(0385h)
	movlb 0	; select bank0
	subwf	(Set_Buck_Pwm_Duty@duty+1),w
	movlw	low(0385h)
	skipnz
	subwf	(Set_Buck_Pwm_Duty@duty),w
	skipnc
	goto	u9881
	goto	u9880
u9881:
	goto	l17070
u9880:
	line	163
	
l17068:	
;pwm.c: 162: {
;pwm.c: 163: CCPR1L=(unsigned char)(duty>>2);
	movf	(Set_Buck_Pwm_Duty@duty+1),w
	movwf	(??_Set_Buck_Pwm_Duty+0)+0+1
	movf	(Set_Buck_Pwm_Duty@duty),w
	movwf	(??_Set_Buck_Pwm_Duty+0)+0
	lsrf	(??_Set_Buck_Pwm_Duty+0)+1,f
	rrf	(??_Set_Buck_Pwm_Duty+0)+0,f
	lsrf	(??_Set_Buck_Pwm_Duty+0)+1,f
	rrf	(??_Set_Buck_Pwm_Duty+0)+0,f
	movf	0+(??_Set_Buck_Pwm_Duty+0)+0,w
	movlb 5	; select bank5
	movwf	(657)^0280h	;volatile
	line	165
;pwm.c: 165: CCP1CONbits.DC1B=(unsigned char)(duty&0b11);
	movlb 0	; select bank0
	movf	(Set_Buck_Pwm_Duty@duty),w
	andlw	03h
	movwf	(??_Set_Buck_Pwm_Duty+0)+0
	swapf	(??_Set_Buck_Pwm_Duty+0)+0,f
	movlb 5	; select bank5
	movf	(659)^0280h,w	;volatile
	movlb 0	; select bank0
	xorwf	(??_Set_Buck_Pwm_Duty+0)+0,w
	andlw	not (((1<<2)-1)<<4)
	xorwf	(??_Set_Buck_Pwm_Duty+0)+0,w
	movlb 5	; select bank5
	movwf	(659)^0280h	;volatile
	line	168
;pwm.c: 168: }
	goto	l1018
	line	171
	
l17070:	
	line	173
	
l17072:	
;pwm.c: 173: CCPR1L=(unsigned char)(duty>>2);
	movlw	(0E1h)
	movlb 5	; select bank5
	movwf	(657)^0280h	;volatile
	line	175
	
l17074:	
;pwm.c: 175: CCP1CONbits.DC1B=(unsigned char)(duty&0b11);
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	(659)^0280h,f	;volatile
	line	178
	
l1018:	
	return
	opt stack 0
GLOBAL	__end_of_Set_Buck_Pwm_Duty
	__end_of_Set_Buck_Pwm_Duty:
	signat	_Set_Buck_Pwm_Duty,4216
	global	_Set_Bost_Pwm_Duty

;; *************** function _Set_Bost_Pwm_Duty *****************
;; Defined at:
;;		line 218 in file "D:\MCUProject\ZH-SL-F60\src\pwm.c"
;; Parameters:    Size  Location     Type
;;  dduty           2    3[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  dnt             2    0        unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/6
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       2       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Key_Menu
;;		_handle_ad_loop
;;		_handle_task_process
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text40,local,class=CODE,delta=2,merge=1
	line	218
global __ptext40
__ptext40:	;psect for function _Set_Bost_Pwm_Duty
psect	text40
	file	"D:\MCUProject\ZH-SL-F60\src\pwm.c"
	line	218
	global	__size_of_Set_Bost_Pwm_Duty
	__size_of_Set_Bost_Pwm_Duty	equ	__end_of_Set_Bost_Pwm_Duty-_Set_Bost_Pwm_Duty
	
_Set_Bost_Pwm_Duty:	
;incstack = 0
	opt	stack 12
; Regs used in _Set_Bost_Pwm_Duty: [wreg+status,2+status,0]
	line	224
	
l16576:	
;pwm.c: 224: bost_pwm_value=dduty;
	movf	(Set_Bost_Pwm_Duty@dduty+1),w
	movlb 1	; select bank1
	movwf	(_bost_pwm_value+1)^080h
	movlb 0	; select bank0
	movf	(Set_Bost_Pwm_Duty@dduty),w
	movlb 1	; select bank1
	movwf	(_bost_pwm_value)^080h
	line	226
;pwm.c: 226: if(dduty<=900)
	movlw	high(0385h)
	movlb 0	; select bank0
	subwf	(Set_Bost_Pwm_Duty@dduty+1),w
	movlw	low(0385h)
	skipnz
	subwf	(Set_Bost_Pwm_Duty@dduty),w
	skipnc
	goto	u9541
	goto	u9540
u9541:
	goto	l16580
u9540:
	line	228
	
l16578:	
;pwm.c: 227: {
;pwm.c: 228: CCPR3L=(unsigned char)(dduty>>2);
	movf	(Set_Bost_Pwm_Duty@dduty+1),w
	movwf	(??_Set_Bost_Pwm_Duty+0)+0+1
	movf	(Set_Bost_Pwm_Duty@dduty),w
	movwf	(??_Set_Bost_Pwm_Duty+0)+0
	lsrf	(??_Set_Bost_Pwm_Duty+0)+1,f
	rrf	(??_Set_Bost_Pwm_Duty+0)+0,f
	lsrf	(??_Set_Bost_Pwm_Duty+0)+1,f
	rrf	(??_Set_Bost_Pwm_Duty+0)+0,f
	movf	0+(??_Set_Bost_Pwm_Duty+0)+0,w
	movlb 6	; select bank6
	movwf	(785)^0300h	;volatile
	line	230
;pwm.c: 230: CCP3CONbits.DC3B=(unsigned char)(dduty&0b11);
	movlb 0	; select bank0
	movf	(Set_Bost_Pwm_Duty@dduty),w
	andlw	03h
	movwf	(??_Set_Bost_Pwm_Duty+0)+0
	swapf	(??_Set_Bost_Pwm_Duty+0)+0,f
	movlb 6	; select bank6
	movf	(787)^0300h,w	;volatile
	movlb 0	; select bank0
	xorwf	(??_Set_Bost_Pwm_Duty+0)+0,w
	andlw	not (((1<<2)-1)<<4)
	xorwf	(??_Set_Bost_Pwm_Duty+0)+0,w
	movlb 6	; select bank6
	movwf	(787)^0300h	;volatile
	line	232
;pwm.c: 232: }
	goto	l1029
	line	235
	
l16580:	
	line	237
	
l16582:	
;pwm.c: 237: CCPR3L=(unsigned char)(dduty>>2);
	movlw	(0E1h)
	movlb 6	; select bank6
	movwf	(785)^0300h	;volatile
	line	239
	
l16584:	
;pwm.c: 239: CCP3CONbits.DC3B=(unsigned char)(dduty&0b11);
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	(787)^0300h,f	;volatile
	line	242
	
l1029:	
	return
	opt stack 0
GLOBAL	__end_of_Set_Bost_Pwm_Duty
	__end_of_Set_Bost_Pwm_Duty:
	signat	_Set_Bost_Pwm_Duty,4216
	global	_Enable_Bost_Pwm

;; *************** function _Enable_Bost_Pwm *****************
;; Defined at:
;;		line 188 in file "D:\MCUProject\ZH-SL-F60\src\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 1F/2
;;		On exit  : 1F/8
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Key_Menu
;;		_handle_ad_loop
;;		_handle_task_process
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text41,local,class=CODE,delta=2,merge=1
	line	188
global __ptext41
__ptext41:	;psect for function _Enable_Bost_Pwm
psect	text41
	file	"D:\MCUProject\ZH-SL-F60\src\pwm.c"
	line	188
	global	__size_of_Enable_Bost_Pwm
	__size_of_Enable_Bost_Pwm	equ	__end_of_Enable_Bost_Pwm-_Enable_Bost_Pwm
	
_Enable_Bost_Pwm:	
;incstack = 0
	opt	stack 12
; Regs used in _Enable_Bost_Pwm: []
	line	190
	
l17076:	
;pwm.c: 190: TRISBbits.TRISB5 =0;
	movlb 1	; select bank1
	bcf	(141)^080h,5	;volatile
	line	192
;pwm.c: 192: TMR4ON=1;
	movlb 8	; select bank8
	bsf	(8378/8)^0400h,(8378)&7	;volatile
	line	193
	
l1021:	
	return
	opt stack 0
GLOBAL	__end_of_Enable_Bost_Pwm
	__end_of_Enable_Bost_Pwm:
	signat	_Enable_Bost_Pwm,88
	global	_Disable_Buck_Pwm

;; *************** function _Disable_Buck_Pwm *****************
;; Defined at:
;;		line 139 in file "D:\MCUProject\ZH-SL-F60\src\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 1C/3
;;		On exit  : 1F/8
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Key_Menu
;;		_handle_ad_loop
;;		_handle_task_process
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text42,local,class=CODE,delta=2,merge=1
	line	139
global __ptext42
__ptext42:	;psect for function _Disable_Buck_Pwm
psect	text42
	file	"D:\MCUProject\ZH-SL-F60\src\pwm.c"
	line	139
	global	__size_of_Disable_Buck_Pwm
	__size_of_Disable_Buck_Pwm	equ	__end_of_Disable_Buck_Pwm-_Disable_Buck_Pwm
	
_Disable_Buck_Pwm:	
;incstack = 0
	opt	stack 12
; Regs used in _Disable_Buck_Pwm: []
	line	141
	
l17064:	
;pwm.c: 141: TRISCbits.TRISC2=1;
	movlb 1	; select bank1
	bsf	(142)^080h,2	;volatile
	line	143
;pwm.c: 143: TRISBbits.TRISB2=1;
	bsf	(141)^080h,2	;volatile
	line	145
;pwm.c: 145: TMR6ON=0;
	movlb 8	; select bank8
	bcf	(8434/8)^0400h,(8434)&7	;volatile
	line	147
	
l1013:	
	return
	opt stack 0
GLOBAL	__end_of_Disable_Buck_Pwm
	__end_of_Disable_Buck_Pwm:
	signat	_Disable_Buck_Pwm,88
	global	_Disable_Bost_Pwm

;; *************** function _Disable_Bost_Pwm *****************
;; Defined at:
;;		line 203 in file "D:\MCUProject\ZH-SL-F60\src\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 18/5
;;		On exit  : 1F/8
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Key_Menu
;;		_handle_ad_loop
;;		_handle_task_process
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text43,local,class=CODE,delta=2,merge=1
	line	203
global __ptext43
__ptext43:	;psect for function _Disable_Bost_Pwm
psect	text43
	file	"D:\MCUProject\ZH-SL-F60\src\pwm.c"
	line	203
	global	__size_of_Disable_Bost_Pwm
	__size_of_Disable_Bost_Pwm	equ	__end_of_Disable_Bost_Pwm-_Disable_Bost_Pwm
	
_Disable_Bost_Pwm:	
;incstack = 0
	opt	stack 12
; Regs used in _Disable_Bost_Pwm: []
	line	205
	
l16586:	
;pwm.c: 205: TRISBbits.TRISB5 =1;
	movlb 1	; select bank1
	bsf	(141)^080h,5	;volatile
	line	207
;pwm.c: 207: TMR4ON=0;
	movlb 8	; select bank8
	bcf	(8378/8)^0400h,(8378)&7	;volatile
	line	209
	
l1024:	
	return
	opt stack 0
GLOBAL	__end_of_Disable_Bost_Pwm
	__end_of_Disable_Bost_Pwm:
	signat	_Disable_Bost_Pwm,88
	global	___fldiv

;; *************** function ___fldiv *****************
;; Defined at:
;;		line 49 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\fldiv.c"
;; Parameters:    Size  Location     Type
;;  f2              4   39[BANK0 ] unsigned int 
;;  f1              4   43[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  f3              4   51[BANK0 ] unsigned int 
;;  sign            1   57[BANK0 ] unsigned char 
;;  exp             1   56[BANK0 ] unsigned char 
;;  cntr            1   55[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   39[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       7       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      19       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_read_param_eeprom
;;		_auto_system
;;		_application_init
;;		_handle_ad_loop
;;		_handle_task_process
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text44,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\fldiv.c"
	line	49
global __ptext44
__ptext44:	;psect for function ___fldiv
psect	text44
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\pic\fldiv.c"
	line	49
	global	__size_of___fldiv
	__size_of___fldiv	equ	__end_of___fldiv-___fldiv
	
___fldiv:	
;incstack = 0
	opt	stack 10
; Regs used in ___fldiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l19034:	
	movf	(___fldiv@f1),w
	movwf	(??___fldiv+0)+0
	movf	(___fldiv@f1+1),w
	movwf	((??___fldiv+0)+0+1)
	movf	(___fldiv@f1+2),w
	movwf	((??___fldiv+0)+0+2)
	movf	(___fldiv@f1+3),w
	movwf	((??___fldiv+0)+0+3)
	clrc
	rlf	(??___fldiv+0)+2,w
	rlf	(??___fldiv+0)+3,w
	movwf	(___fldiv@exp)
	movf	((___fldiv@exp)),f
	skipz
	goto	u13081
	goto	u13080
u13081:
	goto	l19038
u13080:
	line	56
	
l19036:	
	clrf	(?___fldiv)
	clrf	(?___fldiv+1)
	clrf	(?___fldiv+2)
	clrf	(?___fldiv+3)
	goto	l2183
	line	57
	
l19038:	
	movf	(___fldiv@f2),w
	movwf	(??___fldiv+0)+0
	movf	(___fldiv@f2+1),w
	movwf	((??___fldiv+0)+0+1)
	movf	(___fldiv@f2+2),w
	movwf	((??___fldiv+0)+0+2)
	movf	(___fldiv@f2+3),w
	movwf	((??___fldiv+0)+0+3)
	clrc
	rlf	(??___fldiv+0)+2,w
	rlf	(??___fldiv+0)+3,w
	movwf	(___fldiv@sign)
	movf	((___fldiv@sign)),f
	skipz
	goto	u13091
	goto	u13090
u13091:
	goto	l19042
u13090:
	line	58
	
l19040:	
	clrf	(?___fldiv)
	clrf	(?___fldiv+1)
	clrf	(?___fldiv+2)
	clrf	(?___fldiv+3)
	goto	l2183
	line	59
	
l19042:	
	movlw	(089h)
	addwf	(___fldiv@sign),w
	movwf	(??___fldiv+0)+0
	movf	0+(??___fldiv+0)+0,w
	subwf	(___fldiv@exp),f
	line	60
	
l19044:	
	movf	0+(((___fldiv@f1))+3),w
	movwf	(___fldiv@sign)
	line	61
	
l19046:	
	movf	0+(((___fldiv@f2))+3),w
	xorwf	(___fldiv@sign),f
	line	62
	
l19048:	
	movlw	(080h)
	andwf	(___fldiv@sign),f
	line	63
	
l19050:	
	bsf	(___fldiv@f1)+(23/8),(23)&7
	line	64
	
l19052:	
	movlw	0FFh
	andwf	(___fldiv@f1),f
	movlw	0FFh
	andwf	(___fldiv@f1+1),f
	movlw	0FFh
	andwf	(___fldiv@f1+2),f
	movlw	0
	andwf	(___fldiv@f1+3),f
	line	65
	
l19054:	
	bsf	(___fldiv@f2)+(23/8),(23)&7
	line	66
	
l19056:	
	movlw	0FFh
	andwf	(___fldiv@f2),f
	movlw	0FFh
	andwf	(___fldiv@f2+1),f
	movlw	0FFh
	andwf	(___fldiv@f2+2),f
	movlw	0
	andwf	(___fldiv@f2+3),f
	line	67
	
l19058:	
	movlw	(020h)
	movwf	(___fldiv@cntr)
	line	69
	
l19060:	
	lslf	(___fldiv@f3),f
	rlf	(___fldiv@f3+1),f
	rlf	(___fldiv@f3+2),f
	rlf	(___fldiv@f3+3),f
	line	70
	movf	(___fldiv@f2+3),w
	subwf	(___fldiv@f1+3),w
	skipz
	goto	u13105
	movf	(___fldiv@f2+2),w
	subwf	(___fldiv@f1+2),w
	skipz
	goto	u13105
	movf	(___fldiv@f2+1),w
	subwf	(___fldiv@f1+1),w
	skipz
	goto	u13105
	movf	(___fldiv@f2),w
	subwf	(___fldiv@f1),w
u13105:
	skipc
	goto	u13101
	goto	u13100
u13101:
	goto	l19066
u13100:
	line	71
	
l19062:	
	movf	(___fldiv@f2),w
	subwf	(___fldiv@f1),f
	movf	(___fldiv@f2+1),w
	subwfb	(___fldiv@f1+1),f
	movf	(___fldiv@f2+2),w
	subwfb	(___fldiv@f1+2),f
	movf	(___fldiv@f2+3),w
	subwfb	(___fldiv@f1+3),f
	line	72
	
l19064:	
	bsf	(___fldiv@f3)+(0/8),(0)&7
	line	74
	
l19066:	
	lslf	(___fldiv@f1),f
	rlf	(___fldiv@f1+1),f
	rlf	(___fldiv@f1+2),f
	rlf	(___fldiv@f1+3),f
	line	75
	
l19068:	
	decfsz	(___fldiv@cntr),f
	goto	u13111
	goto	u13110
u13111:
	goto	l19060
u13110:
	line	76
	
l19070:	
	movf	(___fldiv@f3+3),w
	movwf	(___flpack@arg+3)
	movf	(___fldiv@f3+2),w
	movwf	(___flpack@arg+2)
	movf	(___fldiv@f3+1),w
	movwf	(___flpack@arg+1)
	movf	(___fldiv@f3),w
	movwf	(___flpack@arg)

	movf	(___fldiv@exp),w
	movwf	(___flpack@exp)
	movf	(___fldiv@sign),w
	movwf	(___flpack@sign)
	fcall	___flpack
	movf	(3+(?___flpack)),w
	movwf	(?___fldiv+3)
	movf	(2+(?___flpack)),w
	movwf	(?___fldiv+2)
	movf	(1+(?___flpack)),w
	movwf	(?___fldiv+1)
	movf	(0+(?___flpack)),w
	movwf	(?___fldiv)

	line	77
	
l2183:	
	return
	opt stack 0
GLOBAL	__end_of___fldiv
	__end_of___fldiv:
	signat	___fldiv,8316
	global	___fladd

;; *************** function ___fladd *****************
;; Defined at:
;;		line 88 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\fladd.c"
;; Parameters:    Size  Location     Type
;;  f1              4   39[BANK0 ] unsigned char 
;;  f2              4   43[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exp1            1   53[BANK0 ] unsigned char 
;;  exp2            1   52[BANK0 ] unsigned char 
;;  sign            1   51[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   39[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      15       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_application_init
;;		_pid_calc
;;		_handle_ad_loop
;;		_handle_task_process
;;		_Mppt_Charge
;;		___flsub
;; This function uses a non-reentrant model
;;
psect	text45,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\fladd.c"
	line	88
global __ptext45
__ptext45:	;psect for function ___fladd
psect	text45
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\fladd.c"
	line	88
	global	__size_of___fladd
	__size_of___fladd	equ	__end_of___fladd-___fladd
	
___fladd:	
;incstack = 0
	opt	stack 11
; Regs used in ___fladd: [wreg+status,2+status,0+pclath+cstack]
	line	92
	
l18956:	
	movf	(___fladd@f1),w
	movwf	(??___fladd+0)+0
	movf	(___fladd@f1+1),w
	movwf	((??___fladd+0)+0+1)
	movf	(___fladd@f1+2),w
	movwf	((??___fladd+0)+0+2)
	movf	(___fladd@f1+3),w
	movwf	((??___fladd+0)+0+3)
	clrc
	rlf	(??___fladd+0)+2,w
	rlf	(??___fladd+0)+3,w
	movwf	(___fladd@exp1)
	line	93
	movf	(___fladd@f2),w
	movwf	(??___fladd+0)+0
	movf	(___fladd@f2+1),w
	movwf	((??___fladd+0)+0+1)
	movf	(___fladd@f2+2),w
	movwf	((??___fladd+0)+0+2)
	movf	(___fladd@f2+3),w
	movwf	((??___fladd+0)+0+3)
	clrc
	rlf	(??___fladd+0)+2,w
	rlf	(??___fladd+0)+3,w
	movwf	(___fladd@exp2)
	line	94
	
l18958:	
	movf	(___fladd@exp1),w
	skipz
	goto	u12890
	goto	l18964
u12890:
	
l18960:	
	movf	(___fladd@exp2),w
	subwf	(___fladd@exp1),w
	skipnc
	goto	u12901
	goto	u12900
u12901:
	goto	l18968
u12900:
	
l18962:	
	movf	(___fladd@exp2),w
	movwf	(??___fladd+0)+0
	movf	(___fladd@exp1),w
	subwf	(??___fladd+0)+0,f
	movlw	(021h)
	subwf	0+(??___fladd+0)+0,w
	skipc
	goto	u12911
	goto	u12910
u12911:
	goto	l18968
u12910:
	line	95
	
l18964:	
	movf	(___fladd@f2+3),w
	movwf	(?___fladd+3)
	movf	(___fladd@f2+2),w
	movwf	(?___fladd+2)
	movf	(___fladd@f2+1),w
	movwf	(?___fladd+1)
	movf	(___fladd@f2),w
	movwf	(?___fladd)

	goto	l2152
	line	96
	
l18968:	
	movf	(___fladd@exp2),w
	skipz
	goto	u12920
	goto	l2155
u12920:
	
l18970:	
	movf	(___fladd@exp1),w
	subwf	(___fladd@exp2),w
	skipnc
	goto	u12931
	goto	u12930
u12931:
	goto	l18974
u12930:
	
l18972:	
	movf	(___fladd@exp1),w
	movwf	(??___fladd+0)+0
	movf	(___fladd@exp2),w
	subwf	(??___fladd+0)+0,f
	movlw	(021h)
	subwf	0+(??___fladd+0)+0,w
	skipc
	goto	u12941
	goto	u12940
u12941:
	goto	l18974
u12940:
	
l2155:	
	line	97
	goto	l2152
	line	98
	
l18974:	
	movlw	(06h)
	movwf	(___fladd@sign)
	line	99
	
l18976:	
	btfss	(___fladd@f1+3),(31)&7
	goto	u12951
	goto	u12950
u12951:
	goto	l2156
u12950:
	line	100
	
l18978:	
	bsf	(___fladd@sign)+(7/8),(7)&7
	
l2156:	
	line	101
	btfss	(___fladd@f2+3),(31)&7
	goto	u12961
	goto	u12960
u12961:
	goto	l2157
u12960:
	line	102
	
l18980:	
	bsf	(___fladd@sign)+(6/8),(6)&7
	
l2157:	
	line	103
	bsf	(___fladd@f1)+(23/8),(23)&7
	line	104
	
l18982:	
	movlw	0FFh
	andwf	(___fladd@f1),f
	movlw	0FFh
	andwf	(___fladd@f1+1),f
	movlw	0FFh
	andwf	(___fladd@f1+2),f
	movlw	0
	andwf	(___fladd@f1+3),f
	line	105
	
l18984:	
	bsf	(___fladd@f2)+(23/8),(23)&7
	line	106
	movlw	0FFh
	andwf	(___fladd@f2),f
	movlw	0FFh
	andwf	(___fladd@f2+1),f
	movlw	0FFh
	andwf	(___fladd@f2+2),f
	movlw	0
	andwf	(___fladd@f2+3),f
	line	108
	movf	(___fladd@exp2),w
	subwf	(___fladd@exp1),w
	skipnc
	goto	u12971
	goto	u12970
u12971:
	goto	l18996
u12970:
	line	112
	
l18986:	
	lslf	(___fladd@f2),f
	rlf	(___fladd@f2+1),f
	rlf	(___fladd@f2+2),f
	rlf	(___fladd@f2+3),f
	line	113
	decf	(___fladd@exp2),f
	line	114
	
l18988:	
	movf	(___fladd@exp2),w
	xorwf	(___fladd@exp1),w
	skipnz
	goto	u12981
	goto	u12980
u12981:
	goto	l18994
u12980:
	
l18990:	
	decf	(___fladd@sign),f
	movf	((___fladd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u12991
	goto	u12990
u12991:
	goto	l18986
u12990:
	goto	l18994
	line	116
	
l18992:	
	lsrf	(___fladd@f1+3),f
	rrf	(___fladd@f1+2),f
	rrf	(___fladd@f1+1),f
	rrf	(___fladd@f1),f
	line	117
	incf	(___fladd@exp1),f
	line	115
	
l18994:	
	movf	(___fladd@exp1),w
	xorwf	(___fladd@exp2),w
	skipz
	goto	u13001
	goto	u13000
u13001:
	goto	l18992
u13000:
	goto	l2166
	line	119
	
l18996:	
	movf	(___fladd@exp1),w
	subwf	(___fladd@exp2),w
	skipnc
	goto	u13011
	goto	u13010
u13011:
	goto	l2166
u13010:
	line	123
	
l18998:	
	lslf	(___fladd@f1),f
	rlf	(___fladd@f1+1),f
	rlf	(___fladd@f1+2),f
	rlf	(___fladd@f1+3),f
	line	124
	decf	(___fladd@exp1),f
	line	125
	
l19000:	
	movf	(___fladd@exp2),w
	xorwf	(___fladd@exp1),w
	skipnz
	goto	u13021
	goto	u13020
u13021:
	goto	l19006
u13020:
	
l19002:	
	decf	(___fladd@sign),f
	movf	((___fladd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u13031
	goto	u13030
u13031:
	goto	l18998
u13030:
	goto	l19006
	line	127
	
l19004:	
	lsrf	(___fladd@f2+3),f
	rrf	(___fladd@f2+2),f
	rrf	(___fladd@f2+1),f
	rrf	(___fladd@f2),f
	line	128
	incf	(___fladd@exp2),f
	line	126
	
l19006:	
	movf	(___fladd@exp1),w
	xorwf	(___fladd@exp2),w
	skipz
	goto	u13041
	goto	u13040
u13041:
	goto	l19004
u13040:
	line	131
	
l2166:	
	btfss	(___fladd@sign),(7)&7
	goto	u13051
	goto	u13050
u13051:
	goto	l19012
u13050:
	line	133
	
l19008:	
	movlw	0FFh
	xorwf	(___fladd@f1),f
	movlw	0FFh
	xorwf	(___fladd@f1+1),f
	movlw	0FFh
	xorwf	(___fladd@f1+2),f
	movlw	0FFh
	xorwf	(___fladd@f1+3),f
	line	134
	
l19010:	
	incf	(___fladd@f1),f
	skipnz
	incf	(___fladd@f1+1),f
	skipnz
	incf	(___fladd@f1+2),f
	skipnz
	incf	(___fladd@f1+3),f
	line	136
	
l19012:	
	btfss	(___fladd@sign),(6)&7
	goto	u13061
	goto	u13060
u13061:
	goto	l19018
u13060:
	line	138
	
l19014:	
	movlw	0FFh
	xorwf	(___fladd@f2),f
	movlw	0FFh
	xorwf	(___fladd@f2+1),f
	movlw	0FFh
	xorwf	(___fladd@f2+2),f
	movlw	0FFh
	xorwf	(___fladd@f2+3),f
	line	139
	
l19016:	
	incf	(___fladd@f2),f
	skipnz
	incf	(___fladd@f2+1),f
	skipnz
	incf	(___fladd@f2+2),f
	skipnz
	incf	(___fladd@f2+3),f
	line	141
	
l19018:	
	clrf	(___fladd@sign)
	line	142
	
l19020:	
	movf	(___fladd@f1),w
	addwf	(___fladd@f2),f
	movf	(___fladd@f1+1),w
	addwfc	(___fladd@f2+1),f
	movf	(___fladd@f1+2),w
	addwfc	(___fladd@f2+2),f
	movf	(___fladd@f1+3),w
	addwfc	(___fladd@f2+3),f
	line	143
	
l19022:	
	btfss	(___fladd@f2+3),(31)&7
	goto	u13071
	goto	u13070
u13071:
	goto	l19030
u13070:
	line	144
	
l19024:	
	movlw	0FFh
	xorwf	(___fladd@f2),f
	movlw	0FFh
	xorwf	(___fladd@f2+1),f
	movlw	0FFh
	xorwf	(___fladd@f2+2),f
	movlw	0FFh
	xorwf	(___fladd@f2+3),f
	line	145
	
l19026:	
	incf	(___fladd@f2),f
	skipnz
	incf	(___fladd@f2+1),f
	skipnz
	incf	(___fladd@f2+2),f
	skipnz
	incf	(___fladd@f2+3),f
	line	146
	
l19028:	
	clrf	(___fladd@sign)
	incf	(___fladd@sign),f
	line	148
	
l19030:	
	movf	(___fladd@f2+3),w
	movwf	(___flpack@arg+3)
	movf	(___fladd@f2+2),w
	movwf	(___flpack@arg+2)
	movf	(___fladd@f2+1),w
	movwf	(___flpack@arg+1)
	movf	(___fladd@f2),w
	movwf	(___flpack@arg)

	movf	(___fladd@exp1),w
	movwf	(___flpack@exp)
	movf	(___fladd@sign),w
	movwf	(___flpack@sign)
	fcall	___flpack
	movf	(3+(?___flpack)),w
	movwf	(?___fladd+3)
	movf	(2+(?___flpack)),w
	movwf	(?___fladd+2)
	movf	(1+(?___flpack)),w
	movwf	(?___fladd+1)
	movf	(0+(?___flpack)),w
	movwf	(?___fladd)

	line	149
	
l2152:	
	return
	opt stack 0
GLOBAL	__end_of___fladd
	__end_of___fladd:
	signat	___fladd,8316
	global	___flpack

;; *************** function ___flpack *****************
;; Defined at:
;;		line 63 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\double.c"
;; Parameters:    Size  Location     Type
;;  arg             4    3[BANK0 ] unsigned long 
;;  exp             1    7[BANK0 ] unsigned char 
;;  sign            1    8[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    3[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       6       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      10       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___awtofl
;;		___fladd
;;		___fldiv
;;		___flmul
;;		___lbtofl
;;		___lwtofl
;; This function uses a non-reentrant model
;;
psect	text46,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\double.c"
	line	63
global __ptext46
__ptext46:	;psect for function ___flpack
psect	text46
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\double.c"
	line	63
	global	__size_of___flpack
	__size_of___flpack	equ	__end_of___flpack-___flpack
	
___flpack:	
;incstack = 0
	opt	stack 10
; Regs used in ___flpack: [wreg+status,2+status,0]
	line	65
	
l18920:	
	movf	(___flpack@exp),w
	skipz
	goto	u12810
	goto	l2132
u12810:
	
l18922:	
	movf	(___flpack@arg+3),w
	iorwf	(___flpack@arg+2),w
	iorwf	(___flpack@arg+1),w
	iorwf	(___flpack@arg),w
	skipz
	goto	u12821
	goto	u12820
u12821:
	goto	l18926
u12820:
	
l2132:	
	line	66
	clrf	(?___flpack)
	clrf	(?___flpack+1)
	clrf	(?___flpack+2)
	clrf	(?___flpack+3)
	goto	l2133
	line	68
	
l18924:	
	incf	(___flpack@exp),f
	line	69
	lsrf	(___flpack@arg+3),f
	rrf	(___flpack@arg+2),f
	rrf	(___flpack@arg+1),f
	rrf	(___flpack@arg),f
	line	67
	
l18926:	
	movlw	high highword(-33554432)
	andwf	(___flpack@arg+3),w
	btfss	status,2
	goto	u12831
	goto	u12830
u12831:
	goto	l18924
u12830:
	goto	l18934
	line	72
	
l18928:	
	incf	(___flpack@exp),f
	line	73
	
l18930:	
	incf	(___flpack@arg),f
	skipnz
	incf	(___flpack@arg+1),f
	skipnz
	incf	(___flpack@arg+2),f
	skipnz
	incf	(___flpack@arg+3),f
	line	74
	
l18932:	
	lsrf	(___flpack@arg+3),f
	rrf	(___flpack@arg+2),f
	rrf	(___flpack@arg+1),f
	rrf	(___flpack@arg),f
	line	71
	
l18934:	
	movlw	high highword(-16777216)
	andwf	(___flpack@arg+3),w
	btfss	status,2
	goto	u12841
	goto	u12840
u12841:
	goto	l18928
u12840:
	goto	l18938
	line	77
	
l18936:	
	decf	(___flpack@exp),f
	line	78
	lslf	(___flpack@arg),f
	rlf	(___flpack@arg+1),f
	rlf	(___flpack@arg+2),f
	rlf	(___flpack@arg+3),f
	line	76
	
l18938:	
	btfss	(___flpack@arg+2),(23)&7
	goto	u12851
	goto	u12850
u12851:
	goto	l18936
u12850:
	
l2142:	
	line	80
	btfsc	(___flpack@exp),(0)&7
	goto	u12861
	goto	u12860
u12861:
	goto	l18942
u12860:
	line	81
	
l18940:	
	movlw	0FFh
	andwf	(___flpack@arg),f
	movlw	0FFh
	andwf	(___flpack@arg+1),f
	movlw	07Fh
	andwf	(___flpack@arg+2),f
	movlw	0FFh
	andwf	(___flpack@arg+3),f
	line	82
	
l18942:	
	lsrf	(___flpack@exp),f
	line	83
	movf	(___flpack@exp),w
	movwf	((??___flpack+0)+0+3)
	clrf	((??___flpack+0)+0+2)
	clrf	((??___flpack+0)+0+1)
	clrf	(??___flpack+0)+0
	movf	0+(??___flpack+0)+0,w
	iorwf	(___flpack@arg),f
	movf	1+(??___flpack+0)+0,w
	iorwf	(___flpack@arg+1),f
	movf	2+(??___flpack+0)+0,w
	iorwf	(___flpack@arg+2),f
	movf	3+(??___flpack+0)+0,w
	iorwf	(___flpack@arg+3),f
	line	84
	movf	(___flpack@sign),w
	skipz
	goto	u12870
	goto	l2144
u12870:
	line	85
	
l18944:	
	bsf	(___flpack@arg)+(31/8),(31)&7
	
l2144:	
	line	86
	line	87
	
l2133:	
	return
	opt stack 0
GLOBAL	__end_of___flpack
	__end_of___flpack:
	signat	___flpack,12412
	global	___flmul

;; *************** function ___flmul *****************
;; Defined at:
;;		line 50 in file "D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\flmul.c"
;; Parameters:    Size  Location     Type
;;  f1              4   20[BANK0 ] unsigned char 
;;  f2              4   24[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    4   33[BANK0 ] unsigned long 
;;  sign            1   38[BANK0 ] unsigned char 
;;  cntr            1   37[BANK0 ] unsigned char 
;;  exp             1   32[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   20[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 1F/0
;;		On exit  : 1F/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       8       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       7       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       4       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0      19       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___flpack
;; This function is called by:
;;		_read_param_eeprom
;;		_auto_system
;;		_application_init
;;		_pid_calc
;;		_handle_ad_loop
;;		_handle_task_process
;;		_handle_uart_rx_buf
;; This function uses a non-reentrant model
;;
psect	text47,local,class=CODE,delta=2,merge=1
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\flmul.c"
	line	50
global __ptext47
__ptext47:	;psect for function ___flmul
psect	text47
	file	"D:\Program Files (x86)\Microchip\xc8\v1.30\sources\common\flmul.c"
	line	50
	global	__size_of___flmul
	__size_of___flmul	equ	__end_of___flmul-___flmul
	
___flmul:	
;incstack = 0
	opt	stack 10
; Regs used in ___flmul: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l19088:	
	movf	(___flmul@f1),w
	movwf	(??___flmul+0)+0
	movf	(___flmul@f1+1),w
	movwf	((??___flmul+0)+0+1)
	movf	(___flmul@f1+2),w
	movwf	((??___flmul+0)+0+2)
	movf	(___flmul@f1+3),w
	movwf	((??___flmul+0)+0+3)
	clrc
	rlf	(??___flmul+0)+2,w
	rlf	(??___flmul+0)+3,w
	movwf	(___flmul@exp)
	movf	((___flmul@exp)),f
	skipz
	goto	u13151
	goto	u13150
u13151:
	goto	l19092
u13150:
	line	56
	
l19090:	
	clrf	(?___flmul)
	clrf	(?___flmul+1)
	clrf	(?___flmul+2)
	clrf	(?___flmul+3)
	goto	l2198
	line	57
	
l19092:	
	movf	(___flmul@f2),w
	movwf	(??___flmul+0)+0
	movf	(___flmul@f2+1),w
	movwf	((??___flmul+0)+0+1)
	movf	(___flmul@f2+2),w
	movwf	((??___flmul+0)+0+2)
	movf	(___flmul@f2+3),w
	movwf	((??___flmul+0)+0+3)
	clrc
	rlf	(??___flmul+0)+2,w
	rlf	(??___flmul+0)+3,w
	movwf	(___flmul@sign)
	movf	((___flmul@sign)),f
	skipz
	goto	u13161
	goto	u13160
u13161:
	goto	l19096
u13160:
	line	58
	
l19094:	
	clrf	(?___flmul)
	clrf	(?___flmul+1)
	clrf	(?___flmul+2)
	clrf	(?___flmul+3)
	goto	l2198
	line	59
	
l19096:	
	movf	(___flmul@sign),w
	addlw	07Bh
	addwf	(___flmul@exp),f
	line	60
	
l19098:	
	movf	0+(((___flmul@f1))+3),w
	movwf	(___flmul@sign)
	line	61
	
l19100:	
	movf	0+(((___flmul@f2))+3),w
	xorwf	(___flmul@sign),f
	line	62
	
l19102:	
	movlw	(080h)
	andwf	(___flmul@sign),f
	line	63
	
l19104:	
	bsf	(___flmul@f1)+(23/8),(23)&7
	line	65
	
l19106:	
	bsf	(___flmul@f2)+(23/8),(23)&7
	line	66
	
l19108:	
	movlw	0FFh
	andwf	(___flmul@f2),f
	movlw	0FFh
	andwf	(___flmul@f2+1),f
	movlw	0FFh
	andwf	(___flmul@f2+2),f
	movlw	0
	andwf	(___flmul@f2+3),f
	line	67
	
l19110:	
	clrf	(___flmul@f3_as_product)
	clrf	(___flmul@f3_as_product+1)
	clrf	(___flmul@f3_as_product+2)
	clrf	(___flmul@f3_as_product+3)
	line	68
	
l19112:	
	movlw	(07h)
	movwf	(___flmul@cntr)
	line	70
	
l19114:	
	btfss	(___flmul@f1),(0)&7
	goto	u13171
	goto	u13170
u13171:
	goto	l19118
u13170:
	line	71
	
l19116:	
	movf	(___flmul@f2),w
	addwf	(___flmul@f3_as_product),f
	movf	(___flmul@f2+1),w
	addwfc	(___flmul@f3_as_product+1),f
	movf	(___flmul@f2+2),w
	addwfc	(___flmul@f3_as_product+2),f
	movf	(___flmul@f2+3),w
	addwfc	(___flmul@f3_as_product+3),f
	line	72
	
l19118:	
	lsrf	(___flmul@f1+3),f
	rrf	(___flmul@f1+2),f
	rrf	(___flmul@f1+1),f
	rrf	(___flmul@f1),f
	line	73
	
l19120:	
	lslf	(___flmul@f2),f
	rlf	(___flmul@f2+1),f
	rlf	(___flmul@f2+2),f
	rlf	(___flmul@f2+3),f
	line	74
	
l19122:	
	decfsz	(___flmul@cntr),f
	goto	u13181
	goto	u13180
u13181:
	goto	l19114
u13180:
	line	75
	
l19124:	
	movlw	(011h)
	movwf	(___flmul@cntr)
	line	77
	
l19126:	
	btfss	(___flmul@f1),(0)&7
	goto	u13191
	goto	u13190
u13191:
	goto	l19130
u13190:
	line	78
	
l19128:	
	movf	(___flmul@f2),w
	addwf	(___flmul@f3_as_product),f
	movf	(___flmul@f2+1),w
	addwfc	(___flmul@f3_as_product+1),f
	movf	(___flmul@f2+2),w
	addwfc	(___flmul@f3_as_product+2),f
	movf	(___flmul@f2+3),w
	addwfc	(___flmul@f3_as_product+3),f
	line	79
	
l19130:	
	lsrf	(___flmul@f1+3),f
	rrf	(___flmul@f1+2),f
	rrf	(___flmul@f1+1),f
	rrf	(___flmul@f1),f
	line	80
	
l19132:	
	lsrf	(___flmul@f3_as_product+3),f
	rrf	(___flmul@f3_as_product+2),f
	rrf	(___flmul@f3_as_product+1),f
	rrf	(___flmul@f3_as_product),f
	line	81
	
l19134:	
	decfsz	(___flmul@cntr),f
	goto	u13201
	goto	u13200
u13201:
	goto	l19126
u13200:
	line	82
	
l19136:	
	movf	(___flmul@f3_as_product+3),w
	movwf	(___flpack@arg+3)
	movf	(___flmul@f3_as_product+2),w
	movwf	(___flpack@arg+2)
	movf	(___flmul@f3_as_product+1),w
	movwf	(___flpack@arg+1)
	movf	(___flmul@f3_as_product),w
	movwf	(___flpack@arg)

	movf	(___flmul@exp),w
	movwf	(___flpack@exp)
	movf	(___flmul@sign),w
	movwf	(___flpack@sign)
	fcall	___flpack
	movf	(3+(?___flpack)),w
	movwf	(?___flmul+3)
	movf	(2+(?___flpack)),w
	movwf	(?___flmul+2)
	movf	(1+(?___flpack)),w
	movwf	(?___flmul+1)
	movf	(0+(?___flpack)),w
	movwf	(?___flmul)

	line	83
	
l2198:	
	return
	opt stack 0
GLOBAL	__end_of___flmul
	__end_of___flmul:
	signat	___flmul,8316
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 62 in file "D:\MCUProject\ZH-SL-F60\src\interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  time_cnt        2    1[BANK0 ] unsigned int 
;;  r1_data         1    0[BANK0 ] unsigned char 
;;  r2_data         1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 10/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       3       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          8       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       3       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_Disable_Bost_Pwm
;;		i1_Set_Bost_Pwm_Duty
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
psect	intentry
	file	"D:\MCUProject\ZH-SL-F60\src\interrupt.c"
	line	62
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
;incstack = 0
	opt	stack 8
; Regs used in _isr: [wreg+fsr1l+fsr1h+status,2+status,0+pclath+cstack]
psect	intentry
	pagesel	$
	line	67
	
i1l15550:	
;interrupt.c: 64: unsigned char r1_data,r2_data;
;interrupt.c: 67: if (TMR1IE && TMR1IF)
	movlb 1	; select bank1
	btfss	(1160/8)^080h,(1160)&7	;volatile
	goto	u870_21
	goto	u870_20
u870_21:
	goto	i1l15784
u870_20:
	
i1l15552:	
	movlb 0	; select bank0
	btfss	(136/8),(136)&7	;volatile
	goto	u871_21
	goto	u871_20
u871_21:
	goto	i1l15784
u871_20:
	line	69
	
i1l15554:	
;interrupt.c: 68: {
;interrupt.c: 69: TMR1IF = 0x00;
	bcf	(136/8),(136)&7	;volatile
	line	70
	
i1l15556:	
;interrupt.c: 70: TMR1H = 0xE0;
	movlw	(0E0h)
	movwf	(23)	;volatile
	line	71
;interrupt.c: 71: TMR1L = 0xC0;
	movlw	(0C0h)
	movwf	(22)	;volatile
	line	74
;interrupt.c: 74: if(system_check_time==0x01)
	movlb 2	; select bank2
	decf	(_system_check_time)^0100h,w
	skipz
	goto	u872_21
	goto	u872_20
u872_21:
	goto	i1l15596
u872_20:
	line	76
	
i1l15558:	
;interrupt.c: 75: {
;interrupt.c: 76: system_time_count++;
	movlb 3	; select bank3
	incf	(_system_time_count)^0180h,f
	skipnz
	incf	(_system_time_count+1)^0180h,f
	line	78
	
i1l15560:	
;interrupt.c: 78: if(system_time_count>800)
	movlw	high(0321h)
	subwf	(_system_time_count+1)^0180h,w
	movlw	low(0321h)
	skipnz
	subwf	(_system_time_count)^0180h,w
	skipc
	goto	u873_21
	goto	u873_20
u873_21:
	goto	i1l15588
u873_20:
	line	80
	
i1l15562:	
;interrupt.c: 82: set_1HZ_flag^=0x01;
	clrf	(_system_time_count)^0180h
	clrf	(_system_time_count+1)^0180h
	line	84
	
i1l15564:	
;interrupt.c: 84: if(have_person1_flag==0x01)
	movlb 1	; select bank1
	decf	(_have_person1_flag)^080h,w
	skipz
	goto	u874_21
	goto	u874_20
u874_21:
	goto	i1l15572
u874_20:
	line	86
	
i1l15566:	
;interrupt.c: 85: {
;interrupt.c: 86: have_person1_time_count++;
	movlb 2	; select bank2
	incf	(_have_person1_time_count)^0100h,f
	line	88
	
i1l15568:	
;interrupt.c: 88: if(have_person1_time_count>25)
	movlw	(01Ah)
	subwf	(_have_person1_time_count)^0100h,w
	skipc
	goto	u875_21
	goto	u875_20
u875_21:
	goto	i1l15572
u875_20:
	line	90
	
i1l15570:	
;interrupt.c: 89: {
;interrupt.c: 90: have_person1_time_count=0x00;
	clrf	(_have_person1_time_count)^0100h
	line	92
;interrupt.c: 92: have_person1_flag=0x00;
	movlb 1	; select bank1
	clrf	(_have_person1_flag)^080h
	line	96
	
i1l15572:	
;interrupt.c: 93: }
;interrupt.c: 94: }
;interrupt.c: 96: if(open_sleep_time==0x01 && device_status==0x00)
	movlb 2	; select bank2
	decf	(_open_sleep_time)^0100h,w
	skipz
	goto	u876_21
	goto	u876_20
u876_21:
	goto	i1l15588
u876_20:
	
i1l15574:	
	movlb 1	; select bank1
	movf	(_device_status)^080h,f
	skipz
	goto	u877_21
	goto	u877_20
u877_21:
	goto	i1l15588
u877_20:
	line	98
	
i1l15576:	
;interrupt.c: 97: {
;interrupt.c: 98: sleep_time_count++;
	movlb 4	; select bank4
	incf	(_sleep_time_count)^0200h,f
	skipnz
	incf	(_sleep_time_count+1)^0200h,f
	line	100
	
i1l15578:	
;interrupt.c: 100: if(sleep_time_count>=20)
	movlw	high(014h)
	subwf	(_sleep_time_count+1)^0200h,w
	movlw	low(014h)
	skipnz
	subwf	(_sleep_time_count)^0200h,w
	skipc
	goto	u878_21
	goto	u878_20
u878_21:
	goto	i1l15588
u878_20:
	line	102
	
i1l15580:	
;interrupt.c: 101: {
;interrupt.c: 102: sleep_time_count=0x00;
	clrf	(_sleep_time_count)^0200h
	clrf	(_sleep_time_count+1)^0200h
	line	106
	
i1l15582:	
;interrupt.c: 106: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	107
	
i1l15584:	
;interrupt.c: 107: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	108
	
i1l15586:	
;interrupt.c: 108: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	114
	
i1l15588:	
;interrupt.c: 109: }
;interrupt.c: 110: }
;interrupt.c: 112: }
;interrupt.c: 114: scan_key_time_count++;
	movlb 2	; select bank2
	incf	(_scan_key_time_count)^0100h,f
	line	116
	
i1l15590:	
;interrupt.c: 116: if(scan_key_time_count>=40)
	movlw	(028h)
	subwf	(_scan_key_time_count)^0100h,w
	skipc
	goto	u879_21
	goto	u879_20
u879_21:
	goto	i1l15596
u879_20:
	line	118
	
i1l15592:	
;interrupt.c: 117: {
;interrupt.c: 118: scan_key_time_count=0x00;
	clrf	(_scan_key_time_count)^0100h
	line	120
	
i1l15594:	
;interrupt.c: 120: handle_scan_key_flag=0x01;
	clrf	(_handle_scan_key_flag)^0100h
	incf	(_handle_scan_key_flag)^0100h,f
	line	125
	
i1l15596:	
;interrupt.c: 121: }
;interrupt.c: 123: }
;interrupt.c: 125: if(open_discharge_time==0x01)
	decf	(_open_discharge_time)^0100h,w
	skipz
	goto	u880_21
	goto	u880_20
u880_21:
	goto	i1l15622
u880_20:
	line	127
	
i1l15598:	
;interrupt.c: 126: {
;interrupt.c: 127: if(ms_cnt<1000)
	movlw	high(03E8h)
	movlb 3	; select bank3
	subwf	(_ms_cnt+1)^0180h,w
	movlw	low(03E8h)
	skipnz
	subwf	(_ms_cnt)^0180h,w
	skipnc
	goto	u881_21
	goto	u881_20
u881_21:
	goto	i1l15602
u881_20:
	line	129
	
i1l15600:	
;interrupt.c: 128: {
;interrupt.c: 129: ms_cnt++;
	incf	(_ms_cnt)^0180h,f
	skipnz
	incf	(_ms_cnt+1)^0180h,f
	line	130
;interrupt.c: 130: }
	goto	i1l15622
	line	133
	
i1l15602:	
;interrupt.c: 131: else
;interrupt.c: 132: {
;interrupt.c: 133: ms_cnt=0x00;
	clrf	(_ms_cnt)^0180h
	clrf	(_ms_cnt+1)^0180h
	line	135
	
i1l15604:	
;interrupt.c: 135: if(se_cnt<60)
	movlw	high(03Ch)
	subwf	(_se_cnt+1)^0180h,w
	movlw	low(03Ch)
	skipnz
	subwf	(_se_cnt)^0180h,w
	skipnc
	goto	u882_21
	goto	u882_20
u882_21:
	goto	i1l15608
u882_20:
	line	137
	
i1l15606:	
;interrupt.c: 136: {
;interrupt.c: 137: se_cnt++;
	incf	(_se_cnt)^0180h,f
	skipnz
	incf	(_se_cnt+1)^0180h,f
	line	138
;interrupt.c: 138: }
	goto	i1l15622
	line	141
	
i1l15608:	
;interrupt.c: 139: else
;interrupt.c: 140: {
;interrupt.c: 141: se_cnt=0x00;
	clrf	(_se_cnt)^0180h
	clrf	(_se_cnt+1)^0180h
	line	143
	
i1l15610:	
;interrupt.c: 143: if(mi_cnt<60)
	movlw	high(03Ch)
	movlb 2	; select bank2
	subwf	(_mi_cnt+1)^0100h,w
	movlw	low(03Ch)
	skipnz
	subwf	(_mi_cnt)^0100h,w
	skipnc
	goto	u883_21
	goto	u883_20
u883_21:
	goto	i1l15614
u883_20:
	line	145
	
i1l15612:	
;interrupt.c: 144: {
;interrupt.c: 145: mi_cnt++;
	incf	(_mi_cnt)^0100h,f
	skipnz
	incf	(_mi_cnt+1)^0100h,f
	line	146
;interrupt.c: 146: }
	goto	i1l15622
	line	149
	
i1l15614:	
;interrupt.c: 147: else
;interrupt.c: 148: {
;interrupt.c: 149: mi_cnt=0x00;
	clrf	(_mi_cnt)^0100h
	clrf	(_mi_cnt+1)^0100h
	line	151
	
i1l15616:	
;interrupt.c: 151: if(ho_cnt<24)
	movlw	high(018h)
	subwf	(_ho_cnt+1),w
	movlw	low(018h)
	skipnz
	subwf	(_ho_cnt),w
	skipnc
	goto	u884_21
	goto	u884_20
u884_21:
	goto	i1l15620
u884_20:
	line	153
	
i1l15618:	
;interrupt.c: 152: {
;interrupt.c: 153: ho_cnt++;
	incf	(_ho_cnt),f
	skipnz
	incf	(_ho_cnt+1),f
	line	154
;interrupt.c: 154: }
	goto	i1l15622
	line	157
	
i1l15620:	
;interrupt.c: 155: else
;interrupt.c: 156: {
;interrupt.c: 157: ho_cnt=0x00;
	clrf	(_ho_cnt)
	clrf	(_ho_cnt+1)
	line	164
	
i1l15622:	
;interrupt.c: 158: }
;interrupt.c: 159: }
;interrupt.c: 160: }
;interrupt.c: 161: }
;interrupt.c: 162: }
;interrupt.c: 164: if(open_an0_time==0x01)
	movlb 2	; select bank2
	decf	(_open_an0_time)^0100h,w
	skipz
	goto	u885_21
	goto	u885_20
u885_21:
	goto	i1l15632
u885_20:
	line	166
	
i1l15624:	
;interrupt.c: 165: {
;interrupt.c: 166: an0_time_count++;
	movlb 3	; select bank3
	incf	(_an0_time_count)^0180h,f
	skipnz
	incf	(_an0_time_count+1)^0180h,f
	line	168
	
i1l15626:	
;interrupt.c: 168: if(an0_time_count>=1000)
	movlw	high(03E8h)
	subwf	(_an0_time_count+1)^0180h,w
	movlw	low(03E8h)
	skipnz
	subwf	(_an0_time_count)^0180h,w
	skipc
	goto	u886_21
	goto	u886_20
u886_21:
	goto	i1l15632
u886_20:
	line	170
	
i1l15628:	
;interrupt.c: 169: {
;interrupt.c: 170: an0_time_count=0x00;
	clrf	(_an0_time_count)^0180h
	clrf	(_an0_time_count+1)^0180h
	line	172
	
i1l15630:	
;interrupt.c: 172: handle_an0_process_flag=0x01;
	movlb 2	; select bank2
	clrf	(_handle_an0_process_flag)^0100h
	incf	(_handle_an0_process_flag)^0100h,f
	line	176
	
i1l15632:	
;interrupt.c: 173: }
;interrupt.c: 175: }
;interrupt.c: 176: if(open_an1_time==0x01)
	movlb 2	; select bank2
	decf	(_open_an1_time)^0100h,w
	skipz
	goto	u887_21
	goto	u887_20
u887_21:
	goto	i1l15642
u887_20:
	line	178
	
i1l15634:	
;interrupt.c: 177: {
;interrupt.c: 178: an1_time_count++;
	movlb 3	; select bank3
	incf	(_an1_time_count)^0180h,f
	skipnz
	incf	(_an1_time_count+1)^0180h,f
	line	180
	
i1l15636:	
;interrupt.c: 180: if(an1_time_count>=1000)
	movlw	high(03E8h)
	subwf	(_an1_time_count+1)^0180h,w
	movlw	low(03E8h)
	skipnz
	subwf	(_an1_time_count)^0180h,w
	skipc
	goto	u888_21
	goto	u888_20
u888_21:
	goto	i1l15642
u888_20:
	line	182
	
i1l15638:	
;interrupt.c: 181: {
;interrupt.c: 182: an1_time_count=0x00;
	clrf	(_an1_time_count)^0180h
	clrf	(_an1_time_count+1)^0180h
	line	184
	
i1l15640:	
;interrupt.c: 184: handle_an1_process_flag=0x01;
	movlb 2	; select bank2
	clrf	(_handle_an1_process_flag)^0100h
	incf	(_handle_an1_process_flag)^0100h,f
	line	188
	
i1l15642:	
;interrupt.c: 185: }
;interrupt.c: 187: }
;interrupt.c: 188: if(open_an2_time==0x01)
	movlb 2	; select bank2
	decf	(_open_an2_time)^0100h,w
	skipz
	goto	u889_21
	goto	u889_20
u889_21:
	goto	i1l15652
u889_20:
	line	190
	
i1l15644:	
;interrupt.c: 189: {
;interrupt.c: 190: an2_time_count++;
	movlb 3	; select bank3
	incf	(_an2_time_count)^0180h,f
	skipnz
	incf	(_an2_time_count+1)^0180h,f
	line	192
	
i1l15646:	
;interrupt.c: 192: if(an2_time_count>=5)
	movlw	high(05h)
	subwf	(_an2_time_count+1)^0180h,w
	movlw	low(05h)
	skipnz
	subwf	(_an2_time_count)^0180h,w
	skipc
	goto	u890_21
	goto	u890_20
u890_21:
	goto	i1l15652
u890_20:
	line	194
	
i1l15648:	
;interrupt.c: 193: {
;interrupt.c: 194: an2_time_count=0x00;
	clrf	(_an2_time_count)^0180h
	clrf	(_an2_time_count+1)^0180h
	line	196
	
i1l15650:	
;interrupt.c: 196: handle_an2_process_flag=0x01;
	movlb 2	; select bank2
	clrf	(_handle_an2_process_flag)^0100h
	incf	(_handle_an2_process_flag)^0100h,f
	line	201
	
i1l15652:	
;interrupt.c: 197: }
;interrupt.c: 199: }
;interrupt.c: 201: if(open_an3_time==0x01)
	movlb 2	; select bank2
	decf	(_open_an3_time)^0100h,w
	skipz
	goto	u891_21
	goto	u891_20
u891_21:
	goto	i1l15662
u891_20:
	line	203
	
i1l15654:	
;interrupt.c: 202: {
;interrupt.c: 203: an3_time_count++;
	movlb 3	; select bank3
	incf	(_an3_time_count)^0180h,f
	skipnz
	incf	(_an3_time_count+1)^0180h,f
	line	205
	
i1l15656:	
;interrupt.c: 205: if(an3_time_count>=5)
	movlw	high(05h)
	subwf	(_an3_time_count+1)^0180h,w
	movlw	low(05h)
	skipnz
	subwf	(_an3_time_count)^0180h,w
	skipc
	goto	u892_21
	goto	u892_20
u892_21:
	goto	i1l15662
u892_20:
	line	207
	
i1l15658:	
;interrupt.c: 206: {
;interrupt.c: 207: an3_time_count=0x00;
	clrf	(_an3_time_count)^0180h
	clrf	(_an3_time_count+1)^0180h
	line	209
	
i1l15660:	
;interrupt.c: 209: handle_an3_process_flag=0x01;
	movlb 2	; select bank2
	clrf	(_handle_an3_process_flag)^0100h
	incf	(_handle_an3_process_flag)^0100h,f
	line	215
	
i1l15662:	
;interrupt.c: 210: }
;interrupt.c: 212: }
;interrupt.c: 215: if(open_an9_time==0x01)
	movlb 2	; select bank2
	decf	(_open_an9_time)^0100h,w
	skipz
	goto	u893_21
	goto	u893_20
u893_21:
	goto	i1l15672
u893_20:
	line	217
	
i1l15664:	
;interrupt.c: 216: {
;interrupt.c: 217: an9_time_count++;
	movlb 3	; select bank3
	incf	(_an9_time_count)^0180h,f
	skipnz
	incf	(_an9_time_count+1)^0180h,f
	line	219
	
i1l15666:	
;interrupt.c: 219: if(an9_time_count>=5)
	movlw	high(05h)
	subwf	(_an9_time_count+1)^0180h,w
	movlw	low(05h)
	skipnz
	subwf	(_an9_time_count)^0180h,w
	skipc
	goto	u894_21
	goto	u894_20
u894_21:
	goto	i1l15672
u894_20:
	line	221
	
i1l15668:	
;interrupt.c: 220: {
;interrupt.c: 221: an9_time_count=0x00;
	clrf	(_an9_time_count)^0180h
	clrf	(_an9_time_count+1)^0180h
	line	223
	
i1l15670:	
;interrupt.c: 223: handle_an9_process_flag=0x01;
	movlb 2	; select bank2
	clrf	(_handle_an9_process_flag)^0100h
	incf	(_handle_an9_process_flag)^0100h,f
	line	230
	
i1l15672:	
;interrupt.c: 226: }
;interrupt.c: 228: }
;interrupt.c: 230: if(open_an4_time==0x01)
	movlb 2	; select bank2
	decf	(_open_an4_time)^0100h,w
	skipz
	goto	u895_21
	goto	u895_20
u895_21:
	goto	i1l15682
u895_20:
	line	232
	
i1l15674:	
;interrupt.c: 231: {
;interrupt.c: 232: an4_time_count++;
	movlb 3	; select bank3
	incf	(_an4_time_count)^0180h,f
	skipnz
	incf	(_an4_time_count+1)^0180h,f
	line	234
	
i1l15676:	
;interrupt.c: 234: if(an4_time_count>=5)
	movlw	high(05h)
	subwf	(_an4_time_count+1)^0180h,w
	movlw	low(05h)
	skipnz
	subwf	(_an4_time_count)^0180h,w
	skipc
	goto	u896_21
	goto	u896_20
u896_21:
	goto	i1l15682
u896_20:
	line	236
	
i1l15678:	
;interrupt.c: 235: {
;interrupt.c: 236: an4_time_count=0x00;
	clrf	(_an4_time_count)^0180h
	clrf	(_an4_time_count+1)^0180h
	line	238
	
i1l15680:	
;interrupt.c: 238: handle_an4_process_flag=0x01;
	movlb 2	; select bank2
	clrf	(_handle_an4_process_flag)^0100h
	incf	(_handle_an4_process_flag)^0100h,f
	line	243
	
i1l15682:	
;interrupt.c: 239: }
;interrupt.c: 241: }
;interrupt.c: 243: if(open_an10_time==0x01)
	movlb 2	; select bank2
	decf	(_open_an10_time)^0100h,w
	skipz
	goto	u897_21
	goto	u897_20
u897_21:
	goto	i1l15692
u897_20:
	line	245
	
i1l15684:	
;interrupt.c: 244: {
;interrupt.c: 245: an10_time_count++;
	movlb 4	; select bank4
	incf	(_an10_time_count)^0200h,f
	skipnz
	incf	(_an10_time_count+1)^0200h,f
	line	247
	
i1l15686:	
;interrupt.c: 247: if(an10_time_count>=2)
	movlw	high(02h)
	subwf	(_an10_time_count+1)^0200h,w
	movlw	low(02h)
	skipnz
	subwf	(_an10_time_count)^0200h,w
	skipc
	goto	u898_21
	goto	u898_20
u898_21:
	goto	i1l15692
u898_20:
	line	249
	
i1l15688:	
;interrupt.c: 248: {
;interrupt.c: 249: an10_time_count=0x00;
	clrf	(_an10_time_count)^0200h
	clrf	(_an10_time_count+1)^0200h
	line	251
	
i1l15690:	
;interrupt.c: 251: handle_an10_process_flag=0x01;
	movlb 2	; select bank2
	clrf	(_handle_an10_process_flag)^0100h
	incf	(_handle_an10_process_flag)^0100h,f
	line	257
	
i1l15692:	
;interrupt.c: 252: }
;interrupt.c: 254: }
;interrupt.c: 257: if (uart1_time_count > 0x00)
	movlb 1	; select bank1
	movf	(_uart1_time_count)^080h,w
	skipz
	goto	u899_20
	goto	i1l15758
u899_20:
	line	259
	
i1l15694:	
;interrupt.c: 258: {
;interrupt.c: 259: uart1_time_count--;
	decf	(_uart1_time_count)^080h,f
	line	261
;interrupt.c: 261: if(uart1_time_count==0)
	movf	(_uart1_time_count)^080h,f
	skipz
	goto	u900_21
	goto	u900_20
u900_21:
	goto	i1l15758
u900_20:
	line	263
	
i1l15696:	
;interrupt.c: 262: {
;interrupt.c: 263: if((uart1_receive_byte_count==5)&&(uart1_rx_buf[1]==0xA1)&&(uart1_rx_buf[4]==0xAA))
	movf	(_uart1_receive_byte_count)^080h,w
	xorlw	05h&0ffh
	skipz
	goto	u901_21
	goto	u901_20
u901_21:
	goto	i1l15704
u901_20:
	
i1l15698:	
	movlb 8	; select bank8
	movf	0+(_uart1_rx_buf)^0400h+01h,w
	xorlw	0A1h&0ffh
	skipz
	goto	u902_21
	goto	u902_20
u902_21:
	goto	i1l15704
u902_20:
	
i1l15700:	
	movf	0+(_uart1_rx_buf)^0400h+04h,w
	xorlw	0AAh&0ffh
	skipz
	goto	u903_21
	goto	u903_20
u903_21:
	goto	i1l15704
u903_20:
	line	265
	
i1l15702:	
;interrupt.c: 264: {
;interrupt.c: 265: rx_frame_kind=0x01;
	movlb 2	; select bank2
	clrf	(_rx_frame_kind)^0100h
	incf	(_rx_frame_kind)^0100h,f
	line	267
;interrupt.c: 267: uart1_receive_flag=TRUE;
	clrf	(_uart1_receive_flag)^0100h
	incf	(_uart1_receive_flag)^0100h,f
	line	268
;interrupt.c: 268: }
	movlb 1	; select bank1
	goto	i1l15758
	line	269
	
i1l15704:	
;interrupt.c: 269: else if((uart1_receive_byte_count==5)&&(uart1_rx_buf[1]==0xA2)&&(uart1_rx_buf[4]==0xAA))
	movlb 1	; select bank1
	movf	(_uart1_receive_byte_count)^080h,w
	xorlw	05h&0ffh
	skipz
	goto	u904_21
	goto	u904_20
u904_21:
	goto	i1l15714
u904_20:
	
i1l15706:	
	movlb 8	; select bank8
	movf	0+(_uart1_rx_buf)^0400h+01h,w
	xorlw	0A2h&0ffh
	skipz
	goto	u905_21
	goto	u905_20
u905_21:
	goto	i1l15714
u905_20:
	
i1l15708:	
	movf	0+(_uart1_rx_buf)^0400h+04h,w
	xorlw	0AAh&0ffh
	skipz
	goto	u906_21
	goto	u906_20
u906_21:
	goto	i1l15714
u906_20:
	line	271
	
i1l15710:	
;interrupt.c: 270: {
;interrupt.c: 271: rx_frame_kind=0x02;
	movlw	(02h)
	movlb 2	; select bank2
	movwf	(_rx_frame_kind)^0100h
	line	273
	
i1l15712:	
;interrupt.c: 273: uart1_receive_flag=TRUE;
	clrf	(_uart1_receive_flag)^0100h
	incf	(_uart1_receive_flag)^0100h,f
	line	274
;interrupt.c: 274: }
	movlb 1	; select bank1
	goto	i1l15758
	line	275
	
i1l15714:	
;interrupt.c: 275: else if((uart1_receive_byte_count==21)&&(uart1_rx_buf[1]==0xA3)&&(uart1_rx_buf[20]==0xAA))
	movlb 1	; select bank1
	movf	(_uart1_receive_byte_count)^080h,w
	xorlw	015h&0ffh
	skipz
	goto	u907_21
	goto	u907_20
u907_21:
	goto	i1l15724
u907_20:
	
i1l15716:	
	movlb 8	; select bank8
	movf	0+(_uart1_rx_buf)^0400h+01h,w
	xorlw	0A3h&0ffh
	skipz
	goto	u908_21
	goto	u908_20
u908_21:
	goto	i1l15724
u908_20:
	
i1l15718:	
	movf	0+(_uart1_rx_buf)^0400h+014h,w
	xorlw	0AAh&0ffh
	skipz
	goto	u909_21
	goto	u909_20
u909_21:
	goto	i1l15724
u909_20:
	line	277
	
i1l15720:	
;interrupt.c: 276: {
;interrupt.c: 277: rx_frame_kind=0x03;
	movlw	(03h)
	movlb 2	; select bank2
	movwf	(_rx_frame_kind)^0100h
	goto	i1l15712
	line	281
	
i1l15724:	
;interrupt.c: 281: else if((uart1_receive_byte_count==5)&&(uart1_rx_buf[1]==0xA4)&&(uart1_rx_buf[4]==0xAA))
	movlb 1	; select bank1
	movf	(_uart1_receive_byte_count)^080h,w
	xorlw	05h&0ffh
	skipz
	goto	u910_21
	goto	u910_20
u910_21:
	goto	i1l15734
u910_20:
	
i1l15726:	
	movlb 8	; select bank8
	movf	0+(_uart1_rx_buf)^0400h+01h,w
	xorlw	0A4h&0ffh
	skipz
	goto	u911_21
	goto	u911_20
u911_21:
	goto	i1l15734
u911_20:
	
i1l15728:	
	movf	0+(_uart1_rx_buf)^0400h+04h,w
	xorlw	0AAh&0ffh
	skipz
	goto	u912_21
	goto	u912_20
u912_21:
	goto	i1l15734
u912_20:
	line	283
	
i1l15730:	
;interrupt.c: 282: {
;interrupt.c: 283: rx_frame_kind=0x04;
	movlw	(04h)
	movlb 2	; select bank2
	movwf	(_rx_frame_kind)^0100h
	goto	i1l15712
	line	287
	
i1l15734:	
;interrupt.c: 287: else if((uart1_receive_byte_count==5)&&(uart1_rx_buf[1]==0xA5)&&(uart1_rx_buf[4]==0xAA))
	movlb 1	; select bank1
	movf	(_uart1_receive_byte_count)^080h,w
	xorlw	05h&0ffh
	skipz
	goto	u913_21
	goto	u913_20
u913_21:
	goto	i1l15744
u913_20:
	
i1l15736:	
	movlb 8	; select bank8
	movf	0+(_uart1_rx_buf)^0400h+01h,w
	xorlw	0A5h&0ffh
	skipz
	goto	u914_21
	goto	u914_20
u914_21:
	goto	i1l15744
u914_20:
	
i1l15738:	
	movf	0+(_uart1_rx_buf)^0400h+04h,w
	xorlw	0AAh&0ffh
	skipz
	goto	u915_21
	goto	u915_20
u915_21:
	goto	i1l15744
u915_20:
	line	289
	
i1l15740:	
;interrupt.c: 288: {
;interrupt.c: 289: rx_frame_kind=0x05;
	movlw	(05h)
	movlb 2	; select bank2
	movwf	(_rx_frame_kind)^0100h
	goto	i1l15712
	line	293
	
i1l15744:	
;interrupt.c: 293: else if((uart1_receive_byte_count==5)&&(uart1_rx_buf[1]==0xA6)&&(uart1_rx_buf[4]==0xAA))
	movlb 1	; select bank1
	movf	(_uart1_receive_byte_count)^080h,w
	xorlw	05h&0ffh
	skipz
	goto	u916_21
	goto	u916_20
u916_21:
	goto	i1l258
u916_20:
	
i1l15746:	
	movlb 8	; select bank8
	movf	0+(_uart1_rx_buf)^0400h+01h,w
	xorlw	0A6h&0ffh
	skipz
	goto	u917_21
	goto	u917_20
u917_21:
	goto	i1l258
u917_20:
	
i1l15748:	
	movf	0+(_uart1_rx_buf)^0400h+04h,w
	xorlw	0AAh&0ffh
	skipz
	goto	u918_21
	goto	u918_20
u918_21:
	goto	i1l258
u918_20:
	line	295
	
i1l15750:	
;interrupt.c: 294: {
;interrupt.c: 295: rx_frame_kind=0x06;
	movlw	(06h)
	movlb 2	; select bank2
	movwf	(_rx_frame_kind)^0100h
	goto	i1l15712
	line	299
	
i1l258:	
	line	301
;interrupt.c: 299: else
;interrupt.c: 300: {
;interrupt.c: 301: if (RCSTAbits.FERR || RCSTAbits.OERR)
	movlb 3	; select bank3
	btfsc	(413)^0180h,2	;volatile
	goto	u919_21
	goto	u919_20
u919_21:
	goto	i1l262
u919_20:
	
i1l15754:	
	btfss	(413)^0180h,1	;volatile
	goto	u920_21
	goto	u920_20
u920_21:
	goto	i1l15756
u920_20:
	
i1l262:	
	line	303
;interrupt.c: 302: {
;interrupt.c: 303: RCSTAbits.CREN = 0x00;
	bcf	(413)^0180h,4	;volatile
	line	304
;interrupt.c: 304: RCSTAbits.SPEN = 0x00;
	bcf	(413)^0180h,7	;volatile
	line	305
;interrupt.c: 305: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	306
;interrupt.c: 306: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	307
;interrupt.c: 307: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	308
;interrupt.c: 308: RCSTAbits.CREN = 0x01;
	movlb 3	; select bank3
	bsf	(413)^0180h,4	;volatile
	line	309
;interrupt.c: 309: RCSTAbits.SPEN = 0x01;
	bsf	(413)^0180h,7	;volatile
	line	312
	
i1l15756:	
;interrupt.c: 310: }
;interrupt.c: 312: uart1_receive_byte_count=0x00;
	movlb 1	; select bank1
	clrf	(_uart1_receive_byte_count)^080h
	line	319
	
i1l15758:	
;interrupt.c: 313: }
;interrupt.c: 314: }
;interrupt.c: 316: }
;interrupt.c: 319: if (uart_send_delay_timer > 0x00)
	movlb 2	; select bank2
	movf	(_uart_send_delay_timer)^0100h,w
	skipz
	goto	u921_20
	goto	i1l15764
u921_20:
	line	321
	
i1l15760:	
;interrupt.c: 320: {
;interrupt.c: 321: uart_send_delay_timer--;
	decf	(_uart_send_delay_timer)^0100h,f
	line	323
;interrupt.c: 323: if (uart_send_delay_timer == 0x00)
	movf	(_uart_send_delay_timer)^0100h,f
	skipz
	goto	u922_21
	goto	u922_20
u922_21:
	goto	i1l15764
u922_20:
	line	325
	
i1l15762:	
;interrupt.c: 324: {
;interrupt.c: 325: TXIE = 0x01;
	movlb 1	; select bank1
	bsf	(1164/8)^080h,(1164)&7	;volatile
	line	330
	
i1l15764:	
;interrupt.c: 326: }
;interrupt.c: 328: }
;interrupt.c: 330: if (uart_send_end_flag == 0x01)
	movlb 2	; select bank2
	decf	(_uart_send_end_flag)^0100h,w
	skipz
	goto	u923_21
	goto	u923_20
u923_21:
	goto	i1l15770
u923_20:
	line	332
	
i1l15766:	
;interrupt.c: 331: {
;interrupt.c: 332: if (TXSTAbits.TRMT)
	movlb 3	; select bank3
	btfss	(414)^0180h,1	;volatile
	goto	u924_21
	goto	u924_20
u924_21:
	goto	i1l15770
u924_20:
	line	335
	
i1l15768:	
;interrupt.c: 333: {
;interrupt.c: 335: uart_send_end_flag = 0x00;
	movlb 2	; select bank2
	clrf	(_uart_send_end_flag)^0100h
	line	343
	
i1l15770:	
;interrupt.c: 337: }
;interrupt.c: 339: }
;interrupt.c: 343: if(ird_receive_time_count>0)
	movlb 2	; select bank2
	movf	(_ird_receive_time_count)^0100h,w
	skipz
	goto	u925_20
	goto	i1l15784
u925_20:
	line	345
	
i1l15772:	
;interrupt.c: 344: {
;interrupt.c: 345: ird_receive_time_count--;
	decf	(_ird_receive_time_count)^0100h,f
	line	347
;interrupt.c: 347: if(ird_receive_time_count==0x00)
	movf	(_ird_receive_time_count)^0100h,f
	skipz
	goto	u926_21
	goto	u926_20
u926_21:
	goto	i1l15784
u926_20:
	line	349
	
i1l15774:	
;interrupt.c: 348: {
;interrupt.c: 349: if(receive_bit_count==32)
	movf	(_receive_bit_count)^0100h,w
	xorlw	020h&0ffh
	skipz
	goto	u927_21
	goto	u927_20
u927_21:
	goto	i1l15780
u927_20:
	line	351
	
i1l15776:	
;interrupt.c: 350: {
;interrupt.c: 351: ird_receive_flag=0x01;
	clrf	(_ird_receive_flag)^0100h
	incf	(_ird_receive_flag)^0100h,f
	line	353
	
i1l15778:	
;interrupt.c: 353: receive_bit_count=0x00;
	clrf	(_receive_bit_count)^0100h
	line	354
;interrupt.c: 354: }
	goto	i1l15784
	line	357
	
i1l15780:	
;interrupt.c: 355: else
;interrupt.c: 356: {
;interrupt.c: 357: receive_bit_count=0x00;
	clrf	(_receive_bit_count)^0100h
	line	359
;interrupt.c: 359: ird_status=0x00;
	clrf	(_ird_status)^0100h
	line	361
;interrupt.c: 361: TMR0=0;
	movlb 0	; select bank0
	clrf	(21)	;volatile
	line	363
	
i1l15782:	
;interrupt.c: 363: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	375
	
i1l15784:	
;interrupt.c: 365: }
;interrupt.c: 366: }
;interrupt.c: 367: }
;interrupt.c: 371: }
;interrupt.c: 375: if (TXIE && TXIF)
	movlb 1	; select bank1
	btfss	(1164/8)^080h,(1164)&7	;volatile
	goto	u928_21
	goto	u928_20
u928_21:
	goto	i1l271
u928_20:
	
i1l15786:	
	movlb 0	; select bank0
	btfss	(140/8),(140)&7	;volatile
	goto	u929_21
	goto	u929_20
u929_21:
	goto	i1l271
u929_20:
	line	377
	
i1l15788:	
;interrupt.c: 376: {
;interrupt.c: 377: if (uart_send_byte_count > 0x00)
	movlb 2	; select bank2
	movf	(_uart_send_byte_count)^0100h,w
	skipz
	goto	u930_20
	goto	i1l15796
u930_20:
	line	379
	
i1l15790:	
;interrupt.c: 378: {
;interrupt.c: 379: uart_send_byte_count--;
	decf	(_uart_send_byte_count)^0100h,f
	line	380
	
i1l15792:	
;interrupt.c: 380: TXREG = *uart_send_point;
	movf	(_uart_send_point)^0100h,w
	movwf	fsr1l
	clrf fsr1h	
	
	movf	indf1,w
	movlb 3	; select bank3
	movwf	(410)^0180h	;volatile
	line	381
	
i1l15794:	
;interrupt.c: 381: uart_send_point++;
	movlb 2	; select bank2
	incf	(_uart_send_point)^0100h,f
	line	382
;interrupt.c: 382: }
	goto	i1l271
	line	383
	
i1l15796:	
;interrupt.c: 383: else if (uart_send_byte_count == 0x00)
	movf	(_uart_send_byte_count)^0100h,f
	skipz
	goto	u931_21
	goto	u931_20
u931_21:
	goto	i1l274
u931_20:
	line	385
	
i1l15798:	
;interrupt.c: 384: {
;interrupt.c: 385: uart_send_end_flag = 0x01;
	clrf	(_uart_send_end_flag)^0100h
	incf	(_uart_send_end_flag)^0100h,f
	line	386
;interrupt.c: 386: TXIE = 0x00;
	movlb 1	; select bank1
	bcf	(1164/8)^080h,(1164)&7	;volatile
	line	387
;interrupt.c: 387: }
	goto	i1l271
	line	388
	
i1l274:	
	line	390
;interrupt.c: 388: else
;interrupt.c: 389: {
;interrupt.c: 390: __nop();
	opt	asmopt_off
	nop
	opt	asmopt_on
	line	392
	
i1l271:	
	line	394
;interrupt.c: 391: }
;interrupt.c: 392: }
;interrupt.c: 394: if(RCIF && RCIE)
	movlb 0	; select bank0
	btfss	(141/8),(141)&7	;volatile
	goto	u932_21
	goto	u932_20
u932_21:
	goto	i1l15812
u932_20:
	
i1l15800:	
	movlb 1	; select bank1
	btfss	(1165/8)^080h,(1165)&7	;volatile
	goto	u933_21
	goto	u933_20
u933_21:
	goto	i1l15812
u933_20:
	line	397
	
i1l15802:	
;interrupt.c: 395: {
;interrupt.c: 397: r1_data=RCREG;
	movlb 3	; select bank3
	movf	(409)^0180h,w	;volatile
	movlb 0	; select bank0
	movwf	(isr@r1_data)
	line	399
;interrupt.c: 399: uart1_time_count=0x0A;
	movlw	(0Ah)
	movlb 1	; select bank1
	movwf	(_uart1_time_count)^080h
	line	401
;interrupt.c: 401: if( (uart1_receive_byte_count<21)&&(uart1_receive_flag==FALSE) )
	movlw	(015h)
	subwf	(_uart1_receive_byte_count)^080h,w
	skipnc
	goto	u934_21
	goto	u934_20
u934_21:
	goto	i1l15812
u934_20:
	
i1l15804:	
	movlb 2	; select bank2
	movf	(_uart1_receive_flag)^0100h,f
	skipz
	goto	u935_21
	goto	u935_20
u935_21:
	goto	i1l15812
u935_20:
	line	403
	
i1l15806:	
;interrupt.c: 402: {
;interrupt.c: 403: uart1_rx_buf[uart1_receive_byte_count]=r1_data;
	movlb 1	; select bank1
	movf	(_uart1_receive_byte_count)^080h,w
	addlw	_uart1_rx_buf&0ffh
	movwf	fsr1l
	movlw 4	; select bank8/9
	movwf fsr1h	
	
	movlb 0	; select bank0
	movf	(isr@r1_data),w
	movwf	indf1
	line	405
	
i1l15808:	
;interrupt.c: 405: if(uart1_rx_buf[0]==0x55)
	movlb 8	; select bank8
	movf	(_uart1_rx_buf)^0400h,w
	xorlw	055h&0ffh
	skipz
	goto	u936_21
	goto	u936_20
u936_21:
	goto	i1l15812
u936_20:
	line	407
	
i1l15810:	
;interrupt.c: 406: {
;interrupt.c: 407: uart1_receive_byte_count++;
	movlb 1	; select bank1
	incf	(_uart1_receive_byte_count)^080h,f
	line	416
	
i1l15812:	
;interrupt.c: 408: }
;interrupt.c: 409: }
;interrupt.c: 413: }
;interrupt.c: 416: if(C1IE && C1IF)
	movlb 1	; select bank1
	btfss	(1173/8)^080h,(1173)&7	;volatile
	goto	u937_21
	goto	u937_20
u937_21:
	goto	i1l15824
u937_20:
	
i1l15814:	
	movlb 0	; select bank0
	btfss	(149/8),(149)&7	;volatile
	goto	u938_21
	goto	u938_20
u938_21:
	goto	i1l15824
u938_20:
	line	418
	
i1l15816:	
;interrupt.c: 417: {
;interrupt.c: 418: C1IF=0;
	bcf	(149/8),(149)&7	;volatile
	line	420
;interrupt.c: 420: handle_short_flag=0x01;
	movlb 2	; select bank2
	clrf	(_handle_short_flag)^0100h
	incf	(_handle_short_flag)^0100h,f
	line	422
	
i1l15818:	
;interrupt.c: 422: discharge_index=0x03;
	movlw	(03h)
	movlb 1	; select bank1
	movwf	(_discharge_index)^080h
	line	424
	
i1l15820:	
;interrupt.c: 424: (LATCbits.LATC3 = 0x00);
	movlb 2	; select bank2
	bcf	(270)^0100h,3	;volatile
	line	426
;interrupt.c: 426: bost_pwm_value=2;
	movlw	02h
	movlb 1	; select bank1
	movwf	(_bost_pwm_value)^080h
	clrf	(_bost_pwm_value+1)^080h
	line	428
	
i1l15822:	
;interrupt.c: 428: Set_Bost_Pwm_Duty(bost_pwm_value);
	movf	(_bost_pwm_value+1)^080h,w
	movwf	(i1Set_Bost_Pwm_Duty@dduty+1)
	movf	(_bost_pwm_value)^080h,w
	movwf	(i1Set_Bost_Pwm_Duty@dduty)
	fcall	i1_Set_Bost_Pwm_Duty
	line	430
;interrupt.c: 430: Disable_Bost_Pwm();
	fcall	i1_Disable_Bost_Pwm
	line	434
	
i1l15824:	
;interrupt.c: 432: }
;interrupt.c: 434: if(IOCIE && IOCIF)
	btfss	(91/8),(91)&7	;volatile
	goto	u939_21
	goto	u939_20
u939_21:
	goto	i1l292
u939_20:
	
i1l15826:	
	btfss	(88/8),(88)&7	;volatile
	goto	u940_21
	goto	u940_20
u940_21:
	goto	i1l292
u940_20:
	line	438
	
i1l15828:	
;interrupt.c: 435: {
;interrupt.c: 436: unsigned int time_cnt;
;interrupt.c: 438: if(IOCBF4)
	movlb 7	; select bank7
	btfss	(7348/8)^0380h,(7348)&7	;volatile
	goto	u941_21
	goto	u941_20
u941_21:
	goto	i1l281
u941_20:
	line	440
	
i1l15830:	
;interrupt.c: 439: {
;interrupt.c: 440: IOCBF4=0;
	bcf	(7348/8)^0380h,(7348)&7	;volatile
	line	441
	
i1l281:	
	line	443
;interrupt.c: 441: }
;interrupt.c: 443: if(IOCBF7)
	btfss	(7351/8)^0380h,(7351)&7	;volatile
	goto	u942_21
	goto	u942_20
u942_21:
	goto	i1l292
u942_20:
	line	445
	
i1l15832:	
;interrupt.c: 444: {
;interrupt.c: 445: IOCBF7 = 0;
	bcf	(7351/8)^0380h,(7351)&7	;volatile
	line	447
	
i1l15834:	
;interrupt.c: 447: ird_receive_time_count=150;
	movlw	(096h)
	movlb 2	; select bank2
	movwf	(_ird_receive_time_count)^0100h
	line	449
;interrupt.c: 449: if((receive_bit_count<32)&&(ird_receive_flag==0x00))
	movlw	(020h)
	subwf	(_receive_bit_count)^0100h,w
	skipnc
	goto	u943_21
	goto	u943_20
u943_21:
	goto	i1l292
u943_20:
	
i1l15836:	
	movf	(_ird_receive_flag)^0100h,f
	skipz
	goto	u944_21
	goto	u944_20
u944_21:
	goto	i1l292
u944_20:
	line	451
	
i1l15838:	
;interrupt.c: 450: {
;interrupt.c: 451: if(ird_status==0x00)
	movf	(_ird_status)^0100h,f
	skipz
	goto	u945_21
	goto	u945_20
u945_21:
	goto	i1l15846
u945_20:
	line	453
	
i1l15840:	
;interrupt.c: 452: {
;interrupt.c: 453: ird_status=0x01;
	clrf	(_ird_status)^0100h
	incf	(_ird_status)^0100h,f
	line	455
	
i1l15842:	
;interrupt.c: 455: TMR0=0;
	movlb 0	; select bank0
	clrf	(21)	;volatile
	line	457
	
i1l15844:	
;interrupt.c: 457: TMR0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	459
;interrupt.c: 459: }
	goto	i1l292
	line	460
	
i1l15846:	
;interrupt.c: 460: else if(ird_status==0x01)
	decf	(_ird_status)^0100h,w
	skipz
	goto	u946_21
	goto	u946_20
u946_21:
	goto	i1l292
u946_20:
	line	462
	
i1l15848:	
;interrupt.c: 461: {
;interrupt.c: 462: time_cnt=TMR0;
	movlb 0	; select bank0
	movf	(21),w	;volatile
	movwf	(isr@time_cnt)
	clrf	(isr@time_cnt+1)
	line	464
	
i1l15850:	
;interrupt.c: 464: if(TMR0IF==1)
	btfss	(90/8),(90)&7	;volatile
	goto	u947_21
	goto	u947_20
u947_21:
	goto	i1l15858
u947_20:
	line	466
	
i1l15852:	
;interrupt.c: 465: {
;interrupt.c: 466: receive_bit_count=0x00;
	movlb 2	; select bank2
	clrf	(_receive_bit_count)^0100h
	line	468
	
i1l15854:	
;interrupt.c: 468: ird_data=0x00;
	movlb 4	; select bank4
	clrf	(_ird_data)^0200h
	clrf	(_ird_data+1)^0200h
	clrf	(_ird_data+2)^0200h
	clrf	(_ird_data+3)^0200h
	line	470
;interrupt.c: 470: TMR0=0;
	movlb 0	; select bank0
	clrf	(21)	;volatile
	goto	i1l15844
	line	476
	
i1l15858:	
;interrupt.c: 476: else if((time_cnt>20)&&(time_cnt<50))
	movlw	high(015h)
	subwf	(isr@time_cnt+1),w
	movlw	low(015h)
	skipnz
	subwf	(isr@time_cnt),w
	skipc
	goto	u948_21
	goto	u948_20
u948_21:
	goto	i1l15868
u948_20:
	
i1l15860:	
	movlw	high(032h)
	subwf	(isr@time_cnt+1),w
	movlw	low(032h)
	skipnz
	subwf	(isr@time_cnt),w
	skipnc
	goto	u949_21
	goto	u949_20
u949_21:
	goto	i1l15868
u949_20:
	line	478
	
i1l15862:	
;interrupt.c: 477: {
;interrupt.c: 478: receive_bit_count++;
	movlb 2	; select bank2
	incf	(_receive_bit_count)^0100h,f
	line	480
;interrupt.c: 480: ird_data=ird_data<<1;
	movlb 4	; select bank4
	lslf	(_ird_data)^0200h,f
	rlf	(_ird_data+1)^0200h,f
	rlf	(_ird_data+2)^0200h,f
	rlf	(_ird_data+3)^0200h,f
	goto	i1l15842
	line	486
	
i1l15868:	
;interrupt.c: 486: else if((time_cnt>50)&&(time_cnt<90))
	movlw	high(033h)
	subwf	(isr@time_cnt+1),w
	movlw	low(033h)
	skipnz
	subwf	(isr@time_cnt),w
	skipc
	goto	u950_21
	goto	u950_20
u950_21:
	goto	i1l286
u950_20:
	
i1l15870:	
	movlw	high(05Ah)
	subwf	(isr@time_cnt+1),w
	movlw	low(05Ah)
	skipnz
	subwf	(isr@time_cnt),w
	skipnc
	goto	u951_21
	goto	u951_20
u951_21:
	goto	i1l286
u951_20:
	line	488
	
i1l15872:	
;interrupt.c: 487: {
;interrupt.c: 488: receive_bit_count++;
	movlb 2	; select bank2
	incf	(_receive_bit_count)^0100h,f
	line	490
	
i1l15874:	
;interrupt.c: 490: ird_data=(ird_data<<1)+1;
	movlw	01h
	movwf	((??_isr+0)+0)
	movlw	0
	movwf	((??_isr+0)+0+1)
	movlw	0
	movwf	((??_isr+0)+0+2)
	movlw	0
	movwf	((??_isr+0)+0+3)
	movlb 4	; select bank4
	movf	(_ird_data)^0200h,w
	movwf	(??_isr+4)+0
	movf	(_ird_data+1)^0200h,w
	movwf	((??_isr+4)+0+1)
	movf	(_ird_data+2)^0200h,w
	movwf	((??_isr+4)+0+2)
	movf	(_ird_data+3)^0200h,w
	movwf	((??_isr+4)+0+3)
	lslf	(??_isr+4)+0,f
	rlf	(??_isr+4)+1,f
	rlf	(??_isr+4)+2,f
	rlf	(??_isr+4)+3,f
	movf	0+(??_isr+4)+0,w
	addwf	(??_isr+0)+0,f
	movf	1+(??_isr+4)+0,w
	addwfc	(??_isr+0)+1,f
	movf	2+(??_isr+4)+0,w
	addwfc	(??_isr+0)+2,f
	movf	3+(??_isr+4)+0,w
	addwfc	(??_isr+0)+3,f
	movf	3+(??_isr+0)+0,w
	movwf	(_ird_data+3)^0200h
	movf	2+(??_isr+0)+0,w
	movwf	(_ird_data+2)^0200h
	movf	1+(??_isr+0)+0,w
	movwf	(_ird_data+1)^0200h
	movf	0+(??_isr+0)+0,w
	movwf	(_ird_data)^0200h

	goto	i1l15842
	line	496
	
i1l286:	
	line	504
	
i1l292:	
	retfie
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,88
	global	i1_Set_Bost_Pwm_Duty

;; *************** function i1_Set_Bost_Pwm_Duty *****************
;; Defined at:
;;		line 218 in file "D:\MCUProject\ZH-SL-F60\src\pwm.c"
;; Parameters:    Size  Location     Type
;;  dduty           2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  Set_Bost_Pwm    2    0        unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 1F/1
;;		On exit  : 1F/6
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text49,local,class=CODE,delta=2,merge=1
	file	"D:\MCUProject\ZH-SL-F60\src\pwm.c"
	line	218
global __ptext49
__ptext49:	;psect for function i1_Set_Bost_Pwm_Duty
psect	text49
	file	"D:\MCUProject\ZH-SL-F60\src\pwm.c"
	line	218
	global	__size_ofi1_Set_Bost_Pwm_Duty
	__size_ofi1_Set_Bost_Pwm_Duty	equ	__end_ofi1_Set_Bost_Pwm_Duty-i1_Set_Bost_Pwm_Duty
	
i1_Set_Bost_Pwm_Duty:	
;incstack = 0
	opt	stack 8
; Regs used in i1_Set_Bost_Pwm_Duty: [wreg+status,2+status,0]
	line	224
	
i1l15540:	
;pwm.c: 224: bost_pwm_value=dduty;
	movf	(i1Set_Bost_Pwm_Duty@dduty+1),w
	movwf	(_bost_pwm_value+1)^080h
	movf	(i1Set_Bost_Pwm_Duty@dduty),w
	movwf	(_bost_pwm_value)^080h
	line	226
;pwm.c: 226: if(dduty<=900)
	movlw	high(0385h)
	subwf	(i1Set_Bost_Pwm_Duty@dduty+1),w
	movlw	low(0385h)
	skipnz
	subwf	(i1Set_Bost_Pwm_Duty@dduty),w
	skipnc
	goto	u869_21
	goto	u869_20
u869_21:
	goto	i1l15544
u869_20:
	line	228
	
i1l15542:	
;pwm.c: 227: {
;pwm.c: 228: CCPR3L=(unsigned char)(dduty>>2);
	movf	(i1Set_Bost_Pwm_Duty@dduty+1),w
	movwf	(??i1_Set_Bost_Pwm_Duty+0)+0+1
	movf	(i1Set_Bost_Pwm_Duty@dduty),w
	movwf	(??i1_Set_Bost_Pwm_Duty+0)+0
	lsrf	(??i1_Set_Bost_Pwm_Duty+0)+1,f
	rrf	(??i1_Set_Bost_Pwm_Duty+0)+0,f
	lsrf	(??i1_Set_Bost_Pwm_Duty+0)+1,f
	rrf	(??i1_Set_Bost_Pwm_Duty+0)+0,f
	movf	0+(??i1_Set_Bost_Pwm_Duty+0)+0,w
	movlb 6	; select bank6
	movwf	(785)^0300h	;volatile
	line	230
;pwm.c: 230: CCP3CONbits.DC3B=(unsigned char)(dduty&0b11);
	movf	(i1Set_Bost_Pwm_Duty@dduty),w
	andlw	03h
	movwf	(??i1_Set_Bost_Pwm_Duty+0)+0
	swapf	(??i1_Set_Bost_Pwm_Duty+0)+0,f
	movf	(787)^0300h,w	;volatile
	xorwf	(??i1_Set_Bost_Pwm_Duty+0)+0,w
	andlw	not (((1<<2)-1)<<4)
	xorwf	(??i1_Set_Bost_Pwm_Duty+0)+0,w
	movwf	(787)^0300h	;volatile
	line	232
;pwm.c: 232: }
	goto	i1l1029
	line	235
	
i1l15544:	
	line	237
	
i1l15546:	
;pwm.c: 237: CCPR3L=(unsigned char)(dduty>>2);
	movlw	(0E1h)
	movlb 6	; select bank6
	movwf	(785)^0300h	;volatile
	line	239
	
i1l15548:	
;pwm.c: 239: CCP3CONbits.DC3B=(unsigned char)(dduty&0b11);
	movlw	((0 & ((1<<2)-1))<<4)|not (((1<<2)-1)<<4)
	andwf	(787)^0300h,f	;volatile
	line	242
	
i1l1029:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Set_Bost_Pwm_Duty
	__end_ofi1_Set_Bost_Pwm_Duty:
	signat	i1_Set_Bost_Pwm_Duty,88
	global	i1_Disable_Bost_Pwm

;; *************** function i1_Disable_Bost_Pwm *****************
;; Defined at:
;;		line 203 in file "D:\MCUProject\ZH-SL-F60\src\pwm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 1F/6
;;		On exit  : 1F/8
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text50,local,class=CODE,delta=2,merge=1
	line	203
global __ptext50
__ptext50:	;psect for function i1_Disable_Bost_Pwm
psect	text50
	file	"D:\MCUProject\ZH-SL-F60\src\pwm.c"
	line	203
	global	__size_ofi1_Disable_Bost_Pwm
	__size_ofi1_Disable_Bost_Pwm	equ	__end_ofi1_Disable_Bost_Pwm-i1_Disable_Bost_Pwm
	
i1_Disable_Bost_Pwm:	
;incstack = 0
	opt	stack 8
; Regs used in i1_Disable_Bost_Pwm: []
	line	205
	
i1l15538:	
;pwm.c: 205: TRISBbits.TRISB5 =1;
	movlb 1	; select bank1
	bsf	(141)^080h,5	;volatile
	line	207
;pwm.c: 207: TMR4ON=0;
	movlb 8	; select bank8
	bcf	(8378/8)^0400h,(8378)&7	;volatile
	line	209
	
i1l1024:	
	return
	opt stack 0
GLOBAL	__end_ofi1_Disable_Bost_Pwm
	__end_ofi1_Disable_Bost_Pwm:
	signat	i1_Disable_Bost_Pwm,88
global	___latbits
___latbits	equ	3
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
global __pbssBIGRAM
__pbssBIGRAM	equ	9072
	end
