#include<8052.h>

#define LED1 P2_0
#define LED2 P2_1
#define LED3 P2_2
#define LED4 P2_3
#define LED5 P2_4
#define LED6 P2_5
#define LED7 P2_6
#define LED8 P2_7

unsigned char k=0;
void keyscan()
{
	unsigned int i;
				//P7-->P4 高位 从上让下 
				//P3-->P0 低位 从左让右
	P1=0x0f;		//00001111
	if(P1!=0x0f);
	{
		for(i=0;i<1000;i++);
		if(P1!=0x0f);		//00001111 检测列
		{
			switch(P1)
			{
				case(0x07):k=0;break;	//00000111
				case(0x0B):k=1;break;	//00001011
				case(0x0D):k=2;break;	//00001101
				case(0x0E):k=3;break;	//00001110
			}
			P1=0xf0;		//11110000 检测行
			switch(P1)
			{
			case(0x70):k+=0;break;	//01110000
			case(0xB0):k+=10;break;	//10110000
			case(0xD0):k+=20;break;	//11010000
			case(0xE0):k+=30;break;	//11100000
			}
		}		
		P2=0xff;
	}
}

void main()
{
	while(1)
	{
		keyscan();
		switch(k)				//通过相加数字来确定按键
		{
			case(0):LED1=!LED1;break;
			case(1):LED2=!LED2;break;
			case(2):LED3=!LED3;break;
			case(3):LED4=!LED4;break;
			case(10):LED5=!LED5;break;
			case(11):LED6=!LED6;break;
			case(12):LED7=!LED7;break;
			case(13):LED8=!LED8;break;
//			case(20):LED4=0;break;
//			case(21):LED5=0;break;
//			case(22):LED6=0;break;
//			case(23):LED7=0;break;
//			case(30):LED8=0;break;
//			case(31):LED5=0;break;
//			case(32):LED5=0;break;
//			case(33):LED6=0;break;
		}
	}
}
