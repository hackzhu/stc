#include <8052.h>

unsigned int i;

void main()
{
while(1)
{
	P1_5=!P1_5;
	for(i=0;i<3000;i++);
}
}
