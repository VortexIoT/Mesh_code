
/*#include "ISR.h"

volatile uint8_t flag2=0;
volatile char buff1[10];
char test=0;
int cnt=0;
uint8_t getcdatacnt=0;
mbed::UnbufferedSerial pc(USBTX, USBRX,115200);
I2C i2c(I2C_SDA,I2C_SCL);  //i2c init
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
 }





 
 void i2cinit()
 {
     i2c.frequency(100);
     
 }
    
void Sensor_write()
{
    char rhread = RH_READ;
    char readbuff[2];
  //  i2c.start();
    i2c.write(SENSOR_ADDR<<1,&rhread,1);
    i2c.read(SENSOR_ADDR<<1,readbuff,2);

    uint16_t Rh_reading = (((readbuff[0]<<8)|(readbuff[1]&0xFE)));

    uint16_t RH_percentage = (((125*Rh_reading)/65536)-6);

    printf("rhread := %d\n",RH_percentage);
  //  printf("rhread := %x %x %d  %d\n",readbuff[0],readbuff[1],Rh_reading,RH_percentage);


 //   i2c.stop();
}
void Sensor_Read_Temp()
{
    char rhread = TEMP_READ;
    char readbuff[2];
  //  i2c.start();
    i2c.write(SENSOR_ADDR<<1,&rhread,1);
    i2c.read(SENSOR_ADDR<<1,readbuff,2);

    uint16_t temp_reading = (((readbuff[0]<<8)|(readbuff[1]&0xFC)));
    uint16_t Temp_centigrade = (((175.72*temp_reading)/65536)-46.85);
    printf("tempread := %d\n",Temp_centigrade);
  //  printf("tempread := %x %x  %d  %d\n",readbuff[0],readbuff[1],temp_reading,Temp_centigrade);

    
 //   i2c.stop();
}*/