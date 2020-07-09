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
                                     11 	.globl _Timer0
                                     12 	.globl _main
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
      000008                        270 _Timer0_i_65536_2:
      000008                        271 	.ds 2
                                    272 ;--------------------------------------------------------
                                    273 ; overlayable items in internal ram 
                                    274 ;--------------------------------------------------------
                                    275 ;--------------------------------------------------------
                                    276 ; Stack segment in internal ram 
                                    277 ;--------------------------------------------------------
                                    278 	.area	SSEG
      00000A                        279 __start__stack:
      00000A                        280 	.ds	1
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
      000000 02 00 11         [24]  326 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  327 	reti
      000004                        328 	.ds	7
      00000B 02 00 7E         [24]  329 	ljmp	_Timer0
                                    330 ;--------------------------------------------------------
                                    331 ; global & static initialisations
                                    332 ;--------------------------------------------------------
                                    333 	.area HOME    (CODE)
                                    334 	.area GSINIT  (CODE)
                                    335 	.area GSFINAL (CODE)
                                    336 	.area GSINIT  (CODE)
                                    337 	.globl __sdcc_gsinit_startup
                                    338 	.globl __sdcc_program_startup
                                    339 	.globl __start__stack
                                    340 	.globl __mcs51_genXINIT
                                    341 	.globl __mcs51_genXRAMCLEAR
                                    342 	.globl __mcs51_genRAMCLEAR
                                    343 	.area GSFINAL (CODE)
      00006A 02 00 0E         [24]  344 	ljmp	__sdcc_program_startup
                                    345 ;--------------------------------------------------------
                                    346 ; Home
                                    347 ;--------------------------------------------------------
                                    348 	.area HOME    (CODE)
                                    349 	.area HOME    (CODE)
      00000E                        350 __sdcc_program_startup:
      00000E 02 00 6D         [24]  351 	ljmp	_main
                                    352 ;	return from main will return to caller
                                    353 ;--------------------------------------------------------
                                    354 ; code
                                    355 ;--------------------------------------------------------
                                    356 	.area CSEG    (CODE)
                                    357 ;------------------------------------------------------------
                                    358 ;Allocation info for local variables in function 'main'
                                    359 ;------------------------------------------------------------
                                    360 ;	main.c:3: void main()
                                    361 ;	-----------------------------------------
                                    362 ;	 function main
                                    363 ;	-----------------------------------------
      00006D                        364 _main:
                           000007   365 	ar7 = 0x07
                           000006   366 	ar6 = 0x06
                           000005   367 	ar5 = 0x05
                           000004   368 	ar4 = 0x04
                           000003   369 	ar3 = 0x03
                           000002   370 	ar2 = 0x02
                           000001   371 	ar1 = 0x01
                           000000   372 	ar0 = 0x00
                                    373 ;	main.c:5: EA=1;		//打开中断总开关
                                    374 ;	assignBit
      00006D D2 AF            [12]  375 	setb	_EA
                                    376 ;	main.c:7: TMOD=0x01;	//选择为定时器0模式，工作方式1，仅用TR0打开启动。
      00006F 75 89 01         [24]  377 	mov	_TMOD,#0x01
                                    378 ;	main.c:12: TR0=1;		//打开定时器
                                    379 ;	assignBit
      000072 D2 8C            [12]  380 	setb	_TR0
                                    381 ;	main.c:13: ET0=1;		//打开定时器0中断
                                    382 ;	assignBit
      000074 D2 A9            [12]  383 	setb	_ET0
                                    384 ;	main.c:17: TH0=0xfc;	//1111 1100
      000076 75 8C FC         [24]  385 	mov	_TH0,#0xfc
                                    386 ;	main.c:18: TL0=0x18;	//0001 1000
      000079 75 8A 18         [24]  387 	mov	_TL0,#0x18
                                    388 ;	main.c:19: while(1);
      00007C                        389 00102$:
                                    390 ;	main.c:20: }
      00007C 80 FE            [24]  391 	sjmp	00102$
                                    392 ;------------------------------------------------------------
                                    393 ;Allocation info for local variables in function 'Timer0'
                                    394 ;------------------------------------------------------------
                                    395 ;i                         Allocated with name '_Timer0_i_65536_2'
                                    396 ;------------------------------------------------------------
                                    397 ;	main.c:23: void Timer0() __interrupt 1		//定时器函数
                                    398 ;	-----------------------------------------
                                    399 ;	 function Timer0
                                    400 ;	-----------------------------------------
      00007E                        401 _Timer0:
      00007E C0 E0            [24]  402 	push	acc
      000080 C0 D0            [24]  403 	push	psw
                                    404 ;	main.c:26: TH0=0xfc;	//1111 1100
      000082 75 8C FC         [24]  405 	mov	_TH0,#0xfc
                                    406 ;	main.c:27: TL0=0x18;	//0001 1000
      000085 75 8A 18         [24]  407 	mov	_TL0,#0x18
                                    408 ;	main.c:28: i++;
      000088 05 08            [12]  409 	inc	_Timer0_i_65536_2
      00008A E4               [12]  410 	clr	a
      00008B B5 08 02         [24]  411 	cjne	a,_Timer0_i_65536_2,00109$
      00008E 05 09            [12]  412 	inc	(_Timer0_i_65536_2 + 1)
      000090                        413 00109$:
                                    414 ;	main.c:29: if(i==1000)
      000090 74 E8            [12]  415 	mov	a,#0xe8
      000092 B5 08 0C         [24]  416 	cjne	a,_Timer0_i_65536_2,00103$
      000095 74 03            [12]  417 	mov	a,#0x03
      000097 B5 09 07         [24]  418 	cjne	a,(_Timer0_i_65536_2 + 1),00103$
                                    419 ;	main.c:31: i=0;
      00009A E4               [12]  420 	clr	a
      00009B F5 08            [12]  421 	mov	_Timer0_i_65536_2,a
      00009D F5 09            [12]  422 	mov	(_Timer0_i_65536_2 + 1),a
                                    423 ;	main.c:32: P2_0=!P2_0;
      00009F B2 A0            [12]  424 	cpl	_P2_0
      0000A1                        425 00103$:
                                    426 ;	main.c:34: }
      0000A1 D0 D0            [24]  427 	pop	psw
      0000A3 D0 E0            [24]  428 	pop	acc
      0000A5 32               [24]  429 	reti
                                    430 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    431 ;	eliminated unneeded push/pop dpl
                                    432 ;	eliminated unneeded push/pop dph
                                    433 ;	eliminated unneeded push/pop b
                                    434 	.area CSEG    (CODE)
                                    435 	.area CONST   (CODE)
                                    436 	.area XINIT   (CODE)
                                    437 	.area CABS    (ABS,CODE)
