;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
; PIC port for the 14-bit core
;--------------------------------------------------------
	.file	"gpio.c"
	list	p=16f877a
	radix dec
	include "p16f877a.inc"
;--------------------------------------------------------
; external declarations
;--------------------------------------------------------
	extern	_TRISE
	extern	_TRISD
	extern	_TRISC
	extern	_TRISB
	extern	_TRISA
	extern	_PORTE
	extern	_PORTD
	extern	_PORTC
	extern	_PORTB
	extern	_PORTA

	extern PSAVE
	extern SSAVE
	extern WSAVE
	extern STK12
	extern STK11
	extern STK10
	extern STK09
	extern STK08
	extern STK07
	extern STK06
	extern STK05
	extern STK04
	extern STK03
	extern STK02
	extern STK01
	extern STK00
;--------------------------------------------------------
; global declarations
;--------------------------------------------------------
	global	_GPIO_InitPort
	global	_GPIO_InitPin
	global	_GPIO_UpdatePort
	global	_GPIO_UpdatePin
	global	_GPIO_SetPortState
	global	_GPIO_SetPortDirection
	global	_GPIO_SetPinState
	global	_GPIO_SetPinDirection
	global	_GPIO_GetPortState
	global	_GPIO_GetPortDirection
	global	_GPIO_GetPinState
	global	_GPIO_GetPinDirection

;--------------------------------------------------------
; global definitions
;--------------------------------------------------------
;--------------------------------------------------------
; absolute symbol definitions
;--------------------------------------------------------
;--------------------------------------------------------
; compiler-defined variables
;--------------------------------------------------------
UDL_gpio_0	udata
r0x1020	res	1
r0x1021	res	1
r0x1022	res	1
r0x101C	res	1
r0x101D	res	1
r0x101E	res	1
r0x101F	res	1
r0x101A	res	1
r0x101B	res	1
r0x1018	res	1
r0x1019	res	1
r0x1014	res	1
r0x1015	res	1
r0x1016	res	1
r0x1017	res	1
r0x1010	res	1
r0x1011	res	1
r0x1012	res	1
r0x1013	res	1
r0x100E	res	1
r0x100F	res	1
r0x100C	res	1
r0x100D	res	1
r0x1006	res	1
r0x1007	res	1
r0x1008	res	1
r0x1009	res	1
r0x100A	res	1
r0x100B	res	1
r0x1000	res	1
r0x1001	res	1
r0x1002	res	1
r0x1003	res	1
r0x1004	res	1
r0x1005	res	1
;--------------------------------------------------------
; initialized data
;--------------------------------------------------------
;--------------------------------------------------------
; initialized absolute data
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;	udata_ovr
;--------------------------------------------------------
; code
;--------------------------------------------------------
code_gpio	code
;***
;  pBlock Stats: dbName = C
;***
;has an exit
;7 compiler assigned registers:
;   r0x1000
;   STK00
;   r0x1001
;   r0x1002
;   r0x1003
;   r0x1004
;   r0x1005
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=194previous max_key=35 
S_gpio__GPIO_GetPinDirection	code
_GPIO_GetPinDirection:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1063, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1063 
	.line	200; "gpio.c"	tPIN_DIRECTION GPIO_GetPinDirection(tPORT port, tPIN pin)
	BANKSEL	r0x1000
	MOVWF	r0x1000
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1064, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1064 
	MOVWF	r0x1001
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;;	708 register type nRegs=1
;; 	line = 7202 result AOP_REG=r0x1065, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7286
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7298:genAssign
;;	1126 rIdx = r0x1065 
	.line	202; "gpio.c"	tPIN_DIRECTION ret = PIN_OUTPUT ;
	CLRF	r0x1002
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3616:genCmpGt *{*
;; ***	genCmpGt  3617
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3354:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x5=5), size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3325:pic14_mov2w_regOrLit
	.line	203; "gpio.c"	switch(port)
	MOVLW	0x05
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3492:genCmp
;;	1126 rIdx = r0x1063 
	SUBWF	r0x1000,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3297:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3302:genSkipc
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3306:genSkipc
;; ***	popGetLabel  key=7, label offset 233
	GOTO	_00340_DS_
