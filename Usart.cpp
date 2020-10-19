
/*#include "Usart.h"

volatile uint8_t flag2=0;
volatile char buff1[10];
char test=0;
  int cnt=0;
  uint8_t getcdatacnt=0;
  mbed::UnbufferedSerial pc(USBTX, USBRX,115200);

uint8_t Rx_getc(char data)
{
      if(data !=0x0d)
            buff1[getcdatacnt++] = data;
        else 
        {
            buff1[getcdatacnt]= '\0';
            getcdatacnt=0;
        }
    return getcdatacnt;

}
int j=0;
 void ISR_Rx()
 {
   char databyte;
   char buf[20];
   pc.read(&databyte,1);

    if (databyte != '\n')
        buff1[j++] = databyte;
    else 
    {
        buff1[j] = '\0';
        flag2 = 1;
        j=0;    
    }
 }*/