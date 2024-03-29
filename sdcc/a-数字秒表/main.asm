;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _smgduan
	.globl _main
	.globl _Timer0
	.globl _datapros
	.globl _Timer0Init
	.globl _DigDisplay
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _DisplayData
	.globl _min
	.globl _sec
	.globl _ssec
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_ssec::
	.ds 1
_sec::
	.ds 1
_min::
	.ds 1
_DisplayData::
	.ds 8
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_Timer0
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'DigDisplay'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;k                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:7: void DigDisplay()
;	-----------------------------------------
;	 function DigDisplay
;	-----------------------------------------
_DigDisplay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:10: for(i=0;i<8;i++)
	mov	r7,#0x00
00115$:
;	main.c:12: switch(i)	 //位选，选择点亮的数码管，
	mov	a,r7
	add	a,#0xff - 0x07
	jnc	00136$
	ljmp	00109$
00136$:
	mov	a,r7
	add	a,#(00137$-3-.)
	movc	a,@a+pc
	mov	dpl,a
	mov	a,r7
	add	a,#(00138$-3-.)
	movc	a,@a+pc
	mov	dph,a
	clr	a
	jmp	@a+dptr
00137$:
	.db	00101$
	.db	00102$
	.db	00103$
	.db	00104$
	.db	00105$
	.db	00106$
	.db	00107$
	.db	00108$
00138$:
	.db	00101$>>8
	.db	00102$>>8
	.db	00103$>>8
	.db	00104$>>8
	.db	00105$>>8
	.db	00106$>>8
	.db	00107$>>8
	.db	00108$>>8
;	main.c:14: case(0):P2_2=1;P2_3=1;P2_4=1; break;//显示第0位 111
00101$:
;	assignBit
	setb	_P2_2
;	assignBit
	setb	_P2_3
;	assignBit
	setb	_P2_4
;	main.c:15: case(1):P2_2=0;P2_3=1;P2_4=1; break;//显示第1位 011
	sjmp	00109$
00102$:
;	assignBit
	clr	_P2_2
;	assignBit
	setb	_P2_3
;	assignBit
	setb	_P2_4
;	main.c:16: case(2):P2_2=1;P2_3=0;P2_4=1; break;//显示第2位	101
	sjmp	00109$
00103$:
;	assignBit
	setb	_P2_2
;	assignBit
	clr	_P2_3
;	assignBit
	setb	_P2_4
;	main.c:17: case(3):P2_2=0;P2_3=0;P2_4=1; break;//显示第3位	001
	sjmp	00109$
00104$:
;	assignBit
	clr	_P2_2
;	assignBit
	clr	_P2_3
;	assignBit
	setb	_P2_4
;	main.c:18: case(4):P2_2=1;P2_3=1;P2_4=0; break;//显示第4位	110
	sjmp	00109$
00105$:
;	assignBit
	setb	_P2_2
;	assignBit
	setb	_P2_3
;	assignBit
	clr	_P2_4
;	main.c:19: case(5):P2_2=0;P2_3=1;P2_4=0; break;//显示第5位	010
	sjmp	00109$
00106$:
;	assignBit
	clr	_P2_2
;	assignBit
	setb	_P2_3
;	assignBit
	clr	_P2_4
;	main.c:20: case(6):P2_2=1;P2_3=0;P2_4=0; break;//显示第6位	100
	sjmp	00109$
00107$:
;	assignBit
	setb	_P2_2
;	assignBit
	clr	_P2_3
;	assignBit
	clr	_P2_4
;	main.c:21: case(7):P2_2=0;P2_3=0;P2_4=0; break;//显示第7位	000
	sjmp	00109$
00108$:
;	assignBit
	clr	_P2_2
;	assignBit
	clr	_P2_3
;	assignBit
	clr	_P2_4
;	main.c:22: }
00109$:
;	main.c:23: P0=DisplayData[i];//发送段码
	mov	a,r7
	add	a,#_DisplayData
	mov	r1,a
	mov	_P0,@r1
;	main.c:24: for(k=0;k<100;k++); //间隔一段时间扫描	
	mov	r6,#0x64
00114$:
	mov	a,r6
	dec	a
	mov	r5,a
	mov	r6,a
;	main.c:25: P0=0x00;//消隐
	jnz	00114$
	mov	_P0,a
;	main.c:10: for(i=0;i<8;i++)
	inc	r7
	cjne	r7,#0x08,00140$
00140$:
	jnc	00141$
	ljmp	00115$
00141$:
;	main.c:27: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0Init'
;------------------------------------------------------------
;	main.c:29: void Timer0Init()
;	-----------------------------------------
;	 function Timer0Init
;	-----------------------------------------
_Timer0Init:
;	main.c:31: EA=1;		//打开中断总开关
;	assignBit
	setb	_EA
;	main.c:33: TMOD=0x01;	//选择为定时器0模式，工作方式1，仅用TR0打开启动。
	mov	_TMOD,#0x01
