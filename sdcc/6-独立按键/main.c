#include "8052.h"

#define KEY2 P3_0
#define LED1 P2_0

void delay(unsigned int i)
{
	while(i--);
}


void main()
{
	while(1)
	{
		if(KEY2==0)
		{
			delay(1000);
			if(KEY2==0) LED1=!LED1;
			while(!KEY2);
		}
	}
}
