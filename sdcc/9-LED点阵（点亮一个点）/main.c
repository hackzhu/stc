#include <8052.h>

#define _nop_() __asm NOP __endasm  
//_nop_()

void main()
{
	P0_7=0;		//第一列
	P0_1=0;		//第六列
	while(1)
	{
		unsigned char a,dat1=0xfe,dat2=0x01;	//unsinged char 0-255
		P3_6=0;		//SPCLK 移位寄存器时钟输入 
		P3_5=0;		//RCLK 	存储寄存器时钟输入 
	
		for(a=0;a<8;a++)
		{
			P3_4= dat1 >> 7;		//SER 串行数据输入
			dat1 <<= 1;
			P3_6=1;
			_nop_();	//执行一条空指令
			_nop_();
			P3_6=0;	
		}

//		for(a=0;a<8;a++)
//		{
//			P3_4= dat2 >> 7;		//SER
//			dat2 <<= 1;
//			P3_6=0;
//			_nop_();
//			_nop_();
//			P3_6=1;	
//		}
		P3_5=0;
		_nop_();
		_nop_();
		P3_5=1;
	}
}
