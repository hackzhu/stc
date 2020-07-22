#include"8052.h"
//注释的是外部中断1
void int0() __interrupt 0
//void int0() __interrupt 2
{
	unsigned int i=1000;
	while(i--);
	if(P3_2==0) P2_1=!P2_1;
}

void main()
{
	EA=1;		//打开中断总开关
	EX0=1;		//打开外部中断0开关
	IT0=1;		//跳变沿出发方式（下降沿）		
//	EX1=1;		//打开外部中断1开关
//	IT1=1;
	while(1);
}

