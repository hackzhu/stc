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
                                     11 	.globl _main
                                     12 	.globl _hc595
                                     13 	.globl _TF2
                                     14 	.globl _EXF2
                                     15 	.globl _RCLK
                                     16 	.globl _TCLK
                                     17 	.globl _EXEN2
                                     18 	.globl _TR2
                                     19 	.globl _C_T2
                                     20 	.globl _CP_RL2
                                     21 	.globl _T2CON_7
                                     22 	.globl _T2CON_6
                                     23 	.globl _T2CON_5
                                     24 	.globl _T2CON_4
                                     25 	.globl _T2CON_3
                                     26 	.globl _T2CON_2
                                     27 	.globl _T2CON_1
                                     28 	.globl _T2CON_0
                                     29 	.globl _PT2
                                     30 	.globl _ET2
                                     31 	.globl _CY
                                     32 	.globl _AC
                                     33 	.globl _F0
                                     34 	.globl _RS1
                                     35 	.globl _RS0
                                     36 	.globl _OV
                                     37 	.globl _F1
                                     38 	.globl _P
                                     39 	.globl _PS
                                     40 	.globl _PT1
                                     41 	.globl _PX1
                                     42 	.globl _PT0
                                     43 	.globl _PX0
                                     44 	.globl _RD
                                     45 	.globl _WR
                                     46 	.globl _T1
                                     47 	.globl _T0
                                     48 	.globl _INT1
                                     49 	.globl _INT0
                                     50 	.globl _TXD
                                     51 	.globl _RXD
                                     52 	.globl _P3_7
                                     53 	.globl _P3_6
                                     54 	.globl _P3_5
                                     55 	.globl _P3_4
                                     56 	.globl _P3_3
                                     57 	.globl _P3_2
                                     58 	.globl _P3_1
                                     59 	.globl _P3_0
                                     60 	.globl _EA
                                     61 	.globl _ES
                                     62 	.globl _ET1
                                     63 	.globl _EX1
                                     64 	.globl _ET0
                                     65 	.globl _EX0
                                     66 	.globl _P2_7
                                     67 	.globl _P2_6
                                     68 	.globl _P2_5
                                     69 	.globl _P2_4
                                     70 	.globl _P2_3
                                     71 	.globl _P2_2
                                     72 	.globl _P2_1
                                     73 	.globl _P2_0
                                     74 	.globl _SM0
                                     75 	.globl _SM1
                                     76 	.globl _SM2
                                     77 	.globl _REN
                                     78 	.globl _TB8
                                     79 	.globl _RB8
                                     80 	.globl _TI
                                     81 	.globl _RI
                                     82 	.globl _P1_7
                                     83 	.globl _P1_6
                                     84 	.globl _P1_5
                                     85 	.globl _P1_4
                                     86 	.globl _P1_3
                                     87 	.globl _P1_2
                                     88 	.globl _P1_1
                                     89 	.globl _P1_0
                                     90 	.globl _TF1
                                     91 	.globl _TR1
                                     92 	.globl _TF0
                                     93 	.globl _TR0
                                     94 	.globl _IE1
                                     95 	.globl _IT1
                                     96 	.globl _IE0
                                     97 	.globl _IT0
                                     98 	.globl _P0_7
                                     99 	.globl _P0_6
                                    100 	.globl _P0_5
                                    101 	.globl _P0_4
                                    102 	.globl _P0_3
                                    103 	.globl _P0_2
                                    104 	.globl _P0_1
                                    105 	.globl _P0_0
                                    106 	.globl _TH2
                                    107 	.globl _TL2
                                    108 	.globl _RCAP2H
                                    109 	.globl _RCAP2L
                                    110 	.globl _T2CON
                                    111 	.globl _B
                                    112 	.globl _ACC
                                    113 	.globl _PSW
                                    114 	.globl _IP
                                    115 	.globl _P3
                                    116 	.globl _IE
                                    117 	.globl _P2
                                    118 	.globl _SBUF
                                    119 	.globl _SCON
                                    120 	.globl _P1
                                    121 	.globl _TH1
                                    122 	.globl _TH0
                                    123 	.globl _TL1
                                    124 	.globl _TL0
                                    125 	.globl _TMOD
                                    126 	.globl _TCON
                                    127 	.globl _PCON
                                    128 	.globl _DPH
                                    129 	.globl _DPL
                                    130 	.globl _SP
                                    131 	.globl _P0
                                    132 ;--------------------------------------------------------
                                    133 ; special function registers
                                    134 ;--------------------------------------------------------
                                    135 	.area RSEG    (ABS,DATA)
      000000                        136 	.org 0x0000
                           000080   137 _P0	=	0x0080
                           000081   138 _SP	=	0x0081
                           000082   139 _DPL	=	0x0082
                           000083   140 _DPH	=	0x0083
                           000087   141 _PCON	=	0x0087
                           000088   142 _TCON	=	0x0088
                           000089   143 _TMOD	=	0x0089
                           00008A   144 _TL0	=	0x008a
                           00008B   145 _TL1	=	0x008b
                           00008C   146 _TH0	=	0x008c
                           00008D   147 _TH1	=	0x008d
                           000090   148 _P1	=	0x0090
                           000098   149 _SCON	=	0x0098
                           000099   150 _SBUF	=	0x0099
                           0000A0   151 _P2	=	0x00a0
                           0000A8   152 _IE	=	0x00a8
                           0000B0   153 _P3	=	0x00b0
                           0000B8   154 _IP	=	0x00b8
                           0000D0   155 _PSW	=	0x00d0
                           0000E0   156 _ACC	=	0x00e0
                           0000F0   157 _B	=	0x00f0
                           0000C8   158 _T2CON	=	0x00c8
                           0000CA   159 _RCAP2L	=	0x00ca
                           0000CB   160 _RCAP2H	=	0x00cb
                           0000CC   161 _TL2	=	0x00cc
                           0000CD   162 _TH2	=	0x00cd
                                    163 ;--------------------------------------------------------
                                    164 ; special function bits
                                    165 ;--------------------------------------------------------
                                    166 	.area RSEG    (ABS,DATA)
      000000                        167 	.org 0x0000
                           000080   168 _P0_0	=	0x0080
                           000081   169 _P0_1	=	0x0081
                           000082   170 _P0_2	=	0x0082
                           000083   171 _P0_3	=	0x0083
                           000084   172 _P0_4	=	0x0084
                           000085   173 _P0_5	=	0x0085
                           000086   174 _P0_6	=	0x0086
                           000087   175 _P0_7	=	0x0087
                           000088   176 _IT0	=	0x0088
                           000089   177 _IE0	=	0x0089
                           00008A   178 _IT1	=	0x008a
                           00008B   179 _IE1	=	0x008b
                           00008C   180 _TR0	=	0x008c
                           00008D   181 _TF0	=	0x008d
                           00008E   182 _TR1	=	0x008e
                           00008F   183 _TF1	=	0x008f
                           000090   184 _P1_0	=	0x0090
                           000091   185 _P1_1	=	0x0091
                           000092   186 _P1_2	=	0x0092
                           000093   187 _P1_3	=	0x0093
                           000094   188 _P1_4	=	0x0094
                           000095   189 _P1_5	=	0x0095
                           000096   190 _P1_6	=	0x0096
                           000097   191 _P1_7	=	0x0097
                           000098   192 _RI	=	0x0098
                           000099   193 _TI	=	0x0099
                           00009A   194 _RB8	=	0x009a
                           00009B   195 _TB8	=	0x009b
                           00009C   196 _REN	=	0x009c
                           00009D   197 _SM2	=	0x009d
                           00009E   198 _SM1	=	0x009e
                           00009F   199 _SM0	=	0x009f
                           0000A0   200 _P2_0	=	0x00a0
                           0000A1   201 _P2_1	=	0x00a1
                           0000A2   202 _P2_2	=	0x00a2
                           0000A3   203 _P2_3	=	0x00a3
                           0000A4   204 _P2_4	=	0x00a4
                           0000A5   205 _P2_5	=	0x00a5
                           0000A6   206 _P2_6	=	0x00a6
                           0000A7   207 _P2_7	=	0x00a7
                           0000A8   208 _EX0	=	0x00a8
                           0000A9   209 _ET0	=	0x00a9
                           0000AA   210 _EX1	=	0x00aa
                           0000AB   211 _ET1	=	0x00ab
                           0000AC   212 _ES	=	0x00ac
                           0000AF   213 _EA	=	0x00af
                           0000B0   214 _P3_0	=	0x00b0
                           0000B1   215 _P3_1	=	0x00b1
                           0000B2   216 _P3_2	=	0x00b2
                           0000B3   217 _P3_3	=	0x00b3
                           0000B4   218 _P3_4	=	0x00b4
                           0000B5   219 _P3_5	=	0x00b5
                           0000B6   220 _P3_6	=	0x00b6
                           0000B7   221 _P3_7	=	0x00b7
                           0000B0   222 _RXD	=	0x00b0
                           0000B1   223 _TXD	=	0x00b1
                           0000B2   224 _INT0	=	0x00b2
                           0000B3   225 _INT1	=	0x00b3
                           0000B4   226 _T0	=	0x00b4
                           0000B5   227 _T1	=	0x00b5
                           0000B6   228 _WR	=	0x00b6
                           0000B7   229 _RD	=	0x00b7
                           0000B8   230 _PX0	=	0x00b8
                           0000B9   231 _PT0	=	0x00b9
                           0000BA   232 _PX1	=	0x00ba
                           0000BB   233 _PT1	=	0x00bb
                           0000BC   234 _PS	=	0x00bc
                           0000D0   235 _P	=	0x00d0
                           0000D1   236 _F1	=	0x00d1
                           0000D2   237 _OV	=	0x00d2
                           0000D3   238 _RS0	=	0x00d3
                           0000D4   239 _RS1	=	0x00d4
                           0000D5   240 _F0	=	0x00d5
                           0000D6   241 _AC	=	0x00d6
                           0000D7   242 _CY	=	0x00d7
                           0000AD   243 _ET2	=	0x00ad
                           0000BD   244 _PT2	=	0x00bd
                           0000C8   245 _T2CON_0	=	0x00c8
                           0000C9   246 _T2CON_1	=	0x00c9
                           0000CA   247 _T2CON_2	=	0x00ca
                           0000CB   248 _T2CON_3	=	0x00cb
                           0000CC   249 _T2CON_4	=	0x00cc
                           0000CD   250 _T2CON_5	=	0x00cd
                           0000CE   251 _T2CON_6	=	0x00ce
                           0000CF   252 _T2CON_7	=	0x00cf
                           0000C8   253 _CP_RL2	=	0x00c8
                           0000C9   254 _C_T2	=	0x00c9
                           0000CA   255 _TR2	=	0x00ca
                           0000CB   256 _EXEN2	=	0x00cb
                           0000CC   257 _TCLK	=	0x00cc
                           0000CD   258 _RCLK	=	0x00cd
                           0000CE   259 _EXF2	=	0x00ce
                           0000CF   260 _TF2	=	0x00cf
                                    261 ;--------------------------------------------------------
                                    262 ; overlayable register banks
                                    263 ;--------------------------------------------------------
                                    264 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        265 	.ds 8
                                    266 ;--------------------------------------------------------
                                    267 ; internal ram data
                                    268 ;--------------------------------------------------------
                                    269 	.area DSEG    (DATA)
                                    270 ;--------------------------------------------------------
                                    271 ; overlayable items in internal ram 
                                    272 ;--------------------------------------------------------
                                    273 	.area	OSEG    (OVR,DATA)
                                    274 ;--------------------------------------------------------
                                    275 ; Stack segment in internal ram 
                                    276 ;--------------------------------------------------------
                                    277 	.area	SSEG
      000008                        278 __start__stack:
      000008                        279 	.ds	1
                                    280 
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
                                    321 ; interrupt vector 
                                    322 ;--------------------------------------------------------
                                    323 	.area HOME    (CODE)
      000000                        324 __interrupt_vect:
      000000 02 00 06         [24]  325 	ljmp	__sdcc_gsinit_startup
                                    326 ;--------------------------------------------------------
                                    327 ; global & static initialisations
                                    328 ;--------------------------------------------------------
                                    329 	.area HOME    (CODE)
                                    330 	.area GSINIT  (CODE)
                                    331 	.area GSFINAL (CODE)
                                    332 	.area GSINIT  (CODE)
                                    333 	.globl __sdcc_gsinit_startup
                                    334 	.globl __sdcc_program_startup
                                    335 	.globl __start__stack
                                    336 	.globl __mcs51_genXINIT
                                    337 	.globl __mcs51_genXRAMCLEAR
                                    338 	.globl __mcs51_genRAMCLEAR
                                    339 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  340 	ljmp	__sdcc_program_startup
                                    341 ;--------------------------------------------------------
                                    342 ; Home
                                    343 ;--------------------------------------------------------
                                    344 	.area HOME    (CODE)
                                    345 	.area HOME    (CODE)
      000003                        346 __sdcc_program_startup:
      000003 02 00 8A         [24]  347 	ljmp	_main
                                    348 ;	return from main will return to caller
                                    349 ;--------------------------------------------------------
                                    350 ; code
                                    351 ;--------------------------------------------------------
                                    352 	.area CSEG    (CODE)
                                    353 ;------------------------------------------------------------
                                    354 ;Allocation info for local variables in function 'hc595'
                                    355 ;------------------------------------------------------------
                                    356 ;dat                       Allocated to registers r7 
                                    357 ;i                         Allocated to registers r6 
                                    358 ;------------------------------------------------------------
                                    359 ;	main.c:9: void hc595(unsigned char dat)
                                    360 ;	-----------------------------------------
                                    361 ;	 function hc595
                                    362 ;	-----------------------------------------
      000062                        363 _hc595:
                           000007   364 	ar7 = 0x07
                           000006   365 	ar6 = 0x06
                           000005   366 	ar5 = 0x05
                           000004   367 	ar4 = 0x04
                           000003   368 	ar3 = 0x03
                           000002   369 	ar2 = 0x02
                           000001   370 	ar1 = 0x01
                           000000   371 	ar0 = 0x00
      000062 AF 82            [24]  372 	mov	r7,dpl
                                    373 ;	main.c:12: SRCLK=0;
                                    374 ;	assignBit
      000064 C2 B6            [12]  375 	clr	_P3_6
                                    376 ;	main.c:13: RCLK=0;
                                    377 ;	assignBit
      000066 C2 B5            [12]  378 	clr	_P3_5
                                    379 ;	main.c:14: for(i=0;i<8;i++)
      000068 7E 00            [12]  380 	mov	r6,#0x00
      00006A                        381 00102$:
                                    382 ;	main.c:16: SER = dat >> 7;
      00006A EF               [12]  383 	mov	a,r7
      00006B 23               [12]  384 	rl	a
      00006C 54 01            [12]  385 	anl	a,#0x01
                                    386 ;	assignBit
      00006E 24 FF            [12]  387 	add	a,#0xff
      000070 92 B4            [24]  388 	mov	_P3_4,c
                                    389 ;	main.c:17: dat <<=1;
      000072 8F 05            [24]  390 	mov	ar5,r7
      000074 ED               [12]  391 	mov	a,r5
      000075 2D               [12]  392 	add	a,r5
      000076 FF               [12]  393 	mov	r7,a
                                    394 ;	main.c:18: SRCLK=1;
                                    395 ;	assignBit
      000077 D2 B6            [12]  396 	setb	_P3_6
                                    397 ;	main.c:19: _nop_();
      000079 00               [12]  398 	NOP	
                                    399 ;	main.c:20: _nop_();
      00007A 00               [12]  400 	NOP	
                                    401 ;	main.c:21: SRCLK=0;
                                    402 ;	assignBit
      00007B C2 B6            [12]  403 	clr	_P3_6
                                    404 ;	main.c:14: for(i=0;i<8;i++)
      00007D 0E               [12]  405 	inc	r6
      00007E BE 08 00         [24]  406 	cjne	r6,#0x08,00115$
      000081                        407 00115$:
      000081 40 E7            [24]  408 	jc	00102$
                                    409 ;	main.c:23: RCLK=1;
                                    410 ;	assignBit
      000083 D2 B5            [12]  411 	setb	_P3_5
                                    412 ;	main.c:24: _nop_();
      000085 00               [12]  413 	NOP	
                                    414 ;	main.c:25: _nop_();
      000086 00               [12]  415 	NOP	
                                    416 ;	main.c:26: RCLK=0;
                                    417 ;	assignBit
      000087 C2 B5            [12]  418 	clr	_P3_5
                                    419 ;	main.c:27: }
      000089 22               [24]  420 	ret
                                    421 ;------------------------------------------------------------
                                    422 ;Allocation info for local variables in function 'main'
                                    423 ;------------------------------------------------------------
                                    424 ;j                         Allocated to registers r7 
                                    425 ;------------------------------------------------------------
                                    426 ;	main.c:29: void main()
                                    427 ;	-----------------------------------------
                                    428 ;	 function main
                                    429 ;	-----------------------------------------
      00008A                        430 _main:
                                    431 ;	main.c:32: while(1)
      00008A                        432 00104$:
                                    433 ;	main.c:34: LED=0xc3;	//1100 0011
      00008A 75 80 C3         [24]  434 	mov	_P0,#0xc3
                                    435 ;	main.c:35: hc595(0x40);	//0100 0000
      00008D 75 82 40         [24]  436 	mov	dpl,#0x40
      000090 12 00 62         [24]  437 	lcall	_hc595
                                    438 ;	main.c:36: for(j=0;j<100;j++);
      000093 7F 64            [12]  439 	mov	r7,#0x64
      000095                        440 00108$:
      000095 DF FE            [24]  441 	djnz	r7,00108$
                                    442 ;	main.c:38: LED=0xfb;	//1111 1011
      000097 75 80 FB         [24]  443 	mov	_P0,#0xfb
                                    444 ;	main.c:39: hc595(0x7e);	//0111 1110
      00009A 75 82 7E         [24]  445 	mov	dpl,#0x7e
      00009D 12 00 62         [24]  446 	lcall	_hc595
                                    447 ;	main.c:40: for(j=0;j<100;j++);
      0000A0 7F 64            [12]  448 	mov	r7,#0x64
      0000A2                        449 00111$:
      0000A2 DF FE            [24]  450 	djnz	r7,00111$
                                    451 ;	main.c:41: hc595(0x00);	//消隐，避免与下次循环发生联系
      0000A4 75 82 00         [24]  452 	mov	dpl,#0x00
      0000A7 12 00 62         [24]  453 	lcall	_hc595
                                    454 ;	main.c:43: }	
      0000AA 80 DE            [24]  455 	sjmp	00104$
                                    456 	.area CSEG    (CODE)
                                    457 	.area CONST   (CODE)
                                    458 	.area XINIT   (CODE)
                                    459 	.area CABS    (ABS,CODE)
