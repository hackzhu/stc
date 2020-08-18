#include "8052.h"
#define lcddatepins P0
#define lcde P2_7
#define lcdrw P2_5
#define lcdrs P2_6

void lcddelay(unsigned int c);
void lcdwritecom(unsigned char com);
void lcdwritedate(unsigned char dat);
void lcdinit();
