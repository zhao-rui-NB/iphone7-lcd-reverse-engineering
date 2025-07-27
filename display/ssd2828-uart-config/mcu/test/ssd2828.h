
#include <Arduino.h>


#include "ssd2828_reg.h"
#include "display_config.h"


// 3-wire SPI
#define SSD2828_SCK_PIN 2
#define SSD2828_RESET_PIN 3
#define SSD2828_SDO_PIN 4
#define SSD2828_CSX0_PIN 5
#define SSD2828_SDI_PIN 6



void spi_init(){
    pinMode(SSD2828_SCK_PIN, OUTPUT);
    pinMode(SSD2828_SDI_PIN, OUTPUT);
    pinMode(SSD2828_SDO_PIN, INPUT);
    pinMode(SSD2828_CSX0_PIN, OUTPUT);

    digitalWrite(SSD2828_SCK_PIN, LOW);
    digitalWrite(SSD2828_SDI_PIN, LOW);
    digitalWrite(SSD2828_CSX0_PIN, HIGH);
}

inline void spi_write_9bit(uint8_t c0_d1, uint8_t data){
    // c0_d1 is first send bit, data is the 8-bit data to send

    uint16_t send_bits = (c0_d1 << 8) | data;

    for(int i = 0; i < 9; i++){
        digitalWrite(SSD2828_SDI_PIN, (send_bits & 0x100) ? HIGH : LOW);
        send_bits <<= 1;
        digitalWrite(SSD2828_SCK_PIN, HIGH);
        digitalWrite(SSD2828_SCK_PIN, LOW);
    }
}

inline uint8_t spi_read_8bit(){
    uint8_t data = 0;
    for(int i = 0; i < 8; i++){
        digitalWrite(SSD2828_SCK_PIN, HIGH);
        data = (data << 1) | digitalRead(SSD2828_SDO_PIN);
        digitalWrite(SSD2828_SCK_PIN, LOW);
    }
    return data;
}

void ssd2828_write_reg(uint8_t address, uint16_t data){
    digitalWrite(SSD2828_CSX0_PIN, LOW);
    spi_write_9bit(0, address);
    // lower 8 bits
    spi_write_9bit(1, data & 0xFF);
    // upper 8 bits
    spi_write_9bit(1, data >> 8);
    digitalWrite(SSD2828_CSX0_PIN, HIGH);
}

uint16_t ssd2828_read_reg(uint8_t address){
    uint16_t ret = 0;
    digitalWrite(SSD2828_CSX0_PIN, LOW);
    spi_write_9bit(0, address);
    spi_write_9bit(0, 0xFA); // read command 0xfa
    // lower 8 bits
    ret = spi_read_8bit();
    // upper 8 bits
    ret |= spi_read_8bit() << 8;
    digitalWrite(SSD2828_CSX0_PIN, HIGH);
    return ret;
}


void ssd2828_send_generic_no_para(uint8_t cmd){
    // it can be generic or DCS command
    digitalWrite(SSD2828_CSX0_PIN, LOW);
    
    ssd2828_write_reg(SSD2828_REG_PSCR1, 1); // packet size 1
    // ssd2828_write_reg(SSD2828_REG_PDR, cmd); // command

    spi_write_9bit(0, SSD2828_REG_PDR);
    spi_write_9bit(1, cmd);

    digitalWrite(SSD2828_CSX0_PIN, HIGH);
}

void ssd2828_send_generic_1_para(uint8_t cmd , uint8_t para){
    // it can be generic or DCS command
    digitalWrite(SSD2828_CSX0_PIN, LOW);
    
    ssd2828_write_reg(SSD2828_REG_PSCR1, 2); // packet size 1
    // ssd2828_write_reg(SSD2828_REG_PDR, cmd); // command

    spi_write_9bit(0, SSD2828_REG_PDR);
    spi_write_9bit(1, cmd);
    spi_write_9bit(1, para);

    digitalWrite(SSD2828_CSX0_PIN, HIGH);
}

void ssd2828_send_generic_n_para(uint8_t cmd , uint8_t* para, uint8_t n){
    // it can be generic or DCS command
    digitalWrite(SSD2828_CSX0_PIN, LOW);
    
    ssd2828_write_reg(SSD2828_REG_PSCR1, n+1); // packet size 1
    // ssd2828_write_reg(SSD2828_REG_PDR, cmd); // command

    spi_write_9bit(0, SSD2828_REG_PDR);
    spi_write_9bit(1, cmd);
    for(int i = 0; i < n; i++){
        spi_write_9bit(1, para[i]);
    }

    digitalWrite(SSD2828_CSX0_PIN, HIGH);
}

