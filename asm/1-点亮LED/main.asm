.globl P2_0;定义变量
.area RSEG (ABS,DATA);起始
.org 0x0000;起始
P2_0 = 0x00A0
start:
clr P2_0;低电平
sjmp $;无限循环
