#include<8052.h>

#define _nop_() __asm NOP __endasm

unsigned char lednum;
unsigned int i;

void hc595(unsigned char dat)
{
	unsigned char a;
	P3_5=1;		//PCLK
	P3_6=1;		//SRCLK
	for(a=0;a<8;a++)
	{
		P3_4 = dat >> 7;
		dat <<= 1;
		
		P3_6=0;
		_nop_();
		_nop_();
		P3_6=1;	
	}
		P3_5=0;
		_nop_();
		_nop_();
		P3_5=1;	
}

void main()
{
	P0_7=0;
	lednum=~0x01;
	while(1)
	{
		hc595(lednum);
		lednum=_crol_(lednum, 1);
		for(i=0;i<50000;i++);
	}
}
