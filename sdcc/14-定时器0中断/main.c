#include <8052.h>

void main()
{
	EA=1;		//打开中断总开关

	TR0=1;		//打开定时器
	ET0=1;		//打开定时器0中断
	TMOD=0x01;	//选择为定时器0模式，工作方式1，仅用TR0打开启动。
//给定时器赋初值
	TH0=0xfc;	//1111 1100
	TL0=0x18;	//0001 1000
	while(1);
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
