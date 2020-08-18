#include "lcd.h"


unsigned char disp[]=" Pechin Science ";

void main()
{
	unsigned char i;
	lcdinit();
	for(i=0;i<16;i++) lcdwritedate(disp[i]);
	while(1);

}
