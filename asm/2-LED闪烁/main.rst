                                      1 .globl P2_0
                                      2 .area rseg (abs,data)
      000000                          3 .org 0x0000
                           0000A0     4 P2_0=0x00A0
      000000                          5 start:
      000000 C2 A0            [12]    6 loop:clr P2_0
                                      7 
