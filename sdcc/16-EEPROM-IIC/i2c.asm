;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module i2c
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	.globl _At24c02Write_PARM_2
	.globl _I2cDelay
	.globl _I2cStart
	.globl _I2cStop
	.globl _I2c
	.globl _I2cRead
	.globl _At24c02Write
	.globl _At24c02Read
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
_At24c02Write_PARM_2:
	.ds 1
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'I2cDelay'
;------------------------------------------------------------
;	i2c.c:3: void I2cDelay()
;	-----------------------------------------
;	 function I2cDelay
;	-----------------------------------------
_I2cDelay:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	i2c.c:5: nop();
	NOP	
;	i2c.c:6: nop();
	NOP	
;	i2c.c:7: nop();
	NOP	
;	i2c.c:8: nop();
	NOP	
;	i2c.c:9: nop();
	NOP	
;	i2c.c:10: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2cStart'
;------------------------------------------------------------
;	i2c.c:12: void I2cStart()
;	-----------------------------------------
;	 function I2cStart
;	-----------------------------------------
_I2cStart:
;	i2c.c:14: SDA=1;
;	assignBit
	setb	_P2_0
;	i2c.c:15: I2cDelay();
	lcall	_I2cDelay
;	i2c.c:16: SCL=1;
;	assignBit
	setb	_P2_1
;	i2c.c:17: I2cDelay();
	lcall	_I2cDelay
;	i2c.c:18: SDA=0;
;	assignBit
	clr	_P2_0
;	i2c.c:19: I2cDelay();
	lcall	_I2cDelay
;	i2c.c:20: SCL=0;
;	assignBit
	clr	_P2_1
;	i2c.c:21: I2cDelay();
;	i2c.c:22: }
	ljmp	_I2cDelay
;------------------------------------------------------------
;Allocation info for local variables in function 'I2cStop'
;------------------------------------------------------------
;	i2c.c:24: void I2cStop()
;	-----------------------------------------
;	 function I2cStop
;	-----------------------------------------
_I2cStop:
;	i2c.c:26: SDA=0;
;	assignBit
	clr	_P2_0
;	i2c.c:27: I2cDelay();
	lcall	_I2cDelay
;	i2c.c:28: SCL=1;
;	assignBit
	setb	_P2_1
;	i2c.c:29: I2cDelay();
	lcall	_I2cDelay
;	i2c.c:30: SDA=1;
;	assignBit
	setb	_P2_0
;	i2c.c:31: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2c'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;a                         Allocated to registers r6 
;b                         Allocated to registers r7 
;------------------------------------------------------------
;	i2c.c:33: unsigned char I2c(unsigned char dat)
;	-----------------------------------------
;	 function I2c
;	-----------------------------------------
_I2c:
	mov	r7,dpl
;	i2c.c:36: for(a=0;a<8;a++)
	mov	r6,#0x00
00107$:
;	i2c.c:38: SDA=dat>>7;
	mov	a,r7
	rl	a
	anl	a,#0x01
;	assignBit
	add	a,#0xff
	mov	_P2_0,c
;	i2c.c:39: dat=dat<<1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r7,a
;	i2c.c:40: I2cDelay();
	push	ar7
	push	ar6
	lcall	_I2cDelay
;	i2c.c:41: SCL=1;
;	assignBit
	setb	_P2_1
;	i2c.c:42: I2cDelay();
	lcall	_I2cDelay
;	i2c.c:43: SCL=0;
;	assignBit
	clr	_P2_1
;	i2c.c:44: I2cDelay();
	lcall	_I2cDelay
	pop	ar6
	pop	ar7
;	i2c.c:36: for(a=0;a<8;a++)
	inc	r6
	cjne	r6,#0x08,00132$
00132$:
	jc	00107$
;	i2c.c:46: SDA=1;		//8 位数据发送完后,主机释放 SDA,以检测从机应答
;	assignBit
	setb	_P2_0
;	i2c.c:47: I2cDelay();
	lcall	_I2cDelay
;	i2c.c:48: SCL=1;
;	assignBit
	setb	_P2_1
;	i2c.c:49: while(SDA)
	mov	r7,#0x00
00104$:
	jnb	_P2_0,00106$
;	i2c.c:51: b++;
	inc	r7
;	i2c.c:52: if(b>200)
	mov	a,r7
	add	a,#0xff - 0xc8
	jnc	00104$
;	i2c.c:54: SCL=0;
;	assignBit
	clr	_P2_1
;	i2c.c:55: I2cDelay();
	lcall	_I2cDelay
