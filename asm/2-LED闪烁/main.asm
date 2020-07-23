.globl P2_0
.globl delay
.area rseg (abs,data)
.org 0x0000
P2_0=0x00A0
start:
leding:
clr P2_0
mov cx, 1000
timedelay:
loop:timedelay
setb P2_0
loop:ledring
