#include <8052.h>

void delay(unsigned int i)
{
	while(i--);
}


void main()
{
	while(1)
	{
		if(P3_0==0)
		{
			delay(1000);
			if(P3_0==0) P2_0=!P2_0;
			while(!P3_0);
		}
	}
}
