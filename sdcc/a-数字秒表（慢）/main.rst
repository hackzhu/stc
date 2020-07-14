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
                                     11 	.globl _smgduan
                                     12 	.globl _main
                                     13 	.globl _Timer0
                                     14 	.globl _datapros
                                     15 	.globl _Timer0Init
                                     16 	.globl _DigDisplay
                                     17 	.globl _TF2
                                     18 	.globl _EXF2
                                     19 	.globl _RCLK
                                     20 	.globl _TCLK
                                     21 	.globl _EXEN2
                                     22 	.globl _TR2
                                     23 	.globl _C_T2
                                     24 	.globl _CP_RL2
                                     25 	.globl _T2CON_7
                                     26 	.globl _T2CON_6
                                     27 	.globl _T2CON_5
                                     28 	.globl _T2CON_4
                                     29 	.globl _T2CON_3
                                     30 	.globl _T2CON_2
                                     31 	.globl _T2CON_1
                                     32 	.globl _T2CON_0
                                     33 	.globl _PT2
                                     34 	.globl _ET2
                                     35 	.globl _CY
                                     36 	.globl _AC
                                     37 	.globl _F0
                                     38 	.globl _RS1
                                     39 	.globl _RS0
                                     40 	.globl _OV
                                     41 	.globl _F1
                                     42 	.globl _P
                                     43 	.globl _PS
                                     44 	.globl _PT1
                                     45 	.globl _PX1
                                     46 	.globl _PT0
                                     47 	.globl _PX0
                                     48 	.globl _RD
                                     49 	.globl _WR
                                     50 	.globl _T1
                                     51 	.globl _T0
                                     52 	.globl _INT1
                                     53 	.globl _INT0
                                     54 	.globl _TXD
                                     55 	.globl _RXD
                                     56 	.globl _P3_7
                                     57 	.globl _P3_6
                                     58 	.globl _P3_5
                                     59 	.globl _P3_4
                                     60 	.globl _P3_3
                                     61 	.globl _P3_2
                                     62 	.globl _P3_1
                                     63 	.globl _P3_0
                                     64 	.globl _EA
                                     65 	.globl _ES
                                     66 	.globl _ET1
                                     67 	.globl _EX1
                                     68 	.globl _ET0
                                     69 	.globl _EX0
                                     70 	.globl _P2_7
                                     71 	.globl _P2_6
                                     72 	.globl _P2_5
                                     73 	.globl _P2_4
                                     74 	.globl _P2_3
                                     75 	.globl _P2_2
                                     76 	.globl _P2_1
                                     77 	.globl _P2_0
                                     78 	.globl _SM0
                                     79 	.globl _SM1
                                     80 	.globl _SM2
                                     81 	.globl _REN
                                     82 	.globl _TB8
                                     83 	.globl _RB8
                                     84 	.globl _TI
                                     85 	.globl _RI
                                     86 	.globl _P1_7
                                     87 	.globl _P1_6
                                     88 	.globl _P1_5
                                     89 	.globl _P1_4
                                     90 	.globl _P1_3
                                     91 	.globl _P1_2
                                     92 	.globl _P1_1
                                     93 	.globl _P1_0
                                     94 	.globl _TF1
                                     95 	.globl _TR1
                                     96 	.globl _TF0
                                     97 	.globl _TR0
                                     98 	.globl _IE1
                                     99 	.globl _IT1
                                    100 	.globl _IE0
                                    101 	.globl _IT0
                                    102 	.globl _P0_7
                                    103 	.globl _P0_6
                                    104 	.globl _P0_5
                                    105 	.globl _P0_4
                                    106 	.globl _P0_3
                                    107 	.globl _P0_2
                                    108 	.globl _P0_1
                                    109 	.globl _P0_0
                                    110 	.globl _TH2
                                    111 	.globl _TL2
                                    112 	.globl _RCAP2H
                                    113 	.globl _RCAP2L
                                    114 	.globl _T2CON
                                    115 	.globl _B
                                    116 	.globl _ACC
                                    117 	.globl _PSW
                                    118 	.globl _IP
                                    119 	.globl _P3
                                    120 	.globl _IE
                                    121 	.globl _P2
                                    122 	.globl _SBUF
                                    123 	.globl _SCON
                                    124 	.globl _P1
                                    125 	.globl _TH1
                                    126 	.globl _TH0
                                    127 	.globl _TL1
                                    128 	.globl _TL0
                                    129 	.globl _TMOD
                                    130 	.globl _TCON
                                    131 	.globl _PCON
                                    132 	.globl _DPH
                                    133 	.globl _DPL
                                    134 	.globl _SP
                                    135 	.globl _P0
                                    136 	.globl _DisplayData
                                    137 	.globl _min
                                    138 	.globl _sec
                                    139 	.globl _ssec
                                    140 ;--------------------------------------------------------
                                    141 ; special function registers
                                    142 ;--------------------------------------------------------
                                    143 	.area RSEG    (ABS,DATA)
      000000                        144 	.org 0x0000
                           000080   145 _P0	=	0x0080
                           000081   146 _SP	=	0x0081
                           000082   147 _DPL	=	0x0082
                           000083   148 _DPH	=	0x0083
                           000087   149 _PCON	=	0x0087
                           000088   150 _TCON	=	0x0088
                           000089   151 _TMOD	=	0x0089
                           00008A   152 _TL0	=	0x008a
                           00008B   153 _TL1	=	0x008b
                           00008C   154 _TH0	=	0x008c
                           00008D   155 _TH1	=	0x008d
                           000090   156 _P1	=	0x0090
                           000098   157 _SCON	=	0x0098
                           000099   158 _SBUF	=	0x0099
                           0000A0   159 _P2	=	0x00a0
                           0000A8   160 _IE	=	0x00a8
                           0000B0   161 _P3	=	0x00b0
                           0000B8   162 _IP	=	0x00b8
                           0000D0   163 _PSW	=	0x00d0
                           0000E0   164 _ACC	=	0x00e0
                           0000F0   165 _B	=	0x00f0
                           0000C8   166 _T2CON	=	0x00c8
                           0000CA   167 _RCAP2L	=	0x00ca
                           0000CB   168 _RCAP2H	=	0x00cb
                           0000CC   169 _TL2	=	0x00cc
                           0000CD   170 _TH2	=	0x00cd
                                    171 ;--------------------------------------------------------
                                    172 ; special function bits
                                    173 ;--------------------------------------------------------
                                    174 	.area RSEG    (ABS,DATA)
      000000                        175 	.org 0x0000
                           000080   176 _P0_0	=	0x0080
                           000081   177 _P0_1	=	0x0081
                           000082   178 _P0_2	=	0x0082
                           000083   179 _P0_3	=	0x0083
                           000084   180 _P0_4	=	0x0084
                           000085   181 _P0_5	=	0x0085
                           000086   182 _P0_6	=	0x0086
                           000087   183 _P0_7	=	0x0087
                           000088   184 _IT0	=	0x0088
                           000089   185 _IE0	=	0x0089
                           00008A   186 _IT1	=	0x008a
                           00008B   187 _IE1	=	0x008b
                           00008C   188 _TR0	=	0x008c
                           00008D   189 _TF0	=	0x008d
                           00008E   190 _TR1	=	0x008e
                           00008F   191 _TF1	=	0x008f
                           000090   192 _P1_0	=	0x0090
                           000091   193 _P1_1	=	0x0091
                           000092   194 _P1_2	=	0x0092
                           000093   195 _P1_3	=	0x0093
                           000094   196 _P1_4	=	0x0094
                           000095   197 _P1_5	=	0x0095
                           000096   198 _P1_6	=	0x0096
                           000097   199 _P1_7	=	0x0097
                           000098   200 _RI	=	0x0098
                           000099   201 _TI	=	0x0099
                           00009A   202 _RB8	=	0x009a
                           00009B   203 _TB8	=	0x009b
                           00009C   204 _REN	=	0x009c
                           00009D   205 _SM2	=	0x009d
                           00009E   206 _SM1	=	0x009e
                           00009F   207 _SM0	=	0x009f
                           0000A0   208 _P2_0	=	0x00a0
                           0000A1   209 _P2_1	=	0x00a1
                           0000A2   210 _P2_2	=	0x00a2
                           0000A3   211 _P2_3	=	0x00a3
                           0000A4   212 _P2_4	=	0x00a4
                           0000A5   213 _P2_5	=	0x00a5
                           0000A6   214 _P2_6	=	0x00a6
                           0000A7   215 _P2_7	=	0x00a7
                           0000A8   216 _EX0	=	0x00a8
                           0000A9   217 _ET0	=	0x00a9
                           0000AA   218 _EX1	=	0x00aa
                           0000AB   219 _ET1	=	0x00ab
                           0000AC   220 _ES	=	0x00ac
                           0000AF   221 _EA	=	0x00af
                           0000B0   222 _P3_0	=	0x00b0
                           0000B1   223 _P3_1	=	0x00b1
                           0000B2   224 _P3_2	=	0x00b2
                           0000B3   225 _P3_3	=	0x00b3
                           0000B4   226 _P3_4	=	0x00b4
                           0000B5   227 _P3_5	=	0x00b5
                           0000B6   228 _P3_6	=	0x00b6
                           0000B7   229 _P3_7	=	0x00b7
                           0000B0   230 _RXD	=	0x00b0
                           0000B1   231 _TXD	=	0x00b1
                           0000B2   232 _INT0	=	0x00b2
                           0000B3   233 _INT1	=	0x00b3
                           0000B4   234 _T0	=	0x00b4
                           0000B5   235 _T1	=	0x00b5
                           0000B6   236 _WR	=	0x00b6
                           0000B7   237 _RD	=	0x00b7
                           0000B8   238 _PX0	=	0x00b8
                           0000B9   239 _PT0	=	0x00b9
                           0000BA   240 _PX1	=	0x00ba
                           0000BB   241 _PT1	=	0x00bb
                           0000BC   242 _PS	=	0x00bc
                           0000D0   243 _P	=	0x00d0
                           0000D1   244 _F1	=	0x00d1
                           0000D2   245 _OV	=	0x00d2
                           0000D3   246 _RS0	=	0x00d3
                           0000D4   247 _RS1	=	0x00d4
                           0000D5   248 _F0	=	0x00d5
                           0000D6   249 _AC	=	0x00d6
                           0000D7   250 _CY	=	0x00d7
                           0000AD   251 _ET2	=	0x00ad
                           0000BD   252 _PT2	=	0x00bd
                           0000C8   253 _T2CON_0	=	0x00c8
                           0000C9   254 _T2CON_1	=	0x00c9
                           0000CA   255 _T2CON_2	=	0x00ca
                           0000CB   256 _T2CON_3	=	0x00cb
                           0000CC   257 _T2CON_4	=	0x00cc
                           0000CD   258 _T2CON_5	=	0x00cd
                           0000CE   259 _T2CON_6	=	0x00ce
                           0000CF   260 _T2CON_7	=	0x00cf
                           0000C8   261 _CP_RL2	=	0x00c8
                           0000C9   262 _C_T2	=	0x00c9
                           0000CA   263 _TR2	=	0x00ca
                           0000CB   264 _EXEN2	=	0x00cb
                           0000CC   265 _TCLK	=	0x00cc
                           0000CD   266 _RCLK	=	0x00cd
                           0000CE   267 _EXF2	=	0x00ce
                           0000CF   268 _TF2	=	0x00cf
                                    269 ;--------------------------------------------------------
                                    270 ; overlayable register banks
                                    271 ;--------------------------------------------------------
                                    272 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        273 	.ds 8
                                    274 ;--------------------------------------------------------
                                    275 ; internal ram data
                                    276 ;--------------------------------------------------------
                                    277 	.area DSEG    (DATA)
      000008                        278 _ssec::
      000008                        279 	.ds 1
      000009                        280 _sec::
      000009                        281 	.ds 1
      00000A                        282 _min::
      00000A                        283 	.ds 1
      00000B                        284 _DisplayData::
      00000B                        285 	.ds 8
                                    286 ;--------------------------------------------------------
                                    287 ; overlayable items in internal ram 
                                    288 ;--------------------------------------------------------
                                    289 	.area	OSEG    (OVR,DATA)
                                    290 ;--------------------------------------------------------
                                    291 ; Stack segment in internal ram 
                                    292 ;--------------------------------------------------------
                                    293 	.area	SSEG
      000015                        294 __start__stack:
      000015                        295 	.ds	1
                                    296 
                                    297 ;--------------------------------------------------------
                                    298 ; indirectly addressable internal ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area ISEG    (DATA)
                                    301 ;--------------------------------------------------------
                                    302 ; absolute internal ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area IABS    (ABS,DATA)
                                    305 	.area IABS    (ABS,DATA)
                                    306 ;--------------------------------------------------------
                                    307 ; bit data
                                    308 ;--------------------------------------------------------
                                    309 	.area BSEG    (BIT)
                                    310 ;--------------------------------------------------------
                                    311 ; paged external ram data
                                    312 ;--------------------------------------------------------
                                    313 	.area PSEG    (PAG,XDATA)
                                    314 ;--------------------------------------------------------
                                    315 ; external ram data
                                    316 ;--------------------------------------------------------
                                    317 	.area XSEG    (XDATA)
                                    318 ;--------------------------------------------------------
                                    319 ; absolute external ram data
                                    320 ;--------------------------------------------------------
                                    321 	.area XABS    (ABS,XDATA)
                                    322 ;--------------------------------------------------------
                                    323 ; external initialized ram data
                                    324 ;--------------------------------------------------------
                                    325 	.area XISEG   (XDATA)
                                    326 	.area HOME    (CODE)
                                    327 	.area GSINIT0 (CODE)
                                    328 	.area GSINIT1 (CODE)
                                    329 	.area GSINIT2 (CODE)
                                    330 	.area GSINIT3 (CODE)
                                    331 	.area GSINIT4 (CODE)
                                    332 	.area GSINIT5 (CODE)
                                    333 	.area GSINIT  (CODE)
                                    334 	.area GSFINAL (CODE)
                                    335 	.area CSEG    (CODE)
                                    336 ;--------------------------------------------------------
                                    337 ; interrupt vector 
                                    338 ;--------------------------------------------------------
                                    339 	.area HOME    (CODE)
      000000                        340 __interrupt_vect:
      000000 02 00 11         [24]  341 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  342 	reti
      000004                        343 	.ds	7
      00000B 02 01 D6         [24]  344 	ljmp	_Timer0
                                    345 ;--------------------------------------------------------
                                    346 ; global & static initialisations
                                    347 ;--------------------------------------------------------
                                    348 	.area HOME    (CODE)
                                    349 	.area GSINIT  (CODE)
                                    350 	.area GSFINAL (CODE)
                                    351 	.area GSINIT  (CODE)
                                    352 	.globl __sdcc_gsinit_startup
                                    353 	.globl __sdcc_program_startup
                                    354 	.globl __start__stack
                                    355 	.globl __mcs51_genXINIT
                                    356 	.globl __mcs51_genXRAMCLEAR
                                    357 	.globl __mcs51_genRAMCLEAR
                                    358 	.area GSFINAL (CODE)
      00006A 02 00 0E         [24]  359 	ljmp	__sdcc_program_startup
                                    360 ;--------------------------------------------------------
                                    361 ; Home
                                    362 ;--------------------------------------------------------
                                    363 	.area HOME    (CODE)
                                    364 	.area HOME    (CODE)
      00000E                        365 __sdcc_program_startup:
      00000E 02 02 06         [24]  366 	ljmp	_main
                                    367 ;	return from main will return to caller
                                    368 ;--------------------------------------------------------
                                    369 ; code
                                    370 ;--------------------------------------------------------
                                    371 	.area CSEG    (CODE)
                                    372 ;------------------------------------------------------------
                                    373 ;Allocation info for local variables in function 'DigDisplay'
                                    374 ;------------------------------------------------------------
                                    375 ;i                         Allocated to registers r7 
                                    376 ;k                         Allocated to registers r6 
                                    377 ;------------------------------------------------------------
                                    378 ;	main.c:7: void DigDisplay()
                                    379 ;	-----------------------------------------
                                    380 ;	 function DigDisplay
                                    381 ;	-----------------------------------------
      00006D                        382 _DigDisplay:
                           000007   383 	ar7 = 0x07
                           000006   384 	ar6 = 0x06
                           000005   385 	ar5 = 0x05
                           000004   386 	ar4 = 0x04
                           000003   387 	ar3 = 0x03
                           000002   388 	ar2 = 0x02
                           000001   389 	ar1 = 0x01
                           000000   390 	ar0 = 0x00
                                    391 ;	main.c:10: for(i=0;i<8;i++)
      00006D 7F 00            [12]  392 	mov	r7,#0x00
      00006F                        393 00115$:
                                    394 ;	main.c:12: switch(i)	 //位选，选择点亮的数码管，
      00006F EF               [12]  395 	mov	a,r7
      000070 24 F8            [12]  396 	add	a,#0xff - 0x07
      000072 50 03            [24]  397 	jnc	00136$
      000074 02 00 D3         [24]  398 	ljmp	00109$
      000077                        399 00136$:
      000077 EF               [12]  400 	mov	a,r7
      000078 24 0A            [12]  401 	add	a,#(00137$-3-.)
      00007A 83               [24]  402 	movc	a,@a+pc
      00007B F5 82            [12]  403 	mov	dpl,a
      00007D EF               [12]  404 	mov	a,r7
      00007E 24 0C            [12]  405 	add	a,#(00138$-3-.)
      000080 83               [24]  406 	movc	a,@a+pc
      000081 F5 83            [12]  407 	mov	dph,a
      000083 E4               [12]  408 	clr	a
      000084 73               [24]  409 	jmp	@a+dptr
      000085                        410 00137$:
      000085 95                     411 	.db	00101$
      000086 9D                     412 	.db	00102$
      000087 A5                     413 	.db	00103$
      000088 AD                     414 	.db	00104$
      000089 B5                     415 	.db	00105$
      00008A BD                     416 	.db	00106$
      00008B C5                     417 	.db	00107$
      00008C CD                     418 	.db	00108$
      00008D                        419 00138$:
      00008D 00                     420 	.db	00101$>>8
      00008E 00                     421 	.db	00102$>>8
      00008F 00                     422 	.db	00103$>>8
      000090 00                     423 	.db	00104$>>8
      000091 00                     424 	.db	00105$>>8
      000092 00                     425 	.db	00106$>>8
      000093 00                     426 	.db	00107$>>8
      000094 00                     427 	.db	00108$>>8
                                    428 ;	main.c:14: case(0):P2_2=1;P2_3=1;P2_4=1; break;//显示第0位 111
      000095                        429 00101$:
                                    430 ;	assignBit
      000095 D2 A2            [12]  431 	setb	_P2_2
                                    432 ;	assignBit
      000097 D2 A3            [12]  433 	setb	_P2_3
                                    434 ;	assignBit
      000099 D2 A4            [12]  435 	setb	_P2_4
                                    436 ;	main.c:15: case(1):P2_2=0;P2_3=1;P2_4=1; break;//显示第1位 011
      00009B 80 36            [24]  437 	sjmp	00109$
      00009D                        438 00102$:
                                    439 ;	assignBit
      00009D C2 A2            [12]  440 	clr	_P2_2
                                    441 ;	assignBit
      00009F D2 A3            [12]  442 	setb	_P2_3
                                    443 ;	assignBit
      0000A1 D2 A4            [12]  444 	setb	_P2_4
                                    445 ;	main.c:16: case(2):P2_2=1;P2_3=0;P2_4=1; break;//显示第2位	101
      0000A3 80 2E            [24]  446 	sjmp	00109$
      0000A5                        447 00103$:
                                    448 ;	assignBit
      0000A5 D2 A2            [12]  449 	setb	_P2_2
                                    450 ;	assignBit
      0000A7 C2 A3            [12]  451 	clr	_P2_3
                                    452 ;	assignBit
      0000A9 D2 A4            [12]  453 	setb	_P2_4
                                    454 ;	main.c:17: case(3):P2_2=0;P2_3=0;P2_4=1; break;//显示第3位	001
      0000AB 80 26            [24]  455 	sjmp	00109$
      0000AD                        456 00104$:
                                    457 ;	assignBit
      0000AD C2 A2            [12]  458 	clr	_P2_2
                                    459 ;	assignBit
      0000AF C2 A3            [12]  460 	clr	_P2_3
                                    461 ;	assignBit
      0000B1 D2 A4            [12]  462 	setb	_P2_4
                                    463 ;	main.c:18: case(4):P2_2=1;P2_3=1;P2_4=0; break;//显示第4位	110
      0000B3 80 1E            [24]  464 	sjmp	00109$
      0000B5                        465 00105$:
                                    466 ;	assignBit
      0000B5 D2 A2            [12]  467 	setb	_P2_2
                                    468 ;	assignBit
      0000B7 D2 A3            [12]  469 	setb	_P2_3
                                    470 ;	assignBit
      0000B9 C2 A4            [12]  471 	clr	_P2_4
                                    472 ;	main.c:19: case(5):P2_2=0;P2_3=1;P2_4=0; break;//显示第5位	010
      0000BB 80 16            [24]  473 	sjmp	00109$
      0000BD                        474 00106$:
                                    475 ;	assignBit
      0000BD C2 A2            [12]  476 	clr	_P2_2
                                    477 ;	assignBit
      0000BF D2 A3            [12]  478 	setb	_P2_3
                                    479 ;	assignBit
      0000C1 C2 A4            [12]  480 	clr	_P2_4
                                    481 ;	main.c:20: case(6):P2_2=1;P2_3=0;P2_4=0; break;//显示第6位	100
      0000C3 80 0E            [24]  482 	sjmp	00109$
      0000C5                        483 00107$:
                                    484 ;	assignBit
      0000C5 D2 A2            [12]  485 	setb	_P2_2
                                    486 ;	assignBit
      0000C7 C2 A3            [12]  487 	clr	_P2_3
                                    488 ;	assignBit
      0000C9 C2 A4            [12]  489 	clr	_P2_4
                                    490 ;	main.c:21: case(7):P2_2=0;P2_3=0;P2_4=0; break;//显示第7位	000
      0000CB 80 06            [24]  491 	sjmp	00109$
      0000CD                        492 00108$:
                                    493 ;	assignBit
      0000CD C2 A2            [12]  494 	clr	_P2_2
                                    495 ;	assignBit
      0000CF C2 A3            [12]  496 	clr	_P2_3
                                    497 ;	assignBit
      0000D1 C2 A4            [12]  498 	clr	_P2_4
                                    499 ;	main.c:22: }
      0000D3                        500 00109$:
                                    501 ;	main.c:23: P0=DisplayData[i];//发送段码
      0000D3 EF               [12]  502 	mov	a,r7
      0000D4 24 0B            [12]  503 	add	a,#_DisplayData
      0000D6 F9               [12]  504 	mov	r1,a
      0000D7 87 80            [24]  505 	mov	_P0,@r1
                                    506 ;	main.c:24: for(k=0;k<100;k++); //间隔一段时间扫描	
      0000D9 7E 64            [12]  507 	mov	r6,#0x64
      0000DB                        508 00114$:
      0000DB EE               [12]  509 	mov	a,r6
      0000DC 14               [12]  510 	dec	a
      0000DD FD               [12]  511 	mov	r5,a
      0000DE FE               [12]  512 	mov	r6,a
                                    513 ;	main.c:25: P0=0x00;//消隐
      0000DF 70 FA            [24]  514 	jnz	00114$
      0000E1 F5 80            [12]  515 	mov	_P0,a
                                    516 ;	main.c:10: for(i=0;i<8;i++)
      0000E3 0F               [12]  517 	inc	r7
      0000E4 BF 08 00         [24]  518 	cjne	r7,#0x08,00140$
      0000E7                        519 00140$:
      0000E7 50 03            [24]  520 	jnc	00141$
      0000E9 02 00 6F         [24]  521 	ljmp	00115$
      0000EC                        522 00141$:
                                    523 ;	main.c:27: }
      0000EC 22               [24]  524 	ret
                                    525 ;------------------------------------------------------------
                                    526 ;Allocation info for local variables in function 'Timer0Init'
                                    527 ;------------------------------------------------------------
                                    528 ;	main.c:29: void Timer0Init()
                                    529 ;	-----------------------------------------
                                    530 ;	 function Timer0Init
                                    531 ;	-----------------------------------------
      0000ED                        532 _Timer0Init:
                                    533 ;	main.c:31: EA=1;		//打开中断总开关
                                    534 ;	assignBit
      0000ED D2 AF            [12]  535 	setb	_EA
                                    536 ;	main.c:33: TMOD=0x01;	//选择为定时器0模式，工作方式1，仅用TR0打开启动。
      0000EF 75 89 01         [24]  537 	mov	_TMOD,#0x01
                                    538 ;	main.c:38: TR0=1;		//打开定时器
                                    539 ;	assignBit
      0000F2 D2 8C            [12]  540 	setb	_TR0
                                    541 ;	main.c:39: ET0=1;		//打开定时器0中断
                                    542 ;	assignBit
      0000F4 D2 A9            [12]  543 	setb	_ET0
                                    544 ;	main.c:43: TH0=0xd8;	//1101 1000
      0000F6 75 8C D8         [24]  545 	mov	_TH0,#0xd8
                                    546 ;	main.c:44: TL0=0xf0;	//1111 0000
      0000F9 75 8A F0         [24]  547 	mov	_TL0,#0xf0
                                    548 ;	main.c:45: }
      0000FC 22               [24]  549 	ret
                                    550 ;------------------------------------------------------------
                                    551 ;Allocation info for local variables in function 'datapros'
                                    552 ;------------------------------------------------------------
                                    553 ;	main.c:47: void datapros()
                                    554 ;	-----------------------------------------
                                    555 ;	 function datapros
                                    556 ;	-----------------------------------------
      0000FD                        557 _datapros:
                                    558 ;	main.c:49: DisplayData[0]=smgduan[min/10];
      0000FD AE 0A            [24]  559 	mov	r6,_min
      0000FF 7F 00            [12]  560 	mov	r7,#0x00
      000101 75 13 0A         [24]  561 	mov	__divsint_PARM_2,#0x0a
                                    562 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000104 8F 14            [24]  563 	mov	(__divsint_PARM_2 + 1),r7
      000106 8E 82            [24]  564 	mov	dpl,r6
      000108 8F 83            [24]  565 	mov	dph,r7
      00010A 12 02 BD         [24]  566 	lcall	__divsint
      00010D AE 82            [24]  567 	mov	r6,dpl
      00010F AF 83            [24]  568 	mov	r7,dph
      000111 EE               [12]  569 	mov	a,r6
      000112 24 F9            [12]  570 	add	a,#_smgduan
      000114 F5 82            [12]  571 	mov	dpl,a
      000116 EF               [12]  572 	mov	a,r7
      000117 34 02            [12]  573 	addc	a,#(_smgduan >> 8)
      000119 F5 83            [12]  574 	mov	dph,a
      00011B E4               [12]  575 	clr	a
      00011C 93               [24]  576 	movc	a,@a+dptr
      00011D FF               [12]  577 	mov	r7,a
      00011E 8F 0B            [24]  578 	mov	_DisplayData,r7
                                    579 ;	main.c:50: DisplayData[1]=smgduan[min%10];
      000120 AE 0A            [24]  580 	mov	r6,_min
      000122 7F 00            [12]  581 	mov	r7,#0x00
      000124 75 13 0A         [24]  582 	mov	__modsint_PARM_2,#0x0a
                                    583 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000127 8F 14            [24]  584 	mov	(__modsint_PARM_2 + 1),r7
      000129 8E 82            [24]  585 	mov	dpl,r6
      00012B 8F 83            [24]  586 	mov	dph,r7
      00012D 12 02 87         [24]  587 	lcall	__modsint
      000130 AE 82            [24]  588 	mov	r6,dpl
      000132 AF 83            [24]  589 	mov	r7,dph
      000134 EE               [12]  590 	mov	a,r6
      000135 24 F9            [12]  591 	add	a,#_smgduan
      000137 F5 82            [12]  592 	mov	dpl,a
      000139 EF               [12]  593 	mov	a,r7
      00013A 34 02            [12]  594 	addc	a,#(_smgduan >> 8)
      00013C F5 83            [12]  595 	mov	dph,a
      00013E E4               [12]  596 	clr	a
      00013F 93               [24]  597 	movc	a,@a+dptr
      000140 FF               [12]  598 	mov	r7,a
      000141 8F 0C            [24]  599 	mov	(_DisplayData + 0x0001),r7
                                    600 ;	main.c:51: DisplayData[2]=0x40;			//01000000  即显示数码管的g
      000143 75 0D 40         [24]  601 	mov	(_DisplayData + 0x0002),#0x40
                                    602 ;	main.c:52: DisplayData[3]=smgduan[sec/10];
      000146 AE 09            [24]  603 	mov	r6,_sec
      000148 7F 00            [12]  604 	mov	r7,#0x00
      00014A 75 13 0A         [24]  605 	mov	__divsint_PARM_2,#0x0a
                                    606 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      00014D 8F 14            [24]  607 	mov	(__divsint_PARM_2 + 1),r7
      00014F 8E 82            [24]  608 	mov	dpl,r6
      000151 8F 83            [24]  609 	mov	dph,r7
      000153 12 02 BD         [24]  610 	lcall	__divsint
      000156 AE 82            [24]  611 	mov	r6,dpl
      000158 AF 83            [24]  612 	mov	r7,dph
      00015A EE               [12]  613 	mov	a,r6
      00015B 24 F9            [12]  614 	add	a,#_smgduan
      00015D F5 82            [12]  615 	mov	dpl,a
      00015F EF               [12]  616 	mov	a,r7
      000160 34 02            [12]  617 	addc	a,#(_smgduan >> 8)
      000162 F5 83            [12]  618 	mov	dph,a
      000164 E4               [12]  619 	clr	a
      000165 93               [24]  620 	movc	a,@a+dptr
      000166 FF               [12]  621 	mov	r7,a
      000167 8F 0E            [24]  622 	mov	(_DisplayData + 0x0003),r7
                                    623 ;	main.c:53: DisplayData[4]=smgduan[sec%10];
      000169 AE 09            [24]  624 	mov	r6,_sec
      00016B 7F 00            [12]  625 	mov	r7,#0x00
      00016D 75 13 0A         [24]  626 	mov	__modsint_PARM_2,#0x0a
                                    627 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      000170 8F 14            [24]  628 	mov	(__modsint_PARM_2 + 1),r7
      000172 8E 82            [24]  629 	mov	dpl,r6
      000174 8F 83            [24]  630 	mov	dph,r7
      000176 12 02 87         [24]  631 	lcall	__modsint
      000179 AE 82            [24]  632 	mov	r6,dpl
      00017B AF 83            [24]  633 	mov	r7,dph
      00017D EE               [12]  634 	mov	a,r6
      00017E 24 F9            [12]  635 	add	a,#_smgduan
      000180 F5 82            [12]  636 	mov	dpl,a
      000182 EF               [12]  637 	mov	a,r7
      000183 34 02            [12]  638 	addc	a,#(_smgduan >> 8)
      000185 F5 83            [12]  639 	mov	dph,a
      000187 E4               [12]  640 	clr	a
      000188 93               [24]  641 	movc	a,@a+dptr
      000189 FF               [12]  642 	mov	r7,a
      00018A 8F 0F            [24]  643 	mov	(_DisplayData + 0x0004),r7
                                    644 ;	main.c:54: DisplayData[5]=0x40;
      00018C 75 10 40         [24]  645 	mov	(_DisplayData + 0x0005),#0x40
                                    646 ;	main.c:55: DisplayData[6]=smgduan[ssec/10];
      00018F AE 08            [24]  647 	mov	r6,_ssec
      000191 7F 00            [12]  648 	mov	r7,#0x00
      000193 75 13 0A         [24]  649 	mov	__divsint_PARM_2,#0x0a
                                    650 ;	1-genFromRTrack replaced	mov	(__divsint_PARM_2 + 1),#0x00
      000196 8F 14            [24]  651 	mov	(__divsint_PARM_2 + 1),r7
      000198 8E 82            [24]  652 	mov	dpl,r6
      00019A 8F 83            [24]  653 	mov	dph,r7
      00019C 12 02 BD         [24]  654 	lcall	__divsint
      00019F AE 82            [24]  655 	mov	r6,dpl
      0001A1 AF 83            [24]  656 	mov	r7,dph
      0001A3 EE               [12]  657 	mov	a,r6
      0001A4 24 F9            [12]  658 	add	a,#_smgduan
      0001A6 F5 82            [12]  659 	mov	dpl,a
      0001A8 EF               [12]  660 	mov	a,r7
      0001A9 34 02            [12]  661 	addc	a,#(_smgduan >> 8)
      0001AB F5 83            [12]  662 	mov	dph,a
      0001AD E4               [12]  663 	clr	a
      0001AE 93               [24]  664 	movc	a,@a+dptr
      0001AF FF               [12]  665 	mov	r7,a
      0001B0 8F 11            [24]  666 	mov	(_DisplayData + 0x0006),r7
                                    667 ;	main.c:56: DisplayData[7]=smgduan[ssec%10];
      0001B2 AE 08            [24]  668 	mov	r6,_ssec
      0001B4 7F 00            [12]  669 	mov	r7,#0x00
      0001B6 75 13 0A         [24]  670 	mov	__modsint_PARM_2,#0x0a
                                    671 ;	1-genFromRTrack replaced	mov	(__modsint_PARM_2 + 1),#0x00
      0001B9 8F 14            [24]  672 	mov	(__modsint_PARM_2 + 1),r7
      0001BB 8E 82            [24]  673 	mov	dpl,r6
      0001BD 8F 83            [24]  674 	mov	dph,r7
      0001BF 12 02 87         [24]  675 	lcall	__modsint
      0001C2 AE 82            [24]  676 	mov	r6,dpl
      0001C4 AF 83            [24]  677 	mov	r7,dph
      0001C6 EE               [12]  678 	mov	a,r6
      0001C7 24 F9            [12]  679 	add	a,#_smgduan
      0001C9 F5 82            [12]  680 	mov	dpl,a
      0001CB EF               [12]  681 	mov	a,r7
      0001CC 34 02            [12]  682 	addc	a,#(_smgduan >> 8)
      0001CE F5 83            [12]  683 	mov	dph,a
      0001D0 E4               [12]  684 	clr	a
      0001D1 93               [24]  685 	movc	a,@a+dptr
      0001D2 FF               [12]  686 	mov	r7,a
      0001D3 8F 12            [24]  687 	mov	(_DisplayData + 0x0007),r7
                                    688 ;	main.c:57: }
      0001D5 22               [24]  689 	ret
                                    690 ;------------------------------------------------------------
                                    691 ;Allocation info for local variables in function 'Timer0'
                                    692 ;------------------------------------------------------------
                                    693 ;	main.c:59: void Timer0() __interrupt 1
                                    694 ;	-----------------------------------------
                                    695 ;	 function Timer0
                                    696 ;	-----------------------------------------
      0001D6                        697 _Timer0:
      0001D6 C0 E0            [24]  698 	push	acc
      0001D8 C0 D0            [24]  699 	push	psw
                                    700 ;	main.c:61: TH0=0xd8;	//1101 1000
      0001DA 75 8C D8         [24]  701 	mov	_TH0,#0xd8
                                    702 ;	main.c:62: TL0=0xf0;	//1111 0000
      0001DD 75 8A F0         [24]  703 	mov	_TL0,#0xf0
                                    704 ;	main.c:63: ssec++;
      0001E0 05 08            [12]  705 	inc	_ssec
                                    706 ;	main.c:64: if(ssec>=100)
      0001E2 74 9C            [12]  707 	mov	a,#0x100 - 0x64
      0001E4 25 08            [12]  708 	add	a,_ssec
      0001E6 50 19            [24]  709 	jnc	00107$
                                    710 ;	main.c:66: ssec=0;
      0001E8 75 08 00         [24]  711 	mov	_ssec,#0x00
                                    712 ;	main.c:67: sec++;
      0001EB 05 09            [12]  713 	inc	_sec
                                    714 ;	main.c:68: if(sec>=60)
      0001ED 74 C4            [12]  715 	mov	a,#0x100 - 0x3c
      0001EF 25 09            [12]  716 	add	a,_sec
      0001F1 50 0E            [24]  717 	jnc	00107$
                                    718 ;	main.c:70: sec=0;
      0001F3 75 09 00         [24]  719 	mov	_sec,#0x00
                                    720 ;	main.c:71: min++;
      0001F6 05 0A            [12]  721 	inc	_min
                                    722 ;	main.c:72: if(min>=60) min=0;
      0001F8 74 C4            [12]  723 	mov	a,#0x100 - 0x3c
      0001FA 25 0A            [12]  724 	add	a,_min
      0001FC 50 03            [24]  725 	jnc	00107$
      0001FE 75 0A 00         [24]  726 	mov	_min,#0x00
      000201                        727 00107$:
                                    728 ;	main.c:75: }
      000201 D0 D0            [24]  729 	pop	psw
      000203 D0 E0            [24]  730 	pop	acc
      000205 32               [24]  731 	reti
                                    732 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    733 ;	eliminated unneeded push/pop dpl
                                    734 ;	eliminated unneeded push/pop dph
                                    735 ;	eliminated unneeded push/pop b
                                    736 ;------------------------------------------------------------
                                    737 ;Allocation info for local variables in function 'main'
                                    738 ;------------------------------------------------------------
                                    739 ;	main.c:77: void main()
                                    740 ;	-----------------------------------------
                                    741 ;	 function main
                                    742 ;	-----------------------------------------
      000206                        743 _main:
                                    744 ;	main.c:79: Timer0Init();
      000206 12 00 ED         [24]  745 	lcall	_Timer0Init
                                    746 ;	main.c:80: while(1)
      000209                        747 00102$:
                                    748 ;	main.c:82: datapros();
      000209 12 00 FD         [24]  749 	lcall	_datapros
                                    750 ;	main.c:83: DigDisplay();
      00020C 12 00 6D         [24]  751 	lcall	_DigDisplay
                                    752 ;	main.c:85: }
      00020F 80 F8            [24]  753 	sjmp	00102$
                                    754 	.area CSEG    (CODE)
                                    755 	.area CONST   (CODE)
      0002F9                        756 _smgduan:
      0002F9 3F                     757 	.db #0x3f	; 63
      0002FA 06                     758 	.db #0x06	; 6
      0002FB 5B                     759 	.db #0x5b	; 91
      0002FC 4F                     760 	.db #0x4f	; 79	'O'
      0002FD 66                     761 	.db #0x66	; 102	'f'
      0002FE 6D                     762 	.db #0x6d	; 109	'm'
      0002FF 7D                     763 	.db #0x7d	; 125
      000300 07                     764 	.db #0x07	; 7
      000301 7F                     765 	.db #0x7f	; 127
      000302 6F                     766 	.db #0x6f	; 111	'o'
      000303 77                     767 	.db #0x77	; 119	'w'
      000304 7C                     768 	.db #0x7c	; 124
      000305 39                     769 	.db #0x39	; 57	'9'
      000306 5E                     770 	.db #0x5e	; 94
      000307 79                     771 	.db #0x79	; 121	'y'
      000308 71                     772 	.db #0x71	; 113	'q'
      000309 00                     773 	.db 0x00
                                    774 	.area XINIT   (CODE)
                                    775 	.area CABS    (ABS,CODE)
