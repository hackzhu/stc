#include"8052.h"

#define LSA P2_2
#define LSB P2_3
#define LSC P2_4

void DigDisplay()
{
	unsigned char i,k;	//unsigned char:0~255
	unsigned char __code smgduan[17]={0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x77,0x7c,0x39,0x5e,0x79,0x71};	//共阴数码管的真值表:0~F  keil:code --> sdcc:__code
	for(i=0;i<8;i++)
	{
		switch(i)	 //位选，选择点亮的数码管，
		{
			case(0):LSA=1;LSB=1;LSC=1; break;//显示第0位 111
			case(1):LSA=0;LSB=1;LSC=1; break;//显示第1位 011
			case(2):LSA=1;LSB=0;LSC=1; break;//显示第2位 101
			case(3):LSA=0;LSB=0;LSC=1; break;//显示第3位 001
			case(4):LSA=1;LSB=1;LSC=0; break;//显示第4位 110
			case(5):LSA=0;LSB=1;LSC=0; break;//显示第5位 010
			case(6):LSA=1;LSB=0;LSC=0; break;//显示第6位 100
			case(7):LSA=0;LSB=0;LSC=0; break;//显示第7位 000
		}
		P0=smgduan[i];//发送段码
		for(k=0;k<100;k++); //间隔一段时间扫描	
		P0=0x00;//消隐
	}
}


void main()
{
	while(1) DigDisplay();
}