;;genSkipc:3307: created from rifx:0000000000BC9340
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7337:genJumpTab *{*
;; ***	genJumpTab  7338
;;	708 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7353:genJumpTab
;; ***	popGetLabel  key=15, label offset 233
	MOVLW	HIGH(_00348_DS_)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7354:genJumpTab
	BANKSEL	PCLATH
	MOVWF	PCLATH
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7355:genJumpTab
;; ***	popGetLabel  key=15, label offset 233
	MOVLW	_00348_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7356:genJumpTab
;;	1126 rIdx = r0x1063 
	BANKSEL	r0x1000
	ADDWF	r0x1000,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7357:genJumpTab
	BTFSS	STATUS,0
	GOTO	_00001_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7358:genJumpTab
	BANKSEL	PCLATH
	INCF	PCLATH,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7359:genJumpTab
_00001_DS_:
	MOVWF	PCL
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=1, label offset 233
_00348_DS_:
	GOTO	_00334_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=2, label offset 233
	GOTO	_00335_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=3, label offset 233
	GOTO	_00336_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=4, label offset 233
	GOTO	_00337_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=5, label offset 233
	GOTO	_00338_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;; ***	mov2w  1395  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
_00334_DS_:
	.line	206; "gpio.c"	ret=  GetRegisterPinValue(TRISA,pin) ;
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1066 
	BANKSEL	r0x1003
	MOVWF	r0x1003
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1063 
	MOVWF	r0x1000
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1064 
	MOVF	r0x1001,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=17, label offset 233
	GOTO	_00350_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1063 
_00349_DS_:
	BANKSEL	r0x1000
	RLF	r0x1000,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1066 
	RLF	r0x1003,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=16, label offset 233
	GOTO	_00349_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1609:genCpl *{*
;; ***	genCpl  1611
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x1063 
_00350_DS_:
	BANKSEL	r0x1000
	COMF	r0x1000,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x1063 
	MOVWF	r0x1000
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x1066 
	COMF	r0x1003,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x1066 
	MOVWF	r0x1003
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;; ***	aopForSym 324
;;	336 sym->rname = _TRISA, size = 1
;;	708 register type nRegs=2
;; 	line = 7395 result AOP_REG=r0x1067, size=2, left -=-, size=0, right AOP_DIR=_TRISA, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7582:genCast
;;	1027
;;	1045  _TRISA   offset=0
	BANKSEL	_TRISA
	MOVF	_TRISA,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7583:genCast
;;	1126 rIdx = r0x1067 
	BANKSEL	r0x1004
	MOVWF	r0x1004
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1107:addSign
;;	1126 rIdx = r0x1068 
	CLRF	r0x1005
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; 	line = 4059 result AOP_REG=r0x1063, size=2, left AOP_REG=r0x1063, size=2, right AOP_REG=r0x1067, size=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1126 rIdx = r0x1067 
	MOVF	r0x1004,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x1063 
	ANDWF	r0x1000,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1126 rIdx = r0x1068 
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x1066 
	ANDWF	r0x1003,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; ***	mov2w  1395  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x1003,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1068 
	MOVWF	r0x1005
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1063 
	MOVF	r0x1000,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1067 
	MOVWF	r0x1004
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1064 
	MOVF	r0x1001,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=19, label offset 233
	GOTO	_00352_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5649:loadSignToC *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5652:loadSignToC
_00351_DS_:
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5653:loadSignToC
	BANKSEL	r0x1005
	BTFSC	r0x1005,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5654:loadSignToC
	BSF	STATUS,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1068 
	RRF	r0x1005,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1067 
	RRF	r0x1004,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=18, label offset 233
	GOTO	_00351_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;;	708 register type nRegs=2
;;	708 register type nRegs=1
;; 	line = 7395 result AOP_REG=r0x1065, size=1, left -=-, size=0, right AOP_REG=r0x1067, size=2
;; ***	genCast  7537
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7561:genCast
;;	1126 rIdx = r0x1067 
_00352_DS_:
	BANKSEL	r0x1004
	MOVF	r0x1004,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7562:genCast
;;	1126 rIdx = r0x1065 
	MOVWF	r0x1002
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=7, label offset 233
	.line	207; "gpio.c"	break;
	GOTO	_00340_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;; ***	mov2w  1395  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
_00335_DS_:
	.line	209; "gpio.c"	ret=  GetRegisterPinValue(TRISB,pin) ;
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1066 
	BANKSEL	r0x1003
	MOVWF	r0x1003
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1063 
	MOVWF	r0x1000
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1064 
	MOVF	r0x1001,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=21, label offset 233
	GOTO	_00354_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1063 
_00353_DS_:
	BANKSEL	r0x1000
	RLF	r0x1000,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1066 
	RLF	r0x1003,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=20, label offset 233
	GOTO	_00353_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1609:genCpl *{*
;; ***	genCpl  1611
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x1063 
_00354_DS_:
	BANKSEL	r0x1000
	COMF	r0x1000,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x1063 
	MOVWF	r0x1000
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x1066 
	COMF	r0x1003,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x1066 
	MOVWF	r0x1003
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;; ***	aopForSym 324
;;	336 sym->rname = _TRISB, size = 1
;;	708 register type nRegs=2
;; 	line = 7395 result AOP_REG=r0x1067, size=2, left -=-, size=0, right AOP_DIR=_TRISB, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7582:genCast
;;	1027
;;	1045  _TRISB   offset=0
	BANKSEL	_TRISB
	MOVF	_TRISB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7583:genCast
;;	1126 rIdx = r0x1067 
	BANKSEL	r0x1004
	MOVWF	r0x1004
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1107:addSign
;;	1126 rIdx = r0x1068 
	CLRF	r0x1005
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; 	line = 4059 result AOP_REG=r0x1063, size=2, left AOP_REG=r0x1063, size=2, right AOP_REG=r0x1067, size=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1126 rIdx = r0x1067 
	MOVF	r0x1004,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x1063 
	ANDWF	r0x1000,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1126 rIdx = r0x1068 
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x1066 
	ANDWF	r0x1003,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; ***	mov2w  1395  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x1003,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1068 
	MOVWF	r0x1005
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1063 
	MOVF	r0x1000,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1067 
	MOVWF	r0x1004
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1064 
	MOVF	r0x1001,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=23, label offset 233
	GOTO	_00356_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5649:loadSignToC *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5652:loadSignToC
_00355_DS_:
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5653:loadSignToC
	BANKSEL	r0x1005
	BTFSC	r0x1005,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5654:loadSignToC
	BSF	STATUS,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1068 
	RRF	r0x1005,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1067 
	RRF	r0x1004,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=22, label offset 233
	GOTO	_00355_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;;	708 register type nRegs=2
;;	708 register type nRegs=1
;; 	line = 7395 result AOP_REG=r0x1065, size=1, left -=-, size=0, right AOP_REG=r0x1067, size=2
;; ***	genCast  7537
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7561:genCast
;;	1126 rIdx = r0x1067 
_00356_DS_:
	BANKSEL	r0x1004
	MOVF	r0x1004,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7562:genCast
;;	1126 rIdx = r0x1065 
	MOVWF	r0x1002
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=7, label offset 233
	.line	210; "gpio.c"	break;
	GOTO	_00340_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;; ***	mov2w  1395  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
_00336_DS_:
	.line	212; "gpio.c"	ret=  GetRegisterPinValue(TRISC,pin) ;
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1066 
	BANKSEL	r0x1003
	MOVWF	r0x1003
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1063 
	MOVWF	r0x1000
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1064 
	MOVF	r0x1001,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=25, label offset 233
	GOTO	_00358_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1063 
_00357_DS_:
	BANKSEL	r0x1000
	RLF	r0x1000,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1066 
	RLF	r0x1003,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=24, label offset 233
	GOTO	_00357_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1609:genCpl *{*
;; ***	genCpl  1611
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x1063 
_00358_DS_:
	BANKSEL	r0x1000
	COMF	r0x1000,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x1063 
	MOVWF	r0x1000
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x1066 
	COMF	r0x1003,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x1066 
	MOVWF	r0x1003
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;; ***	aopForSym 324
;;	336 sym->rname = _TRISC, size = 1
;;	708 register type nRegs=2
;; 	line = 7395 result AOP_REG=r0x1067, size=2, left -=-, size=0, right AOP_DIR=_TRISC, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7582:genCast
;;	1027
;;	1045  _TRISC   offset=0
	BANKSEL	_TRISC
	MOVF	_TRISC,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7583:genCast
;;	1126 rIdx = r0x1067 
	BANKSEL	r0x1004
	MOVWF	r0x1004
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1107:addSign
;;	1126 rIdx = r0x1068 
	CLRF	r0x1005
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; 	line = 4059 result AOP_REG=r0x1063, size=2, left AOP_REG=r0x1063, size=2, right AOP_REG=r0x1067, size=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1126 rIdx = r0x1067 
	MOVF	r0x1004,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x1063 
	ANDWF	r0x1000,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1126 rIdx = r0x1068 
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x1066 
	ANDWF	r0x1003,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; ***	mov2w  1395  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x1003,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1068 
	MOVWF	r0x1005
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1063 
	MOVF	r0x1000,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1067 
	MOVWF	r0x1004
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1064 
	MOVF	r0x1001,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=27, label offset 233
	GOTO	_00360_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5649:loadSignToC *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5652:loadSignToC
_00359_DS_:
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5653:loadSignToC
	BANKSEL	r0x1005
	BTFSC	r0x1005,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5654:loadSignToC
	BSF	STATUS,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1068 
	RRF	r0x1005,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1067 
	RRF	r0x1004,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=26, label offset 233
	GOTO	_00359_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;;	708 register type nRegs=2
;;	708 register type nRegs=1
;; 	line = 7395 result AOP_REG=r0x1065, size=1, left -=-, size=0, right AOP_REG=r0x1067, size=2
;; ***	genCast  7537
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7561:genCast
;;	1126 rIdx = r0x1067 
_00360_DS_:
	BANKSEL	r0x1004
	MOVF	r0x1004,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7562:genCast
;;	1126 rIdx = r0x1065 
	MOVWF	r0x1002
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=7, label offset 233
	.line	213; "gpio.c"	break;
	GOTO	_00340_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;; ***	mov2w  1395  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
_00337_DS_:
	.line	215; "gpio.c"	ret=  GetRegisterPinValue(TRISD,pin) ;
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1066 
	BANKSEL	r0x1003
	MOVWF	r0x1003
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1063 
	MOVWF	r0x1000
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1064 
	MOVF	r0x1001,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=29, label offset 233
	GOTO	_00362_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1063 
_00361_DS_:
	BANKSEL	r0x1000
	RLF	r0x1000,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1066 
	RLF	r0x1003,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=28, label offset 233
	GOTO	_00361_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1609:genCpl *{*
;; ***	genCpl  1611
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x1063 
_00362_DS_:
	BANKSEL	r0x1000
	COMF	r0x1000,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x1063 
	MOVWF	r0x1000
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x1066 
	COMF	r0x1003,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x1066 
	MOVWF	r0x1003
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;; ***	aopForSym 324
;;	336 sym->rname = _TRISD, size = 1
;;	708 register type nRegs=2
;; 	line = 7395 result AOP_REG=r0x1067, size=2, left -=-, size=0, right AOP_DIR=_TRISD, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7582:genCast
;;	1027
;;	1045  _TRISD   offset=0
	BANKSEL	_TRISD
	MOVF	_TRISD,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7583:genCast
;;	1126 rIdx = r0x1067 
	BANKSEL	r0x1004
	MOVWF	r0x1004
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1107:addSign
;;	1126 rIdx = r0x1068 
	CLRF	r0x1005
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; 	line = 4059 result AOP_REG=r0x1063, size=2, left AOP_REG=r0x1063, size=2, right AOP_REG=r0x1067, size=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1126 rIdx = r0x1067 
	MOVF	r0x1004,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x1063 
	ANDWF	r0x1000,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1126 rIdx = r0x1068 
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x1066 
	ANDWF	r0x1003,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; ***	mov2w  1395  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x1003,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1068 
	MOVWF	r0x1005
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1063 
	MOVF	r0x1000,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1067 
	MOVWF	r0x1004
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1064 
	MOVF	r0x1001,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=31, label offset 233
	GOTO	_00364_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5649:loadSignToC *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5652:loadSignToC
_00363_DS_:
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5653:loadSignToC
	BANKSEL	r0x1005
	BTFSC	r0x1005,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5654:loadSignToC
	BSF	STATUS,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1068 
	RRF	r0x1005,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1067 
	RRF	r0x1004,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=30, label offset 233
	GOTO	_00363_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;;	708 register type nRegs=2
;;	708 register type nRegs=1
;; 	line = 7395 result AOP_REG=r0x1065, size=1, left -=-, size=0, right AOP_REG=r0x1067, size=2
;; ***	genCast  7537
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7561:genCast
;;	1126 rIdx = r0x1067 
_00364_DS_:
	BANKSEL	r0x1004
	MOVF	r0x1004,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7562:genCast
;;	1126 rIdx = r0x1065 
	MOVWF	r0x1002
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=7, label offset 233
	.line	216; "gpio.c"	break;
	GOTO	_00340_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;; ***	mov2w  1395  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
_00338_DS_:
	.line	218; "gpio.c"	ret=  GetRegisterPinValue(TRISE,pin) ;
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1066 
	BANKSEL	r0x1003
	MOVWF	r0x1003
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1063 
	MOVWF	r0x1000
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1064 
	MOVF	r0x1001,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=33, label offset 233
	GOTO	_00366_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1063 
_00365_DS_:
	BANKSEL	r0x1000
	RLF	r0x1000,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1066 
	RLF	r0x1003,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=32, label offset 233
	GOTO	_00365_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1609:genCpl *{*
;; ***	genCpl  1611
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x1063 
_00366_DS_:
	BANKSEL	r0x1000
	COMF	r0x1000,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x1063 
	MOVWF	r0x1000
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x1066 
	COMF	r0x1003,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x1066 
	MOVWF	r0x1003
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;; ***	aopForSym 324
;;	336 sym->rname = _TRISE, size = 1
;;	708 register type nRegs=2
;; 	line = 7395 result AOP_REG=r0x1067, size=2, left -=-, size=0, right AOP_DIR=_TRISE, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7582:genCast
;;	1027
;;	1045  _TRISE   offset=0
	BANKSEL	_TRISE
	MOVF	_TRISE,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7583:genCast
;;	1126 rIdx = r0x1067 
	BANKSEL	r0x1004
	MOVWF	r0x1004
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1107:addSign
;;	1126 rIdx = r0x1068 
	CLRF	r0x1005
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; 	line = 4059 result AOP_REG=r0x1063, size=2, left AOP_REG=r0x1063, size=2, right AOP_REG=r0x1067, size=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1126 rIdx = r0x1067 
	MOVF	r0x1004,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x1063 
	ANDWF	r0x1000,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1126 rIdx = r0x1068 
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x1066 
	ANDWF	r0x1003,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; ***	mov2w  1395  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1066 
	MOVF	r0x1003,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1068 
	MOVWF	r0x1005
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1063 
	MOVF	r0x1000,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1067 
	MOVWF	r0x1004
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1064 
	MOVF	r0x1001,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=35, label offset 233
	GOTO	_00368_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5649:loadSignToC *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5652:loadSignToC
_00367_DS_:
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5653:loadSignToC
	BANKSEL	r0x1005
	BTFSC	r0x1005,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5654:loadSignToC
	BSF	STATUS,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1068 
	RRF	r0x1005,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1067 
	RRF	r0x1004,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=34, label offset 233
	GOTO	_00367_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;;	708 register type nRegs=2
;;	708 register type nRegs=1
;; 	line = 7395 result AOP_REG=r0x1065, size=1, left -=-, size=0, right AOP_REG=r0x1067, size=2
;; ***	genCast  7537
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7561:genCast
;;	1126 rIdx = r0x1067 
_00368_DS_:
	BANKSEL	r0x1004
	MOVF	r0x1004,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7562:genCast
;;	1126 rIdx = r0x1065 
	MOVWF	r0x1002
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2725:genRet *{*
;; ***	genRet  2727
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1065 
_00340_DS_:
	.line	224; "gpio.c"	return ret ;
	BANKSEL	r0x1002
	MOVF	r0x1002,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	225; "gpio.c"	}
	RETURN	
; exit point of _GPIO_GetPinDirection

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;7 compiler assigned registers:
;   r0x1006
;   STK00
;   r0x1007
;   r0x1008
;   r0x1009
;   r0x100A
;   r0x100B
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=175previous max_key=15 
S_gpio__GPIO_GetPinState	code
_GPIO_GetPinState:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x105D, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105D 
	.line	174; "gpio.c"	tSTATE GPIO_GetPinState(tPORT port , tPIN pin)
	BANKSEL	r0x1006
	MOVWF	r0x1006
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x105E, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105E 
	MOVWF	r0x1007
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;;	708 register type nRegs=1
;; 	line = 7202 result AOP_REG=r0x105F, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7286
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7298:genAssign
;;	1126 rIdx = r0x105F 
	.line	176; "gpio.c"	tSTATE ret = LOW ;
	CLRF	r0x1008
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3616:genCmpGt *{*
;; ***	genCmpGt  3617
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3354:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x5=5), size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3325:pic14_mov2w_regOrLit
	.line	177; "gpio.c"	switch(port)
	MOVLW	0x05
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3492:genCmp
;;	1126 rIdx = r0x105D 
	SUBWF	r0x1006,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3297:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3302:genSkipc
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3306:genSkipc
;; ***	popGetLabel  key=7, label offset 194
	GOTO	_00301_DS_
;;genSkipc:3307: created from rifx:0000000000BC9340
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7337:genJumpTab *{*
;; ***	genJumpTab  7338
;;	708 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7353:genJumpTab
;; ***	popGetLabel  key=15, label offset 194
	MOVLW	HIGH(_00309_DS_)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7354:genJumpTab
	BANKSEL	PCLATH
	MOVWF	PCLATH
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7355:genJumpTab
;; ***	popGetLabel  key=15, label offset 194
	MOVLW	_00309_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7356:genJumpTab
;;	1126 rIdx = r0x105D 
	BANKSEL	r0x1006
	ADDWF	r0x1006,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7357:genJumpTab
	BTFSS	STATUS,0
	GOTO	_00002_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7358:genJumpTab
	BANKSEL	PCLATH
	INCF	PCLATH,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7359:genJumpTab
_00002_DS_:
	MOVWF	PCL
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=1, label offset 194
_00309_DS_:
	GOTO	_00295_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=2, label offset 194
	GOTO	_00296_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=3, label offset 194
	GOTO	_00297_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=4, label offset 194
	GOTO	_00298_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=5, label offset 194
	GOTO	_00299_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;; ***	mov2w  1395  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
_00295_DS_:
	.line	180; "gpio.c"	ret=  GetRegisterPinValue(PORTA,pin) ;
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1060 
	BANKSEL	r0x1009
	MOVWF	r0x1009
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105D 
	MOVWF	r0x1006
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105E 
	MOVF	r0x1007,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=17, label offset 194
	GOTO	_00311_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x105D 
_00310_DS_:
	BANKSEL	r0x1006
	RLF	r0x1006,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1060 
	RLF	r0x1009,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=16, label offset 194
	GOTO	_00310_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1609:genCpl *{*
;; ***	genCpl  1611
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x105D 
_00311_DS_:
	BANKSEL	r0x1006
	COMF	r0x1006,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x105D 
	MOVWF	r0x1006
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x1060 
	COMF	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x1060 
	MOVWF	r0x1009
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;; ***	aopForSym 324
;;	336 sym->rname = _PORTA, size = 1
;;	708 register type nRegs=2
;; 	line = 7395 result AOP_REG=r0x1061, size=2, left -=-, size=0, right AOP_DIR=_PORTA, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7582:genCast
;;	1027
;;	1045  _PORTA   offset=0
	BANKSEL	_PORTA
	MOVF	_PORTA,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7583:genCast
;;	1126 rIdx = r0x1061 
	BANKSEL	r0x100A
	MOVWF	r0x100A
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1107:addSign
;;	1126 rIdx = r0x1062 
	CLRF	r0x100B
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; 	line = 4059 result AOP_REG=r0x105D, size=2, left AOP_REG=r0x105D, size=2, right AOP_REG=r0x1061, size=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1126 rIdx = r0x1061 
	MOVF	r0x100A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x105D 
	ANDWF	r0x1006,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1126 rIdx = r0x1062 
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x1060 
	ANDWF	r0x1009,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; ***	mov2w  1395  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1060 
	MOVF	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1062 
	MOVWF	r0x100B
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105D 
	MOVF	r0x1006,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1061 
	MOVWF	r0x100A
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105E 
	MOVF	r0x1007,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=19, label offset 194
	GOTO	_00313_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5649:loadSignToC *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5652:loadSignToC
_00312_DS_:
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5653:loadSignToC
	BANKSEL	r0x100B
	BTFSC	r0x100B,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5654:loadSignToC
	BSF	STATUS,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1062 
	RRF	r0x100B,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1061 
	RRF	r0x100A,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=18, label offset 194
	GOTO	_00312_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;;	708 register type nRegs=2
;;	708 register type nRegs=1
;; 	line = 7395 result AOP_REG=r0x105F, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=2
;; ***	genCast  7537
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7561:genCast
;;	1126 rIdx = r0x1061 
_00313_DS_:
	BANKSEL	r0x100A
	MOVF	r0x100A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7562:genCast
;;	1126 rIdx = r0x105F 
	MOVWF	r0x1008
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=7, label offset 194
	.line	181; "gpio.c"	break;
	GOTO	_00301_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;; ***	mov2w  1395  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
_00296_DS_:
	.line	183; "gpio.c"	ret=  GetRegisterPinValue(PORTB,pin) ;
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1060 
	BANKSEL	r0x1009
	MOVWF	r0x1009
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105D 
	MOVWF	r0x1006
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105E 
	MOVF	r0x1007,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=21, label offset 194
	GOTO	_00315_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x105D 
_00314_DS_:
	BANKSEL	r0x1006
	RLF	r0x1006,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1060 
	RLF	r0x1009,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=20, label offset 194
	GOTO	_00314_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1609:genCpl *{*
;; ***	genCpl  1611
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x105D 
_00315_DS_:
	BANKSEL	r0x1006
	COMF	r0x1006,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x105D 
	MOVWF	r0x1006
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x1060 
	COMF	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x1060 
	MOVWF	r0x1009
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;; ***	aopForSym 324
;;	336 sym->rname = _PORTB, size = 1
;;	708 register type nRegs=2
;; 	line = 7395 result AOP_REG=r0x1061, size=2, left -=-, size=0, right AOP_DIR=_PORTB, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7582:genCast
;;	1027
;;	1045  _PORTB   offset=0
	BANKSEL	_PORTB
	MOVF	_PORTB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7583:genCast
;;	1126 rIdx = r0x1061 
	BANKSEL	r0x100A
	MOVWF	r0x100A
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1107:addSign
;;	1126 rIdx = r0x1062 
	CLRF	r0x100B
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; 	line = 4059 result AOP_REG=r0x105D, size=2, left AOP_REG=r0x105D, size=2, right AOP_REG=r0x1061, size=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1126 rIdx = r0x1061 
	MOVF	r0x100A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x105D 
	ANDWF	r0x1006,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1126 rIdx = r0x1062 
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x1060 
	ANDWF	r0x1009,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; ***	mov2w  1395  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1060 
	MOVF	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1062 
	MOVWF	r0x100B
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105D 
	MOVF	r0x1006,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1061 
	MOVWF	r0x100A
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105E 
	MOVF	r0x1007,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=23, label offset 194
	GOTO	_00317_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5649:loadSignToC *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5652:loadSignToC
_00316_DS_:
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5653:loadSignToC
	BANKSEL	r0x100B
	BTFSC	r0x100B,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5654:loadSignToC
	BSF	STATUS,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1062 
	RRF	r0x100B,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1061 
	RRF	r0x100A,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=22, label offset 194
	GOTO	_00316_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;;	708 register type nRegs=2
;;	708 register type nRegs=1
;; 	line = 7395 result AOP_REG=r0x105F, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=2
;; ***	genCast  7537
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7561:genCast
;;	1126 rIdx = r0x1061 
_00317_DS_:
	BANKSEL	r0x100A
	MOVF	r0x100A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7562:genCast
;;	1126 rIdx = r0x105F 
	MOVWF	r0x1008
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=7, label offset 194
	.line	184; "gpio.c"	break;
	GOTO	_00301_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;; ***	mov2w  1395  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
_00297_DS_:
	.line	186; "gpio.c"	ret=  GetRegisterPinValue(PORTC,pin) ;
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1060 
	BANKSEL	r0x1009
	MOVWF	r0x1009
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105D 
	MOVWF	r0x1006
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105E 
	MOVF	r0x1007,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=25, label offset 194
	GOTO	_00319_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x105D 
_00318_DS_:
	BANKSEL	r0x1006
	RLF	r0x1006,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1060 
	RLF	r0x1009,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=24, label offset 194
	GOTO	_00318_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1609:genCpl *{*
;; ***	genCpl  1611
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x105D 
_00319_DS_:
	BANKSEL	r0x1006
	COMF	r0x1006,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x105D 
	MOVWF	r0x1006
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x1060 
	COMF	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x1060 
	MOVWF	r0x1009
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;; ***	aopForSym 324
;;	336 sym->rname = _PORTC, size = 1
;;	708 register type nRegs=2
;; 	line = 7395 result AOP_REG=r0x1061, size=2, left -=-, size=0, right AOP_DIR=_PORTC, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7582:genCast
;;	1027
;;	1045  _PORTC   offset=0
	BANKSEL	_PORTC
	MOVF	_PORTC,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7583:genCast
;;	1126 rIdx = r0x1061 
	BANKSEL	r0x100A
	MOVWF	r0x100A
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1107:addSign
;;	1126 rIdx = r0x1062 
	CLRF	r0x100B
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; 	line = 4059 result AOP_REG=r0x105D, size=2, left AOP_REG=r0x105D, size=2, right AOP_REG=r0x1061, size=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1126 rIdx = r0x1061 
	MOVF	r0x100A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x105D 
	ANDWF	r0x1006,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1126 rIdx = r0x1062 
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x1060 
	ANDWF	r0x1009,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; ***	mov2w  1395  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1060 
	MOVF	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1062 
	MOVWF	r0x100B
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105D 
	MOVF	r0x1006,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1061 
	MOVWF	r0x100A
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105E 
	MOVF	r0x1007,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=27, label offset 194
	GOTO	_00321_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5649:loadSignToC *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5652:loadSignToC
_00320_DS_:
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5653:loadSignToC
	BANKSEL	r0x100B
	BTFSC	r0x100B,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5654:loadSignToC
	BSF	STATUS,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1062 
	RRF	r0x100B,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1061 
	RRF	r0x100A,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=26, label offset 194
	GOTO	_00320_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;;	708 register type nRegs=2
;;	708 register type nRegs=1
;; 	line = 7395 result AOP_REG=r0x105F, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=2
;; ***	genCast  7537
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7561:genCast
;;	1126 rIdx = r0x1061 
_00321_DS_:
	BANKSEL	r0x100A
	MOVF	r0x100A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7562:genCast
;;	1126 rIdx = r0x105F 
	MOVWF	r0x1008
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=7, label offset 194
	.line	187; "gpio.c"	break;
	GOTO	_00301_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;; ***	mov2w  1395  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
_00298_DS_:
	.line	189; "gpio.c"	ret=  GetRegisterPinValue(PORTD,pin) ;
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1060 
	BANKSEL	r0x1009
	MOVWF	r0x1009
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105D 
	MOVWF	r0x1006
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105E 
	MOVF	r0x1007,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=29, label offset 194
	GOTO	_00323_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x105D 
_00322_DS_:
	BANKSEL	r0x1006
	RLF	r0x1006,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1060 
	RLF	r0x1009,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=28, label offset 194
	GOTO	_00322_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1609:genCpl *{*
;; ***	genCpl  1611
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x105D 
_00323_DS_:
	BANKSEL	r0x1006
	COMF	r0x1006,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x105D 
	MOVWF	r0x1006
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x1060 
	COMF	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x1060 
	MOVWF	r0x1009
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;; ***	aopForSym 324
;;	336 sym->rname = _PORTD, size = 1
;;	708 register type nRegs=2
;; 	line = 7395 result AOP_REG=r0x1061, size=2, left -=-, size=0, right AOP_DIR=_PORTD, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7582:genCast
;;	1027
;;	1045  _PORTD   offset=0
	BANKSEL	_PORTD
	MOVF	_PORTD,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7583:genCast
;;	1126 rIdx = r0x1061 
	BANKSEL	r0x100A
	MOVWF	r0x100A
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1107:addSign
;;	1126 rIdx = r0x1062 
	CLRF	r0x100B
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; 	line = 4059 result AOP_REG=r0x105D, size=2, left AOP_REG=r0x105D, size=2, right AOP_REG=r0x1061, size=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1126 rIdx = r0x1061 
	MOVF	r0x100A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x105D 
	ANDWF	r0x1006,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1126 rIdx = r0x1062 
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x1060 
	ANDWF	r0x1009,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; ***	mov2w  1395  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1060 
	MOVF	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1062 
	MOVWF	r0x100B
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105D 
	MOVF	r0x1006,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1061 
	MOVWF	r0x100A
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105E 
	MOVF	r0x1007,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=31, label offset 194
	GOTO	_00325_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5649:loadSignToC *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5652:loadSignToC
_00324_DS_:
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5653:loadSignToC
	BANKSEL	r0x100B
	BTFSC	r0x100B,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5654:loadSignToC
	BSF	STATUS,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1062 
	RRF	r0x100B,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1061 
	RRF	r0x100A,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=30, label offset 194
	GOTO	_00324_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;;	708 register type nRegs=2
;;	708 register type nRegs=1
;; 	line = 7395 result AOP_REG=r0x105F, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=2
;; ***	genCast  7537
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7561:genCast
;;	1126 rIdx = r0x1061 
_00325_DS_:
	BANKSEL	r0x100A
	MOVF	r0x100A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7562:genCast
;;	1126 rIdx = r0x105F 
	MOVWF	r0x1008
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=7, label offset 194
	.line	190; "gpio.c"	break;
	GOTO	_00301_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;; ***	mov2w  1395  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
_00299_DS_:
	.line	192; "gpio.c"	ret=  GetRegisterPinValue(PORTE,pin) ;
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1060 
	BANKSEL	r0x1009
	MOVWF	r0x1009
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105D 
	MOVWF	r0x1006
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105E 
	MOVF	r0x1007,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=33, label offset 194
	GOTO	_00327_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x105D 
_00326_DS_:
	BANKSEL	r0x1006
	RLF	r0x1006,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1060 
	RLF	r0x1009,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=32, label offset 194
	GOTO	_00326_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1609:genCpl *{*
;; ***	genCpl  1611
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x105D 
_00327_DS_:
	BANKSEL	r0x1006
	COMF	r0x1006,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x105D 
	MOVWF	r0x1006
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x1060 
	COMF	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x1060 
	MOVWF	r0x1009
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;; ***	aopForSym 324
;;	336 sym->rname = _PORTE, size = 1
;;	708 register type nRegs=2
;; 	line = 7395 result AOP_REG=r0x1061, size=2, left -=-, size=0, right AOP_DIR=_PORTE, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7582:genCast
;;	1027
;;	1045  _PORTE   offset=0
	BANKSEL	_PORTE
	MOVF	_PORTE,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7583:genCast
;;	1126 rIdx = r0x1061 
	BANKSEL	r0x100A
	MOVWF	r0x100A
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1107:addSign
;;	1126 rIdx = r0x1062 
	CLRF	r0x100B
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; 	line = 4059 result AOP_REG=r0x105D, size=2, left AOP_REG=r0x105D, size=2, right AOP_REG=r0x1061, size=2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1126 rIdx = r0x1061 
	MOVF	r0x100A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x105D 
	ANDWF	r0x1006,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1126 rIdx = r0x1062 
	MOVLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x1060 
	ANDWF	r0x1009,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=2
;;	708 register type nRegs=2
;; ***	mov2w  1395  offset=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1060 
	MOVF	r0x1009,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1062 
	MOVWF	r0x100B
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105D 
	MOVF	r0x1006,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1061 
	MOVWF	r0x100A
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105E 
	MOVF	r0x1007,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=35, label offset 194
	GOTO	_00329_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5649:loadSignToC *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5652:loadSignToC
_00328_DS_:
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5653:loadSignToC
	BANKSEL	r0x100B
	BTFSC	r0x100B,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5654:loadSignToC
	BSF	STATUS,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1062 
	RRF	r0x100B,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1061 
	RRF	r0x100A,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=34, label offset 194
	GOTO	_00328_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;;	708 register type nRegs=2
;;	708 register type nRegs=1
;; 	line = 7395 result AOP_REG=r0x105F, size=1, left -=-, size=0, right AOP_REG=r0x1061, size=2
;; ***	genCast  7537
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7561:genCast
;;	1126 rIdx = r0x1061 
_00329_DS_:
	BANKSEL	r0x100A
	MOVF	r0x100A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7562:genCast
;;	1126 rIdx = r0x105F 
	MOVWF	r0x1008
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2725:genRet *{*
;; ***	genRet  2727
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105F 
_00301_DS_:
	.line	198; "gpio.c"	return ret ;
	BANKSEL	r0x1008
	MOVF	r0x1008,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	199; "gpio.c"	}
	RETURN	
; exit point of _GPIO_GetPinState
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7710:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;2 compiler assigned registers:
;   r0x100C
;   r0x100D
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=156previous max_key=15 
S_gpio__GPIO_GetPortDirection	code
_GPIO_GetPortDirection:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x105B, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x105B 
	.line	148; "gpio.c"	U8 GPIO_GetPortDirection(tPORT port)
	BANKSEL	r0x100C
	MOVWF	r0x100C
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;;	708 register type nRegs=1
;; 	line = 7202 result AOP_REG=r0x105C, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7286
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7298:genAssign
;;	1126 rIdx = r0x105C 
	.line	150; "gpio.c"	U8 ret = 0 ;
	CLRF	r0x100D
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3616:genCmpGt *{*
;; ***	genCmpGt  3617
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3354:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x5=5), size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3325:pic14_mov2w_regOrLit
	.line	151; "gpio.c"	switch(port)
	MOVLW	0x05
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3492:genCmp
;;	1126 rIdx = r0x105B 
	SUBWF	r0x100C,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3297:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3302:genSkipc
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3306:genSkipc
;; ***	popGetLabel  key=7, label offset 175
	GOTO	_00282_DS_
;;genSkipc:3307: created from rifx:0000000000BC9340
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7337:genJumpTab *{*
;; ***	genJumpTab  7338
;;	708 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7353:genJumpTab
;; ***	popGetLabel  key=15, label offset 175
	MOVLW	HIGH(_00290_DS_)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7354:genJumpTab
	BANKSEL	PCLATH
	MOVWF	PCLATH
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7355:genJumpTab
;; ***	popGetLabel  key=15, label offset 175
	MOVLW	_00290_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7356:genJumpTab
;;	1126 rIdx = r0x105B 
	BANKSEL	r0x100C
	ADDWF	r0x100C,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7357:genJumpTab
	BTFSS	STATUS,0
	GOTO	_00003_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7358:genJumpTab
	BANKSEL	PCLATH
	INCF	PCLATH,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7359:genJumpTab
_00003_DS_:
	MOVWF	PCL
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=1, label offset 175
_00290_DS_:
	GOTO	_00276_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=2, label offset 175
	GOTO	_00277_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=3, label offset 175
	GOTO	_00278_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=4, label offset 175
	GOTO	_00279_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=5, label offset 175
	GOTO	_00280_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;; ***	aopForSym 324
;;	336 sym->rname = _TRISA, size = 1
;;	708 register type nRegs=1
;; 	line = 7202 result AOP_REG=r0x105C, size=1, left -=-, size=0, right AOP_DIR=_TRISA, size=1
;; ***	genAssign  7268
;; WARNING	genAssign  7277 ignoring register storage
;; ***	genAssign  7286
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _TRISA   offset=0
_00276_DS_:
	.line	154; "gpio.c"	ret=  GetRegisterValue(TRISA) ;
	BANKSEL	_TRISA
	MOVF	_TRISA,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7313:genAssign
;;	1126 rIdx = r0x105C 
	BANKSEL	r0x100D
	MOVWF	r0x100D
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=7, label offset 175
	.line	155; "gpio.c"	break;
	GOTO	_00282_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;; ***	aopForSym 324
;;	336 sym->rname = _TRISB, size = 1
;;	708 register type nRegs=1
;; 	line = 7202 result AOP_REG=r0x105C, size=1, left -=-, size=0, right AOP_DIR=_TRISB, size=1
;; ***	genAssign  7268
;; WARNING	genAssign  7277 ignoring register storage
;; ***	genAssign  7286
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _TRISB   offset=0
_00277_DS_:
	.line	157; "gpio.c"	ret=  GetRegisterValue(TRISB) ;
	BANKSEL	_TRISB
	MOVF	_TRISB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7313:genAssign
;;	1126 rIdx = r0x105C 
	BANKSEL	r0x100D
	MOVWF	r0x100D
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=7, label offset 175
	.line	158; "gpio.c"	break;
	GOTO	_00282_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;; ***	aopForSym 324
;;	336 sym->rname = _TRISC, size = 1
;;	708 register type nRegs=1
;; 	line = 7202 result AOP_REG=r0x105C, size=1, left -=-, size=0, right AOP_DIR=_TRISC, size=1
;; ***	genAssign  7268
;; WARNING	genAssign  7277 ignoring register storage
;; ***	genAssign  7286
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _TRISC   offset=0
_00278_DS_:
	.line	160; "gpio.c"	ret=  GetRegisterValue(TRISC) ;
	BANKSEL	_TRISC
	MOVF	_TRISC,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7313:genAssign
;;	1126 rIdx = r0x105C 
	BANKSEL	r0x100D
	MOVWF	r0x100D
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=7, label offset 175
	.line	161; "gpio.c"	break;
	GOTO	_00282_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;; ***	aopForSym 324
;;	336 sym->rname = _TRISD, size = 1
;;	708 register type nRegs=1
;; 	line = 7202 result AOP_REG=r0x105C, size=1, left -=-, size=0, right AOP_DIR=_TRISD, size=1
;; ***	genAssign  7268
;; WARNING	genAssign  7277 ignoring register storage
;; ***	genAssign  7286
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _TRISD   offset=0
_00279_DS_:
	.line	163; "gpio.c"	ret=  GetRegisterValue(TRISD) ;
	BANKSEL	_TRISD
	MOVF	_TRISD,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7313:genAssign
;;	1126 rIdx = r0x105C 
	BANKSEL	r0x100D
	MOVWF	r0x100D
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=7, label offset 175
	.line	164; "gpio.c"	break;
	GOTO	_00282_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;; ***	aopForSym 324
;;	336 sym->rname = _TRISE, size = 1
;;	708 register type nRegs=1
;; 	line = 7202 result AOP_REG=r0x105C, size=1, left -=-, size=0, right AOP_DIR=_TRISE, size=1
;; ***	genAssign  7268
;; WARNING	genAssign  7277 ignoring register storage
;; ***	genAssign  7286
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _TRISE   offset=0
_00280_DS_:
	.line	166; "gpio.c"	ret=  GetRegisterValue(TRISE) ;
	BANKSEL	_TRISE
	MOVF	_TRISE,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7313:genAssign
;;	1126 rIdx = r0x105C 
	BANKSEL	r0x100D
	MOVWF	r0x100D
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2725:genRet *{*
;; ***	genRet  2727
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105C 
_00282_DS_:
	.line	172; "gpio.c"	return ret ;
	BANKSEL	r0x100D
	MOVF	r0x100D,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	173; "gpio.c"	}
	RETURN	
; exit point of _GPIO_GetPortDirection
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7710:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;2 compiler assigned registers:
;   r0x100E
;   r0x100F
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=107previous max_key=45 
S_gpio__GPIO_GetPortState	code
_GPIO_GetPortState:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1059, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1059 
	.line	122; "gpio.c"	U8 GPIO_GetPortState(tPORT port)
	BANKSEL	r0x100E
	MOVWF	r0x100E
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;;	708 register type nRegs=1
;; 	line = 7202 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_LIT=0x00, size=1
;; ***	genAssign  7286
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7298:genAssign
;;	1126 rIdx = r0x105A 
	.line	124; "gpio.c"	U8 ret = 0 ;
	CLRF	r0x100F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3616:genCmpGt *{*
;; ***	genCmpGt  3617
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3354:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x5=5), size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3325:pic14_mov2w_regOrLit
	.line	125; "gpio.c"	switch(port)
	MOVLW	0x05
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3492:genCmp
;;	1126 rIdx = r0x1059 
	SUBWF	r0x100E,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3297:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3302:genSkipc
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3306:genSkipc
;; ***	popGetLabel  key=7, label offset 156
	GOTO	_00263_DS_
;;genSkipc:3307: created from rifx:0000000000BC9340
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7337:genJumpTab *{*
;; ***	genJumpTab  7338
;;	708 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7353:genJumpTab
;; ***	popGetLabel  key=15, label offset 156
	MOVLW	HIGH(_00271_DS_)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7354:genJumpTab
	BANKSEL	PCLATH
	MOVWF	PCLATH
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7355:genJumpTab
;; ***	popGetLabel  key=15, label offset 156
	MOVLW	_00271_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7356:genJumpTab
;;	1126 rIdx = r0x1059 
	BANKSEL	r0x100E
	ADDWF	r0x100E,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7357:genJumpTab
	BTFSS	STATUS,0
	GOTO	_00004_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7358:genJumpTab
	BANKSEL	PCLATH
	INCF	PCLATH,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7359:genJumpTab
_00004_DS_:
	MOVWF	PCL
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=1, label offset 156
_00271_DS_:
	GOTO	_00257_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=2, label offset 156
	GOTO	_00258_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=3, label offset 156
	GOTO	_00259_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=4, label offset 156
	GOTO	_00260_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=5, label offset 156
	GOTO	_00261_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;; ***	aopForSym 324
;;	336 sym->rname = _PORTA, size = 1
;;	708 register type nRegs=1
;; 	line = 7202 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_DIR=_PORTA, size=1
;; ***	genAssign  7268
;; WARNING	genAssign  7277 ignoring register storage
;; ***	genAssign  7286
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _PORTA   offset=0
_00257_DS_:
	.line	128; "gpio.c"	ret=  GetRegisterValue(PORTA) ;
	BANKSEL	_PORTA
	MOVF	_PORTA,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7313:genAssign
;;	1126 rIdx = r0x105A 
	BANKSEL	r0x100F
	MOVWF	r0x100F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=7, label offset 156
	.line	129; "gpio.c"	break;
	GOTO	_00263_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;; ***	aopForSym 324
;;	336 sym->rname = _PORTB, size = 1
;;	708 register type nRegs=1
;; 	line = 7202 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_DIR=_PORTB, size=1
;; ***	genAssign  7268
;; WARNING	genAssign  7277 ignoring register storage
;; ***	genAssign  7286
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _PORTB   offset=0
_00258_DS_:
	.line	131; "gpio.c"	ret=  GetRegisterValue(PORTB) ;
	BANKSEL	_PORTB
	MOVF	_PORTB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7313:genAssign
;;	1126 rIdx = r0x105A 
	BANKSEL	r0x100F
	MOVWF	r0x100F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=7, label offset 156
	.line	132; "gpio.c"	break;
	GOTO	_00263_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;; ***	aopForSym 324
;;	336 sym->rname = _PORTC, size = 1
;;	708 register type nRegs=1
;; 	line = 7202 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_DIR=_PORTC, size=1
;; ***	genAssign  7268
;; WARNING	genAssign  7277 ignoring register storage
;; ***	genAssign  7286
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _PORTC   offset=0
_00259_DS_:
	.line	134; "gpio.c"	ret=  GetRegisterValue(PORTC) ;
	BANKSEL	_PORTC
	MOVF	_PORTC,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7313:genAssign
;;	1126 rIdx = r0x105A 
	BANKSEL	r0x100F
	MOVWF	r0x100F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=7, label offset 156
	.line	135; "gpio.c"	break;
	GOTO	_00263_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;; ***	aopForSym 324
;;	336 sym->rname = _PORTD, size = 1
;;	708 register type nRegs=1
;; 	line = 7202 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_DIR=_PORTD, size=1
;; ***	genAssign  7268
;; WARNING	genAssign  7277 ignoring register storage
;; ***	genAssign  7286
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _PORTD   offset=0
_00260_DS_:
	.line	137; "gpio.c"	ret=  GetRegisterValue(PORTD) ;
	BANKSEL	_PORTD
	MOVF	_PORTD,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7313:genAssign
;;	1126 rIdx = r0x105A 
	BANKSEL	r0x100F
	MOVWF	r0x100F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=7, label offset 156
	.line	138; "gpio.c"	break;
	GOTO	_00263_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;; ***	aopForSym 324
;;	336 sym->rname = _PORTE, size = 1
;;	708 register type nRegs=1
;; 	line = 7202 result AOP_REG=r0x105A, size=1, left -=-, size=0, right AOP_DIR=_PORTE, size=1
;; ***	genAssign  7268
;; WARNING	genAssign  7277 ignoring register storage
;; ***	genAssign  7286
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1027
;;	1045  _PORTE   offset=0
_00261_DS_:
	.line	140; "gpio.c"	ret=  GetRegisterValue(PORTE) ;
	BANKSEL	_PORTE
	MOVF	_PORTE,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7313:genAssign
;;	1126 rIdx = r0x105A 
	BANKSEL	r0x100F
	MOVWF	r0x100F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2725:genRet *{*
;; ***	genRet  2727
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x105A 
_00263_DS_:
	.line	146; "gpio.c"	return ret ;
	BANKSEL	r0x100F
	MOVF	r0x100F,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	147; "gpio.c"	}
	RETURN	
; exit point of _GPIO_GetPortState
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7710:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;6 compiler assigned registers:
;   r0x1010
;   STK00
;   r0x1011
;   STK01
;   r0x1012
;   r0x1013
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=58previous max_key=45 
S_gpio__GPIO_SetPinDirection	code
_GPIO_SetPinDirection:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1055, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1055 
	.line	98; "gpio.c"	void GPIO_SetPinDirection(tPORT port, tPIN pin ,tPIN_DIRECTION direction)
	BANKSEL	r0x1010
	MOVWF	r0x1010
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1056, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1056 
	MOVWF	r0x1011
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1057, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1057 
	MOVWF	r0x1012
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3616:genCmpGt *{*
;; ***	genCmpGt  3617
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3354:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x5=5), size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3325:pic14_mov2w_regOrLit
	.line	100; "gpio.c"	switch(port)
	MOVLW	0x05
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3492:genCmp
;;	1126 rIdx = r0x1055 
	SUBWF	r0x1010,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3297:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3302:genSkipc
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3306:genSkipc
;; ***	popGetLabel  key=8, label offset 107
	GOTO	_00215_DS_
;;genSkipc:3307: created from rifx:0000000000BC9340
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7337:genJumpTab *{*
;; ***	genJumpTab  7338
;;	708 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7353:genJumpTab
;; ***	popGetLabel  key=15, label offset 107
	MOVLW	HIGH(_00222_DS_)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7354:genJumpTab
	BANKSEL	PCLATH
	MOVWF	PCLATH
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7355:genJumpTab
;; ***	popGetLabel  key=15, label offset 107
	MOVLW	_00222_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7356:genJumpTab
;;	1126 rIdx = r0x1055 
	BANKSEL	r0x1010
	ADDWF	r0x1010,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7357:genJumpTab
	BTFSS	STATUS,0
	GOTO	_00005_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7358:genJumpTab
	BANKSEL	PCLATH
	INCF	PCLATH,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7359:genJumpTab
_00005_DS_:
	MOVWF	PCL
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=1, label offset 107
_00222_DS_:
	GOTO	_00208_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=2, label offset 107
	GOTO	_00209_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=3, label offset 107
	GOTO	_00210_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=4, label offset 107
	GOTO	_00211_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=5, label offset 107
	GOTO	_00212_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7395 result AOP_REG=r0x1055, size=1, left -=-, size=0, right AOP_REG=r0x1056, size=1
;; ***	genCast  7537
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7561:genCast
;;	1126 rIdx = r0x1056 
_00208_DS_:
	.line	103; "gpio.c"	SetRegisterPin(TRISA,pin,direction) ;
	BANKSEL	r0x1011
;;118	MOVF	r0x1011,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7562:genCast
;;	1126 rIdx = r0x1055 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	MOVWF	r0x1013
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1055 
;;117	MOVF	r0x1010,W
	MOVF	r0x1011,W
	MOVWF	r0x1010
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5738:genGenericShift
	BTFSC	r0x1010,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5739:genGenericShift
;; ***	popGetLabel  key=18, label offset 107
	GOTO	_00226_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=17, label offset 107
	GOTO	_00224_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1058 
_00223_DS_:
	BANKSEL	r0x1013
	RLF	r0x1013,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=16, label offset 107
	GOTO	_00223_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5761:genGenericShift
;; ***	popGetLabel  key=17, label offset 107
	GOTO	_00224_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5649:loadSignToC *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5652:loadSignToC
_00226_DS_:
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5653:loadSignToC
	BANKSEL	r0x1013
	BTFSC	r0x1013,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5654:loadSignToC
	BSF	STATUS,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1058 
	RRF	r0x1013,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5772:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5773:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5774:genGenericShift
;; ***	popGetLabel  key=19, label offset 107
	GOTO	_00226_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1609:genCpl *{*
;; ***	genCpl  1611
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x1058 
_00224_DS_:
	BANKSEL	r0x1013
	COMF	r0x1013,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x1055 
	MOVWF	r0x1010
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _TRISA, size = 1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_REG=r0x1055, size=1, left AOP_REG=r0x1055, size=1, right AOP_DIR=_TRISA, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1027
;;	1045  _TRISA   offset=0
	BANKSEL	_TRISA
	MOVF	_TRISA,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x1055 
	BANKSEL	r0x1010
	ANDWF	r0x1010,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1057 
	MOVF	r0x1012,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	MOVWF	r0x1013
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1056 
	MOVF	r0x1011,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=21, label offset 107
	GOTO	_00228_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1058 
_00227_DS_:
	BANKSEL	r0x1013
	RLF	r0x1013,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=20, label offset 107
	GOTO	_00227_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _TRISA, size = 1
;; 	line = 4331 result AOP_DIR=_TRISA, size=1, left AOP_REG=r0x1055, size=1, right AOP_REG=r0x1058, size=1
;; 	line = 4357 result AOP_DIR=_TRISA, size=1, left AOP_REG=r0x1055, size=1, right AOP_REG=r0x1058, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4583:genOr
;;	1126 rIdx = r0x1058 
_00228_DS_:
	BANKSEL	r0x1013
	MOVF	r0x1013,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4584:genOr
;;	1126 rIdx = r0x1055 
	IORWF	r0x1010,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4585:genOr
;;	1027
;;	1045  _TRISA   offset=0
	BANKSEL	_TRISA
	MOVWF	_TRISA
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=8, label offset 107
	.line	104; "gpio.c"	break;
	GOTO	_00215_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7395 result AOP_REG=r0x1055, size=1, left -=-, size=0, right AOP_REG=r0x1056, size=1
;; ***	genCast  7537
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7561:genCast
;;	1126 rIdx = r0x1056 
;;114	MOVF	r0x1011,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7562:genCast
;;	1126 rIdx = r0x1055 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
_00209_DS_:
	.line	106; "gpio.c"	SetRegisterPin(TRISB,pin,direction) ;
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	BANKSEL	r0x1013
	MOVWF	r0x1013
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1055 
;;113	MOVF	r0x1010,W
	MOVF	r0x1011,W
	MOVWF	r0x1010
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5738:genGenericShift
	BTFSC	r0x1010,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5739:genGenericShift
;; ***	popGetLabel  key=24, label offset 107
	GOTO	_00232_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=23, label offset 107
	GOTO	_00230_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1058 
_00229_DS_:
	BANKSEL	r0x1013
	RLF	r0x1013,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=22, label offset 107
	GOTO	_00229_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5761:genGenericShift
;; ***	popGetLabel  key=23, label offset 107
	GOTO	_00230_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5649:loadSignToC *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5652:loadSignToC
_00232_DS_:
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5653:loadSignToC
	BANKSEL	r0x1013
	BTFSC	r0x1013,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5654:loadSignToC
	BSF	STATUS,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1058 
	RRF	r0x1013,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5772:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5773:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5774:genGenericShift
;; ***	popGetLabel  key=25, label offset 107
	GOTO	_00232_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1609:genCpl *{*
;; ***	genCpl  1611
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x1058 
_00230_DS_:
	BANKSEL	r0x1013
	COMF	r0x1013,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x1055 
	MOVWF	r0x1010
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _TRISB, size = 1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_REG=r0x1055, size=1, left AOP_REG=r0x1055, size=1, right AOP_DIR=_TRISB, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1027
;;	1045  _TRISB   offset=0
	BANKSEL	_TRISB
	MOVF	_TRISB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x1055 
	BANKSEL	r0x1010
	ANDWF	r0x1010,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1057 
	MOVF	r0x1012,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	MOVWF	r0x1013
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1056 
	MOVF	r0x1011,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=27, label offset 107
	GOTO	_00234_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1058 
_00233_DS_:
	BANKSEL	r0x1013
	RLF	r0x1013,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=26, label offset 107
	GOTO	_00233_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _TRISB, size = 1
;; 	line = 4331 result AOP_DIR=_TRISB, size=1, left AOP_REG=r0x1055, size=1, right AOP_REG=r0x1058, size=1
;; 	line = 4357 result AOP_DIR=_TRISB, size=1, left AOP_REG=r0x1055, size=1, right AOP_REG=r0x1058, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4583:genOr
;;	1126 rIdx = r0x1058 
_00234_DS_:
	BANKSEL	r0x1013
	MOVF	r0x1013,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4584:genOr
;;	1126 rIdx = r0x1055 
	IORWF	r0x1010,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4585:genOr
;;	1027
;;	1045  _TRISB   offset=0
	BANKSEL	_TRISB
	MOVWF	_TRISB
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=8, label offset 107
	.line	107; "gpio.c"	break;
	GOTO	_00215_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7395 result AOP_REG=r0x1055, size=1, left -=-, size=0, right AOP_REG=r0x1056, size=1
;; ***	genCast  7537
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7561:genCast
;;	1126 rIdx = r0x1056 
;;110	MOVF	r0x1011,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7562:genCast
;;	1126 rIdx = r0x1055 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
_00210_DS_:
	.line	109; "gpio.c"	SetRegisterPin(TRISC,pin,direction) ;
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	BANKSEL	r0x1013
	MOVWF	r0x1013
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1055 
;;109	MOVF	r0x1010,W
	MOVF	r0x1011,W
	MOVWF	r0x1010
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5738:genGenericShift
	BTFSC	r0x1010,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5739:genGenericShift
;; ***	popGetLabel  key=30, label offset 107
	GOTO	_00238_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=29, label offset 107
	GOTO	_00236_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1058 
_00235_DS_:
	BANKSEL	r0x1013
	RLF	r0x1013,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=28, label offset 107
	GOTO	_00235_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5761:genGenericShift
;; ***	popGetLabel  key=29, label offset 107
	GOTO	_00236_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5649:loadSignToC *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5652:loadSignToC
_00238_DS_:
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5653:loadSignToC
	BANKSEL	r0x1013
	BTFSC	r0x1013,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5654:loadSignToC
	BSF	STATUS,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1058 
	RRF	r0x1013,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5772:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5773:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5774:genGenericShift
;; ***	popGetLabel  key=31, label offset 107
	GOTO	_00238_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1609:genCpl *{*
;; ***	genCpl  1611
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x1058 
_00236_DS_:
	BANKSEL	r0x1013
	COMF	r0x1013,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x1055 
	MOVWF	r0x1010
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _TRISC, size = 1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_REG=r0x1055, size=1, left AOP_REG=r0x1055, size=1, right AOP_DIR=_TRISC, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1027
;;	1045  _TRISC   offset=0
	BANKSEL	_TRISC
	MOVF	_TRISC,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x1055 
	BANKSEL	r0x1010
	ANDWF	r0x1010,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1057 
	MOVF	r0x1012,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	MOVWF	r0x1013
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1056 
	MOVF	r0x1011,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=33, label offset 107
	GOTO	_00240_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1058 
_00239_DS_:
	BANKSEL	r0x1013
	RLF	r0x1013,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=32, label offset 107
	GOTO	_00239_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _TRISC, size = 1
;; 	line = 4331 result AOP_DIR=_TRISC, size=1, left AOP_REG=r0x1055, size=1, right AOP_REG=r0x1058, size=1
;; 	line = 4357 result AOP_DIR=_TRISC, size=1, left AOP_REG=r0x1055, size=1, right AOP_REG=r0x1058, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4583:genOr
;;	1126 rIdx = r0x1058 
_00240_DS_:
	BANKSEL	r0x1013
	MOVF	r0x1013,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4584:genOr
;;	1126 rIdx = r0x1055 
	IORWF	r0x1010,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4585:genOr
;;	1027
;;	1045  _TRISC   offset=0
	BANKSEL	_TRISC
	MOVWF	_TRISC
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=8, label offset 107
	.line	110; "gpio.c"	break;
	GOTO	_00215_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7395 result AOP_REG=r0x1055, size=1, left -=-, size=0, right AOP_REG=r0x1056, size=1
;; ***	genCast  7537
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7561:genCast
;;	1126 rIdx = r0x1056 
;;106	MOVF	r0x1011,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7562:genCast
;;	1126 rIdx = r0x1055 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
_00211_DS_:
	.line	112; "gpio.c"	SetRegisterPin(TRISD,pin,direction) ;
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	BANKSEL	r0x1013
	MOVWF	r0x1013
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1055 
;;105	MOVF	r0x1010,W
	MOVF	r0x1011,W
	MOVWF	r0x1010
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5738:genGenericShift
	BTFSC	r0x1010,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5739:genGenericShift
;; ***	popGetLabel  key=36, label offset 107
	GOTO	_00244_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=35, label offset 107
	GOTO	_00242_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1058 
_00241_DS_:
	BANKSEL	r0x1013
	RLF	r0x1013,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=34, label offset 107
	GOTO	_00241_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5761:genGenericShift
;; ***	popGetLabel  key=35, label offset 107
	GOTO	_00242_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5649:loadSignToC *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5652:loadSignToC
_00244_DS_:
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5653:loadSignToC
	BANKSEL	r0x1013
	BTFSC	r0x1013,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5654:loadSignToC
	BSF	STATUS,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1058 
	RRF	r0x1013,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5772:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5773:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5774:genGenericShift
;; ***	popGetLabel  key=37, label offset 107
	GOTO	_00244_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1609:genCpl *{*
;; ***	genCpl  1611
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x1058 
_00242_DS_:
	BANKSEL	r0x1013
	COMF	r0x1013,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x1055 
	MOVWF	r0x1010
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _TRISD, size = 1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_REG=r0x1055, size=1, left AOP_REG=r0x1055, size=1, right AOP_DIR=_TRISD, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1027
;;	1045  _TRISD   offset=0
	BANKSEL	_TRISD
	MOVF	_TRISD,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x1055 
	BANKSEL	r0x1010
	ANDWF	r0x1010,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1057 
	MOVF	r0x1012,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	MOVWF	r0x1013
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1056 
	MOVF	r0x1011,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=39, label offset 107
	GOTO	_00246_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1058 
_00245_DS_:
	BANKSEL	r0x1013
	RLF	r0x1013,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=38, label offset 107
	GOTO	_00245_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _TRISD, size = 1
;; 	line = 4331 result AOP_DIR=_TRISD, size=1, left AOP_REG=r0x1055, size=1, right AOP_REG=r0x1058, size=1
;; 	line = 4357 result AOP_DIR=_TRISD, size=1, left AOP_REG=r0x1055, size=1, right AOP_REG=r0x1058, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4583:genOr
;;	1126 rIdx = r0x1058 
_00246_DS_:
	BANKSEL	r0x1013
	MOVF	r0x1013,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4584:genOr
;;	1126 rIdx = r0x1055 
	IORWF	r0x1010,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4585:genOr
;;	1027
;;	1045  _TRISD   offset=0
	BANKSEL	_TRISD
	MOVWF	_TRISD
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=8, label offset 107
	.line	113; "gpio.c"	break;
	GOTO	_00215_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7395 result AOP_REG=r0x1055, size=1, left -=-, size=0, right AOP_REG=r0x1056, size=1
;; ***	genCast  7537
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7561:genCast
;;	1126 rIdx = r0x1056 
;;102	MOVF	r0x1011,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7562:genCast
;;	1126 rIdx = r0x1055 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
_00212_DS_:
	.line	115; "gpio.c"	SetRegisterPin(TRISE,pin,direction) ;
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	BANKSEL	r0x1013
	MOVWF	r0x1013
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1055 
;;101	MOVF	r0x1010,W
	MOVF	r0x1011,W
	MOVWF	r0x1010
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5738:genGenericShift
	BTFSC	r0x1010,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5739:genGenericShift
;; ***	popGetLabel  key=42, label offset 107
	GOTO	_00250_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=41, label offset 107
	GOTO	_00248_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1058 
_00247_DS_:
	BANKSEL	r0x1013
	RLF	r0x1013,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=40, label offset 107
	GOTO	_00247_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5761:genGenericShift
;; ***	popGetLabel  key=41, label offset 107
	GOTO	_00248_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5649:loadSignToC *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5652:loadSignToC
_00250_DS_:
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5653:loadSignToC
	BANKSEL	r0x1013
	BTFSC	r0x1013,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5654:loadSignToC
	BSF	STATUS,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1058 
	RRF	r0x1013,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5772:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5773:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5774:genGenericShift
;; ***	popGetLabel  key=43, label offset 107
	GOTO	_00250_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1609:genCpl *{*
;; ***	genCpl  1611
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x1058 
_00248_DS_:
	BANKSEL	r0x1013
	COMF	r0x1013,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x1055 
	MOVWF	r0x1010
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _TRISE, size = 1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_REG=r0x1055, size=1, left AOP_REG=r0x1055, size=1, right AOP_DIR=_TRISE, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1027
;;	1045  _TRISE   offset=0
	BANKSEL	_TRISE
	MOVF	_TRISE,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x1055 
	BANKSEL	r0x1010
	ANDWF	r0x1010,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1057 
	MOVF	r0x1012,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1058 
	MOVWF	r0x1013
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1056 
	MOVF	r0x1011,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=45, label offset 107
	GOTO	_00252_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1058 
_00251_DS_:
	BANKSEL	r0x1013
	RLF	r0x1013,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=44, label offset 107
	GOTO	_00251_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _TRISE, size = 1
;; 	line = 4331 result AOP_DIR=_TRISE, size=1, left AOP_REG=r0x1055, size=1, right AOP_REG=r0x1058, size=1
;; 	line = 4357 result AOP_DIR=_TRISE, size=1, left AOP_REG=r0x1055, size=1, right AOP_REG=r0x1058, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4583:genOr
;;	1126 rIdx = r0x1058 
_00252_DS_:
	BANKSEL	r0x1013
	MOVF	r0x1013,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4584:genOr
;;	1126 rIdx = r0x1055 
	IORWF	r0x1010,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4585:genOr
;;	1027
;;	1045  _TRISE   offset=0
	BANKSEL	_TRISE
	MOVWF	_TRISE
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
_00215_DS_:
	.line	121; "gpio.c"	}
	RETURN	
; exit point of _GPIO_SetPinDirection
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7710:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;6 compiler assigned registers:
;   r0x1014
;   STK00
;   r0x1015
;   STK01
;   r0x1016
;   r0x1017
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=39previous max_key=15 
S_gpio__GPIO_SetPinState	code
_GPIO_SetPinState:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1051, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1051 
	.line	74; "gpio.c"	void GPIO_SetPinState(tPORT port , tPIN pin , tSTATE state)
	BANKSEL	r0x1014
	MOVWF	r0x1014
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1052, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1052 
	MOVWF	r0x1015
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1053, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1053 
	MOVWF	r0x1016
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3616:genCmpGt *{*
;; ***	genCmpGt  3617
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3354:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x5=5), size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3325:pic14_mov2w_regOrLit
	.line	76; "gpio.c"	switch(port)
	MOVLW	0x05
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3492:genCmp
;;	1126 rIdx = r0x1051 
	SUBWF	r0x1014,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3297:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3302:genSkipc
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3306:genSkipc
;; ***	popGetLabel  key=8, label offset 58
	GOTO	_00166_DS_
;;genSkipc:3307: created from rifx:0000000000BC9340
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7337:genJumpTab *{*
;; ***	genJumpTab  7338
;;	708 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7353:genJumpTab
;; ***	popGetLabel  key=15, label offset 58
	MOVLW	HIGH(_00173_DS_)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7354:genJumpTab
	BANKSEL	PCLATH
	MOVWF	PCLATH
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7355:genJumpTab
;; ***	popGetLabel  key=15, label offset 58
	MOVLW	_00173_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7356:genJumpTab
;;	1126 rIdx = r0x1051 
	BANKSEL	r0x1014
	ADDWF	r0x1014,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7357:genJumpTab
	BTFSS	STATUS,0
	GOTO	_00006_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7358:genJumpTab
	BANKSEL	PCLATH
	INCF	PCLATH,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7359:genJumpTab
_00006_DS_:
	MOVWF	PCL
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=1, label offset 58
_00173_DS_:
	GOTO	_00159_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=2, label offset 58
	GOTO	_00160_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=3, label offset 58
	GOTO	_00161_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=4, label offset 58
	GOTO	_00162_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=5, label offset 58
	GOTO	_00163_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7395 result AOP_REG=r0x1051, size=1, left -=-, size=0, right AOP_REG=r0x1052, size=1
;; ***	genCast  7537
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7561:genCast
;;	1126 rIdx = r0x1052 
_00159_DS_:
	.line	79; "gpio.c"	SetRegisterPin(PORTA,pin,state) ;
	BANKSEL	r0x1015
;;116	MOVF	r0x1015,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7562:genCast
;;	1126 rIdx = r0x1051 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1054 
	MOVWF	r0x1017
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1051 
;;115	MOVF	r0x1014,W
	MOVF	r0x1015,W
	MOVWF	r0x1014
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5738:genGenericShift
	BTFSC	r0x1014,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5739:genGenericShift
;; ***	popGetLabel  key=18, label offset 58
	GOTO	_00177_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=17, label offset 58
	GOTO	_00175_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1054 
_00174_DS_:
	BANKSEL	r0x1017
	RLF	r0x1017,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=16, label offset 58
	GOTO	_00174_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5761:genGenericShift
;; ***	popGetLabel  key=17, label offset 58
	GOTO	_00175_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5649:loadSignToC *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5652:loadSignToC
_00177_DS_:
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5653:loadSignToC
	BANKSEL	r0x1017
	BTFSC	r0x1017,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5654:loadSignToC
	BSF	STATUS,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1054 
	RRF	r0x1017,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5772:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5773:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5774:genGenericShift
;; ***	popGetLabel  key=19, label offset 58
	GOTO	_00177_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1609:genCpl *{*
;; ***	genCpl  1611
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x1054 
_00175_DS_:
	BANKSEL	r0x1017
	COMF	r0x1017,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x1051 
	MOVWF	r0x1014
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _PORTA, size = 1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_REG=r0x1051, size=1, left AOP_REG=r0x1051, size=1, right AOP_DIR=_PORTA, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1027
;;	1045  _PORTA   offset=0
	BANKSEL	_PORTA
	MOVF	_PORTA,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x1051 
	BANKSEL	r0x1014
	ANDWF	r0x1014,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1053 
	MOVF	r0x1016,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1054 
	MOVWF	r0x1017
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1052 
	MOVF	r0x1015,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=21, label offset 58
	GOTO	_00179_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1054 
_00178_DS_:
	BANKSEL	r0x1017
	RLF	r0x1017,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=20, label offset 58
	GOTO	_00178_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _PORTA, size = 1
;; 	line = 4331 result AOP_DIR=_PORTA, size=1, left AOP_REG=r0x1051, size=1, right AOP_REG=r0x1054, size=1
;; 	line = 4357 result AOP_DIR=_PORTA, size=1, left AOP_REG=r0x1051, size=1, right AOP_REG=r0x1054, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4583:genOr
;;	1126 rIdx = r0x1054 
_00179_DS_:
	BANKSEL	r0x1017
	MOVF	r0x1017,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4584:genOr
;;	1126 rIdx = r0x1051 
	IORWF	r0x1014,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4585:genOr
;;	1027
;;	1045  _PORTA   offset=0
	BANKSEL	_PORTA
	MOVWF	_PORTA
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=8, label offset 58
	.line	80; "gpio.c"	break;
	GOTO	_00166_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7395 result AOP_REG=r0x1051, size=1, left -=-, size=0, right AOP_REG=r0x1052, size=1
;; ***	genCast  7537
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7561:genCast
;;	1126 rIdx = r0x1052 
;;112	MOVF	r0x1015,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7562:genCast
;;	1126 rIdx = r0x1051 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
_00160_DS_:
	.line	82; "gpio.c"	SetRegisterPin(PORTB,pin,state) ;
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1054 
	BANKSEL	r0x1017
	MOVWF	r0x1017
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1051 
;;111	MOVF	r0x1014,W
	MOVF	r0x1015,W
	MOVWF	r0x1014
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5738:genGenericShift
	BTFSC	r0x1014,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5739:genGenericShift
;; ***	popGetLabel  key=24, label offset 58
	GOTO	_00183_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=23, label offset 58
	GOTO	_00181_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1054 
_00180_DS_:
	BANKSEL	r0x1017
	RLF	r0x1017,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=22, label offset 58
	GOTO	_00180_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5761:genGenericShift
;; ***	popGetLabel  key=23, label offset 58
	GOTO	_00181_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5649:loadSignToC *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5652:loadSignToC
_00183_DS_:
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5653:loadSignToC
	BANKSEL	r0x1017
	BTFSC	r0x1017,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5654:loadSignToC
	BSF	STATUS,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1054 
	RRF	r0x1017,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5772:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5773:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5774:genGenericShift
;; ***	popGetLabel  key=25, label offset 58
	GOTO	_00183_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1609:genCpl *{*
;; ***	genCpl  1611
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x1054 
_00181_DS_:
	BANKSEL	r0x1017
	COMF	r0x1017,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x1051 
	MOVWF	r0x1014
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _PORTB, size = 1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_REG=r0x1051, size=1, left AOP_REG=r0x1051, size=1, right AOP_DIR=_PORTB, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1027
;;	1045  _PORTB   offset=0
	BANKSEL	_PORTB
	MOVF	_PORTB,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x1051 
	BANKSEL	r0x1014
	ANDWF	r0x1014,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1053 
	MOVF	r0x1016,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1054 
	MOVWF	r0x1017
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1052 
	MOVF	r0x1015,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=27, label offset 58
	GOTO	_00185_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1054 
_00184_DS_:
	BANKSEL	r0x1017
	RLF	r0x1017,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=26, label offset 58
	GOTO	_00184_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _PORTB, size = 1
;; 	line = 4331 result AOP_DIR=_PORTB, size=1, left AOP_REG=r0x1051, size=1, right AOP_REG=r0x1054, size=1
;; 	line = 4357 result AOP_DIR=_PORTB, size=1, left AOP_REG=r0x1051, size=1, right AOP_REG=r0x1054, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4583:genOr
;;	1126 rIdx = r0x1054 
_00185_DS_:
	BANKSEL	r0x1017
	MOVF	r0x1017,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4584:genOr
;;	1126 rIdx = r0x1051 
	IORWF	r0x1014,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4585:genOr
;;	1027
;;	1045  _PORTB   offset=0
	BANKSEL	_PORTB
	MOVWF	_PORTB
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=8, label offset 58
	.line	83; "gpio.c"	break;
	GOTO	_00166_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7395 result AOP_REG=r0x1051, size=1, left -=-, size=0, right AOP_REG=r0x1052, size=1
;; ***	genCast  7537
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7561:genCast
;;	1126 rIdx = r0x1052 
;;108	MOVF	r0x1015,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7562:genCast
;;	1126 rIdx = r0x1051 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
_00161_DS_:
	.line	85; "gpio.c"	SetRegisterPin(PORTC,pin,state) ;
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1054 
	BANKSEL	r0x1017
	MOVWF	r0x1017
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1051 
;;107	MOVF	r0x1014,W
	MOVF	r0x1015,W
	MOVWF	r0x1014
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5738:genGenericShift
	BTFSC	r0x1014,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5739:genGenericShift
;; ***	popGetLabel  key=30, label offset 58
	GOTO	_00189_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=29, label offset 58
	GOTO	_00187_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1054 
_00186_DS_:
	BANKSEL	r0x1017
	RLF	r0x1017,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=28, label offset 58
	GOTO	_00186_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5761:genGenericShift
;; ***	popGetLabel  key=29, label offset 58
	GOTO	_00187_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5649:loadSignToC *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5652:loadSignToC
_00189_DS_:
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5653:loadSignToC
	BANKSEL	r0x1017
	BTFSC	r0x1017,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5654:loadSignToC
	BSF	STATUS,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1054 
	RRF	r0x1017,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5772:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5773:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5774:genGenericShift
;; ***	popGetLabel  key=31, label offset 58
	GOTO	_00189_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1609:genCpl *{*
;; ***	genCpl  1611
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x1054 
_00187_DS_:
	BANKSEL	r0x1017
	COMF	r0x1017,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x1051 
	MOVWF	r0x1014
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _PORTC, size = 1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_REG=r0x1051, size=1, left AOP_REG=r0x1051, size=1, right AOP_DIR=_PORTC, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1027
;;	1045  _PORTC   offset=0
	BANKSEL	_PORTC
	MOVF	_PORTC,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x1051 
	BANKSEL	r0x1014
	ANDWF	r0x1014,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1053 
	MOVF	r0x1016,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1054 
	MOVWF	r0x1017
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1052 
	MOVF	r0x1015,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=33, label offset 58
	GOTO	_00191_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1054 
_00190_DS_:
	BANKSEL	r0x1017
	RLF	r0x1017,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=32, label offset 58
	GOTO	_00190_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _PORTC, size = 1
;; 	line = 4331 result AOP_DIR=_PORTC, size=1, left AOP_REG=r0x1051, size=1, right AOP_REG=r0x1054, size=1
;; 	line = 4357 result AOP_DIR=_PORTC, size=1, left AOP_REG=r0x1051, size=1, right AOP_REG=r0x1054, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4583:genOr
;;	1126 rIdx = r0x1054 
_00191_DS_:
	BANKSEL	r0x1017
	MOVF	r0x1017,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4584:genOr
;;	1126 rIdx = r0x1051 
	IORWF	r0x1014,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4585:genOr
;;	1027
;;	1045  _PORTC   offset=0
	BANKSEL	_PORTC
	MOVWF	_PORTC
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=8, label offset 58
	.line	86; "gpio.c"	break;
	GOTO	_00166_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7395 result AOP_REG=r0x1051, size=1, left -=-, size=0, right AOP_REG=r0x1052, size=1
;; ***	genCast  7537
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7561:genCast
;;	1126 rIdx = r0x1052 
;;104	MOVF	r0x1015,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7562:genCast
;;	1126 rIdx = r0x1051 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
_00162_DS_:
	.line	88; "gpio.c"	SetRegisterPin(PORTD,pin,state) ;
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1054 
	BANKSEL	r0x1017
	MOVWF	r0x1017
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1051 
;;103	MOVF	r0x1014,W
	MOVF	r0x1015,W
	MOVWF	r0x1014
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5738:genGenericShift
	BTFSC	r0x1014,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5739:genGenericShift
;; ***	popGetLabel  key=36, label offset 58
	GOTO	_00195_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=35, label offset 58
	GOTO	_00193_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1054 
_00192_DS_:
	BANKSEL	r0x1017
	RLF	r0x1017,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=34, label offset 58
	GOTO	_00192_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5761:genGenericShift
;; ***	popGetLabel  key=35, label offset 58
	GOTO	_00193_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5649:loadSignToC *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5652:loadSignToC
_00195_DS_:
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5653:loadSignToC
	BANKSEL	r0x1017
	BTFSC	r0x1017,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5654:loadSignToC
	BSF	STATUS,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1054 
	RRF	r0x1017,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5772:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5773:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5774:genGenericShift
;; ***	popGetLabel  key=37, label offset 58
	GOTO	_00195_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1609:genCpl *{*
;; ***	genCpl  1611
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x1054 
_00193_DS_:
	BANKSEL	r0x1017
	COMF	r0x1017,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x1051 
	MOVWF	r0x1014
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _PORTD, size = 1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_REG=r0x1051, size=1, left AOP_REG=r0x1051, size=1, right AOP_DIR=_PORTD, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1027
;;	1045  _PORTD   offset=0
	BANKSEL	_PORTD
	MOVF	_PORTD,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x1051 
	BANKSEL	r0x1014
	ANDWF	r0x1014,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1053 
	MOVF	r0x1016,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1054 
	MOVWF	r0x1017
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1052 
	MOVF	r0x1015,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=39, label offset 58
	GOTO	_00197_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1054 
_00196_DS_:
	BANKSEL	r0x1017
	RLF	r0x1017,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=38, label offset 58
	GOTO	_00196_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _PORTD, size = 1
;; 	line = 4331 result AOP_DIR=_PORTD, size=1, left AOP_REG=r0x1051, size=1, right AOP_REG=r0x1054, size=1
;; 	line = 4357 result AOP_DIR=_PORTD, size=1, left AOP_REG=r0x1051, size=1, right AOP_REG=r0x1054, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4583:genOr
;;	1126 rIdx = r0x1054 
_00197_DS_:
	BANKSEL	r0x1017
	MOVF	r0x1017,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4584:genOr
;;	1126 rIdx = r0x1051 
	IORWF	r0x1014,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4585:genOr
;;	1027
;;	1045  _PORTD   offset=0
	BANKSEL	_PORTD
	MOVWF	_PORTD
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=8, label offset 58
	.line	89; "gpio.c"	break;
	GOTO	_00166_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7386:genCast *{*
;; ***	genCast  7387
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 7395 result AOP_REG=r0x1051, size=1, left -=-, size=0, right AOP_REG=r0x1052, size=1
;; ***	genCast  7537
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7561:genCast
;;	1126 rIdx = r0x1052 
;;100	MOVF	r0x1015,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7562:genCast
;;	1126 rIdx = r0x1051 
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1398:mov2w
_00163_DS_:
	.line	91; "gpio.c"	SetRegisterPin(PORTE,pin,state) ;
	MOVLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1054 
	BANKSEL	r0x1017
	MOVWF	r0x1017
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1051 
;;99	MOVF	r0x1014,W
	MOVF	r0x1015,W
	MOVWF	r0x1014
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5738:genGenericShift
	BTFSC	r0x1014,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5739:genGenericShift
;; ***	popGetLabel  key=42, label offset 58
	GOTO	_00201_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=41, label offset 58
	GOTO	_00199_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1054 
_00198_DS_:
	BANKSEL	r0x1017
	RLF	r0x1017,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=40, label offset 58
	GOTO	_00198_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5761:genGenericShift
;; ***	popGetLabel  key=41, label offset 58
	GOTO	_00199_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5649:loadSignToC *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5652:loadSignToC
_00201_DS_:
	BCF	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5653:loadSignToC
	BANKSEL	r0x1017
	BTFSC	r0x1017,7
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5654:loadSignToC
	BSF	STATUS,0
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1054 
	RRF	r0x1017,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5772:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5773:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5774:genGenericShift
;; ***	popGetLabel  key=43, label offset 58
	GOTO	_00201_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1609:genCpl *{*
;; ***	genCpl  1611
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1631:genCpl
;;	1126 rIdx = r0x1054 
_00199_DS_:
	BANKSEL	r0x1017
	COMF	r0x1017,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1632:genCpl
;;	1126 rIdx = r0x1051 
	MOVWF	r0x1014
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4023:genAnd *{*
;; ***	genAnd  4024
;; ***	aopForSym 324
;;	336 sym->rname = _PORTE, size = 1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	line = 4059 result AOP_REG=r0x1051, size=1, left AOP_REG=r0x1051, size=1, right AOP_DIR=_PORTE, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4241:genAnd
;;	1027
;;	1045  _PORTE   offset=0
	BANKSEL	_PORTE
	MOVF	_PORTE,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4242:genAnd
;;	1126 rIdx = r0x1051 
	BANKSEL	r0x1014
	ANDWF	r0x1014,F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5667:genGenericShift *{*
;; ***	genGenericShift  5670
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1053 
	MOVF	r0x1016,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1054 
	MOVWF	r0x1017
;; ***	addSign  1087
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/genarith.c:1088:addSign *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1052 
	MOVF	r0x1015,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5741:genGenericShift
	SUBLW	0x00
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5743:genGenericShift
	BTFSC	STATUS,2
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5744:genGenericShift
;; ***	popGetLabel  key=45, label offset 58
	GOTO	_00203_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5618:genMultiAsm *{*
;; ***	genMultiAsm  5619
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5636:genMultiAsm
;;	1126 rIdx = r0x1054 
_00202_DS_:
	BANKSEL	r0x1017
	RLF	r0x1017,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5750:genGenericShift
	ADDLW	0x01
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5751:genGenericShift
	BTFSS	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:5752:genGenericShift
;; ***	popGetLabel  key=44, label offset 58
	GOTO	_00202_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4324:genOr *{*
;; ***	genOr  4325
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _PORTE, size = 1
;; 	line = 4331 result AOP_DIR=_PORTE, size=1, left AOP_REG=r0x1051, size=1, right AOP_REG=r0x1054, size=1
;; 	line = 4357 result AOP_DIR=_PORTE, size=1, left AOP_REG=r0x1051, size=1, right AOP_REG=r0x1054, size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4583:genOr
;;	1126 rIdx = r0x1054 
_00203_DS_:
	BANKSEL	r0x1017
	MOVF	r0x1017,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4584:genOr
;;	1126 rIdx = r0x1051 
	IORWF	r0x1014,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:4585:genOr
;;	1027
;;	1045  _PORTE   offset=0
	BANKSEL	_PORTE
	MOVWF	_PORTE
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
_00166_DS_:
	.line	97; "gpio.c"	}
	RETURN	
; exit point of _GPIO_SetPinState
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7710:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;3 compiler assigned registers:
;   r0x1018
;   STK00
;   r0x1019
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=20previous max_key=15 
S_gpio__GPIO_SetPortDirection	code
_GPIO_SetPortDirection:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x104F, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104F 
	.line	50; "gpio.c"	void GPIO_SetPortDirection(tPORT port,tPORT_DIRECTION direction)
	BANKSEL	r0x1018
	MOVWF	r0x1018
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1050, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1050 
	MOVWF	r0x1019
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3616:genCmpGt *{*
;; ***	genCmpGt  3617
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3354:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x5=5), size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3325:pic14_mov2w_regOrLit
	.line	52; "gpio.c"	switch(port)
	MOVLW	0x05
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3492:genCmp
;;	1126 rIdx = r0x104F 
	SUBWF	r0x1018,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3297:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3302:genSkipc
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3306:genSkipc
;; ***	popGetLabel  key=8, label offset 39
	GOTO	_00147_DS_
;;genSkipc:3307: created from rifx:0000000000BC9340
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7337:genJumpTab *{*
;; ***	genJumpTab  7338
;;	708 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7353:genJumpTab
;; ***	popGetLabel  key=15, label offset 39
	MOVLW	HIGH(_00154_DS_)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7354:genJumpTab
	BANKSEL	PCLATH
	MOVWF	PCLATH
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7355:genJumpTab
;; ***	popGetLabel  key=15, label offset 39
	MOVLW	_00154_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7356:genJumpTab
;;	1126 rIdx = r0x104F 
	BANKSEL	r0x1018
	ADDWF	r0x1018,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7357:genJumpTab
	BTFSS	STATUS,0
	GOTO	_00007_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7358:genJumpTab
	BANKSEL	PCLATH
	INCF	PCLATH,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7359:genJumpTab
_00007_DS_:
	MOVWF	PCL
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=1, label offset 39
_00154_DS_:
	GOTO	_00140_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=2, label offset 39
	GOTO	_00141_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=3, label offset 39
	GOTO	_00142_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=4, label offset 39
	GOTO	_00143_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=5, label offset 39
	GOTO	_00144_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _TRISA, size = 1
;; 	line = 7202 result AOP_DIR=_TRISA, size=1, left -=-, size=0, right AOP_REG=r0x1050, size=1
;; ***	genAssign  7286
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1050 
_00140_DS_:
	.line	55; "gpio.c"	SetRegister(TRISA,direction) ;
	BANKSEL	r0x1019
	MOVF	r0x1019,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7313:genAssign
;;	1027
;;	1045  _TRISA   offset=0
	BANKSEL	_TRISA
	MOVWF	_TRISA
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=8, label offset 39
	.line	56; "gpio.c"	break;
	GOTO	_00147_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _TRISB, size = 1
;; 	line = 7202 result AOP_DIR=_TRISB, size=1, left -=-, size=0, right AOP_REG=r0x1050, size=1
;; ***	genAssign  7286
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1050 
_00141_DS_:
	.line	58; "gpio.c"	SetRegister(TRISB,direction) ;
	BANKSEL	r0x1019
	MOVF	r0x1019,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7313:genAssign
;;	1027
;;	1045  _TRISB   offset=0
	BANKSEL	_TRISB
	MOVWF	_TRISB
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=8, label offset 39
	.line	59; "gpio.c"	break;
	GOTO	_00147_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _TRISC, size = 1
;; 	line = 7202 result AOP_DIR=_TRISC, size=1, left -=-, size=0, right AOP_REG=r0x1050, size=1
;; ***	genAssign  7286
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1050 
_00142_DS_:
	.line	61; "gpio.c"	SetRegister(TRISC,direction) ;
	BANKSEL	r0x1019
	MOVF	r0x1019,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7313:genAssign
;;	1027
;;	1045  _TRISC   offset=0
	BANKSEL	_TRISC
	MOVWF	_TRISC
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=8, label offset 39
	.line	62; "gpio.c"	break;
	GOTO	_00147_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _TRISD, size = 1
;; 	line = 7202 result AOP_DIR=_TRISD, size=1, left -=-, size=0, right AOP_REG=r0x1050, size=1
;; ***	genAssign  7286
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1050 
_00143_DS_:
	.line	64; "gpio.c"	SetRegister(TRISD,direction) ;
	BANKSEL	r0x1019
	MOVF	r0x1019,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7313:genAssign
;;	1027
;;	1045  _TRISD   offset=0
	BANKSEL	_TRISD
	MOVWF	_TRISD
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=8, label offset 39
	.line	65; "gpio.c"	break;
	GOTO	_00147_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _TRISE, size = 1
;; 	line = 7202 result AOP_DIR=_TRISE, size=1, left -=-, size=0, right AOP_REG=r0x1050, size=1
;; ***	genAssign  7286
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1050 
_00144_DS_:
	.line	67; "gpio.c"	SetRegister(TRISE,direction) ;
	BANKSEL	r0x1019
	MOVF	r0x1019,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7313:genAssign
;;	1027
;;	1045  _TRISE   offset=0
	BANKSEL	_TRISE
	MOVWF	_TRISE
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
_00147_DS_:
	.line	73; "gpio.c"	}
	RETURN	
; exit point of _GPIO_SetPortDirection
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7710:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;3 compiler assigned registers:
;   r0x101A
;   STK00
;   r0x101B
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=16previous max_key=0 
S_gpio__GPIO_SetPortState	code
_GPIO_SetPortState:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x104C, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104C 
	.line	26; "gpio.c"	void GPIO_SetPortState(tPORT port,tSTATE state)
	BANKSEL	r0x101A
	MOVWF	r0x101A
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x104D, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104D 
	MOVWF	r0x101B
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3616:genCmpGt *{*
;; ***	genCmpGt  3617
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3354:genCmp *{*
;;swapping arguments (AOP_TYPEs 1/2)
;;unsigned compare: left >= lit(0x5=5), size=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3325:pic14_mov2w_regOrLit
	.line	28; "gpio.c"	switch(port)
	MOVLW	0x05
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3492:genCmp
;;	1126 rIdx = r0x104C 
	SUBWF	r0x101A,W
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3297:genSkipc *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3302:genSkipc
	BTFSC	STATUS,0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:3306:genSkipc
;; ***	popGetLabel  key=8, label offset 20
	GOTO	_00128_DS_
;;genSkipc:3307: created from rifx:0000000000BC9340
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7337:genJumpTab *{*
;; ***	genJumpTab  7338
;;	708 register type nRegs=1
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7353:genJumpTab
;; ***	popGetLabel  key=15, label offset 20
	MOVLW	HIGH(_00135_DS_)
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7354:genJumpTab
	BANKSEL	PCLATH
	MOVWF	PCLATH
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7355:genJumpTab
;; ***	popGetLabel  key=15, label offset 20
	MOVLW	_00135_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7356:genJumpTab
;;	1126 rIdx = r0x104C 
	BANKSEL	r0x101A
	ADDWF	r0x101A,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7357:genJumpTab
	BTFSS	STATUS,0
	GOTO	_00008_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7358:genJumpTab
	BANKSEL	PCLATH
	INCF	PCLATH,F
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7359:genJumpTab
_00008_DS_:
	MOVWF	PCL
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=1, label offset 20
_00135_DS_:
	GOTO	_00121_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=2, label offset 20
	GOTO	_00122_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=3, label offset 20
	GOTO	_00123_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=4, label offset 20
	GOTO	_00124_DS_
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7368:genJumpTab
;; ***	popGetLabel  key=5, label offset 20
	GOTO	_00125_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _PORTA, size = 1
;; 	line = 7202 result AOP_DIR=_PORTA, size=1, left -=-, size=0, right AOP_REG=r0x104D, size=1
;; ***	genAssign  7286
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104D 
_00121_DS_:
	.line	31; "gpio.c"	SetRegister(PORTA,state) ;
	BANKSEL	r0x101B
	MOVF	r0x101B,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7313:genAssign
;;	1027
;;	1041  _PORTA   offset=0 - had to alloc by reg name
	BANKSEL	_PORTA
	MOVWF	_PORTA
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=8, label offset 20
	.line	32; "gpio.c"	break;
	GOTO	_00128_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _PORTB, size = 1
;; 	line = 7202 result AOP_DIR=_PORTB, size=1, left -=-, size=0, right AOP_REG=r0x104D, size=1
;; ***	genAssign  7286
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104D 
_00122_DS_:
	.line	34; "gpio.c"	SetRegister(PORTB,state) ;
	BANKSEL	r0x101B
	MOVF	r0x101B,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7313:genAssign
;;	1027
;;	1045  _PORTB   offset=0
	BANKSEL	_PORTB
	MOVWF	_PORTB
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=8, label offset 20
	.line	35; "gpio.c"	break;
	GOTO	_00128_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _PORTC, size = 1
;; 	line = 7202 result AOP_DIR=_PORTC, size=1, left -=-, size=0, right AOP_REG=r0x104D, size=1
;; ***	genAssign  7286
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104D 
_00123_DS_:
	.line	37; "gpio.c"	SetRegister(PORTC,state) ;
	BANKSEL	r0x101B
	MOVF	r0x101B,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7313:genAssign
;;	1027
;;	1045  _PORTC   offset=0
	BANKSEL	_PORTC
	MOVWF	_PORTC
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=8, label offset 20
	.line	38; "gpio.c"	break;
	GOTO	_00128_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _PORTD, size = 1
;; 	line = 7202 result AOP_DIR=_PORTD, size=1, left -=-, size=0, right AOP_REG=r0x104D, size=1
;; ***	genAssign  7286
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104D 
_00124_DS_:
	.line	40; "gpio.c"	SetRegister(PORTD,state) ;
	BANKSEL	r0x101B
	MOVF	r0x101B,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7313:genAssign
;;	1027
;;	1045  _PORTD   offset=0
	BANKSEL	_PORTD
	MOVWF	_PORTD
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2820:genGoto *{*
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2822:genGoto
;; ***	popGetLabel  key=8, label offset 20
	.line	41; "gpio.c"	break;
	GOTO	_00128_DS_
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7192:genAssign *{*
;; ***	genAssign  7193
;;	708 register type nRegs=1
;; ***	aopForSym 324
;;	336 sym->rname = _PORTE, size = 1
;; 	line = 7202 result AOP_DIR=_PORTE, size=1, left -=-, size=0, right AOP_REG=r0x104D, size=1
;; ***	genAssign  7286
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104D 
_00125_DS_:
	.line	43; "gpio.c"	SetRegister(PORTE,state) ;
	BANKSEL	r0x101B
	MOVF	r0x101B,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7313:genAssign
;;	1027
;;	1045  _PORTE   offset=0
	BANKSEL	_PORTE
	MOVWF	_PORTE
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
_00128_DS_:
	.line	49; "gpio.c"	}
	RETURN	
; exit point of _GPIO_SetPortState
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7710:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=12previous max_key=0 
S_gpio__GPIO_UpdatePin	code
_GPIO_UpdatePin:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	25; "gpio.c"	}
	RETURN	
; exit point of _GPIO_UpdatePin
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7710:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=8previous max_key=0 
S_gpio__GPIO_UpdatePort	code
_GPIO_UpdatePort:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	21; "gpio.c"	}
	RETURN	
; exit point of _GPIO_UpdatePort
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7710:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _GPIO_SetPinDirection
;   _GPIO_SetPinState
;   _GPIO_SetPinDirection
;   _GPIO_SetPinState
;7 compiler assigned registers:
;   r0x101C
;   STK00
;   r0x101D
;   STK01
;   r0x101E
;   STK02
;   r0x101F
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=4previous max_key=0 
S_gpio__GPIO_InitPin	code
_GPIO_InitPin:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1048, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1048 
	.line	11; "gpio.c"	void GPIO_InitPin(tPORT port , tPIN pin ,tPIN_DIRECTION direction ,tSTATE init_state)
	BANKSEL	r0x101C
	MOVWF	r0x101C
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1049, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1049 
	MOVWF	r0x101D
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x104A, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104A 
	MOVWF	r0x101E
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x104B, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7d
	MOVF	STK02,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x104B 
	MOVWF	r0x101F
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	2158 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104A 
	.line	14; "gpio.c"	GPIO_SetPinDirection(port,pin ,direction) ;
	MOVF	r0x101E,W
;;	708 register type nRegs=1
;; 	2158 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1049 
	MOVF	r0x101D,W
;;	708 register type nRegs=1
;; 	2158 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1048 
	MOVF	r0x101C,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2207:genCall
	PAGESEL	_GPIO_SetPinDirection
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2215:genCall
	CALL	_GPIO_SetPinDirection
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	2158 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x104B 
	.line	16; "gpio.c"	GPIO_SetPinState(port ,pin ,init_state) ;
	BANKSEL	r0x101F
	MOVF	r0x101F,W
;;	708 register type nRegs=1
;; 	2158 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVWF	STK01
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1049 
	MOVF	r0x101D,W
;;	708 register type nRegs=1
;; 	2158 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1048 
	MOVF	r0x101C,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2207:genCall
	PAGESEL	_GPIO_SetPinState
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2215:genCall
	CALL	_GPIO_SetPinState
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	17; "gpio.c"	}
	RETURN	
; exit point of _GPIO_InitPin
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7710:genpic14Code *{*

;***
;  pBlock Stats: dbName = C
;***
;has an exit
;functions called:
;   _GPIO_SetPortDirection
;   _GPIO_SetPortState
;   _GPIO_SetPortDirection
;   _GPIO_SetPortState
;5 compiler assigned registers:
;   r0x1020
;   STK00
;   r0x1021
;   STK01
;   r0x1022
;; Starting pCode block
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2382:genFunction *{*
;; ***	genFunction  2384 curr label offset=0previous max_key=0 
S_gpio__GPIO_InitPort	code
_GPIO_InitPort:
; 2 exit points
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1045, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1045 
	.line	4; "gpio.c"	void GPIO_InitPort(tPORT port ,tPORT_DIRECTION direction ,tSTATE init_state)
	BANKSEL	r0x1020
	MOVWF	r0x1020
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1046, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVF	STK00,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1046 
	MOVWF	r0x1021
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7642:genReceive *{*
;; ***	genReceive  7643
;;	708 register type nRegs=1
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1929:assignResultValue *{*
;; ***	assignResultValue  1931
;; 	line = 1933 result -=-, size=0, left AOP_REG=r0x1047, size=1, right -=-, size=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1437:get_returnvalue
;; ***	popRegFromIdx,1059  , rIdx=0x7e
	MOVF	STK01,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1407:movwf
;;	1126 rIdx = r0x1047 
	MOVWF	r0x1022
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	2158 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1046 
	.line	7; "gpio.c"	GPIO_SetPortDirection(port,direction) ;
	MOVF	r0x1021,W
;;	708 register type nRegs=1
;; 	2158 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1045 
	MOVF	r0x1020,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2207:genCall
	PAGESEL	_GPIO_SetPortDirection
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2215:genCall
	CALL	_GPIO_SetPortDirection
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2108:genCall *{*
;; ***	genCall  2110
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;;	708 register type nRegs=1
;; 	2158 left AOP_REG
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1047 
	.line	9; "gpio.c"	GPIO_SetPortState(port,init_state) ;
	BANKSEL	r0x1022
	MOVF	r0x1022,W
;;	708 register type nRegs=1
;; 	2158 left AOP_REG
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2166:genCall
;; ***	popRegFromIdx,1059  , rIdx=0x7f
	MOVWF	STK00
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1357:mov2w_op *{*
;; ***	mov2w  1395  offset=0
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:1400:mov2w
;;	1126 rIdx = r0x1045 
	MOVF	r0x1020,W
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2207:genCall
	PAGESEL	_GPIO_SetPortState
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2215:genCall
	CALL	_GPIO_SetPortState
;; >>> /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2223:genCall
	PAGESEL	$
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2802:genLabel *{*
;; ***	genLabel  2805
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2358:resultRemat *{*
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:2570:genEndFunction *{*
;; ***	genEndFunction  2572
	.line	10; "gpio.c"	}
	RETURN	
; exit point of _GPIO_InitPort
;;; /home/sdcc-builder/build/sdcc-build/orig/sdcc/src/pic14/gen.c:7710:genpic14Code *{*


;	code size estimation:
;	 1084+  248 =  1332 instructions ( 3160 byte)

	end
