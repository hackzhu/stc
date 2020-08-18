#include "temp.h"

void delaylms(unsigned int y)
{
	unsigned int x;
	for(;y>0;y--) for(x=110;x>0;x--);
}

unsigned char ds18b20init()	//初始化成功返回1;失败返回0
{
	unsigned char i;
	DSPORT=0;		//P3_7
	i=70;
	while(i--);
	DSPORT=1;
	while(DSPORT)
	{
		delaylms(1);
		i++;
		if(i>5) return 0;
	}
	return 0;
}


