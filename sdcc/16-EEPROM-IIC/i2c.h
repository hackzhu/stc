#ifndef _I2C_H_
#define _I2C_H_
#include "8052.h"
#define _nop_() __asm NOP __endasm //_nop_()
#define SCL P2_1
#define SDA P2_0
void I2cDelay();
void I2cStart();
void I2cStop();
unsigned char I2c(unsigned char dat);
unsigned char I2cRead();
void At24c02Write(unsigned char addr,unsigned char dat);
unsigned char At24c02Read(unsigned char addr);
#endif
