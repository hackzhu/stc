.globl P2_0
.globl delay
.area rseg (abs,data)
.org 0x0000
P2_0=0x00A0
start:
nooverloop:
clr		P2_0
	mov	r6,#0x30
	mov	r7,#0x75
00108$:
	dec	r6
	cjne	r6,#0xff,00136$
	dec	r7
00136$:
	mov	a,r6
	orl	a,r7
	jnz	00108$
setb	P2_0
	mov	r6,#0x30
	mov	r7,#0x75
00118$:
	dec	r6
	cjne	r6,#0xff,00116$
	dec	r7
00116$:
	mov	a,r6
	orl	a,r7
	jnz	00118$
sjmp nooverloop
