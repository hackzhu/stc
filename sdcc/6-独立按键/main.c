#include <8052.h>

void main()
{
	unsigned int i;
	while(1)
	{
		if(P3_0==0)
		{
			for(i=0;i<1000;i++);
			if(P3_0==0) P2_0=0;
			while(!P3);
		}
	}
}