;	i2c.c:56: return 0;	//应答
	mov	dpl,#0x00
	ret
00106$:
;	i2c.c:59: SCL=0;
;	assignBit
	clr	_P2_1
;	i2c.c:60: I2cDelay();
	lcall	_I2cDelay
;	i2c.c:61: return 1;		//非应答
	mov	dpl,#0x01
;	i2c.c:62: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2cRead'
;------------------------------------------------------------
;a                         Allocated to registers r6 
;dat                       Allocated to registers r5 
;------------------------------------------------------------
;	i2c.c:64: unsigned char I2cRead()
;	-----------------------------------------
;	 function I2cRead
;	-----------------------------------------
_I2cRead:
;	i2c.c:66: unsigned char a,dat=0;
	mov	r7,#0x00
;	i2c.c:67: SDA=1;
;	assignBit
	setb	_P2_0
;	i2c.c:68: I2cDelay();
	push	ar7
	lcall	_I2cDelay
	pop	ar7
;	i2c.c:69: for(a=0;a<8;a++)
	mov	r6,#0x00
00102$:
;	i2c.c:71: SCL=1;
;	assignBit
	setb	_P2_1
;	i2c.c:72: I2cDelay();
	push	ar7
	push	ar6
	lcall	_I2cDelay
	pop	ar6
	pop	ar7
;	i2c.c:73: dat<<=1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r5,a
;	i2c.c:74: dat|=SDA;
	mov	c,_P2_0
	clr	a
	rlc	a
	orl	a,r5
	mov	r7,a
;	i2c.c:75: I2cDelay();
	push	ar7
	push	ar6
	lcall	_I2cDelay
;	i2c.c:76: SCL=0;
;	assignBit
	clr	_P2_1
;	i2c.c:77: I2cDelay();
	lcall	_I2cDelay
	pop	ar6
	pop	ar7
;	i2c.c:69: for(a=0;a<8;a++)
	inc	r6
	cjne	r6,#0x08,00117$
00117$:
	jc	00102$
;	i2c.c:79: return dat;
	mov	dpl,r7
;	i2c.c:80: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'At24c02Write'
;------------------------------------------------------------
;dat                       Allocated with name '_At24c02Write_PARM_2'
;addr                      Allocated to registers r7 
;------------------------------------------------------------
;	i2c.c:82: void At24c02Write(unsigned char addr,unsigned char dat)
;	-----------------------------------------
;	 function At24c02Write
;	-----------------------------------------
_At24c02Write:
	mov	r7,dpl
;	i2c.c:84: I2cStart();
	push	ar7
	lcall	_I2cStart
;	i2c.c:85: I2c(0xa0);	//发送写器件地址 P2_0 SDA
	mov	dpl,#0xa0
	lcall	_I2c
	pop	ar7
;	i2c.c:86: I2c(addr);	//发送要写入的内存地址
	mov	dpl,r7
	lcall	_I2c
;	i2c.c:87: I2c(dat);	//发送数据
	mov	dpl,_At24c02Write_PARM_2
	lcall	_I2c
;	i2c.c:88: I2cStop();
;	i2c.c:89: }
	ljmp	_I2cStop
;------------------------------------------------------------
;Allocation info for local variables in function 'At24c02Read'
;------------------------------------------------------------
;addr                      Allocated to registers r7 
;num                       Allocated to registers r7 
;------------------------------------------------------------
;	i2c.c:91: unsigned char At24c02Read(unsigned char addr)
;	-----------------------------------------
;	 function At24c02Read
;	-----------------------------------------
_At24c02Read:
	mov	r7,dpl
;	i2c.c:94: I2cStart();
	push	ar7
	lcall	_I2cStart
;	i2c.c:95: I2c(0xa0);	//发送写器件地址 P2_0 SDA
	mov	dpl,#0xa0
	lcall	_I2c
	pop	ar7
;	i2c.c:96: I2c(addr);	//发送要写入的内存地址
	mov	dpl,r7
	lcall	_I2c
;	i2c.c:97: I2cStart();
	lcall	_I2cStart
;	i2c.c:98: I2c(0xa1);	//发送读器件地址 P2_1 SCL
	mov	dpl,#0xa1
	lcall	_I2c
;	i2c.c:99: num=I2cRead();	//读取数据
	lcall	_I2cRead
	mov	r7,dpl
;	i2c.c:100: I2cStop();
	push	ar7
	lcall	_I2cStop
	pop	ar7
;	i2c.c:101: return num;
	mov	dpl,r7
;	i2c.c:102: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
