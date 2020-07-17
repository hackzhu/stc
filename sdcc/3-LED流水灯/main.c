#include<8052.h>

void main()
{
	unsigned int i=0,j=0;
	for(i=0;i<30000;i++);
	while(1)
	{
		for(j=0;j<8;j++)
		{
			P2=0xff<<j;	11111111 ...--> 11110000 ...--> 00000000
			for(i=0;i<30000;i++);
		}
	}
}
