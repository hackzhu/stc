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
                                     12 	.globl _TF2
                                     13 	.globl _EXF2
                                     14 	.globl _RCLK
                                     15 	.globl _TCLK
                                     16 	.globl _EXEN2
                                     17 	.globl _TR2
                                     18 	.globl _C_T2
                                     19 	.globl _CP_RL2
                                     20 	.globl _T2CON_7
                                     21 	.globl _T2CON_6
                                     22 	.globl _T2CON_5
                                     23 	.globl _T2CON_4
                                     24 	.globl _T2CON_3
                                     25 	.globl _T2CON_2
                                     26 	.globl _T2CON_1
                                     27 	.globl _T2CON_0
                                     28 	.globl _PT2
                                     29 	.globl _ET2
                                     30 	.globl _CY
                                     31 	.globl _AC
                                     32 	.globl _F0
                                     33 	.globl _RS1
                                     34 	.globl _RS0
                                     35 	.globl _OV
                                     36 	.globl _F1
                                     37 	.globl _P
                                     38 	.globl _PS
                                     39 	.globl _PT1
                                     40 	.globl _PX1
                                     41 	.globl _PT0
                                     42 	.globl _PX0
                                     43 	.globl _RD
                                     44 	.globl _WR
                                     45 	.globl _T1
                                     46 	.globl _T0
                                     47 	.globl _INT1
                                     48 	.globl _INT0
                                     49 	.globl _TXD
                                     50 	.globl _RXD
                                     51 	.globl _P3_7
                                     52 	.globl _P3_6
                                     53 	.globl _P3_5
                                     54 	.globl _P3_4
                                     55 	.globl _P3_3
                                     56 	.globl _P3_2
                                     57 	.globl _P3_1
                                     58 	.globl _P3_0
                                     59 	.globl _EA
                                     60 	.globl _ES
                                     61 	.globl _ET1
                                     62 	.globl _EX1
                                     63 	.globl _ET0
                                     64 	.globl _EX0
                                     65 	.globl _P2_7
                                     66 	.globl _P2_6
                                     67 	.globl _P2_5
                                     68 	.globl _P2_4
                                     69 	.globl _P2_3
                                     70 	.globl _P2_2
                                     71 	.globl _P2_1
                                     72 	.globl _P2_0
                                     73 	.globl _SM0
                                     74 	.globl _SM1
                                     75 	.globl _SM2
                                     76 	.globl _REN
                                     77 	.globl _TB8
                                     78 	.globl _RB8
                                     79 	.globl _TI
                                     80 	.globl _RI
                                     81 	.globl _P1_7
                                     82 	.globl _P1_6
                                     83 	.globl _P1_5
                                     84 	.globl _P1_4
                                     85 	.globl _P1_3
                                     86 	.globl _P1_2
                                     87 	.globl _P1_1
                                     88 	.globl _P1_0
                                     89 	.globl _TF1
                                     90 	.globl _TR1
                                     91 	.globl _TF0
                                     92 	.globl _TR0
                                     93 	.globl _IE1
                                     94 	.globl _IT1
                                     95 	.globl _IE0
                                     96 	.globl _IT0
                                     97 	.globl _P0_7
                                     98 	.globl _P0_6
                                     99 	.globl _P0_5
                                    100 	.globl _P0_4
                                    101 	.globl _P0_3
                                    102 	.globl _P0_2
                                    103 	.globl _P0_1
                                    104 	.globl _P0_0
                                    105 	.globl _TH2
                                    106 	.globl _TL2
                                    107 	.globl _RCAP2H
                                    108 	.globl _RCAP2L
                                    109 	.globl _T2CON
                                    110 	.globl _B
                                    111 	.globl _ACC
                                    112 	.globl _PSW
                                    113 	.globl _IP
                                    114 	.globl _P3
                                    115 	.globl _IE
                                    116 	.globl _P2
                                    117 	.globl _SBUF
                                    118 	.globl _SCON
                                    119 	.globl _P1
                                    120 	.globl _TH1
                                    121 	.globl _TH0
                                    122 	.globl _TL1
                                    123 	.globl _TL0
                                    124 	.globl _TMOD
                                    125 	.globl _TCON
                                    126 	.globl _PCON
                                    127 	.globl _DPH
                                    128 	.globl _DPL
                                    129 	.globl _SP
                                    130 	.globl _P0
                                    131 ;--------------------------------------------------------
                                    132 ; special function registers
                                    133 ;--------------------------------------------------------
                                    134 	.area RSEG    (ABS,DATA)
      000000                        135 	.org 0x0000
                           000080   136 _P0	=	0x0080
                           000081   137 _SP	=	0x0081
                           000082   138 _DPL	=	0x0082
                           000083   139 _DPH	=	0x0083
                           000087   140 _PCON	=	0x0087
                           000088   141 _TCON	=	0x0088
                           000089   142 _TMOD	=	0x0089
                           00008A   143 _TL0	=	0x008a
                           00008B   144 _TL1	=	0x008b
                           00008C   145 _TH0	=	0x008c
                           00008D   146 _TH1	=	0x008d
                           000090   147 _P1	=	0x0090
                           000098   148 _SCON	=	0x0098
                           000099   149 _SBUF	=	0x0099
                           0000A0   150 _P2	=	0x00a0
                           0000A8   151 _IE	=	0x00a8
                           0000B0   152 _P3	=	0x00b0
                           0000B8   153 _IP	=	0x00b8
                           0000D0   154 _PSW	=	0x00d0
                           0000E0   155 _ACC	=	0x00e0
                           0000F0   156 _B	=	0x00f0
                           0000C8   157 _T2CON	=	0x00c8
                           0000CA   158 _RCAP2L	=	0x00ca
                           0000CB   159 _RCAP2H	=	0x00cb
                           0000CC   160 _TL2	=	0x00cc
                           0000CD   161 _TH2	=	0x00cd
                                    162 ;--------------------------------------------------------
                                    163 ; special function bits
                                    164 ;--------------------------------------------------------
                                    165 	.area RSEG    (ABS,DATA)
      000000                        166 	.org 0x0000
                           000080   167 _P0_0	=	0x0080
                           000081   168 _P0_1	=	0x0081
                           000082   169 _P0_2	=	0x0082
                           000083   170 _P0_3	=	0x0083
                           000084   171 _P0_4	=	0x0084
                           000085   172 _P0_5	=	0x0085
                           000086   173 _P0_6	=	0x0086
                           000087   174 _P0_7	=	0x0087
                           000088   175 _IT0	=	0x0088
                           000089   176 _IE0	=	0x0089
                           00008A   177 _IT1	=	0x008a
                           00008B   178 _IE1	=	0x008b
                           00008C   179 _TR0	=	0x008c
                           00008D   180 _TF0	=	0x008d
                           00008E   181 _TR1	=	0x008e
                           00008F   182 _TF1	=	0x008f
                           000090   183 _P1_0	=	0x0090
                           000091   184 _P1_1	=	0x0091
                           000092   185 _P1_2	=	0x0092
                           000093   186 _P1_3	=	0x0093
                           000094   187 _P1_4	=	0x0094
                           000095   188 _P1_5	=	0x0095
                           000096   189 _P1_6	=	0x0096
                           000097   190 _P1_7	=	0x0097
                           000098   191 _RI	=	0x0098
                           000099   192 _TI	=	0x0099
                           00009A   193 _RB8	=	0x009a
                           00009B   194 _TB8	=	0x009b
                           00009C   195 _REN	=	0x009c
                           00009D   196 _SM2	=	0x009d
                           00009E   197 _SM1	=	0x009e
                           00009F   198 _SM0	=	0x009f
                           0000A0   199 _P2_0	=	0x00a0
                           0000A1   200 _P2_1	=	0x00a1
                           0000A2   201 _P2_2	=	0x00a2
                           0000A3   202 _P2_3	=	0x00a3
                           0000A4   203 _P2_4	=	0x00a4
                           0000A5   204 _P2_5	=	0x00a5
                           0000A6   205 _P2_6	=	0x00a6
                           0000A7   206 _P2_7	=	0x00a7
                           0000A8   207 _EX0	=	0x00a8
                           0000A9   208 _ET0	=	0x00a9
                           0000AA   209 _EX1	=	0x00aa
                           0000AB   210 _ET1	=	0x00ab
                           0000AC   211 _ES	=	0x00ac
                           0000AF   212 _EA	=	0x00af
                           0000B0   213 _P3_0	=	0x00b0
                           0000B1   214 _P3_1	=	0x00b1
                           0000B2   215 _P3_2	=	0x00b2
                           0000B3   216 _P3_3	=	0x00b3
                           0000B4   217 _P3_4	=	0x00b4
                           0000B5   218 _P3_5	=	0x00b5
                           0000B6   219 _P3_6	=	0x00b6
                           0000B7   220 _P3_7	=	0x00b7
                           0000B0   221 _RXD	=	0x00b0
                           0000B1   222 _TXD	=	0x00b1
                           0000B2   223 _INT0	=	0x00b2
                           0000B3   224 _INT1	=	0x00b3
                           0000B4   225 _T0	=	0x00b4
                           0000B5   226 _T1	=	0x00b5
                           0000B6   227 _WR	=	0x00b6
                           0000B7   228 _RD	=	0x00b7
                           0000B8   229 _PX0	=	0x00b8
                           0000B9   230 _PT0	=	0x00b9
                           0000BA   231 _PX1	=	0x00ba
                           0000BB   232 _PT1	=	0x00bb
                           0000BC   233 _PS	=	0x00bc
                           0000D0   234 _P	=	0x00d0
                           0000D1   235 _F1	=	0x00d1
                           0000D2   236 _OV	=	0x00d2
                           0000D3   237 _RS0	=	0x00d3
                           0000D4   238 _RS1	=	0x00d4
                           0000D5   239 _F0	=	0x00d5
                           0000D6   240 _AC	=	0x00d6
                           0000D7   241 _CY	=	0x00d7
                           0000AD   242 _ET2	=	0x00ad
                           0000BD   243 _PT2	=	0x00bd
                           0000C8   244 _T2CON_0	=	0x00c8
                           0000C9   245 _T2CON_1	=	0x00c9
                           0000CA   246 _T2CON_2	=	0x00ca
                           0000CB   247 _T2CON_3	=	0x00cb
                           0000CC   248 _T2CON_4	=	0x00cc
                           0000CD   249 _T2CON_5	=	0x00cd
                           0000CE   250 _T2CON_6	=	0x00ce
                           0000CF   251 _T2CON_7	=	0x00cf
                           0000C8   252 _CP_RL2	=	0x00c8
                           0000C9   253 _C_T2	=	0x00c9
                           0000CA   254 _TR2	=	0x00ca
                           0000CB   255 _EXEN2	=	0x00cb
                           0000CC   256 _TCLK	=	0x00cc
                           0000CD   257 _RCLK	=	0x00cd
                           0000CE   258 _EXF2	=	0x00ce
                           0000CF   259 _TF2	=	0x00cf
                                    260 ;--------------------------------------------------------
                                    261 ; overlayable register banks
                                    262 ;--------------------------------------------------------
                                    263 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        264 	.ds 8
                                    265 ;--------------------------------------------------------
                                    266 ; internal ram data
                                    267 ;--------------------------------------------------------
                                    268 	.area DSEG    (DATA)
                                    269 ;--------------------------------------------------------
                                    270 ; overlayable items in internal ram 
                                    271 ;--------------------------------------------------------
                                    272 	.area	OSEG    (OVR,DATA)
                                    273 ;--------------------------------------------------------
                                    274 ; Stack segment in internal ram 
                                    275 ;--------------------------------------------------------
                                    276 	.area	SSEG
      000008                        277 __start__stack:
      000008                        278 	.ds	1
                                    279 
                                    280 ;--------------------------------------------------------
                                    281 ; indirectly addressable internal ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area ISEG    (DATA)
                                    284 ;--------------------------------------------------------
                                    285 ; absolute internal ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area IABS    (ABS,DATA)
                                    288 	.area IABS    (ABS,DATA)
                                    289 ;--------------------------------------------------------
                                    290 ; bit data
                                    291 ;--------------------------------------------------------
                                    292 	.area BSEG    (BIT)
                                    293 ;--------------------------------------------------------
                                    294 ; paged external ram data
                                    295 ;--------------------------------------------------------
                                    296 	.area PSEG    (PAG,XDATA)
                                    297 ;--------------------------------------------------------
                                    298 ; external ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area XSEG    (XDATA)
                                    301 ;--------------------------------------------------------
                                    302 ; absolute external ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area XABS    (ABS,XDATA)
                                    305 ;--------------------------------------------------------
                                    306 ; external initialized ram data
                                    307 ;--------------------------------------------------------
                                    308 	.area XISEG   (XDATA)
                                    309 	.area HOME    (CODE)
                                    310 	.area GSINIT0 (CODE)
                                    311 	.area GSINIT1 (CODE)
                                    312 	.area GSINIT2 (CODE)
                                    313 	.area GSINIT3 (CODE)
                                    314 	.area GSINIT4 (CODE)
                                    315 	.area GSINIT5 (CODE)
                                    316 	.area GSINIT  (CODE)
                                    317 	.area GSFINAL (CODE)
                                    318 	.area CSEG    (CODE)
                                    319 ;--------------------------------------------------------
                                    320 ; interrupt vector 
                                    321 ;--------------------------------------------------------
                                    322 	.area HOME    (CODE)
      000000                        323 __interrupt_vect:
      000000 02 00 06         [24]  324 	ljmp	__sdcc_gsinit_startup
                                    325 ;--------------------------------------------------------
                                    326 ; global & static initialisations
                                    327 ;--------------------------------------------------------
                                    328 	.area HOME    (CODE)
                                    329 	.area GSINIT  (CODE)
                                    330 	.area GSFINAL (CODE)
                                    331 	.area GSINIT  (CODE)
                                    332 	.globl __sdcc_gsinit_startup
                                    333 	.globl __sdcc_program_startup
                                    334 	.globl __start__stack
                                    335 	.globl __mcs51_genXINIT
                                    336 	.globl __mcs51_genXRAMCLEAR
                                    337 	.globl __mcs51_genRAMCLEAR
                                    338 	.area GSFINAL (CODE)
      00005F 02 00 03         [24]  339 	ljmp	__sdcc_program_startup
                                    340 ;--------------------------------------------------------
                                    341 ; Home
                                    342 ;--------------------------------------------------------
                                    343 	.area HOME    (CODE)
                                    344 	.area HOME    (CODE)
      000003                        345 __sdcc_program_startup:
      000003 02 00 62         [24]  346 	ljmp	_main
                                    347 ;	return from main will return to caller
                                    348 ;--------------------------------------------------------
                                    349 ; code
                                    350 ;--------------------------------------------------------
                                    351 	.area CSEG    (CODE)
                                    352 ;------------------------------------------------------------
                                    353 ;Allocation info for local variables in function 'main'
                                    354 ;------------------------------------------------------------
                                    355 ;i                         Allocated to registers r5 r6 
                                    356 ;k                         Allocated to registers r7 
                                    357 ;------------------------------------------------------------
                                    358 ;	main.c:3: void main()
                                    359 ;	-----------------------------------------
                                    360 ;	 function main
                                    361 ;	-----------------------------------------
      000062                        362 _main:
                           000007   363 	ar7 = 0x07
                           000006   364 	ar6 = 0x06
                           000005   365 	ar5 = 0x05
                           000004   366 	ar4 = 0x04
                           000003   367 	ar3 = 0x03
                           000002   368 	ar2 = 0x02
                           000001   369 	ar1 = 0x01
                           000000   370 	ar0 = 0x00
                                    371 ;	main.c:6: unsigned char k=0;
      000062 7F 00            [12]  372 	mov	r7,#0x00
                                    373 ;	main.c:7: while(1)
      000064                        374 00122$:
                                    375 ;	main.c:12: P1=0x0f;		//00001111
      000064 75 90 0F         [24]  376 	mov	_P1,#0x0f
                                    377 ;	main.c:13: if(P1!=0x0f);
      000067 E5 90            [12]  378 	mov	a,_P1
                                    379 ;	main.c:15: for(i=0;i<1000;i++);
      000069 7D E8            [12]  380 	mov	r5,#0xe8
      00006B 7E 03            [12]  381 	mov	r6,#0x03
      00006D                        382 00126$:
      00006D ED               [12]  383 	mov	a,r5
      00006E 24 FF            [12]  384 	add	a,#0xff
      000070 FB               [12]  385 	mov	r3,a
      000071 EE               [12]  386 	mov	a,r6
      000072 34 FF            [12]  387 	addc	a,#0xff
      000074 FC               [12]  388 	mov	r4,a
      000075 8B 05            [24]  389 	mov	ar5,r3
      000077 8C 06            [24]  390 	mov	ar6,r4
      000079 EB               [12]  391 	mov	a,r3
      00007A 4C               [12]  392 	orl	a,r4
      00007B 70 F0            [24]  393 	jnz	00126$
                                    394 ;	main.c:16: if(P1!=0x0f);		//00001111 检测列
      00007D E5 90            [12]  395 	mov	a,_P1
                                    396 ;	main.c:18: switch(P1)
      00007F AE 90            [24]  397 	mov	r6,_P1
      000081 BE 07 02         [24]  398 	cjne	r6,#0x07,00178$
      000084 80 0F            [24]  399 	sjmp	00102$
      000086                        400 00178$:
      000086 BE 0B 02         [24]  401 	cjne	r6,#0x0b,00179$
      000089 80 0E            [24]  402 	sjmp	00103$
      00008B                        403 00179$:
      00008B BE 0D 02         [24]  404 	cjne	r6,#0x0d,00180$
      00008E 80 0D            [24]  405 	sjmp	00104$
      000090                        406 00180$:
                                    407 ;	main.c:20: case(0x07):k=0;break;	//00000111
      000090 BE 0E 10         [24]  408 	cjne	r6,#0x0e,00106$
      000093 80 0C            [24]  409 	sjmp	00105$
      000095                        410 00102$:
      000095 7F 00            [12]  411 	mov	r7,#0x00
                                    412 ;	main.c:21: case(0x0B):k=1;break;	//00001011
      000097 80 0A            [24]  413 	sjmp	00106$
      000099                        414 00103$:
      000099 7F 01            [12]  415 	mov	r7,#0x01
                                    416 ;	main.c:22: case(0x0D):k=2;break;	//00001101
      00009B 80 06            [24]  417 	sjmp	00106$
      00009D                        418 00104$:
      00009D 7F 02            [12]  419 	mov	r7,#0x02
                                    420 ;	main.c:23: case(0x0E):k=3;break;	//00001110
      00009F 80 02            [24]  421 	sjmp	00106$
      0000A1                        422 00105$:
      0000A1 7F 03            [12]  423 	mov	r7,#0x03
                                    424 ;	main.c:25: }
      0000A3                        425 00106$:
                                    426 ;	main.c:26: P1=0xf0;		//11110000 检测行
      0000A3 75 90 F0         [24]  427 	mov	_P1,#0xf0
                                    428 ;	main.c:27: switch(P1)
      0000A6 AE 90            [24]  429 	mov	r6,_P1
      0000A8 BE 70 02         [24]  430 	cjne	r6,#0x70,00182$
      0000AB 80 25            [24]  431 	sjmp	00111$
      0000AD                        432 00182$:
      0000AD BE B0 02         [24]  433 	cjne	r6,#0xb0,00183$
      0000B0 80 0A            [24]  434 	sjmp	00108$
      0000B2                        435 00183$:
      0000B2 BE D0 02         [24]  436 	cjne	r6,#0xd0,00184$
      0000B5 80 0D            [24]  437 	sjmp	00109$
      0000B7                        438 00184$:
                                    439 ;	main.c:30: case(0xB0):k+=10;break;	//10110000
      0000B7 BE E0 18         [24]  440 	cjne	r6,#0xe0,00111$
      0000BA 80 10            [24]  441 	sjmp	00110$
      0000BC                        442 00108$:
      0000BC 8F 06            [24]  443 	mov	ar6,r7
      0000BE 74 0A            [12]  444 	mov	a,#0x0a
      0000C0 2E               [12]  445 	add	a,r6
      0000C1 FF               [12]  446 	mov	r7,a
                                    447 ;	main.c:31: case(0xD0):k+=20;break;	//11010000
      0000C2 80 0E            [24]  448 	sjmp	00111$
      0000C4                        449 00109$:
      0000C4 8F 06            [24]  450 	mov	ar6,r7
      0000C6 74 14            [12]  451 	mov	a,#0x14
      0000C8 2E               [12]  452 	add	a,r6
      0000C9 FF               [12]  453 	mov	r7,a
                                    454 ;	main.c:32: case(0xE0):k+=30;break;	//11100000
      0000CA 80 06            [24]  455 	sjmp	00111$
      0000CC                        456 00110$:
      0000CC 8F 06            [24]  457 	mov	ar6,r7
      0000CE 74 1E            [12]  458 	mov	a,#0x1e
      0000D0 2E               [12]  459 	add	a,r6
      0000D1 FF               [12]  460 	mov	r7,a
                                    461 ;	main.c:33: }
      0000D2                        462 00111$:
                                    463 ;	main.c:36: P2=0xff;
      0000D2 75 A0 FF         [24]  464 	mov	_P2,#0xff
                                    465 ;	main.c:37: switch(k)				//通过相加数字来确定按键
      0000D5 EF               [12]  466 	mov	a,r7
      0000D6 24 F2            [12]  467 	add	a,#0xff - 0x0d
      0000D8 40 8A            [24]  468 	jc	00122$
      0000DA EF               [12]  469 	mov	a,r7
      0000DB 24 0A            [12]  470 	add	a,#(00187$-3-.)
      0000DD 83               [24]  471 	movc	a,@a+pc
      0000DE F5 82            [12]  472 	mov	dpl,a
      0000E0 EF               [12]  473 	mov	a,r7
      0000E1 24 12            [12]  474 	add	a,#(00188$-3-.)
      0000E3 83               [24]  475 	movc	a,@a+pc
      0000E4 F5 83            [12]  476 	mov	dph,a
      0000E6 E4               [12]  477 	clr	a
      0000E7 73               [24]  478 	jmp	@a+dptr
      0000E8                        479 00187$:
      0000E8 04                     480 	.db	00112$
      0000E9 09                     481 	.db	00113$
      0000EA 0E                     482 	.db	00114$
      0000EB 13                     483 	.db	00115$
      0000EC 64                     484 	.db	00122$
      0000ED 64                     485 	.db	00122$
      0000EE 64                     486 	.db	00122$
      0000EF 64                     487 	.db	00122$
      0000F0 64                     488 	.db	00122$
      0000F1 64                     489 	.db	00122$
      0000F2 18                     490 	.db	00116$
      0000F3 1D                     491 	.db	00117$
      0000F4 22                     492 	.db	00118$
      0000F5 27                     493 	.db	00119$
      0000F6                        494 00188$:
      0000F6 01                     495 	.db	00112$>>8
      0000F7 01                     496 	.db	00113$>>8
      0000F8 01                     497 	.db	00114$>>8
      0000F9 01                     498 	.db	00115$>>8
      0000FA 00                     499 	.db	00122$>>8
      0000FB 00                     500 	.db	00122$>>8
      0000FC 00                     501 	.db	00122$>>8
      0000FD 00                     502 	.db	00122$>>8
      0000FE 00                     503 	.db	00122$>>8
      0000FF 00                     504 	.db	00122$>>8
      000100 01                     505 	.db	00116$>>8
      000101 01                     506 	.db	00117$>>8
      000102 01                     507 	.db	00118$>>8
      000103 01                     508 	.db	00119$>>8
                                    509 ;	main.c:39: case(0):P2_0=!P2_0;break;
      000104                        510 00112$:
      000104 B2 A0            [12]  511 	cpl	_P2_0
      000106 02 00 64         [24]  512 	ljmp	00122$
                                    513 ;	main.c:40: case(1):P2_1=!P2_1;break;
      000109                        514 00113$:
      000109 B2 A1            [12]  515 	cpl	_P2_1
      00010B 02 00 64         [24]  516 	ljmp	00122$
                                    517 ;	main.c:41: case(2):P2_2=!P2_2;break;
      00010E                        518 00114$:
      00010E B2 A2            [12]  519 	cpl	_P2_2
      000110 02 00 64         [24]  520 	ljmp	00122$
                                    521 ;	main.c:42: case(3):P2_3=!P2_3;break;
      000113                        522 00115$:
      000113 B2 A3            [12]  523 	cpl	_P2_3
      000115 02 00 64         [24]  524 	ljmp	00122$
                                    525 ;	main.c:43: case(10):P2_4=!P2_4;break;
      000118                        526 00116$:
      000118 B2 A4            [12]  527 	cpl	_P2_4
      00011A 02 00 64         [24]  528 	ljmp	00122$
                                    529 ;	main.c:44: case(11):P2_5=!P2_5;break;
      00011D                        530 00117$:
      00011D B2 A5            [12]  531 	cpl	_P2_5
      00011F 02 00 64         [24]  532 	ljmp	00122$
                                    533 ;	main.c:45: case(12):P2_6=!P2_6;break;
      000122                        534 00118$:
      000122 B2 A6            [12]  535 	cpl	_P2_6
      000124 02 00 64         [24]  536 	ljmp	00122$
                                    537 ;	main.c:46: case(13):P2_7=!P2_7;break;
      000127                        538 00119$:
      000127 B2 A7            [12]  539 	cpl	_P2_7
                                    540 ;	main.c:55: }
                                    541 ;	main.c:57: }
      000129 02 00 64         [24]  542 	ljmp	00122$
                                    543 	.area CSEG    (CODE)
                                    544 	.area CONST   (CODE)
                                    545 	.area XINIT   (CODE)
                                    546 	.area CABS    (ABS,CODE)
