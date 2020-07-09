#include <8052.h>

#define _nop_() __asm NOP __endasm  
//_nop_()

void main()
{
	while(1)
	{
		unsigned char a,dat1=0xfe,dat2=0x01;	//unsinged char 0-255
		P3_6=1;		//SPCLK
		P3_5=1;		//RCLK
	
		for(a=0;a<8;a++)
		{
			P3_4= dat1 >> 7;		//SER
			dat1 <<= 1;
			P3_6=0;
			_nop_();
			_nop_();
			P3_6=1;	
		}

		for(a=0;a<8;a++)
		{
			P3_4= dat2 >> 7;		//SER
			dat2 <<= 1;
			P3_6=0;
			_nop_();
			_nop_();
			P3_6=1;	
		}
		P3_5=0;
		_nop_();
		_nop_();
		P3_6=1;
	}
}
