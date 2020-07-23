                                      1 .globl P2_0
                                      2 .globl delay
                                      3 .area rseg (abs,data)
      000000                          4 .org 0x0000
                           0000A0     5 P2_0=0x00A0
      000000                          6 start:
      000000                          7 nooverloop:
      000000 C2 A0            [12]    8 clr		P2_0
      000002 7E 30            [12]    9 	mov	r6,#0x30
      000004 7F 75            [12]   10 	mov	r7,#0x75
      000006                         11 00108$:
      000006 1E               [12]   12 	dec	r6
      000007 BE FF 01         [24]   13 	cjne	r6,#0xff,00136$
      00000A 1F               [12]   14 	dec	r7
      00000B                         15 00136$:
      00000B EE               [12]   16 	mov	a,r6
      00000C 4F               [12]   17 	orl	a,r7
      00000D 70 F7            [24]   18 	jnz	00108$
      00000F D2 A0            [12]   19 setb	P2_0
      000011 7E 30            [12]   20 	mov	r6,#0x30
      000013 7F 75            [12]   21 	mov	r7,#0x75
      000015                         22 00118$:
      000015 1E               [12]   23 	dec	r6
      000016 BE FF 01         [24]   24 	cjne	r6,#0xff,00116$
      000019 1F               [12]   25 	dec	r7
      00001A                         26 00116$:
      00001A EE               [12]   27 	mov	a,r6
      00001B 4F               [12]   28 	orl	a,r7
      00001C 70 F7            [24]   29 	jnz	00118$
      00001E 80 E0            [24]   30 sjmp nooverloop
