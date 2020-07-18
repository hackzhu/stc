#include <8052.h>

#define LED8 P2_7

void main()
{
	unsigned int i=0;		//unsigned int:0~65535
	while(1)
	{
		LED8=1;
		for(i=0;i<30000;i++);	//延时函数
		LED8=0;
		for(i=0;i<30000;i++);
	}
}
