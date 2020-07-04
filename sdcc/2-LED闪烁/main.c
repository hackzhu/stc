#include <8052.h>

void main()
{
	unsigned int i=0;
	while(1)
	{
		P2_7=1;
		for(i=0;i<30000;i++);
		P2_7=0;
		for(i=0;i<30000;i++);
	}
}