;	main.c:38: TR0=1;		//打开定时器
;	assignBit
	setb	_TR0
;	main.c:39: ET0=1;		//打开定时器0中断
;	assignBit
	setb	_ET0
;	main.c:43: TH0=0xdc;	//1101 1100
	mov	_TH0,#0xdc
;	main.c:44: TL0=0x00;	//0000 0000
	mov	_TL0,#0x00
;	main.c:45: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'datapros'
;------------------------------------------------------------
;	main.c:47: void datapros()
;	-----------------------------------------
;	 function datapros
;	-----------------------------------------
_datapros:
;	main.c:49: DisplayData[0]=smgduan[min/10];
	mov	r6,_min
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_smgduan
	mov	dpl,a
	mov	a,r7
	addc	a,#(_smgduan >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	_DisplayData,r7
;	main.c:50: DisplayData[1]=smgduan[min%10];
	mov	r6,_min
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_smgduan
	mov	dpl,a
	mov	a,r7
	addc	a,#(_smgduan >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	(_DisplayData + 0x0001),r7
;	main.c:51: DisplayData[2]=0x40;			//01000000  即显示数码管的g
	mov	(_DisplayData + 0x0002),#0x40
;	main.c:52: DisplayData[3]=smgduan[sec/10];
	mov	r6,_sec
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_smgduan
	mov	dpl,a
	mov	a,r7
	addc	a,#(_smgduan >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	(_DisplayData + 0x0003),r7
;	main.c:53: DisplayData[4]=smgduan[sec%10];
	mov	r6,_sec
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_smgduan
	mov	dpl,a
	mov	a,r7
	addc	a,#(_smgduan >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	(_DisplayData + 0x0004),r7
;	main.c:54: DisplayData[5]=0x40;
	mov	(_DisplayData + 0x0005),#0x40
;	main.c:55: DisplayData[6]=smgduan[ssec/10];
	mov	r6,_ssec
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
	mov	(__divsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__divsint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_smgduan
	mov	dpl,a
	mov	a,r7
	addc	a,#(_smgduan >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	(_DisplayData + 0x0006),r7
;	main.c:56: DisplayData[7]=smgduan[ssec%10];
	mov	r6,_ssec
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0x0a
;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
	mov	(__modsint_PARM_2 + 1),r7
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	r6,dpl
	mov	r7,dph
	mov	a,r6
	add	a,#_smgduan
	mov	dpl,a
	mov	a,r7
	addc	a,#(_smgduan >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	(_DisplayData + 0x0007),r7
;	main.c:57: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Timer0'
;------------------------------------------------------------
;	main.c:59: void Timer0() __interrupt 1
;	-----------------------------------------
;	 function Timer0
;	-----------------------------------------
_Timer0:
	push	acc
	push	psw
;	main.c:61: TH0=0xdc;	//1101 1100
	mov	_TH0,#0xdc
;	main.c:62: TL0=0x00;	//0000 0000
	mov	_TL0,#0x00
;	main.c:63: ssec++;
	inc	_ssec
;	main.c:64: if(ssec>=100)
	mov	a,#0x100 - 0x64
	add	a,_ssec
	jnc	00107$
;	main.c:66: ssec=0;
	mov	_ssec,#0x00
;	main.c:67: sec++;
	inc	_sec
;	main.c:68: if(sec>=60)
	mov	a,#0x100 - 0x3c
	add	a,_sec
	jnc	00107$
;	main.c:70: sec=0;
	mov	_sec,#0x00
;	main.c:71: min++;
	inc	_min
;	main.c:72: if(min>=60) min=0;
	mov	a,#0x100 - 0x3c
	add	a,_min
	jnc	00107$
	mov	_min,#0x00
00107$:
;	main.c:75: }
	pop	psw
	pop	acc
	reti
;	eliminated unneeded mov psw,# (no regs used in bank)
;	eliminated unneeded push/pop dpl
;	eliminated unneeded push/pop dph
;	eliminated unneeded push/pop b
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:77: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:79: Timer0Init();
	lcall	_Timer0Init
;	main.c:80: while(1)
00102$:
;	main.c:82: datapros();
	lcall	_datapros
;	main.c:83: DigDisplay();
	lcall	_DigDisplay
;	main.c:85: }
	sjmp	00102$
	.area CSEG    (CODE)
	.area CONST   (CODE)
_smgduan:
	.db #0x3f	; 63
	.db #0x06	; 6
	.db #0x5b	; 91
	.db #0x4f	; 79	'O'
	.db #0x66	; 102	'f'
	.db #0x6d	; 109	'm'
	.db #0x7d	; 125
	.db #0x07	; 7
	.db #0x7f	; 127
	.db #0x6f	; 111	'o'
	.db #0x77	; 119	'w'
	.db #0x7c	; 124
	.db #0x39	; 57	'9'
	.db #0x5e	; 94
	.db #0x79	; 121	'y'
	.db #0x71	; 113	'q'
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