void _ssd2828_print_reg(uint8_t address){
    uint16_t data = ssd2828_read_reg(address);
    Serial.print("REG: 0x");
    Serial.print(address, HEX);
    Serial.print(", 0x");
    Serial.println(data, HEX);
}

void ssd2828_dump_reg(){
    _ssd2828_print_reg(SSD2828_REG_DIR);
    _ssd2828_print_reg(SSD2828_REG_VICR1);
    _ssd2828_print_reg(SSD2828_REG_VICR2);
    _ssd2828_print_reg(SSD2828_REG_VICR3);
    _ssd2828_print_reg(SSD2828_REG_VICR4);
    _ssd2828_print_reg(SSD2828_REG_VICR5);
    _ssd2828_print_reg(SSD2828_REG_VICR6);

}
        

void ssd2828_init(){
    Serial.println("start SSD2828 init ....");

    spi_init();
    digitalWrite(7, LOW);
    pinMode(7, OUTPUT);
    
    // reset
    pinMode(SSD2828_RESET_PIN, OUTPUT);
    digitalWrite(SSD2828_RESET_PIN, LOW);
    delay(100);
    digitalWrite(SSD2828_RESET_PIN, HIGH);
    delay(100);

    // read the dir
    uint16_t data;
    data = ssd2828_read_reg(SSD2828_REG_DIR);

    Serial.print("DIR: ");
    Serial.println(data, HEX);


    ssd2828_write_reg(SSD2828_REG_VICR1, (DISP_VSA << 8) | DISP_HSA);
    ssd2828_write_reg(SSD2828_REG_VICR2, (DISP_VBP << 8) | DISP_HBP);
    ssd2828_write_reg(SSD2828_REG_VICR3, (DISP_VFP << 8) | DISP_HFP);
    ssd2828_write_reg(SSD2828_REG_VICR4, DISP_HACT);
    ssd2828_write_reg(SSD2828_REG_VICR5, DISP_VACT);


    ssd2828_write_reg(SSD2828_REG_VICR6, VICR6_VAL);

    ssd2828_write_reg(SSD2828_REG_CFGR, CFGR_VAL);

    ssd2828_write_reg(SSD2828_REG_VCR, 0x0000);


    ssd2828_write_reg(SSD2828_REG_DAR1, DAR1_VAL);
    ssd2828_write_reg(SSD2828_REG_DAR2, DAR2_VAL);
    ssd2828_write_reg(SSD2828_REG_DAR3, DAR3_VAL);
    ssd2828_write_reg(SSD2828_REG_DAR4, DAR4_VAL);

    
    
    ssd2828_write_reg(SSD2828_REG_PLCR, PLCR_VAL); // 420Mhz
    ssd2828_write_reg(SSD2828_REG_CCR, CCR_VAL); // 10Mhz


    ssd2828_write_reg(SSD2828_REG_LCFR, 3-1); // 3 lane

    // test fix
    // ssd2828_write_reg(0xc9, 0x3030);
    // ssd2828_write_reg(0xca, 0x3030);
    // ssd2828_write_reg(0xcb, 0x3030);
    // ssd2828_write_reg(0xcc, 0x3030);


    // pll control register
    ssd2828_write_reg(SSD2828_REG_PCR, 0x0001); // pll enable
    delay(300);

    ssd2828_dump_reg();

    return;

    digitalWrite(7, HIGH);
    ssd2828_send_generic_no_para(0x11); // exit sleep
    delay(100);
    ssd2828_send_generic_no_para(0x29); // display on
    delay(100);
    
    // delay(200);

    // delay(300);
    // ssd2828_send_generic_1_para(0x11, 0); // exit sleep
    // delay(300);
    // ssd2828_send_generic_1_para(0x29, 0); // display on
    // delay(300);



    Serial.println("SSD2828 init done");
    return ;
    // hs mode
    // CFGR_VAL p87
    ssd2828_write_reg(SSD2828_REG_CFGR, CFGR_VAL | HS);
    delay(10);


    // ven enable
    ssd2828_write_reg(SSD2828_REG_CFGR, CFGR_VAL | HS | VEN);
    delay(10);

    // vbist
    // ssd2828_write_reg(SSD2828_REG_TMR, VBIST_EN);
    delay(10);
    ssd2828_write_reg(SSD2828_REG_TMR, VBIST_SRT | VBIST_EN);










}
    