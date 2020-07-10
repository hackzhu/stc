#include<8052.h>

void main()
{
	unsigned int i;
	unsigned char k=0;
	while(1)
	{

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
		}		
		P2=0xff;
		switch(k)				//通过相加数字来确定按键
		{
			case(0):P2_0=!P2_0;break;
			case(1):P2_1=!P2_1;break;
			case(2):P2_2=!P2_2;break;
			case(3):P2_3=!P2_3;break;
			case(10):P2_4=!P2_4;break;
			case(11):P2_5=!P2_5;break;
			case(12):P2_6=!P2_6;break;
			case(13):P2_7=!P2_7;break;
//			case(20):P2_9=0;break;
//			case(21):P2_4=0;break;
//			case(22):P2_5=0;break;
//			case(23):P2_6=0;break;
//			case(30):P2_7=0;break;
//			case(31):P2_4=0;break;
//			case(32):P2_4=0;break;
//			case(33):P2_5=0;break;
		}
	}
}
