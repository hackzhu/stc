#include "lcd.h"

void lcddelay(unsigned int c)	//12MHz	误差0us
{
	unsigned char a,b;
	for(;c>0;c--) for(b=199;b>0;b--) for(a=1;a>0;a--);
}

void lcdwritecom(unsigned char com)
{
	lcde=0;			//使能？？？
	lcdrs=0;		//选择输入指令
	lcdrw=0;		//选择向LCD写入指令或数据
	lcddatepins=com;	//放入命令
	lcddelay(1);		//等待数据稳定
	lcde=1;			//写入时序
	lcddelay(5);		//保持时间
	lcde=0;			//下降沿 执行指令
}

void lcdwritedate(unsigned char dat)
{
	lcde=0;
	lcdrs=1;		//选择输入数据
	lcdrw=0;		//选择向LCD写入指令或数据
	lcddatepins=dat;	//写入数据
	lcddelay(1);
	lcde=1;
	lcddelay(5);
	lcde=0;
}

void lcdinit()
{
	lcdwritecom(0x38);	//0111 1000	设置下一个要存入数据法CGRAM的地址
	lcdwritecom(0x0c);	//0000 1100	显示功能开，无光标
	lcdwritecom(0x09);	//0000 0110	写入新数据后右移&显示屏不移动	写一个指针加1
	lcdwritecom(0x01);	//0000 0001	清屏
	lcdwritecom(0x80);	//1000 0000	设置下一个要存入数据法DDRAM的地址
}
