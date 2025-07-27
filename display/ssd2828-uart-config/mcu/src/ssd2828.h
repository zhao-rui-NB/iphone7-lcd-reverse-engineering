#include <Arduino.h>

// 2828
// 3-wire SPI
// #define SSD2828_SCK_PIN 14
// #define SSD2828_RESET_PIN 27
// #define SSD2828_SDO_PIN 26
// #define SSD2828_CSX0_PIN 25
// #define SSD2828_SDI_PIN 33


#define SSD2828_SCK_PIN 27
#define SSD2828_RESET_PIN 26
#define SSD2828_SDO_PIN 25
#define SSD2828_CSX0_PIN 33
#define SSD2828_SDI_PIN 32

// port write define 
// #define port_write(port,pin,val) (port = (port & ~(1<<pin)) | ((val?1:0)<<pin))
#define ssd2828_sck(val) digitalWrite(SSD2828_SCK_PIN,val)
#define ssd2828_reset(val) digitalWrite(SSD2828_RESET_PIN,val)
// #define ssd2828_sdo(val) port_write(PORTD,4,val)
#define ssd2828_csx0(val) digitalWrite(SSD2828_CSX0_PIN,val)
#define ssd2828_sdi(val) digitalWrite(SSD2828_SDI_PIN,val)

// read pin 
// #define port_read(port,pin) ((port & (1<<pin))?1:0)
// #define port_read(port,pin) ((port>>pin)&1)
#define ssd2828_sdo() digitalRead(SSD2828_SDO_PIN)



void SSD_Reset(){
    ssd2828_csx0(HIGH);
    ssd2828_sck(LOW);
    ssd2828_sdi(LOW);

    delay(100);
    ssd2828_reset(HIGH);
    delay(100);
    ssd2828_reset(LOW);
    delay(300);
    ssd2828_reset(HIGH);
    delay(300);
}

// 9 bit SPI
void SSD_SPI_Write(uint16_t *buf,int length){
    // HAL_SPI_Transmit(&hspi1,buf,length,HAL_TIMEOUT);
    for(int i=0;i<length;i++){
        uint16_t send_bits = buf[i];
        for(int bit = 0; bit < 9; bit++){
            // digitalWrite(SSD2828_SDI_PIN, (send_bits & 0x100) ? HIGH : LOW);
            ssd2828_sdi((send_bits & 0x100) ? HIGH : LOW);
            delayMicroseconds(3);
            send_bits <<= 1;
            ssd2828_sck(HIGH);
            delayMicroseconds(3);
            ssd2828_sck(LOW);
            delayMicroseconds(3);
        }
        delayMicroseconds(6);
    }
}
// 9 bit SPI, read 8 bit data
void SSD_SPI_Read(int length, uint8_t *r){
    // HAL_SPI_Receive(&hspi1,r,length,HAL_TIMEOUT);
    for(int i=0;i<length;i++){
        uint8_t data = 0;
        for(int bit = 0; bit < 8; bit++){
            ssd2828_sck(HIGH);
            delayMicroseconds(3);
            data = (data << 1) | ssd2828_sdo();
            delayMicroseconds(3);
            ssd2828_sck(LOW);
            delayMicroseconds(3);
        }
        r[i]=data;
        delayMicroseconds(6);
    }
}

uint16_t SSD_SPI_ReadReg(uint8_t reg){
    ssd2828_csx0(LOW);
    delayMicroseconds(10);
    uint16_t tbuf[2] = {reg,0xfa};
    uint8_t rbuf[2];
    SSD_SPI_Write(tbuf,2);
    SSD_SPI_Read(2,rbuf);
    ssd2828_csx0(HIGH);
    delayMicroseconds(10);

    uint16_t reg_data = rbuf[0] | rbuf[1]<<8;
    return reg_data;
}

void SSD_SPI_WriteReg(uint8_t reg,uint16_t data){
    ssd2828_csx0(LOW);
    delayMicroseconds(10);
    uint16_t buf[3]={reg, 1<<8|(data&0xff), 1<<8|((data>>8)&0xff)};
    SSD_SPI_Write(buf,3);
    ssd2828_csx0(HIGH);
    delayMicroseconds(10);

}

