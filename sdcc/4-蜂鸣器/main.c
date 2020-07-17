#include <8052.h>

unsigned int i;

void main()
{
while(1)
{
	P1_5=!P1_5;		//无法使用~对P1_5取反
	for(i=0;i<3000;i++);
}
}
