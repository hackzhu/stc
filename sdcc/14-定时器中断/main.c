#include "8052.h"
//注释的是定时器1

void Timer0Init()
{
	EA=1;		//打开中断总开关

	TMOD=0x01;	//选择为定时器0模式，工作方式1，仅用TR0打开启动。0000 0001
	TMOD=0x10;	//选择为定时器0模式，工作方式1，仅用TR0打开启动。0001 0000
//方式0：13位：11111111 xxx11111
//方式1: 16位：11111111 11111111
//方式2:  8位: xxxxxxxx 11111111 //xxxxxxxx存储初值
//方式3:2x8位
	TR0=1;		//打开定时器0
//	TR1=1;		//打开定时器1
	ET0=1;		//打开定时器0中断
//	ET1=1;		//打开定时器1中断


//给定时器0赋初值
	TH0=0xfc;	//1111 1100
	TL0=0x18;	//0001 1000
//给定时器1赋初值
//	TH1=0xfc;	
//	TL1=0x18;
}


void Timer0() __interrupt 1		//定时器0函数
//void Timer1() __interrupt 3		//定时器1函数
{
	static unsigned int i;	
	TH0=0xfc;	//1111 1100
	TL0=0x18;	//0001 1000
//	TH1=0xfc;	
//	TL1=0x18;
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
