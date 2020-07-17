#include <8052.h>

void main()
{
	unsigned int i=0;		//unsigned int:0~65535
	while(1)
	{
		P2_7=1;
		for(i=0;i<30000;i++);	//延时函数
		P2_7=0;
		for(i=0;i<30000;i++);
	}
}
