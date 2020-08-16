include "8052.h"

void UsartInit();

void main()
{
	UsartInit();
	while(1);
}

void UsartInit()
{
	EA=1;	//打开中断总开关;

}

