#include "lcd.h"

void lcddelay(unsigned int c)	//12MHz
{
	unsigned char a,b;
	for(;c>0;c--) for(b=199;b>0;b--) for(a=1;a>0;a--);
}

void lcdwritecom(unsigned char com)
{
	lcde=0;
	lcdrs=0;
	lcdrw=0;
	lcddatepins=com;
	lcddelay(1);
	lcde=1;
	lcddelay(5);
	lcde=0;
}

void lcdwritedate(unsigned char dat)
{
lcde=0;
lcdrs=1;
lcdrw=0;
lcddatepins=dat;
lcddelay(1);
lcde=1;
lcddelay(5);
lcde=0;
}

void lcdinit()
{
	lcdwritecom(0x38);
	lcdwritecom(0x0c);
	lcdwritecom(0x06);
	lcdwritecom(0x01);
	lcdwritecom(0x80);

}
