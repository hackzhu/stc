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
                                     11 	.globl _DigDisplay_smgduan_65536_1
                                     12 	.globl _main
                                     13 	.globl _DigDisplay
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
                                    275 ;--------------------------------------------------------
                                    276 ; Stack segment in internal ram 
                                    277 ;--------------------------------------------------------
                                    278 	.area	SSEG
      000008                        279 __start__stack:
      000008                        280 	.ds	1
                                    281 
                                    282 ;--------------------------------------------------------
                                    283 ; indirectly addressable internal ram data
                                    284 ;--------------------------------------------------------
                                    285 	.area ISEG    (DATA)
                                    286 ;--------------------------------------------------------
                                    287 ; absolute internal ram data
                                    288 ;--------------------------------------------------------
                                    289 	.area IABS    (ABS,DATA)
                                    290 	.area IABS    (ABS,DATA)
                                    291 ;--------------------------------------------------------
                                    292 ; bit data
                                    293 ;--------------------------------------------------------
                                    294 	.area BSEG    (BIT)
                                    295 ;--------------------------------------------------------
                                    296 ; paged external ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area PSEG    (PAG,XDATA)
                                    299 ;--------------------------------------------------------
                                    300 ; external ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area XSEG    (XDATA)
                                    303 ;--------------------------------------------------------
                                    304 ; absolute external ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area XABS    (ABS,XDATA)
                                    307 ;--------------------------------------------------------
                                    308 ; external initialized ram data
                                    309 ;--------------------------------------------------------
                                    310 	.area XISEG   (XDATA)
                                    311 	.area HOME    (CODE)
                                    312 	.area GSINIT0 (CODE)
                                    313 	.area GSINIT1 (CODE)
                                    314 	.area GSINIT2 (CODE)
                                    315 	.area GSINIT3 (CODE)
                                    316 	.area GSINIT4 (CODE)
                                    317 	.area GSINIT5 (CODE)
                                    318 	.area GSINIT  (CODE)
                                    319 	.area GSFINAL (CODE)
                                    320 	.area CSEG    (CODE)
                                    321 ;--------------------------------------------------------
                                    322 ; interrupt vector 
                                    323 ;--------------------------------------------------------
                                    324 	.area HOME    (CODE)
      000000                        325 __interrupt_vect:
      000000 02 00 06         [24]  326 	ljmp	__sdcc_gsinit_startup
                                    327 ;--------------------------------------------------------
                                    328 ; global & static initialisations
                                    329 ;--------------------------------------------------------
                                    330 	.area HOME    (CODE)
                                    331 	.area GSINIT  (CODE)
                                    332 	.area GSFINAL (CODE)
                                    333 	.area GSINIT  (CODE)
                                    334 	.globl __sdcc_gsinit_startup
                                    335 	.globl __sdcc_program_startup
                                    336 	.globl __start__stack
                                    337 	.globl __mcs51_genXINIT
                                    338 	.globl __mcs51_genXRAMCLEAR
                                    339 	.globl __mcs51_genRAMCLEAR
                                    340 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  341 	ljmp	__sdcc_program_startup
                                    342 ;--------------------------------------------------------
                                    343 ; Home
                                    344 ;--------------------------------------------------------
                                    345 	.area HOME    (CODE)
                                    346 	.area HOME    (CODE)
      000003                        347 __sdcc_program_startup:
      000003 02 00 E3         [24]  348 	ljmp	_main
                                    349 ;	return from main will return to caller
                                    350 ;--------------------------------------------------------
                                    351 ; code
                                    352 ;--------------------------------------------------------
                                    353 	.area CSEG    (CODE)
                                    354 ;------------------------------------------------------------
                                    355 ;Allocation info for local variables in function 'DigDisplay'
                                    356 ;------------------------------------------------------------
                                    357 ;i                         Allocated to registers r7 
                                    358 ;k                         Allocated to registers r6 
                                    359 ;------------------------------------------------------------
                                    360 ;	main.c:7: void DigDisplay()
                                    361 ;	-----------------------------------------
                                    362 ;	 function DigDisplay
                                    363 ;	-----------------------------------------
      000062                        364 _DigDisplay:
                           000007   365 	ar7 = 0x07
                           000006   366 	ar6 = 0x06
                           000005   367 	ar5 = 0x05
                           000004   368 	ar4 = 0x04
                           000003   369 	ar3 = 0x03
                           000002   370 	ar2 = 0x02
                           000001   371 	ar1 = 0x01
                           000000   372 	ar0 = 0x00
                                    373 ;	main.c:11: for(i=0;i<8;i++)
      000062 7F 00            [12]  374 	mov	r7,#0x00
      000064                        375 00115$:
                                    376 ;	main.c:13: switch(i)	 //位选，选择点亮的数码管，
      000064 EF               [12]  377 	mov	a,r7
      000065 24 F8            [12]  378 	add	a,#0xff - 0x07
      000067 50 03            [24]  379 	jnc	00136$
      000069 02 00 C8         [24]  380 	ljmp	00109$
      00006C                        381 00136$:
      00006C EF               [12]  382 	mov	a,r7
      00006D 24 0A            [12]  383 	add	a,#(00137$-3-.)
      00006F 83               [24]  384 	movc	a,@a+pc
      000070 F5 82            [12]  385 	mov	dpl,a
      000072 EF               [12]  386 	mov	a,r7
      000073 24 0C            [12]  387 	add	a,#(00138$-3-.)
      000075 83               [24]  388 	movc	a,@a+pc
      000076 F5 83            [12]  389 	mov	dph,a
      000078 E4               [12]  390 	clr	a
      000079 73               [24]  391 	jmp	@a+dptr
      00007A                        392 00137$:
      00007A C2                     393 	.db	00108$
      00007B BA                     394 	.db	00107$
      00007C B2                     395 	.db	00106$
      00007D AA                     396 	.db	00105$
      00007E A2                     397 	.db	00104$
      00007F 9A                     398 	.db	00103$
      000080 92                     399 	.db	00102$
      000081 8A                     400 	.db	00101$
      000082                        401 00138$:
      000082 00                     402 	.db	00108$>>8
      000083 00                     403 	.db	00107$>>8
      000084 00                     404 	.db	00106$>>8
      000085 00                     405 	.db	00105$>>8
      000086 00                     406 	.db	00104$>>8
      000087 00                     407 	.db	00103$>>8
      000088 00                     408 	.db	00102$>>8
      000089 00                     409 	.db	00101$>>8
                                    410 ;	main.c:15: case(7):LSA=1;LSB=1;LSC=1; break;//显示第7位 111  7
      00008A                        411 00101$:
                                    412 ;	assignBit
      00008A D2 A2            [12]  413 	setb	_P2_2
                                    414 ;	assignBit
      00008C D2 A3            [12]  415 	setb	_P2_3
                                    416 ;	assignBit
      00008E D2 A4            [12]  417 	setb	_P2_4
                                    418 ;	main.c:16: case(6):LSA=0;LSB=1;LSC=1; break;//显示第6位 011  6
      000090 80 36            [24]  419 	sjmp	00109$
      000092                        420 00102$:
                                    421 ;	assignBit
      000092 C2 A2            [12]  422 	clr	_P2_2
                                    423 ;	assignBit
      000094 D2 A3            [12]  424 	setb	_P2_3
                                    425 ;	assignBit
      000096 D2 A4            [12]  426 	setb	_P2_4
                                    427 ;	main.c:17: case(5):LSA=1;LSB=0;LSC=1; break;//显示第5位 101  5
      000098 80 2E            [24]  428 	sjmp	00109$
      00009A                        429 00103$:
                                    430 ;	assignBit
      00009A D2 A2            [12]  431 	setb	_P2_2
                                    432 ;	assignBit
      00009C C2 A3            [12]  433 	clr	_P2_3
                                    434 ;	assignBit
      00009E D2 A4            [12]  435 	setb	_P2_4
                                    436 ;	main.c:18: case(4):LSA=0;LSB=0;LSC=1; break;//显示第4位 001  4
      0000A0 80 26            [24]  437 	sjmp	00109$
      0000A2                        438 00104$:
                                    439 ;	assignBit
      0000A2 C2 A2            [12]  440 	clr	_P2_2
                                    441 ;	assignBit
      0000A4 C2 A3            [12]  442 	clr	_P2_3
                                    443 ;	assignBit
      0000A6 D2 A4            [12]  444 	setb	_P2_4
                                    445 ;	main.c:19: case(3):LSA=1;LSB=1;LSC=0; break;//显示第3位 110  3
      0000A8 80 1E            [24]  446 	sjmp	00109$
      0000AA                        447 00105$:
                                    448 ;	assignBit
      0000AA D2 A2            [12]  449 	setb	_P2_2
                                    450 ;	assignBit
      0000AC D2 A3            [12]  451 	setb	_P2_3
                                    452 ;	assignBit
      0000AE C2 A4            [12]  453 	clr	_P2_4
                                    454 ;	main.c:20: case(2):LSA=0;LSB=1;LSC=0; break;//显示第2位 010  2
      0000B0 80 16            [24]  455 	sjmp	00109$
      0000B2                        456 00106$:
                                    457 ;	assignBit
      0000B2 C2 A2            [12]  458 	clr	_P2_2
                                    459 ;	assignBit
      0000B4 D2 A3            [12]  460 	setb	_P2_3
                                    461 ;	assignBit
      0000B6 C2 A4            [12]  462 	clr	_P2_4
                                    463 ;	main.c:21: case(1):LSA=1;LSB=0;LSC=0; break;//显示第1位 100  1
      0000B8 80 0E            [24]  464 	sjmp	00109$
      0000BA                        465 00107$:
                                    466 ;	assignBit
      0000BA D2 A2            [12]  467 	setb	_P2_2
                                    468 ;	assignBit
      0000BC C2 A3            [12]  469 	clr	_P2_3
                                    470 ;	assignBit
      0000BE C2 A4            [12]  471 	clr	_P2_4
                                    472 ;	main.c:22: case(0):LSA=0;LSB=0;LSC=0; break;//显示第0位 000  0
      0000C0 80 06            [24]  473 	sjmp	00109$
      0000C2                        474 00108$:
                                    475 ;	assignBit
      0000C2 C2 A2            [12]  476 	clr	_P2_2
                                    477 ;	assignBit
      0000C4 C2 A3            [12]  478 	clr	_P2_3
                                    479 ;	assignBit
      0000C6 C2 A4            [12]  480 	clr	_P2_4
                                    481 ;	main.c:23: }
      0000C8                        482 00109$:
                                    483 ;	main.c:24: P0=smgduan[i];//发送段码
      0000C8 EF               [12]  484 	mov	a,r7
      0000C9 90 00 EC         [24]  485 	mov	dptr,#_DigDisplay_smgduan_65536_1
      0000CC 93               [24]  486 	movc	a,@a+dptr
      0000CD F5 80            [12]  487 	mov	_P0,a
                                    488 ;	main.c:25: for(k=0;k<100;k++); //间隔一段时间扫描	
      0000CF 7E 64            [12]  489 	mov	r6,#0x64
      0000D1                        490 00114$:
      0000D1 EE               [12]  491 	mov	a,r6
      0000D2 14               [12]  492 	dec	a
      0000D3 FD               [12]  493 	mov	r5,a
      0000D4 FE               [12]  494 	mov	r6,a
                                    495 ;	main.c:26: P0=0x00;//消隐
      0000D5 70 FA            [24]  496 	jnz	00114$
      0000D7 F5 80            [12]  497 	mov	_P0,a
                                    498 ;	main.c:11: for(i=0;i<8;i++)
      0000D9 0F               [12]  499 	inc	r7
      0000DA BF 08 00         [24]  500 	cjne	r7,#0x08,00140$
      0000DD                        501 00140$:
      0000DD 50 03            [24]  502 	jnc	00141$
      0000DF 02 00 64         [24]  503 	ljmp	00115$
      0000E2                        504 00141$:
                                    505 ;	main.c:28: }
      0000E2 22               [24]  506 	ret
                                    507 ;------------------------------------------------------------
                                    508 ;Allocation info for local variables in function 'main'
                                    509 ;------------------------------------------------------------
                                    510 ;	main.c:31: void main()
                                    511 ;	-----------------------------------------
                                    512 ;	 function main
                                    513 ;	-----------------------------------------
      0000E3                        514 _main:
                                    515 ;	main.c:33: while(1) DigDisplay();
      0000E3                        516 00102$:
      0000E3 12 00 62         [24]  517 	lcall	_DigDisplay
                                    518 ;	main.c:34: }
      0000E6 80 FB            [24]  519 	sjmp	00102$
                                    520 	.area CSEG    (CODE)
                                    521 	.area CONST   (CODE)
      0000EC                        522 _DigDisplay_smgduan_65536_1:
      0000EC 3F                     523 	.db #0x3f	; 63
      0000ED 06                     524 	.db #0x06	; 6
      0000EE 5B                     525 	.db #0x5b	; 91
      0000EF 4F                     526 	.db #0x4f	; 79	'O'
      0000F0 66                     527 	.db #0x66	; 102	'f'
      0000F1 6D                     528 	.db #0x6d	; 109	'm'
      0000F2 7D                     529 	.db #0x7d	; 125
      0000F3 07                     530 	.db #0x07	; 7
      0000F4 7F                     531 	.db #0x7f	; 127
      0000F5 6F                     532 	.db #0x6f	; 111	'o'
      0000F6 77                     533 	.db #0x77	; 119	'w'
      0000F7 7C                     534 	.db #0x7c	; 124
      0000F8 39                     535 	.db #0x39	; 57	'9'
      0000F9 5E                     536 	.db #0x5e	; 94
      0000FA 79                     537 	.db #0x79	; 121	'y'
      0000FB 71                     538 	.db #0x71	; 113	'q'
      0000FC 00                     539 	.db 0x00
                                    540 	.area XINIT   (CODE)
                                    541 	.area CABS    (ABS,CODE)
