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
	unsigned char a,b=0;
	for(a=0;a<8;a++)
	{
		SDA=dat>>7;
		dat=dat<<1;
		I2cDelay();
		SCL=1;
		I2cDelay();
		SCL=0;
		I2cDelay();
	}
	SDA=1;		//8 位数据发送完后,主机释放 SDA,以检测从机应答
	I2cDelay();
	SCL=1;
	while(SDA)
	{
		b++;
		if(b>200)
		{
		SCL=0;
		I2cDelay();
		return 0;	//应答
		}
	}
	SCL=0;
	I2cDelay();
	return 1;		//非应答
}

unsigned char I2cRead()
{
	unsigned char a,dat=0;
	SDA=1;
	I2cDelay();
	for(a=0;a<8;a++)
	{
		SCL=1;
		I2cDelay();
		dat<<=1;
		dat|=SDA;
		I2cDelay();
		SCL=0;
		I2cDelay();
	}
	return dat;
}

void At24c02Write(unsigned char addr,unsigned char dat)
{
	I2cStart();
	I2c(0xa0);	//发送写器件地址 P2_0 SDA
	I2c(addr);	//发送要写入的内存地址
	I2c(dat);	//发送数据
	I2cStop();
}

unsigned char At24c02Read(unsigned char addr)
{
	unsigned char num;
	I2cStart();
	I2c(0xa0);	//发送写器件地址 P2_0 SDA
	I2c(addr);	//发送要写入的内存地址
	I2cStart();
	I2c(0xa1);	//发送读器件地址 P2_1 SCL
	num=I2cRead();	//读取数据
	I2cStop();
	return num;
}
