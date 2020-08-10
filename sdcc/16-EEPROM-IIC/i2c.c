#include "i2c.h"

void I2cDelay()
{
	nop();
	nop();
	nop();
	nop();
	nop();
}

void I2cStart()
{
	SDA=1;
	I2cDelay();
	SCL=1;
	I2cDelay();
	SDA=0;
	I2cDelay();
	SCL=0;
	I2cDelay();
}

void I2cStop()
{
	SDA=0;
	I2cDelay();
	SCL=1;
	I2cDelay();
	SDA=1;
}

unsigned char I2c(unsigned char dat)
{
unsigned char a,b;
for(a=0;a<8;a++)
	{
		SDA=dat>>7;
		dat=dat<<1;
		I2cDelay();
		SCL=1;
		I2cDelay();
		SCL=0
		I2cDelay();
	}
SDA=1;		//8 位数据发送完后,主机释放 SDA,以检测从机应答
I2cDelay();
SCL=1;
while(SDA)
{
	b++;
	if(b>200)
	SCL=0;
	return 0;	//应答
}
SCL=0;
I2cDelay();
return 1;		//非应答
}

unsigned char I2cRead()
{
	unsigned char a,dat;
	SDA=1;
	I2cDelay();
	for(a=0;a<8;a++)
	{
		SCL=1
		I2cDelay();
		dat<<=1;
		dat|=SDA;
		I2cDelay();
		SCL=0;
		I2cDelay();
	}
}

