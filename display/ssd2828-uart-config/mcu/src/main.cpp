#include <Arduino.h>
#include "ssd2828.h"

// rx packet format
//     packet format:
//     - 1 byte header
//     - 1 byte data size
//     - n bytes data
//     - 1 byte checksum
#define packet_header 0x5A
#define packet_size 1024
#define packet_timeout 500

#define CMD_SSD2828_RESET 0
#define CMD_SSD2828_READ_REG 1 
#define CMD_SSD2828_WRITE_REG 2
#define CMD_SSD2828_WRITE_SHORT_NO_PARA_DCS 3

// CMD_SSD2828_RESET : 1 + cmd , reply : status + 0
// CMD_SSD2828_READ_REG : 2 + cmd + reg(1byte) , reply : status + 2 + data(2byte)
// CMD_SSD2828_WRITE_REG : 3 + cmd + reg(1byte) + data(2byte) , reply : status + 0

// tx packet format
//     packet format:
//     - 1 byte header
//     - 1 byte status
//     - 1 byte data size
//     - n bytes data
//     - 1 byte checksum
#define reply_header 0xA5

#define status_ok 0x00
#define status_timeout 0x01
#define status_invalid_header 0x02
#define status_invalid_size 0x03
#define status_invalid_checksum 0x04
#define status_invalid_command 0x05
#define status_invalid_payload_size 0x06


uint8_t packet[256];
int rec_index = 0;
uint32_t last_receive_byte_time = 0;
bool packet_received = false;
uint8_t *packet_payload = &packet[2];
uint8_t packet_payload_size = 0;

uint8_t checksum(uint8_t *data,uint8_t size){
    uint8_t checksum = 0;
    for(int i = 0; i < size; i++){
        checksum ^= data[i];
    }
    return checksum;
}
void send_reply(uint8_t status,uint8_t *data,uint8_t size){
    Serial.write(reply_header);
    Serial.write(status);
    Serial.write(size);
    for(int i = 0; i < size; i++){
        Serial.write(data[i]);
    }
    // all reply header, status, size, data checksum
    Serial.write(reply_header ^ status ^ size ^ checksum(data,size));
}


void setup(){
    Serial.begin(115200);

    pinMode(SSD2828_SCK_PIN, OUTPUT);
    pinMode(SSD2828_SDI_PIN, OUTPUT);
    pinMode(SSD2828_SDO_PIN, INPUT);
    pinMode(SSD2828_CSX0_PIN, OUTPUT);

    pinMode(SSD2828_RESET_PIN, OUTPUT);

    digitalWrite(SSD2828_CSX0_PIN, HIGH);
    digitalWrite(SSD2828_SCK_PIN, LOW);
    digitalWrite(SSD2828_SDI_PIN, LOW);


    // reset SSD2828
    SSD_Reset();
}

void loop(){

    // timeout 
    if(millis() - last_receive_byte_time  > packet_timeout && rec_index > 0){
        rec_index = 0;
        send_reply(status_timeout,NULL,0);
    }

    // receive packet into buffer
    if(Serial.available()){
        packet[rec_index++] = Serial.read();
        last_receive_byte_time = millis();

        if(rec_index == 1 && packet[0] != packet_header){ // invalid header
            rec_index = 0;
            send_reply(status_invalid_header,NULL,0);            
        }
        else if(rec_index == 2){ // packet size
            if(packet[1] > packet_size){
                rec_index = 0;
                send_reply(status_invalid_size,NULL,0);
            }
        }
        else if(rec_index > 2 && rec_index < packet[1] + 3){ // receive data

        }
        else if(rec_index == packet[1] + 3){ // checksum

            if(checksum(packet, packet[1] + 2) == packet[packet[1] + 2]){ // checksum ok
                packet_received = true;
                packet_payload_size = packet[1];
                // send reply when packet received process
            }
            else{
                send_reply(status_invalid_checksum,NULL,0);
            }
            rec_index = 0;
        }
    }


    if(packet_received){
        packet_received = false;
        uint8_t command = packet_payload[0];

        if(command == CMD_SSD2828_READ_REG){
            if(packet_payload_size != 2){ // 1 cmd read + 1 read addr
                send_reply(status_invalid_payload_size,NULL,0);
            }
            else{
                uint8_t reg = packet_payload[1];
                uint16_t reg_data = SSD_SPI_ReadReg(reg);
                uint8_t data[2] = {(reg_data>>8) & 0xff, reg_data & 0xff}; // big endian
                send_reply(status_ok,data,2);

                // Serial.print("Read reg: ");
                // Serial.print(reg,HEX);
                // Serial.print(" data: ");
                // Serial.println(reg_data,HEX);
            }
        }
        else if(command == CMD_SSD2828_WRITE_REG){
            if(packet_payload_size != 4){ // 1 cmd write + 1 write addr + 2 write data
                send_reply(status_invalid_payload_size,NULL,0);
            }
            else{
                uint8_t reg = packet_payload[1];
                uint16_t data = (packet_payload[2]<<8) | packet_payload[3];
                SSD_SPI_WriteReg(reg,data);
                send_reply(status_ok,NULL,0);
            }
        }
        else if(command == CMD_SSD2828_RESET){
            if(packet_payload_size != 1){
                send_reply(status_invalid_payload_size,NULL,0);
            }
            else{
                SSD_Reset();
                send_reply(status_ok,NULL,0);
            }
        }
        else if(command == CMD_SSD2828_WRITE_SHORT_NO_PARA_DCS){
            if(packet_payload_size != 2){ // 1 cmd write + 1 write addr + 0 no data
                
                send_reply(status_invalid_payload_size,NULL,0);
            }
            else{
                uint8_t reg = packet_payload[1];
                SSD_MIPI_WriteShortDCS(reg,0x00,1);
                send_reply(status_ok,NULL,0);
            }
        }
        else{
            send_reply(status_invalid_command,NULL,0);
        }

    }

}


