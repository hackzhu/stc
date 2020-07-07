#include<8052.h>

void main()
{
	unsigned int i;
	while(1)
	{
		P1=0x0f;
		if(P1!=0x0f);
		{
			for(i=0;i<1000;i++);
			if(P1!=0x0f);
			{
			switch(P1)
			{
				case(0x07):P2_0=0;break;
				case(0x0B):P2_1=0;break;
				case(0x0D):P2_2=0;break;
				case(0x0E):P2_3=0;break;

			}
			P1=0xf0;
			switch(P1)
			{
				case(0x70):P2_4=0;break;
				case(0xB0):P2_5=0;break;
				case(0xD0):P2_6=0;break;
				case(0xE0):P2_7=0;break;
			}
			}
		}		
	}
}
