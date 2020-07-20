                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _hc595_PARM_2
                                     12 	.globl _main
                                     13 	.globl _hc595
                                     14 	.globl _TF2
                                     15 	.globl _EXF2
                                     16 	.globl _RCLK
                                     17 	.globl _TCLK
                                     18 	.globl _EXEN2
                                     19 	.globl _TR2
                                     20 	.globl _C_T2
                                     21 	.globl _CP_RL2
                                     22 	.globl _T2CON_7
                                     23 	.globl _T2CON_6
                                     24 	.globl _T2CON_5
                                     25 	.globl _T2CON_4
                                     26 	.globl _T2CON_3
                                     27 	.globl _T2CON_2
                                     28 	.globl _T2CON_1
                                     29 	.globl _T2CON_0
                                     30 	.globl _PT2
                                     31 	.globl _ET2
                                     32 	.globl _CY
                                     33 	.globl _AC
                                     34 	.globl _F0
                                     35 	.globl _RS1
                                     36 	.globl _RS0
                                     37 	.globl _OV
                                     38 	.globl _F1
                                     39 	.globl _P
                                     40 	.globl _PS
                                     41 	.globl _PT1
                                     42 	.globl _PX1
                                     43 	.globl _PT0
                                     44 	.globl _PX0
                                     45 	.globl _RD
                                     46 	.globl _WR
                                     47 	.globl _T1
                                     48 	.globl _T0
                                     49 	.globl _INT1
                                     50 	.globl _INT0
                                     51 	.globl _TXD
                                     52 	.globl _RXD
                                     53 	.globl _P3_7
                                     54 	.globl _P3_6
                                     55 	.globl _P3_5
                                     56 	.globl _P3_4
                                     57 	.globl _P3_3
                                     58 	.globl _P3_2
                                     59 	.globl _P3_1
                                     60 	.globl _P3_0
                                     61 	.globl _EA
                                     62 	.globl _ES
                                     63 	.globl _ET1
                                     64 	.globl _EX1
                                     65 	.globl _ET0
                                     66 	.globl _EX0
                                     67 	.globl _P2_7
                                     68 	.globl _P2_6
                                     69 	.globl _P2_5
                                     70 	.globl _P2_4
                                     71 	.globl _P2_3
                                     72 	.globl _P2_2
                                     73 	.globl _P2_1
                                     74 	.globl _P2_0
                                     75 	.globl _SM0
                                     76 	.globl _SM1
                                     77 	.globl _SM2
                                     78 	.globl _REN
                                     79 	.globl _TB8
                                     80 	.globl _RB8
                                     81 	.globl _TI
                                     82 	.globl _RI
                                     83 	.globl _P1_7
                                     84 	.globl _P1_6
                                     85 	.globl _P1_5
                                     86 	.globl _P1_4
                                     87 	.globl _P1_3
                                     88 	.globl _P1_2
                                     89 	.globl _P1_1
                                     90 	.globl _P1_0
                                     91 	.globl _TF1
                                     92 	.globl _TR1
                                     93 	.globl _TF0
                                     94 	.globl _TR0
                                     95 	.globl _IE1
                                     96 	.globl _IT1
                                     97 	.globl _IE0
                                     98 	.globl _IT0
                                     99 	.globl _P0_7
                                    100 	.globl _P0_6
                                    101 	.globl _P0_5
                                    102 	.globl _P0_4
                                    103 	.globl _P0_3
                                    104 	.globl _P0_2
                                    105 	.globl _P0_1
                                    106 	.globl _P0_0
                                    107 	.globl _TH2
                                    108 	.globl _TL2
                                    109 	.globl _RCAP2H
                                    110 	.globl _RCAP2L
                                    111 	.globl _T2CON
                                    112 	.globl _B
                                    113 	.globl _ACC
                                    114 	.globl _PSW
                                    115 	.globl _IP
                                    116 	.globl _P3
                                    117 	.globl _IE
                                    118 	.globl _P2
                                    119 	.globl _SBUF
                                    120 	.globl _SCON
                                    121 	.globl _P1
                                    122 	.globl _TH1
                                    123 	.globl _TH0
                                    124 	.globl _TL1
                                    125 	.globl _TL0
                                    126 	.globl _TMOD
                                    127 	.globl _TCON
                                    128 	.globl _PCON
                                    129 	.globl _DPH
                                    130 	.globl _DPL
                                    131 	.globl _SP
                                    132 	.globl _P0
                                    133 ;--------------------------------------------------------
                                    134 ; special function registers
                                    135 ;--------------------------------------------------------
                                    136 	.area RSEG    (ABS,DATA)
      000000                        137 	.org 0x0000
                           000080   138 _P0	=	0x0080
                           000081   139 _SP	=	0x0081
                           000082   140 _DPL	=	0x0082
                           000083   141 _DPH	=	0x0083
                           000087   142 _PCON	=	0x0087
                           000088   143 _TCON	=	0x0088
                           000089   144 _TMOD	=	0x0089
                           00008A   145 _TL0	=	0x008a
                           00008B   146 _TL1	=	0x008b
                           00008C   147 _TH0	=	0x008c
                           00008D   148 _TH1	=	0x008d
                           000090   149 _P1	=	0x0090
                           000098   150 _SCON	=	0x0098
                           000099   151 _SBUF	=	0x0099
                           0000A0   152 _P2	=	0x00a0
                           0000A8   153 _IE	=	0x00a8
                           0000B0   154 _P3	=	0x00b0
                           0000B8   155 _IP	=	0x00b8
                           0000D0   156 _PSW	=	0x00d0
                           0000E0   157 _ACC	=	0x00e0
                           0000F0   158 _B	=	0x00f0
                           0000C8   159 _T2CON	=	0x00c8
                           0000CA   160 _RCAP2L	=	0x00ca
                           0000CB   161 _RCAP2H	=	0x00cb
                           0000CC   162 _TL2	=	0x00cc
                           0000CD   163 _TH2	=	0x00cd
                                    164 ;--------------------------------------------------------
                                    165 ; special function bits
                                    166 ;--------------------------------------------------------
                                    167 	.area RSEG    (ABS,DATA)
      000000                        168 	.org 0x0000
                           000080   169 _P0_0	=	0x0080
                           000081   170 _P0_1	=	0x0081
                           000082   171 _P0_2	=	0x0082
                           000083   172 _P0_3	=	0x0083
                           000084   173 _P0_4	=	0x0084
                           000085   174 _P0_5	=	0x0085
                           000086   175 _P0_6	=	0x0086
                           000087   176 _P0_7	=	0x0087
                           000088   177 _IT0	=	0x0088
                           000089   178 _IE0	=	0x0089
                           00008A   179 _IT1	=	0x008a
                           00008B   180 _IE1	=	0x008b
                           00008C   181 _TR0	=	0x008c
                           00008D   182 _TF0	=	0x008d
                           00008E   183 _TR1	=	0x008e
                           00008F   184 _TF1	=	0x008f
                           000090   185 _P1_0	=	0x0090
                           000091   186 _P1_1	=	0x0091
                           000092   187 _P1_2	=	0x0092
                           000093   188 _P1_3	=	0x0093
                           000094   189 _P1_4	=	0x0094
                           000095   190 _P1_5	=	0x0095
                           000096   191 _P1_6	=	0x0096
                           000097   192 _P1_7	=	0x0097
                           000098   193 _RI	=	0x0098
                           000099   194 _TI	=	0x0099
                           00009A   195 _RB8	=	0x009a
                           00009B   196 _TB8	=	0x009b
                           00009C   197 _REN	=	0x009c
                           00009D   198 _SM2	=	0x009d
                           00009E   199 _SM1	=	0x009e
                           00009F   200 _SM0	=	0x009f
                           0000A0   201 _P2_0	=	0x00a0
                           0000A1   202 _P2_1	=	0x00a1
                           0000A2   203 _P2_2	=	0x00a2
                           0000A3   204 _P2_3	=	0x00a3
                           0000A4   205 _P2_4	=	0x00a4
                           0000A5   206 _P2_5	=	0x00a5
                           0000A6   207 _P2_6	=	0x00a6
                           0000A7   208 _P2_7	=	0x00a7
                           0000A8   209 _EX0	=	0x00a8
                           0000A9   210 _ET0	=	0x00a9
                           0000AA   211 _EX1	=	0x00aa
                           0000AB   212 _ET1	=	0x00ab
                           0000AC   213 _ES	=	0x00ac
                           0000AF   214 _EA	=	0x00af
                           0000B0   215 _P3_0	=	0x00b0
                           0000B1   216 _P3_1	=	0x00b1
                           0000B2   217 _P3_2	=	0x00b2
                           0000B3   218 _P3_3	=	0x00b3
                           0000B4   219 _P3_4	=	0x00b4
                           0000B5   220 _P3_5	=	0x00b5
                           0000B6   221 _P3_6	=	0x00b6
                           0000B7   222 _P3_7	=	0x00b7
                           0000B0   223 _RXD	=	0x00b0
                           0000B1   224 _TXD	=	0x00b1
                           0000B2   225 _INT0	=	0x00b2
                           0000B3   226 _INT1	=	0x00b3
                           0000B4   227 _T0	=	0x00b4
                           0000B5   228 _T1	=	0x00b5
                           0000B6   229 _WR	=	0x00b6
                           0000B7   230 _RD	=	0x00b7
                           0000B8   231 _PX0	=	0x00b8
                           0000B9   232 _PT0	=	0x00b9
                           0000BA   233 _PX1	=	0x00ba
                           0000BB   234 _PT1	=	0x00bb
                           0000BC   235 _PS	=	0x00bc
                           0000D0   236 _P	=	0x00d0
                           0000D1   237 _F1	=	0x00d1
                           0000D2   238 _OV	=	0x00d2
                           0000D3   239 _RS0	=	0x00d3
                           0000D4   240 _RS1	=	0x00d4
                           0000D5   241 _F0	=	0x00d5
                           0000D6   242 _AC	=	0x00d6
                           0000D7   243 _CY	=	0x00d7
                           0000AD   244 _ET2	=	0x00ad
                           0000BD   245 _PT2	=	0x00bd
                           0000C8   246 _T2CON_0	=	0x00c8
                           0000C9   247 _T2CON_1	=	0x00c9
                           0000CA   248 _T2CON_2	=	0x00ca
                           0000CB   249 _T2CON_3	=	0x00cb
                           0000CC   250 _T2CON_4	=	0x00cc
                           0000CD   251 _T2CON_5	=	0x00cd
                           0000CE   252 _T2CON_6	=	0x00ce
                           0000CF   253 _T2CON_7	=	0x00cf
                           0000C8   254 _CP_RL2	=	0x00c8
                           0000C9   255 _C_T2	=	0x00c9
                           0000CA   256 _TR2	=	0x00ca
                           0000CB   257 _EXEN2	=	0x00cb
                           0000CC   258 _TCLK	=	0x00cc
                           0000CD   259 _RCLK	=	0x00cd
                           0000CE   260 _EXF2	=	0x00ce
                           0000CF   261 _TF2	=	0x00cf
                                    262 ;--------------------------------------------------------
                                    263 ; overlayable register banks
                                    264 ;--------------------------------------------------------
                                    265 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        266 	.ds 8
                                    267 ;--------------------------------------------------------
                                    268 ; internal ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area DSEG    (DATA)
                                    271 ;--------------------------------------------------------
                                    272 ; overlayable items in internal ram 
                                    273 ;--------------------------------------------------------
                                    274 	.area	OSEG    (OVR,DATA)
      000008                        275 _hc595_PARM_2:
      000008                        276 	.ds 1
                                    277 ;--------------------------------------------------------
                                    278 ; Stack segment in internal ram 
                                    279 ;--------------------------------------------------------
                                    280 	.area	SSEG
      000009                        281 __start__stack:
      000009                        282 	.ds	1
                                    283 
                                    284 ;--------------------------------------------------------
                                    285 ; indirectly addressable internal ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area ISEG    (DATA)
                                    288 ;--------------------------------------------------------
                                    289 ; absolute internal ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area IABS    (ABS,DATA)
                                    292 	.area IABS    (ABS,DATA)
                                    293 ;--------------------------------------------------------
                                    294 ; bit data
                                    295 ;--------------------------------------------------------
                                    296 	.area BSEG    (BIT)
                                    297 ;--------------------------------------------------------
                                    298 ; paged external ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area PSEG    (PAG,XDATA)
                                    301 ;--------------------------------------------------------
                                    302 ; external ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area XSEG    (XDATA)
                                    305 ;--------------------------------------------------------
                                    306 ; absolute external ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area XABS    (ABS,XDATA)
                                    309 ;--------------------------------------------------------
                                    310 ; external initialized ram data
                                    311 ;--------------------------------------------------------
                                    312 	.area XISEG   (XDATA)
                                    313 	.area HOME    (CODE)
                                    314 	.area GSINIT0 (CODE)
                                    315 	.area GSINIT1 (CODE)
                                    316 	.area GSINIT2 (CODE)
                                    317 	.area GSINIT3 (CODE)
                                    318 	.area GSINIT4 (CODE)
                                    319 	.area GSINIT5 (CODE)
                                    320 	.area GSINIT  (CODE)
                                    321 	.area GSFINAL (CODE)
                                    322 	.area CSEG    (CODE)
                                    323 ;--------------------------------------------------------
                                    324 ; interrupt vector 
                                    325 ;--------------------------------------------------------
                                    326 	.area HOME    (CODE)
      000000                        327 __interrupt_vect:
      000000 02 00 06         [24]  328 	ljmp	__sdcc_gsinit_startup
                                    329 ;--------------------------------------------------------
                                    330 ; global & static initialisations
                                    331 ;--------------------------------------------------------
                                    332 	.area HOME    (CODE)
                                    333 	.area GSINIT  (CODE)
                                    334 	.area GSFINAL (CODE)
                                    335 	.area GSINIT  (CODE)
                                    336 	.globl __sdcc_gsinit_startup
                                    337 	.globl __sdcc_program_startup
                                    338 	.globl __start__stack
                                    339 	.globl __mcs51_genXINIT
                                    340 	.globl __mcs51_genXRAMCLEAR
                                    341 	.globl __mcs51_genRAMCLEAR
                                    342 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  343 	ljmp	__sdcc_program_startup
                                    344 ;--------------------------------------------------------
                                    345 ; Home
                                    346 ;--------------------------------------------------------
                                    347 	.area HOME    (CODE)
                                    348 	.area HOME    (CODE)
      000003                        349 __sdcc_program_startup:
      000003 02 00 A8         [24]  350 	ljmp	_main
                                    351 ;	return from main will return to caller
                                    352 ;--------------------------------------------------------
                                    353 ; code
                                    354 ;--------------------------------------------------------
                                    355 	.area CSEG    (CODE)
                                    356 ;------------------------------------------------------------
                                    357 ;Allocation info for local variables in function 'hc595'
                                    358 ;------------------------------------------------------------
                                    359 ;dat2                      Allocated with name '_hc595_PARM_2'
                                    360 ;dat1                      Allocated to registers r7 
                                    361 ;a                         Allocated to registers r6 
                                    362 ;------------------------------------------------------------
                                    363 ;	main.c:10: void hc595(unsigned char dat1,unsigned char dat2)
                                    364 ;	-----------------------------------------
                                    365 ;	 function hc595
                                    366 ;	-----------------------------------------
      000062                        367 _hc595:
                           000007   368 	ar7 = 0x07
                           000006   369 	ar6 = 0x06
                           000005   370 	ar5 = 0x05
                           000004   371 	ar4 = 0x04
                           000003   372 	ar3 = 0x03
                           000002   373 	ar2 = 0x02
                           000001   374 	ar1 = 0x01
                           000000   375 	ar0 = 0x00
      000062 AF 82            [24]  376 	mov	r7,dpl
                                    377 ;	main.c:13: SRCLK=0;
                                    378 ;	assignBit
      000064 C2 B6            [12]  379 	clr	_P3_6
                                    380 ;	main.c:14: RCLK=0;		
                                    381 ;	assignBit
      000066 C2 B5            [12]  382 	clr	_P3_5
                                    383 ;	main.c:15: for(a=0;a<8;a++)	//发送8位数
      000068 7E 00            [12]  384 	mov	r6,#0x00
      00006A                        385 00103$:
                                    386 ;	main.c:17: SER= dat1 >> 7;		
      00006A EF               [12]  387 	mov	a,r7
      00006B 23               [12]  388 	rl	a
      00006C 54 01            [12]  389 	anl	a,#0x01
                                    390 ;	assignBit
      00006E 24 FF            [12]  391 	add	a,#0xff
      000070 92 B4            [24]  392 	mov	_P3_4,c
                                    393 ;	main.c:18: dat1 <<= 1;
      000072 8F 05            [24]  394 	mov	ar5,r7
      000074 ED               [12]  395 	mov	a,r5
      000075 2D               [12]  396 	add	a,r5
      000076 FF               [12]  397 	mov	r7,a
                                    398 ;	main.c:19: SRCLK=1;	//0 --> 1 上升沿
                                    399 ;	assignBit
      000077 D2 B6            [12]  400 	setb	_P3_6
                                    401 ;	main.c:20: _nop_();	//执行一条空指令
      000079 00               [12]  402 	NOP	
                                    403 ;	main.c:21: _nop_();
      00007A 00               [12]  404 	NOP	
                                    405 ;	main.c:22: SRCLK=0;
                                    406 ;	assignBit
      00007B C2 B6            [12]  407 	clr	_P3_6
                                    408 ;	main.c:15: for(a=0;a<8;a++)	//发送8位数
      00007D 0E               [12]  409 	inc	r6
      00007E BE 08 00         [24]  410 	cjne	r6,#0x08,00127$
      000081                        411 00127$:
      000081 40 E7            [24]  412 	jc	00103$
                                    413 ;	main.c:24: for(a=0;a<8;a++)
      000083 7F 00            [12]  414 	mov	r7,#0x00
      000085                        415 00105$:
                                    416 ;	main.c:26: SER= dat2 >> 7;	
      000085 E5 08            [12]  417 	mov	a,_hc595_PARM_2
      000087 23               [12]  418 	rl	a
      000088 54 01            [12]  419 	anl	a,#0x01
                                    420 ;	assignBit
      00008A 24 FF            [12]  421 	add	a,#0xff
      00008C 92 B4            [24]  422 	mov	_P3_4,c
                                    423 ;	main.c:27: dat2 <<= 1;
      00008E E5 08            [12]  424 	mov	a,_hc595_PARM_2
      000090 FE               [12]  425 	mov	r6,a
      000091 25 E0            [12]  426 	add	a,acc
      000093 F5 08            [12]  427 	mov	_hc595_PARM_2,a
                                    428 ;	main.c:28: SRCLK=0;
                                    429 ;	assignBit
      000095 C2 B6            [12]  430 	clr	_P3_6
                                    431 ;	main.c:29: _nop_();
      000097 00               [12]  432 	NOP	
                                    433 ;	main.c:30: _nop_();
      000098 00               [12]  434 	NOP	
                                    435 ;	main.c:31: SRCLK=1;	
                                    436 ;	assignBit
      000099 D2 B6            [12]  437 	setb	_P3_6
                                    438 ;	main.c:24: for(a=0;a<8;a++)
      00009B 0F               [12]  439 	inc	r7
      00009C BF 08 00         [24]  440 	cjne	r7,#0x08,00129$
      00009F                        441 00129$:
      00009F 40 E4            [24]  442 	jc	00105$
                                    443 ;	main.c:33: RCLK=0;
                                    444 ;	assignBit
      0000A1 C2 B5            [12]  445 	clr	_P3_5
                                    446 ;	main.c:34: _nop_();
      0000A3 00               [12]  447 	NOP	
                                    448 ;	main.c:35: _nop_();
      0000A4 00               [12]  449 	NOP	
                                    450 ;	main.c:36: RCLK=1;
                                    451 ;	assignBit
      0000A5 D2 B5            [12]  452 	setb	_P3_5
                                    453 ;	main.c:37: }
      0000A7 22               [24]  454 	ret
                                    455 ;------------------------------------------------------------
                                    456 ;Allocation info for local variables in function 'main'
                                    457 ;------------------------------------------------------------
                                    458 ;	main.c:39: void main()
                                    459 ;	-----------------------------------------
                                    460 ;	 function main
                                    461 ;	-----------------------------------------
      0000A8                        462 _main:
                                    463 ;	main.c:41: LED1=0;		
                                    464 ;	assignBit
      0000A8 C2 87            [12]  465 	clr	_P0_7
                                    466 ;	main.c:42: while(1) hc595(0xfe,0x01);	
      0000AA                        467 00102$:
      0000AA 75 08 01         [24]  468 	mov	_hc595_PARM_2,#0x01
      0000AD 75 82 FE         [24]  469 	mov	dpl,#0xfe
      0000B0 12 00 62         [24]  470 	lcall	_hc595
                                    471 ;	main.c:43: }
      0000B3 80 F5            [24]  472 	sjmp	00102$
                                    473 	.area CSEG    (CODE)
                                    474 	.area CONST   (CODE)
                                    475 	.area XINIT   (CODE)
                                    476 	.area CABS    (ABS,CODE)
