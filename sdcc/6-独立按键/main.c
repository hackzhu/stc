#include <8052.h>

void delay(unsigned int i)
{
	while(i--);
}


void main()
{
	P2_0=1;
	while(1)
	{
		if(P3_0==0)
		{
			delay(1000);
			if(P3_0==0) P2_0=!P2_0;
		}
	}
}