void SSD_MIPI_WriteLongDCS(uint8_t reg,uint16_t* data,int len){
    // SSD_SPI_WriteReg(0xb7,0x0050);
    SSD_SPI_WriteReg(0xb8,0x0000);
    SSD_SPI_WriteReg(0xbc,len);
    ssd2828_csx0(LOW);
    delayMicroseconds(2);
    uint16_t b[2]={0xbf,1<<8|(uint16_t)reg};
    SSD_SPI_Write(b,2);
    uint16_t b1[1]={1<<8|(uint16_t)reg};
    SSD_SPI_Write(b1,1);
    for(int i=0;i<len-1;i++){
        uint16_t b2[1]={1<<8|data[i]};
        SSD_SPI_Write(b2,1);
    }
    ssd2828_csx0(HIGH);
    delayMicroseconds(2);
} 

void SSD_MIPI_WriteShortDCS(uint8_t reg,uint16_t data,int len){
    //    SSD_SPI_WriteReg(0xb7,0x0050,2);
    //    SSD_SPI_WriteReg(0xb8,0x0000,2);
    //
    //    SSD_SPI_WriteReg(0xbc,len,2);
    //    SSD_SPI_WriteReg(0xbf,reg|(data<<8),2);
        uint16_t b[2]={data&0xff,data>>8};
        SSD_MIPI_WriteLongDCS(reg,b,len);
    }

/*
void SSD_MIPI_WriteLongGeneric(uint8_t reg,uint16_t* data,int len){
    SSD_SPI_WriteReg(0xb7,0x0302,2);
    SSD_SPI_WriteReg(0xb8,0x0000,2);
    SSD_SPI_WriteReg(0xbc,len,2);
    digitalWrite(SSD2828_CSX0_PIN, LOW);
    uint16_t b0[1]={0xbf};
    SSD_SPI_Write(b0,1);
    uint16_t b1[1]={1<<8|(uint16_t)reg};
    SSD_SPI_Write(b1,1);
    for(int i=0;i<len-1;i++){
        uint16_t b2[1]={1<<8|data[i]};
        SSD_SPI_Write(b2,1);
    }
    digitalWrite(SSD2828_CSX0_PIN, HIGH);
}
   */

/*
void SSD_MIPI_WriteShortGeneric(uint8_t reg,uint16_t data,int len){
//    SSD_SPI_WriteReg(0xb7,0x0302,2);
//    SSD_SPI_WriteReg(0xb8,0x0000,2);
//
//    SSD_SPI_WriteReg(0xbc,len,2);
//    SSD_SPI_WriteReg(0xbf,reg|(data<<8),2);
    uint16_t b[2]={data&0xff,data>>8};
    SSD_MIPI_WriteLongGeneric(reg,b,len);
}
*/

/*
uint16_t SSD_MIPI_ReadGeneric(uint8_t reg,uint16_t *len, uint16_t *status){
    SSD_SPI_WriteReg(0xb7,0x0382,2);
    SSD_SPI_WriteReg(0xc1,0x0002,2);
    SSD_SPI_WriteReg(0xc0,0x0001,2);

    SSD_SPI_WriteReg(0xbc,0x0001,2);
    SSD_SPI_WriteReg(0xbf,reg,2);
    //if(len!=0){
        *len=SSD_SPI_ReadReg(0xc2);
    //}
    //if(status!=0){  //0 - no error; 1 - read not ready
        if((SSD_SPI_ReadReg(0xc6)&1)==0){
            *status=1;
        }else{
            *status=0;
        }
        if(SSD_SPI_ReadReg(0xc3)!=0){
            *status=2;
        }else{
            *status=0;
        }
    //}
    return SSD_SPI_ReadReg(0xff);
}
uint16_t SSD_MIPI_ReadDCS(uint8_t reg,uint16_t *len, uint16_t *status){
    SSD_SPI_WriteReg(0xb7,0x03c2,2);
    SSD_SPI_WriteReg(0xc1,0x00ff,2);
    SSD_SPI_WriteReg(0xc0,0x0002,2);

    SSD_SPI_WriteReg(0xbc,0x0001,2);
    SSD_SPI_WriteReg(0xbf,reg,2);
    //if(len!=0){
        *len=SSD_SPI_ReadReg(0xc2);
    //}
    //if(status!=0){
        if((SSD_SPI_ReadReg(0xc6)&1)==0){
            *status=1;
        }else{
            *status=0;
        }
        if(SSD_SPI_ReadReg(0xc3)!=0){
            *status=2;
        }else{
            *status=0;
        }
    //}
    return SSD_SPI_ReadReg(0xff);
}

*/