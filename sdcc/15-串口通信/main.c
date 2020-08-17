#include "8052.h"

void UsartInit();

void main()
{
	UsartInit();
	while(1);
}

void UsartInit()
{
	EA=1;		//打开中断总开关;
	ES=1;		//串口中断使能
	TMOD=0X20;	//设置计数器1工作方式2
	TR1=1;		//打开计数器1
	TH1=0XF3;	//计数器初始值设置，注意波特率是4800的
	TL1=0XF3;
	SCON=0X50;	//SM0=0;SM=1;设置为工作方式1   0101 0000
	//SM0=0;SM1=0;方式0
	//SM0=1;SM1=0;方式2
	//SM0=1;SM1=1;方式3
	PCON=0X80;	//波特率加倍 1000 0000

}

void Usart() __interrupt 4
{
	unsigned char receiveData;
	receiveData=SBUF;	//出去接收到的数据
	RI = 0;			//清除接收中断标志位
	SBUF=receiveData;	//将接收到的数据放入到发送寄存器
	while(!TI);		//等待发送数据完成
	TI=0;			//清除发送完成标志位
}
