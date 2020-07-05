#include<8052.h>

void main()
{
	unsigned int i=0,j=0;
//	P2=0xfe;
	for(i=0;i<30000;i++);
	while(1)
	{
		for(j=0;j<8;j++)
		{
			P2=0xfe<<i;
			for(i=0;i<60000;i++);
		}
	}
}
