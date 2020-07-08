#include<8052.h>

void main()
{
	EA=1;
	EX0=1;
	IT0=1;
//	while(1);	
}

void int0() __interrupt 0
{
	unsigned int i=1000;
	while(i--);
	if(P3_2==0) P2_1=!P2_1;
}
