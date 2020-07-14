#include <8052.h>

unsigned char ssec,sec,min; //毫秒，秒，分
unsigned char DisplayData[8];
unsigned char __code smgduan[17]={0x3f,0x06,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x77,0x7c,0x39,0x5e,0x79,0x71};	//共阴数码管的真值表:0~F  keil:code --> sdcc:__code

void DigDisplay()
{
	unsigned char i,k;	//unsigned char:0~255
		for(i=0;i<8;i++)
		{
			switch(i)	 //位选，选择点亮的数码管，
			{
				case(0):P2_2=1;P2_3=1;P2_4=1; break;//显示第0位 111
				case(1):P2_2=0;P2_3=1;P2_4=1; break;//显示第1位 011
				case(2):P2_2=1;P2_3=0;P2_4=1; break;//显示第2位	101
				case(3):P2_2=0;P2_3=0;P2_4=1; break;//显示第3位	001
				case(4):P2_2=1;P2_3=1;P2_4=0; break;//显示第4位	110
				case(5):P2_2=0;P2_3=1;P2_4=0; break;//显示第5位	010
				case(6):P2_2=1;P2_3=0;P2_4=0; break;//显示第6位	100
				case(7):P2_2=0;P2_3=0;P2_4=0; break;//显示第7位	000
			}
			P0=DisplayData[i];//发送段码
			for(k=0;k<100;k++); //间隔一段时间扫描	
			P0=0x00;//消隐
		}
}

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
	TH0=0xd8;	//1101 1000
	TL0=0xf0;	//1111 0000
}

void datapros()
{
	DisplayData[0]=smgduan[min/10];
	DisplayData[1]=smgduan[min%10];
	DisplayData[2]=0x40;			//01000000  即显示数码管的g
	DisplayData[3]=smgduan[sec/10];
	DisplayData[4]=smgduan[sec%10];
	DisplayData[5]=0x40;
	DisplayData[6]=smgduan[ssec/10];
	DisplayData[7]=smgduan[ssec%10];
}

void Timer0() __interrupt 1
{
	TH0=0xd8;	//1101 1000
	TL0=0xf0;	//1111 0000
	ssec++;
	if(ssec>=100)
	{
		ssec=0;
		sec++;
		if(sec>=60)
		{
			sec=0;
			min++;
			if(min>=60) min=0;
		}
	}
}

void main()
{
	Timer0Init();
	while(1)
	{
		datapros();
		DigDisplay();
	}
}
