#include "8052.h"

void Timer0Init()
{
	EA=1;		//打开中断总开关

	TMOD=0x01;	//选择为定时器0模式，工作方式1，仅用TR0打开启动。
//方式0：13位：11111111 xxx11111
//方式1: 16位：11111111 11111111
//方式2:  8位: xxxxxxxx 11111111 //xxxxxxxx存储初值
//方式3:2x8位
	TR0=1;		//打开定时器
	ET0=1;		//打开定时器0中断


//给定时器赋初值
	TH0=0xfc;	//1111 1100
	TL0=0x18;	//0001 1000
}


void Timer0() __interrupt 1		//定时器函数
{
	static unsigned int i;	
	TH0=0xfc;	//1111 1100
	TL0=0x18;	//0001 1000
	i++;
	if(i==1000)
	{
	i=0;
	P2_0=!P2_0;
	}
}


void main()
{
	Timer0Init();
	while(1);
}
