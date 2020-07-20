#include <8052.h>
//74hc595
#define	SER   P3_4	//串行数据输入
#define	RCLK  P3_5	//存储寄存器时钟输入 
#define SRCLK P3_6	//移位寄存器时钟输入 

#define LED1  P0_7	//第一列
#define _nop_() __asm NOP __endasm	//_nop_()  

void hc595(unsigned char dat)
{
	unsigned char a;
	SRCLK=0;
	RCLK=0;
	for(a=0;a<8;a++)	//发送8位数
	{
		SER= dat >> 7;	//读取最高位	
		dat <<= 1;	//改变最高位

		SRCLK=1;	//0 --> 1 上升沿	实现移位
		_nop_();	//执行一条空指令
		_nop_();	//595通信需要时间
		SRCLK=0;	//1 --> 0 下降沿
	}
	RCLK=1;
	_nop_();
	_nop_();
	RCLK=0;
}

void main()
{
	LED1=0;		
	while(1) hc595(0x80);
}
