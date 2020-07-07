/**************************************************************************************
实验现象：下载程序后"LED&交通灯模块"的D1-D8呈现流水灯效果
接线说明： 单片机-->LED&交通灯模块(具体接线图可见开发攻略对应实验的“实验现象”章节)
		   P00-->D1
		   P01-->D2	
		   ...
		   P07-->D8
注意事项：																				  
***************************************************************************************/

#include "reg52.h"			 //此文件中定义了单片机的一些特殊功能寄存器
#include<intrins.h>		//因为要用到左右移函数，所以加入这个头文件

typedef unsigned int u16;	  //对数据类型进行声明定义
typedef unsigned char u8;

#define led P2	   //将P2口定义为led 后面就可以使用led代替P2口

/*******************************************************************************
* 函 数 名         : delay
* 函数功能		   : 延时函数，i=1时，大约延时10us
*******************************************************************************/
void delay(u16 i)
{
	while(i--);	
}

/*******************************************************************************
* 函 数 名       : main
* 函数功能		 : 主函数
* 输    入       : 无
* 输    出    	 : 无
*******************************************************************************/
void main()
{
	u8 i;
	led=~0x01;
	delay(50000); //大约延时450ms	
	while(1)
	{	
		for(i=0;i<8;i++)
		{
			P2=~(0x01<<i);	 //将1右移i位，然后将结果赋值到P2口
			delay(50000); //大约延时450ms
		}

		
/*		for(i=0;i<7;i++)	 //将led左移一位
		{
			led=_crol_(led,1);
			delay(50000); //大约延时450ms	
		}
		for(i=0;i<7;i++)	//将led右移一位
		{
			led=_cror_(led,1);
			delay(50000); //大约延时450ms	
		}
*/
	}		
}
