#include<8052.h>

#define SER   P3_4
#define RCLK  P3_5
#define SRCLK P3_6
#define	LED   P0
#define _nop_() __asm NOP __endasm	//_nop_() 

void hc595(unsigned char dat)
{
	unsigned char i;
	SRCLK=0;
	RCLK=0;
	for(i=0;i<8;i++)
	{
		SER = dat >> 7;
		dat <<=1;
		SRCLK=1;
		_nop_();
		_nop_();
		SRCLK=0;
	}
	RCLK=1;
	_nop_();
	_nop_();
	RCLK=0;
}

void main()
{
	unsigned char j;
	while(1)
	{
		LED=0xc3;	//1100 0011
		hc595(0x40);	//0100 0000
		for(j=0;j<100;j++);
	//	LED=0xff;	//使二极管不工作
		LED=0xfb;	//1111 1011
		hc595(0x7e);	//0111 1110
		for(j=0;j<100;j++);
		hc595(0x00);	//消隐，避免与下次循环发生联系
	}	
}	
