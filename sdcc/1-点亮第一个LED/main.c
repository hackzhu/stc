#include"8052.h"

#define LED3 P2_2
//区别keil的P2^2

void main()
{
	while(1) LED3=0;	//	低电位可使LED灯点亮
}
