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
	.globl _At24c02Read
	.globl _At24c02Write
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
	.globl _disp
	.globl _num
	.globl _Delay
	.globl _Datepros
	.globl _DigDisplay
	.globl _Keypros
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
_num::
	.ds 1
_disp::
	.ds 4
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
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
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:21: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	main.c:23: while(1)
00102$:
;	main.c:25: Keypros();
	lcall	_Keypros
;	main.c:26: Datepros();
	lcall	_Datepros
;	main.c:27: DigDisplay();
	lcall	_DigDisplay
;	main.c:29: }
	sjmp	00102$
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay'
;------------------------------------------------------------
;i                         Allocated to registers 
;------------------------------------------------------------
;	main.c:31: void Delay(unsigned int i)
;	-----------------------------------------
;	 function Delay
;	-----------------------------------------
_Delay:
	mov	r6,dpl
	mov	r7,dph
;	main.c:33: while(i--);
00101$:
	mov	ar4,r6
	mov	ar5,r7
	dec	r6
	cjne	r6,#0xff,00111$
	dec	r7
00111$:
	mov	a,r4
	orl	a,r5
	jnz	00101$
;	main.c:34: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Datepros'
;------------------------------------------------------------
;	main.c:36: void Datepros()
;	-----------------------------------------
;	 function Datepros
;	-----------------------------------------
_Datepros:
;	main.c:38: disp[0]=smgduan[num/1000];
	mov	r6,_num
	mov	r7,#0x00
	mov	__divsint_PARM_2,#0xe8
	mov	(__divsint_PARM_2 + 1),#0x03
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
	mov	_disp,r7
;	main.c:39: disp[1]=smgduan[num%1000/100];
	mov	r6,_num
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0xe8
	mov	(__modsint_PARM_2 + 1),#0x03
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	__divsint_PARM_2,#0x64
	mov	(__divsint_PARM_2 + 1),#0x00
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
	mov	(_disp + 0x0001),r7
;	main.c:40: disp[2]=smgduan[num%1000%100/10];
	mov	r6,_num
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0xe8
	mov	(__modsint_PARM_2 + 1),#0x03
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
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
	mov	(_disp + 0x0002),r7
;	main.c:41: disp[3]=smgduan[num%1000%100%10];
	mov	r6,_num
	mov	r7,#0x00
	mov	__modsint_PARM_2,#0xe8
	mov	(__modsint_PARM_2 + 1),#0x03
	mov	dpl,r6
	mov	dph,r7
	lcall	__modsint
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	lcall	__modsint
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
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
	mov	(_disp + 0x0003),r7
;	main.c:42: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DigDisplay'
;------------------------------------------------------------
;i                         Allocated to registers r7 
;k                         Allocated to registers r6 
;------------------------------------------------------------
;	main.c:44: void DigDisplay()
;	-----------------------------------------
;	 function DigDisplay
;	-----------------------------------------
_DigDisplay:
;	main.c:47: for(i=0;i<4;i++)
	mov	r7,#0x00
00111$:
;	main.c:49: switch(i)	 //位选，选择点亮的数码管，
	mov	a,r7
	add	a,#0xff - 0x03
	jc	00105$
	mov	a,r7
	add	a,r7
;	main.c:51: case(0):LSA=1;LSB=1;LSC=0; break;//显示第4位 110
	mov	dptr,#00133$
	jmp	@a+dptr
00133$:
	sjmp	00101$
	sjmp	00102$
	sjmp	00103$
	sjmp	00104$
00101$:
;	assignBit
	setb	_P2_2
;	assignBit
	setb	_P2_3
;	assignBit
	clr	_P2_4
;	main.c:52: case(1):LSA=0;LSB=1;LSC=0; break;//显示第5位 010
	sjmp	00105$
00102$:
;	assignBit
	clr	_P2_2
;	assignBit
	setb	_P2_3
;	assignBit
	clr	_P2_4
;	main.c:53: case(2):LSA=1;LSB=0;LSC=0; break;//显示第6位 100
	sjmp	00105$
00103$:
;	assignBit
	setb	_P2_2
;	assignBit
	clr	_P2_3
;	assignBit
	clr	_P2_4
;	main.c:54: case(3):LSA=0;LSB=0;LSC=0; break;//显示第7位 000
	sjmp	00105$
00104$:
;	assignBit
	clr	_P2_2
;	assignBit
	clr	_P2_3
;	assignBit
	clr	_P2_4
;	main.c:55: }
00105$:
;	main.c:56: P0=disp[i];//发送段码
	mov	a,r7
	add	a,#_disp
	mov	r1,a
	mov	_P0,@r1
;	main.c:57: for(k=0;k<100;k++); //间隔一段时间扫描	
	mov	r6,#0x64
00110$:
	mov	a,r6
	dec	a
	mov	r5,a
	mov	r6,a
;	main.c:58: P0=0x00;//消隐
	jnz	00110$
	mov	_P0,a
;	main.c:47: for(i=0;i<4;i++)
	inc	r7
	cjne	r7,#0x04,00135$
00135$:
	jc	00111$
;	main.c:60: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Keypros'
;------------------------------------------------------------
;	main.c:62: void Keypros()
;	-----------------------------------------
;	 function Keypros
;	-----------------------------------------
_Keypros:
;	main.c:64: if(k1==0)
	jb	_P3_1,00107$
;	main.c:66: Delay(1000);
	mov	dptr,#0x03e8
	lcall	_Delay
;	main.c:67: if(k1==0) At24c02Write(1,num);	//在地址1内写入数据num
	jb	_P3_1,00103$
	mov	_At24c02Write_PARM_2,_num
	mov	dpl,#0x01
	lcall	_At24c02Write
;	main.c:68: while(!k1);
00103$:
	jnb	_P3_1,00103$
00107$:
;	main.c:70: if(k2==0)
	jb	_P3_0,00114$
;	main.c:72: Delay(1000);
	mov	dptr,#0x03e8
	lcall	_Delay
;	main.c:73: if(k2==0) num=At24c02Read(1);	//读取EEPROM地址1内的数据保存在num中
	jb	_P3_0,00110$
	mov	dpl,#0x01
	lcall	_At24c02Read
	mov	_num,dpl
;	main.c:74: while(!k2);
00110$:
	jnb	_P3_0,00110$
00114$:
;	main.c:76: if(k3==0)
	jb	_P3_2,00123$
;	main.c:78: Delay(1000);
	mov	dptr,#0x03e8
	lcall	_Delay
;	main.c:79: if(k3==0)
	jb	_P3_2,00119$
;	main.c:81: num++;
	inc	_num
;	main.c:82: if(num>=255) num=0;
	mov	a,#0x100 - 0xff
	add	a,_num
	jnc	00119$
	mov	_num,#0x00
;	main.c:84: while(!k3);
00119$:
	jnb	_P3_2,00119$
00123$:
;	main.c:86: if(k4==0)
	jb	_P3_3,00131$
;	main.c:88: Delay(1000);
	mov	dptr,#0x03e8
	lcall	_Delay
;	main.c:89: if(k4==0) num=0;
	jb	_P3_3,00126$
	mov	_num,#0x00
;	main.c:90: while(!k4);
00126$:
	jnb	_P3_3,00126$
00131$:
;	main.c:92: }
	ret
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
