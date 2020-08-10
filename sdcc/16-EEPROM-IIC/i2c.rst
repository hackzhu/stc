                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module i2c
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _TF2
                                     12 	.globl _EXF2
                                     13 	.globl _RCLK
                                     14 	.globl _TCLK
                                     15 	.globl _EXEN2
                                     16 	.globl _TR2
                                     17 	.globl _C_T2
                                     18 	.globl _CP_RL2
                                     19 	.globl _T2CON_7
                                     20 	.globl _T2CON_6
                                     21 	.globl _T2CON_5
                                     22 	.globl _T2CON_4
                                     23 	.globl _T2CON_3
                                     24 	.globl _T2CON_2
                                     25 	.globl _T2CON_1
                                     26 	.globl _T2CON_0
                                     27 	.globl _PT2
                                     28 	.globl _ET2
                                     29 	.globl _CY
                                     30 	.globl _AC
                                     31 	.globl _F0
                                     32 	.globl _RS1
                                     33 	.globl _RS0
                                     34 	.globl _OV
                                     35 	.globl _F1
                                     36 	.globl _P
                                     37 	.globl _PS
                                     38 	.globl _PT1
                                     39 	.globl _PX1
                                     40 	.globl _PT0
                                     41 	.globl _PX0
                                     42 	.globl _RD
                                     43 	.globl _WR
                                     44 	.globl _T1
                                     45 	.globl _T0
                                     46 	.globl _INT1
                                     47 	.globl _INT0
                                     48 	.globl _TXD
                                     49 	.globl _RXD
                                     50 	.globl _P3_7
                                     51 	.globl _P3_6
                                     52 	.globl _P3_5
                                     53 	.globl _P3_4
                                     54 	.globl _P3_3
                                     55 	.globl _P3_2
                                     56 	.globl _P3_1
                                     57 	.globl _P3_0
                                     58 	.globl _EA
                                     59 	.globl _ES
                                     60 	.globl _ET1
                                     61 	.globl _EX1
                                     62 	.globl _ET0
                                     63 	.globl _EX0
                                     64 	.globl _P2_7
                                     65 	.globl _P2_6
                                     66 	.globl _P2_5
                                     67 	.globl _P2_4
                                     68 	.globl _P2_3
                                     69 	.globl _P2_2
                                     70 	.globl _P2_1
                                     71 	.globl _P2_0
                                     72 	.globl _SM0
                                     73 	.globl _SM1
                                     74 	.globl _SM2
                                     75 	.globl _REN
                                     76 	.globl _TB8
                                     77 	.globl _RB8
                                     78 	.globl _TI
                                     79 	.globl _RI
                                     80 	.globl _P1_7
                                     81 	.globl _P1_6
                                     82 	.globl _P1_5
                                     83 	.globl _P1_4
                                     84 	.globl _P1_3
                                     85 	.globl _P1_2
                                     86 	.globl _P1_1
                                     87 	.globl _P1_0
                                     88 	.globl _TF1
                                     89 	.globl _TR1
                                     90 	.globl _TF0
                                     91 	.globl _TR0
                                     92 	.globl _IE1
                                     93 	.globl _IT1
                                     94 	.globl _IE0
                                     95 	.globl _IT0
                                     96 	.globl _P0_7
                                     97 	.globl _P0_6
                                     98 	.globl _P0_5
                                     99 	.globl _P0_4
                                    100 	.globl _P0_3
                                    101 	.globl _P0_2
                                    102 	.globl _P0_1
                                    103 	.globl _P0_0
                                    104 	.globl _TH2
                                    105 	.globl _TL2
                                    106 	.globl _RCAP2H
                                    107 	.globl _RCAP2L
                                    108 	.globl _T2CON
                                    109 	.globl _B
                                    110 	.globl _ACC
                                    111 	.globl _PSW
                                    112 	.globl _IP
                                    113 	.globl _P3
                                    114 	.globl _IE
                                    115 	.globl _P2
                                    116 	.globl _SBUF
                                    117 	.globl _SCON
                                    118 	.globl _P1
                                    119 	.globl _TH1
                                    120 	.globl _TH0
                                    121 	.globl _TL1
                                    122 	.globl _TL0
                                    123 	.globl _TMOD
                                    124 	.globl _TCON
                                    125 	.globl _PCON
                                    126 	.globl _DPH
                                    127 	.globl _DPL
                                    128 	.globl _SP
                                    129 	.globl _P0
                                    130 	.globl _At24c02Write_PARM_2
                                    131 	.globl _I2cDelay
                                    132 	.globl _I2cStart
                                    133 	.globl _I2cStop
                                    134 	.globl _I2c
                                    135 	.globl _I2cRead
                                    136 	.globl _At24c02Write
                                    137 	.globl _At24c02Read
                                    138 ;--------------------------------------------------------
                                    139 ; special function registers
                                    140 ;--------------------------------------------------------
                                    141 	.area RSEG    (ABS,DATA)
      000000                        142 	.org 0x0000
                           000080   143 _P0	=	0x0080
                           000081   144 _SP	=	0x0081
                           000082   145 _DPL	=	0x0082
                           000083   146 _DPH	=	0x0083
                           000087   147 _PCON	=	0x0087
                           000088   148 _TCON	=	0x0088
                           000089   149 _TMOD	=	0x0089
                           00008A   150 _TL0	=	0x008a
                           00008B   151 _TL1	=	0x008b
                           00008C   152 _TH0	=	0x008c
                           00008D   153 _TH1	=	0x008d
                           000090   154 _P1	=	0x0090
                           000098   155 _SCON	=	0x0098
                           000099   156 _SBUF	=	0x0099
                           0000A0   157 _P2	=	0x00a0
                           0000A8   158 _IE	=	0x00a8
                           0000B0   159 _P3	=	0x00b0
                           0000B8   160 _IP	=	0x00b8
                           0000D0   161 _PSW	=	0x00d0
                           0000E0   162 _ACC	=	0x00e0
                           0000F0   163 _B	=	0x00f0
                           0000C8   164 _T2CON	=	0x00c8
                           0000CA   165 _RCAP2L	=	0x00ca
                           0000CB   166 _RCAP2H	=	0x00cb
                           0000CC   167 _TL2	=	0x00cc
                           0000CD   168 _TH2	=	0x00cd
                                    169 ;--------------------------------------------------------
                                    170 ; special function bits
                                    171 ;--------------------------------------------------------
                                    172 	.area RSEG    (ABS,DATA)
      000000                        173 	.org 0x0000
                           000080   174 _P0_0	=	0x0080
                           000081   175 _P0_1	=	0x0081
                           000082   176 _P0_2	=	0x0082
                           000083   177 _P0_3	=	0x0083
                           000084   178 _P0_4	=	0x0084
                           000085   179 _P0_5	=	0x0085
                           000086   180 _P0_6	=	0x0086
                           000087   181 _P0_7	=	0x0087
                           000088   182 _IT0	=	0x0088
                           000089   183 _IE0	=	0x0089
                           00008A   184 _IT1	=	0x008a
                           00008B   185 _IE1	=	0x008b
                           00008C   186 _TR0	=	0x008c
                           00008D   187 _TF0	=	0x008d
                           00008E   188 _TR1	=	0x008e
                           00008F   189 _TF1	=	0x008f
                           000090   190 _P1_0	=	0x0090
                           000091   191 _P1_1	=	0x0091
                           000092   192 _P1_2	=	0x0092
                           000093   193 _P1_3	=	0x0093
                           000094   194 _P1_4	=	0x0094
                           000095   195 _P1_5	=	0x0095
                           000096   196 _P1_6	=	0x0096
                           000097   197 _P1_7	=	0x0097
                           000098   198 _RI	=	0x0098
                           000099   199 _TI	=	0x0099
                           00009A   200 _RB8	=	0x009a
                           00009B   201 _TB8	=	0x009b
                           00009C   202 _REN	=	0x009c
                           00009D   203 _SM2	=	0x009d
                           00009E   204 _SM1	=	0x009e
                           00009F   205 _SM0	=	0x009f
                           0000A0   206 _P2_0	=	0x00a0
                           0000A1   207 _P2_1	=	0x00a1
                           0000A2   208 _P2_2	=	0x00a2
                           0000A3   209 _P2_3	=	0x00a3
                           0000A4   210 _P2_4	=	0x00a4
                           0000A5   211 _P2_5	=	0x00a5
                           0000A6   212 _P2_6	=	0x00a6
                           0000A7   213 _P2_7	=	0x00a7
                           0000A8   214 _EX0	=	0x00a8
                           0000A9   215 _ET0	=	0x00a9
                           0000AA   216 _EX1	=	0x00aa
                           0000AB   217 _ET1	=	0x00ab
                           0000AC   218 _ES	=	0x00ac
                           0000AF   219 _EA	=	0x00af
                           0000B0   220 _P3_0	=	0x00b0
                           0000B1   221 _P3_1	=	0x00b1
                           0000B2   222 _P3_2	=	0x00b2
                           0000B3   223 _P3_3	=	0x00b3
                           0000B4   224 _P3_4	=	0x00b4
                           0000B5   225 _P3_5	=	0x00b5
                           0000B6   226 _P3_6	=	0x00b6
                           0000B7   227 _P3_7	=	0x00b7
                           0000B0   228 _RXD	=	0x00b0
                           0000B1   229 _TXD	=	0x00b1
                           0000B2   230 _INT0	=	0x00b2
                           0000B3   231 _INT1	=	0x00b3
                           0000B4   232 _T0	=	0x00b4
                           0000B5   233 _T1	=	0x00b5
                           0000B6   234 _WR	=	0x00b6
                           0000B7   235 _RD	=	0x00b7
                           0000B8   236 _PX0	=	0x00b8
                           0000B9   237 _PT0	=	0x00b9
                           0000BA   238 _PX1	=	0x00ba
                           0000BB   239 _PT1	=	0x00bb
                           0000BC   240 _PS	=	0x00bc
                           0000D0   241 _P	=	0x00d0
                           0000D1   242 _F1	=	0x00d1
                           0000D2   243 _OV	=	0x00d2
                           0000D3   244 _RS0	=	0x00d3
                           0000D4   245 _RS1	=	0x00d4
                           0000D5   246 _F0	=	0x00d5
                           0000D6   247 _AC	=	0x00d6
                           0000D7   248 _CY	=	0x00d7
                           0000AD   249 _ET2	=	0x00ad
                           0000BD   250 _PT2	=	0x00bd
                           0000C8   251 _T2CON_0	=	0x00c8
                           0000C9   252 _T2CON_1	=	0x00c9
                           0000CA   253 _T2CON_2	=	0x00ca
                           0000CB   254 _T2CON_3	=	0x00cb
                           0000CC   255 _T2CON_4	=	0x00cc
                           0000CD   256 _T2CON_5	=	0x00cd
                           0000CE   257 _T2CON_6	=	0x00ce
                           0000CF   258 _T2CON_7	=	0x00cf
                           0000C8   259 _CP_RL2	=	0x00c8
                           0000C9   260 _C_T2	=	0x00c9
                           0000CA   261 _TR2	=	0x00ca
                           0000CB   262 _EXEN2	=	0x00cb
                           0000CC   263 _TCLK	=	0x00cc
                           0000CD   264 _RCLK	=	0x00cd
                           0000CE   265 _EXF2	=	0x00ce
                           0000CF   266 _TF2	=	0x00cf
                                    267 ;--------------------------------------------------------
                                    268 ; overlayable register banks
                                    269 ;--------------------------------------------------------
                                    270 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        271 	.ds 8
                                    272 ;--------------------------------------------------------
                                    273 ; internal ram data
                                    274 ;--------------------------------------------------------
                                    275 	.area DSEG    (DATA)
      00000D                        276 _At24c02Write_PARM_2:
      00000D                        277 	.ds 1
                                    278 ;--------------------------------------------------------
                                    279 ; overlayable items in internal ram 
                                    280 ;--------------------------------------------------------
                                    281 ;--------------------------------------------------------
                                    282 ; indirectly addressable internal ram data
                                    283 ;--------------------------------------------------------
                                    284 	.area ISEG    (DATA)
                                    285 ;--------------------------------------------------------
                                    286 ; absolute internal ram data
                                    287 ;--------------------------------------------------------
                                    288 	.area IABS    (ABS,DATA)
                                    289 	.area IABS    (ABS,DATA)
                                    290 ;--------------------------------------------------------
                                    291 ; bit data
                                    292 ;--------------------------------------------------------
                                    293 	.area BSEG    (BIT)
                                    294 ;--------------------------------------------------------
                                    295 ; paged external ram data
                                    296 ;--------------------------------------------------------
                                    297 	.area PSEG    (PAG,XDATA)
                                    298 ;--------------------------------------------------------
                                    299 ; external ram data
                                    300 ;--------------------------------------------------------
                                    301 	.area XSEG    (XDATA)
                                    302 ;--------------------------------------------------------
                                    303 ; absolute external ram data
                                    304 ;--------------------------------------------------------
                                    305 	.area XABS    (ABS,XDATA)
                                    306 ;--------------------------------------------------------
                                    307 ; external initialized ram data
                                    308 ;--------------------------------------------------------
                                    309 	.area XISEG   (XDATA)
                                    310 	.area HOME    (CODE)
                                    311 	.area GSINIT0 (CODE)
                                    312 	.area GSINIT1 (CODE)
                                    313 	.area GSINIT2 (CODE)
                                    314 	.area GSINIT3 (CODE)
                                    315 	.area GSINIT4 (CODE)
                                    316 	.area GSINIT5 (CODE)
                                    317 	.area GSINIT  (CODE)
                                    318 	.area GSFINAL (CODE)
                                    319 	.area CSEG    (CODE)
                                    320 ;--------------------------------------------------------
                                    321 ; global & static initialisations
                                    322 ;--------------------------------------------------------
                                    323 	.area HOME    (CODE)
                                    324 	.area GSINIT  (CODE)
                                    325 	.area GSFINAL (CODE)
                                    326 	.area GSINIT  (CODE)
                                    327 ;--------------------------------------------------------
                                    328 ; Home
                                    329 ;--------------------------------------------------------
                                    330 	.area HOME    (CODE)
                                    331 	.area HOME    (CODE)
                                    332 ;--------------------------------------------------------
                                    333 ; code
                                    334 ;--------------------------------------------------------
                                    335 	.area CSEG    (CODE)
                                    336 ;------------------------------------------------------------
                                    337 ;Allocation info for local variables in function 'I2cDelay'
                                    338 ;------------------------------------------------------------
                                    339 ;	i2c.c:3: void I2cDelay()
                                    340 ;	-----------------------------------------
                                    341 ;	 function I2cDelay
                                    342 ;	-----------------------------------------
      0001E4                        343 _I2cDelay:
                           000007   344 	ar7 = 0x07
                           000006   345 	ar6 = 0x06
                           000005   346 	ar5 = 0x05
                           000004   347 	ar4 = 0x04
                           000003   348 	ar3 = 0x03
                           000002   349 	ar2 = 0x02
                           000001   350 	ar1 = 0x01
                           000000   351 	ar0 = 0x00
                                    352 ;	i2c.c:5: nop();
      0001E4 00               [12]  353 	NOP	
                                    354 ;	i2c.c:6: nop();
      0001E5 00               [12]  355 	NOP	
                                    356 ;	i2c.c:7: nop();
      0001E6 00               [12]  357 	NOP	
                                    358 ;	i2c.c:8: nop();
      0001E7 00               [12]  359 	NOP	
                                    360 ;	i2c.c:9: nop();
      0001E8 00               [12]  361 	NOP	
                                    362 ;	i2c.c:10: }
      0001E9 22               [24]  363 	ret
                                    364 ;------------------------------------------------------------
                                    365 ;Allocation info for local variables in function 'I2cStart'
                                    366 ;------------------------------------------------------------
                                    367 ;	i2c.c:12: void I2cStart()
                                    368 ;	-----------------------------------------
                                    369 ;	 function I2cStart
                                    370 ;	-----------------------------------------
      0001EA                        371 _I2cStart:
                                    372 ;	i2c.c:14: SDA=1;
                                    373 ;	assignBit
      0001EA D2 A0            [12]  374 	setb	_P2_0
                                    375 ;	i2c.c:15: I2cDelay();
      0001EC 12 01 E4         [24]  376 	lcall	_I2cDelay
                                    377 ;	i2c.c:16: SCL=1;
                                    378 ;	assignBit
      0001EF D2 A1            [12]  379 	setb	_P2_1
                                    380 ;	i2c.c:17: I2cDelay();
      0001F1 12 01 E4         [24]  381 	lcall	_I2cDelay
                                    382 ;	i2c.c:18: SDA=0;
                                    383 ;	assignBit
      0001F4 C2 A0            [12]  384 	clr	_P2_0
                                    385 ;	i2c.c:19: I2cDelay();
      0001F6 12 01 E4         [24]  386 	lcall	_I2cDelay
                                    387 ;	i2c.c:20: SCL=0;
                                    388 ;	assignBit
      0001F9 C2 A1            [12]  389 	clr	_P2_1
                                    390 ;	i2c.c:21: I2cDelay();
                                    391 ;	i2c.c:22: }
      0001FB 02 01 E4         [24]  392 	ljmp	_I2cDelay
                                    393 ;------------------------------------------------------------
                                    394 ;Allocation info for local variables in function 'I2cStop'
                                    395 ;------------------------------------------------------------
                                    396 ;	i2c.c:24: void I2cStop()
                                    397 ;	-----------------------------------------
                                    398 ;	 function I2cStop
                                    399 ;	-----------------------------------------
      0001FE                        400 _I2cStop:
                                    401 ;	i2c.c:26: SDA=0;
                                    402 ;	assignBit
      0001FE C2 A0            [12]  403 	clr	_P2_0
                                    404 ;	i2c.c:27: I2cDelay();
      000200 12 01 E4         [24]  405 	lcall	_I2cDelay
                                    406 ;	i2c.c:28: SCL=1;
                                    407 ;	assignBit
      000203 D2 A1            [12]  408 	setb	_P2_1
                                    409 ;	i2c.c:29: I2cDelay();
      000205 12 01 E4         [24]  410 	lcall	_I2cDelay
                                    411 ;	i2c.c:30: SDA=1;
                                    412 ;	assignBit
      000208 D2 A0            [12]  413 	setb	_P2_0
                                    414 ;	i2c.c:31: }
      00020A 22               [24]  415 	ret
                                    416 ;------------------------------------------------------------
                                    417 ;Allocation info for local variables in function 'I2c'
                                    418 ;------------------------------------------------------------
                                    419 ;dat                       Allocated to registers r7 
                                    420 ;a                         Allocated to registers r6 
                                    421 ;b                         Allocated to registers r7 
                                    422 ;------------------------------------------------------------
                                    423 ;	i2c.c:33: unsigned char I2c(unsigned char dat)
                                    424 ;	-----------------------------------------
                                    425 ;	 function I2c
                                    426 ;	-----------------------------------------
      00020B                        427 _I2c:
      00020B AF 82            [24]  428 	mov	r7,dpl
                                    429 ;	i2c.c:36: for(a=0;a<8;a++)
      00020D 7E 00            [12]  430 	mov	r6,#0x00
      00020F                        431 00107$:
                                    432 ;	i2c.c:38: SDA=dat>>7;
      00020F EF               [12]  433 	mov	a,r7
      000210 23               [12]  434 	rl	a
      000211 54 01            [12]  435 	anl	a,#0x01
                                    436 ;	assignBit
      000213 24 FF            [12]  437 	add	a,#0xff
      000215 92 A0            [24]  438 	mov	_P2_0,c
                                    439 ;	i2c.c:39: dat=dat<<1;
      000217 8F 05            [24]  440 	mov	ar5,r7
      000219 ED               [12]  441 	mov	a,r5
      00021A 2D               [12]  442 	add	a,r5
      00021B FF               [12]  443 	mov	r7,a
                                    444 ;	i2c.c:40: I2cDelay();
      00021C C0 07            [24]  445 	push	ar7
      00021E C0 06            [24]  446 	push	ar6
      000220 12 01 E4         [24]  447 	lcall	_I2cDelay
                                    448 ;	i2c.c:41: SCL=1;
                                    449 ;	assignBit
      000223 D2 A1            [12]  450 	setb	_P2_1
                                    451 ;	i2c.c:42: I2cDelay();
      000225 12 01 E4         [24]  452 	lcall	_I2cDelay
                                    453 ;	i2c.c:43: SCL=0;
                                    454 ;	assignBit
      000228 C2 A1            [12]  455 	clr	_P2_1
                                    456 ;	i2c.c:44: I2cDelay();
      00022A 12 01 E4         [24]  457 	lcall	_I2cDelay
      00022D D0 06            [24]  458 	pop	ar6
      00022F D0 07            [24]  459 	pop	ar7
                                    460 ;	i2c.c:36: for(a=0;a<8;a++)
      000231 0E               [12]  461 	inc	r6
      000232 BE 08 00         [24]  462 	cjne	r6,#0x08,00132$
      000235                        463 00132$:
      000235 40 D8            [24]  464 	jc	00107$
                                    465 ;	i2c.c:46: SDA=1;		//8 位数据发送完后,主机释放 SDA,以检测从机应答
                                    466 ;	assignBit
      000237 D2 A0            [12]  467 	setb	_P2_0
                                    468 ;	i2c.c:47: I2cDelay();
      000239 12 01 E4         [24]  469 	lcall	_I2cDelay
                                    470 ;	i2c.c:48: SCL=1;
                                    471 ;	assignBit
      00023C D2 A1            [12]  472 	setb	_P2_1
                                    473 ;	i2c.c:49: while(SDA)
      00023E 7F 00            [12]  474 	mov	r7,#0x00
      000240                        475 00104$:
      000240 30 A0 0F         [24]  476 	jnb	_P2_0,00106$
                                    477 ;	i2c.c:51: b++;
      000243 0F               [12]  478 	inc	r7
                                    479 ;	i2c.c:52: if(b>200)
      000244 EF               [12]  480 	mov	a,r7
      000245 24 37            [12]  481 	add	a,#0xff - 0xc8
      000247 50 F7            [24]  482 	jnc	00104$
                                    483 ;	i2c.c:54: SCL=0;
                                    484 ;	assignBit
      000249 C2 A1            [12]  485 	clr	_P2_1
                                    486 ;	i2c.c:55: I2cDelay();
      00024B 12 01 E4         [24]  487 	lcall	_I2cDelay
                                    488 ;	i2c.c:56: return 0;	//应答
      00024E 75 82 00         [24]  489 	mov	dpl,#0x00
      000251 22               [24]  490 	ret
      000252                        491 00106$:
                                    492 ;	i2c.c:59: SCL=0;
                                    493 ;	assignBit
      000252 C2 A1            [12]  494 	clr	_P2_1
                                    495 ;	i2c.c:60: I2cDelay();
      000254 12 01 E4         [24]  496 	lcall	_I2cDelay
                                    497 ;	i2c.c:61: return 1;		//非应答
      000257 75 82 01         [24]  498 	mov	dpl,#0x01
                                    499 ;	i2c.c:62: }
      00025A 22               [24]  500 	ret
                                    501 ;------------------------------------------------------------
                                    502 ;Allocation info for local variables in function 'I2cRead'
                                    503 ;------------------------------------------------------------
                                    504 ;a                         Allocated to registers r6 
                                    505 ;dat                       Allocated to registers r5 
                                    506 ;------------------------------------------------------------
                                    507 ;	i2c.c:64: unsigned char I2cRead()
                                    508 ;	-----------------------------------------
                                    509 ;	 function I2cRead
                                    510 ;	-----------------------------------------
      00025B                        511 _I2cRead:
                                    512 ;	i2c.c:66: unsigned char a,dat=0;
      00025B 7F 00            [12]  513 	mov	r7,#0x00
                                    514 ;	i2c.c:67: SDA=1;
                                    515 ;	assignBit
      00025D D2 A0            [12]  516 	setb	_P2_0
                                    517 ;	i2c.c:68: I2cDelay();
      00025F C0 07            [24]  518 	push	ar7
      000261 12 01 E4         [24]  519 	lcall	_I2cDelay
      000264 D0 07            [24]  520 	pop	ar7
                                    521 ;	i2c.c:69: for(a=0;a<8;a++)
      000266 7E 00            [12]  522 	mov	r6,#0x00
      000268                        523 00102$:
                                    524 ;	i2c.c:71: SCL=1;
                                    525 ;	assignBit
      000268 D2 A1            [12]  526 	setb	_P2_1
                                    527 ;	i2c.c:72: I2cDelay();
      00026A C0 07            [24]  528 	push	ar7
      00026C C0 06            [24]  529 	push	ar6
      00026E 12 01 E4         [24]  530 	lcall	_I2cDelay
      000271 D0 06            [24]  531 	pop	ar6
      000273 D0 07            [24]  532 	pop	ar7
                                    533 ;	i2c.c:73: dat<<=1;
      000275 8F 05            [24]  534 	mov	ar5,r7
      000277 ED               [12]  535 	mov	a,r5
      000278 2D               [12]  536 	add	a,r5
      000279 FD               [12]  537 	mov	r5,a
                                    538 ;	i2c.c:74: dat|=SDA;
      00027A A2 A0            [12]  539 	mov	c,_P2_0
      00027C E4               [12]  540 	clr	a
      00027D 33               [12]  541 	rlc	a
      00027E 4D               [12]  542 	orl	a,r5
      00027F FF               [12]  543 	mov	r7,a
                                    544 ;	i2c.c:75: I2cDelay();
      000280 C0 07            [24]  545 	push	ar7
      000282 C0 06            [24]  546 	push	ar6
      000284 12 01 E4         [24]  547 	lcall	_I2cDelay
                                    548 ;	i2c.c:76: SCL=0;
                                    549 ;	assignBit
      000287 C2 A1            [12]  550 	clr	_P2_1
                                    551 ;	i2c.c:77: I2cDelay();
      000289 12 01 E4         [24]  552 	lcall	_I2cDelay
      00028C D0 06            [24]  553 	pop	ar6
      00028E D0 07            [24]  554 	pop	ar7
                                    555 ;	i2c.c:69: for(a=0;a<8;a++)
      000290 0E               [12]  556 	inc	r6
      000291 BE 08 00         [24]  557 	cjne	r6,#0x08,00117$
      000294                        558 00117$:
      000294 40 D2            [24]  559 	jc	00102$
                                    560 ;	i2c.c:79: return dat;
      000296 8F 82            [24]  561 	mov	dpl,r7
                                    562 ;	i2c.c:80: }
      000298 22               [24]  563 	ret
                                    564 ;------------------------------------------------------------
                                    565 ;Allocation info for local variables in function 'At24c02Write'
                                    566 ;------------------------------------------------------------
                                    567 ;dat                       Allocated with name '_At24c02Write_PARM_2'
                                    568 ;addr                      Allocated to registers r7 
                                    569 ;------------------------------------------------------------
                                    570 ;	i2c.c:82: void At24c02Write(unsigned char addr,unsigned char dat)
                                    571 ;	-----------------------------------------
                                    572 ;	 function At24c02Write
                                    573 ;	-----------------------------------------
      000299                        574 _At24c02Write:
      000299 AF 82            [24]  575 	mov	r7,dpl
                                    576 ;	i2c.c:84: I2cStart();
      00029B C0 07            [24]  577 	push	ar7
      00029D 12 01 EA         [24]  578 	lcall	_I2cStart
                                    579 ;	i2c.c:85: I2c(0xa0);	//发送写器件地址 P2_0 SDA
      0002A0 75 82 A0         [24]  580 	mov	dpl,#0xa0
      0002A3 12 02 0B         [24]  581 	lcall	_I2c
      0002A6 D0 07            [24]  582 	pop	ar7
                                    583 ;	i2c.c:86: I2c(addr);	//发送要写入的内存地址
      0002A8 8F 82            [24]  584 	mov	dpl,r7
      0002AA 12 02 0B         [24]  585 	lcall	_I2c
                                    586 ;	i2c.c:87: I2c(dat);	//发送数据
      0002AD 85 0D 82         [24]  587 	mov	dpl,_At24c02Write_PARM_2
      0002B0 12 02 0B         [24]  588 	lcall	_I2c
                                    589 ;	i2c.c:88: I2cStop();
                                    590 ;	i2c.c:89: }
      0002B3 02 01 FE         [24]  591 	ljmp	_I2cStop
                                    592 ;------------------------------------------------------------
                                    593 ;Allocation info for local variables in function 'At24c02Read'
                                    594 ;------------------------------------------------------------
                                    595 ;addr                      Allocated to registers r7 
                                    596 ;num                       Allocated to registers r7 
                                    597 ;------------------------------------------------------------
                                    598 ;	i2c.c:91: unsigned char At24c02Read(unsigned char addr)
                                    599 ;	-----------------------------------------
                                    600 ;	 function At24c02Read
                                    601 ;	-----------------------------------------
      0002B6                        602 _At24c02Read:
      0002B6 AF 82            [24]  603 	mov	r7,dpl
                                    604 ;	i2c.c:94: I2cStart();
      0002B8 C0 07            [24]  605 	push	ar7
      0002BA 12 01 EA         [24]  606 	lcall	_I2cStart
                                    607 ;	i2c.c:95: I2c(0xa0);	//发送写器件地址 P2_0 SDA
      0002BD 75 82 A0         [24]  608 	mov	dpl,#0xa0
      0002C0 12 02 0B         [24]  609 	lcall	_I2c
      0002C3 D0 07            [24]  610 	pop	ar7
                                    611 ;	i2c.c:96: I2c(addr);	//发送要写入的内存地址
      0002C5 8F 82            [24]  612 	mov	dpl,r7
      0002C7 12 02 0B         [24]  613 	lcall	_I2c
                                    614 ;	i2c.c:97: I2cStart();
      0002CA 12 01 EA         [24]  615 	lcall	_I2cStart
                                    616 ;	i2c.c:98: I2c(0xa1);	//发送读器件地址 P2_1 SCL
      0002CD 75 82 A1         [24]  617 	mov	dpl,#0xa1
      0002D0 12 02 0B         [24]  618 	lcall	_I2c
                                    619 ;	i2c.c:99: num=I2cRead();	//读取数据
      0002D3 12 02 5B         [24]  620 	lcall	_I2cRead
      0002D6 AF 82            [24]  621 	mov	r7,dpl
                                    622 ;	i2c.c:100: I2cStop();
      0002D8 C0 07            [24]  623 	push	ar7
      0002DA 12 01 FE         [24]  624 	lcall	_I2cStop
      0002DD D0 07            [24]  625 	pop	ar7
                                    626 ;	i2c.c:101: return num;
      0002DF 8F 82            [24]  627 	mov	dpl,r7
                                    628 ;	i2c.c:102: }
      0002E1 22               [24]  629 	ret
                                    630 	.area CSEG    (CODE)
                                    631 	.area CONST   (CODE)
                                    632 	.area XINIT   (CODE)
                                    633 	.area CABS    (ABS,CODE)
