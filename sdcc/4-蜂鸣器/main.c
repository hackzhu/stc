#include "8052.h"

#define BEEP P1_5

unsigned int i;

void main()
{
while(1)
{
	BEEP=!BEEP;		//无法使用~对P1_5取反
	for(i=0;i<3000;i++);
}
}
