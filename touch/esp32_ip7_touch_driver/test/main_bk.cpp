#include <Arduino.h>
#include "driver/ledc.h"

#include <SPI.h>
#include <SPIFFS.h>

#define TOUCH_SCLK      16 // SCK
#define TOUCH_MISO      17 // MISO
#define TOUCH_MOSI      5  // MOSI
#define TOUCH_CS        18
#define TOUCH_CLK32K    19       
#define TOUCH_RST       21
#define TOUCH_INT       22


uint8_t spi_buffer[1024]; // SPI 緩衝區


void listFiles(const char * path) {
  Serial.printf("列出路徑：%s\n", path);

  File root = SPIFFS.open(path);
  if (!root || !root.isDirectory()) {
    Serial.println("開啟目錄失敗或不是資料夾");
    return;
  }

  File file = root.openNextFile();
  while (file) {
    if (!file.isDirectory()) {
      Serial.printf("檔案: %s，大小: %d Bytes\n", file.name(), file.size());
    }
    file = root.openNextFile();
  }
}


void spi_send_bytes(uint8_t* data, size_t length) {
    digitalWrite(TOUCH_CS, LOW); // 拉低 CS 以開始 SPI 傳輸
    SPI.beginTransaction(SPISettings(8000000, MSBFIRST, SPI_MODE0));
    SPI.transfer(data, length);
    SPI.endTransaction();
    digitalWrite(TOUCH_CS, HIGH); // 拉高 CS 以結束 SPI 傳輸
}

void spi_send_bin(const char* fileName) {
    if (SPIFFS.exists(fileName)) {
            File file = SPIFFS.open(fileName, "r");
            if (file) {
                Serial.printf("Sending firmware %s to touch driver...\n", fileName);
                size_t size = file.size();

                // 讀取檔案內容到緩衝區
                digitalWrite(TOUCH_CS, LOW); // 拉低 CS 以開始 SPI 傳輸
                SPI.beginTransaction(SPISettings(8000000, MSBFIRST, SPI_MODE0));
                while(size){
                    uint16_t readSize = min(size, sizeof(spi_buffer));
                    file.read(spi_buffer, readSize);
                    SPI.transfer(spi_buffer, readSize);
                    size -= readSize;
                }
                SPI.endTransaction();
                digitalWrite(TOUCH_CS, HIGH); // 拉高 CS 以結束 SPI 傳輸
            } else {
                Serial.printf("Failed to open %s\n", fileName);
            }
            file.close();
        } else {
            Serial.printf("Firmware %s does not exist.\n", fileName);
        }
}

void send_touch_init_bin() {
    
    // there are ip7_touch_fw_X.bin files in SPIFFS, x = 0-5
    // it is the firmware for the touch driver
    // send them to the touch driver by the SPI interface

    // for(int i = 0; i < 6; i++) {
    //     String fileName = "/ip7_touch_fw_" + String(i) + ".bin";
        

    //     delay(20);
    // }


    // send 1A A1 18 E1
    uint8_t cmd0[] = {0x1A, 0xA1, 0x18, 0xE1};
    spi_send_bytes(cmd0, sizeof(cmd0)); // 發送初始化命令
    spi_send_bin("/ip7_touch_fw_0.bin");


    // send 1A A1
    uint8_t cmd1[] = {0x1A, 0xA1};
    spi_send_bytes(cmd1, sizeof(cmd1)); // 發送初始化命令
    spi_send_bin("/ip7_touch_fw_1.bin");
    
    // send 1A A2
    uint8_t cmd2[] = {0x1A, 0xA1};
    spi_send_bytes(cmd2, sizeof(cmd2)); // 發送初始化命令
    spi_send_bin("/ip7_touch_fw_2.bin");
    
    // send 1A A3
    uint8_t cmd3[] = {0x1A, 0xA1};
    spi_send_bytes(cmd3, sizeof(cmd3)); // 發送初始化命令
    spi_send_bin("/ip7_touch_fw_3.bin");

    // send 1A A4
    uint8_t cmd4[] = {0x1A, 0xA1};
    spi_send_bytes(cmd4, sizeof(cmd4)); // 發送初始化命令
    spi_send_bin("/ip7_touch_fw_4.bin");
    
    // send 1A A5
    uint8_t cmd5[] = {0x1A, 0xA1};
    spi_send_bytes(cmd5, sizeof(cmd5)); // 發送初始化命令
    spi_send_bin("/ip7_touch_fw_5.bin");


    
    
    
    // 37103703-37104391 SPI: MOSI transfer: 1A A1
    // 37105079-37107879 SPI: MOSI transfer: 1E 33 30 60 10 00 FF FF FF FF 17 D3 00 00 05 86
    // 37108735-37109067 SPI: MOSI transfer: 1A A1
    // 37109921-37111792 SPI: MOSI transfer: 1E 33 30 5C 10 00 FF FF FF FF 00 02 00 00 04 9A
    // 37112452-37113137 SPI: MOSI transfer: 1A A1
    // 37113737-37116269 SPI: MOSI transfer: 1E 33 30 58 10 00 FF FF FF FF 00 06 00 00 04 9A
    // 37117058-37117349 SPI: MOSI transfer: 1A A1
    // 37117952-37121443 SPI: MOSI transfer: 1E 33 30 00 10 00 FF FF FF FF 00 03 00 00 04 3F
    // 37122046-37122792 SPI: MOSI transfer: 1A A1
    // 37123392-37126592 SPI: MOSI transfer: 1E 33 35 18 10 00 FF FF FF FF 00 01 00 00 04 5A
    
    uint8_t cmd6[] = {0x1A, 0xA1};
    spi_send_bytes(cmd6, sizeof(cmd6)); // 發送初始化命令
    uint8_t cmd7[] = {0x1E, 0x33, 0x30, 0x60, 0x10, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x17, 0xD3, 0x00, 0x00, 0x05, 0x86};
    spi_send_bytes(cmd7, sizeof(cmd7)); // 發送初始化命令
    uint8_t cmd8[] = {0x1A, 0xA1};
    spi_send_bytes(cmd8, sizeof(cmd8)); // 發送初始化命令
    uint8_t cmd9[] = {0x1E, 0x33, 0x30, 0x5C, 0x10, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x02, 0x00, 0x00, 0x04, 0x9A};
    spi_send_bytes(cmd9, sizeof(cmd9)); // 發送初始化命令
    uint8_t cmd10[] = {0x1A, 0xA1};
    spi_send_bytes(cmd10, sizeof(cmd10)); // 發送初始化命令
    uint8_t cmd11[] = {0x1E, 0x33, 0x30, 0x58, 0x10, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x06, 0x00, 0x00, 0x04, 0x9A};
    spi_send_bytes(cmd11, sizeof(cmd11)); // 發送初始化命令
    uint8_t cmd12[] = {0x1A, 0xA1};
    spi_send_bytes(cmd12, sizeof(cmd12)); // 發送初始化命令
    uint8_t cmd13[] = {0x1E, 0x33, 0x30, 0x00, 0x10, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x03, 0x00, 0x00, 0x04, 0x3F};
    spi_send_bytes(cmd13, sizeof(cmd13)); // 發送初始化命令
    uint8_t cmd14[] = {0x1A, 0xA1};
    spi_send_bytes(cmd14, sizeof(cmd14)); // 發送初始化命令
    uint8_t cmd15[] = {0x1E, 0x33, 0x35, 0x18, 0x10, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0x01, 0x00, 0x00, 0x04, 0x5A};
    spi_send_bytes(cmd15, sizeof(cmd15)); // 發送初始化命令
    uint8_t cmd16[] = {0x1A, 0xA1};
    spi_send_bytes(cmd16, sizeof(cmd16)); // 發送初始化命令
    Serial.println("Touch driver initialized.");


}

void setup() {
    Serial.begin(115200);
    Serial.println("ESP32 Touch Driver");

    Serial.println("Configuring 32.768kHz LEDC channel...");
    ledcSetup(LEDC_CHANNEL_0, 32768, 11); // freq=32.768kHz, resolution=11-bit
    ledcAttachPin(TOUCH_CLK32K, LEDC_CHANNEL_0);
    ledcWrite(LEDC_CHANNEL_0, 1024); // 50% 占空比（1024 是 11-bit 的一半）


    Serial.println("setting up SPI...");
    SPI.begin(TOUCH_SCLK, TOUCH_MISO, TOUCH_MOSI, TOUCH_CS); // SCK, MISO, MOSI, SS
    // SPI.setHwCs(true);         // 啟用硬體 CS 控制
    SPI.setFrequency(8000000); // 設定 SPI 頻率為 8MHz

    pinMode(TOUCH_INT, INPUT_PULLUP);
    
    digitalWrite(TOUCH_RST, HIGH); // 初始化時將 RST 設為高電平
    pinMode(TOUCH_RST, OUTPUT);
    
    digitalWrite(TOUCH_CS, HIGH); // 初始化時將 CS 設為高電平
    pinMode(TOUCH_CS, OUTPUT);

    Serial.print("ESP32 getFlashChipSize: ");
    Serial.println(ESP.getFlashChipSize());      // Flash 總容量
    Serial.print("ESP32 getFreeHeap: ");
    Serial.println(ESP.getFreeHeap());           // 可用 RAM


    if(!SPIFFS.begin()) { // true 參數表示如果 SPIFFS 初始化失敗則格式化
        Serial.println("SPIFFS mount failed");
    } else {
        Serial.println("SPIFFS mounted successfully.");
    }

    // print all file
    Serial.println("Listing SPIFFS files:");
    listFiles("/");


    // check exit /hello.txt
    // if (SPIFFS.exists("/hello.txt")) {
    //     // print the content of /hello.txt
    //     File file = SPIFFS.open("/hello.txt", "r");
    //     if (file) {
    //         Serial.println("Content of /hello.txt:");
    //         while (file.available()) {
    //             Serial.write(file.read());
    //         }
    //         file.close();
    //     } else {
    //         Serial.println("Failed to open /hello.txt");
    //     }
    // } else {
    //     Serial.println("File /hello.txt does not exist.");
    // }


    delay(1000); // 等待 1 秒以確保所有初始化完成

    digitalWrite(TOUCH_RST, LOW); // 拉低 RST 以重置觸控 IC
    delay(10); // 等待 10 毫秒
    digitalWrite(TOUCH_RST, HIGH); // 拉高 RST 以啟動觸控 IC
    delay(10); // 等待 10 毫秒
    send_touch_init_bin();


}

void loop() {
    

    // while(1){
    //     if(digitalRead(TOUCH_INT) == LOW) { // 檢查觸控中斷
    //         Serial.println("Touch interrupt detected!");
    //         // clear int
    //         uint8_t cmd[] = {0x1A, 0xA1};
    //         spi_send_bytes(cmd, sizeof(cmd));

    //         delay(2);
    //     }
    // }


    while(1){
        if(digitalRead(TOUCH_INT) == LOW) { // 檢查觸控中斷
            Serial.println("Touch interrupt detected!");
            // 在這裡處理觸控事件
            // 例如，讀取觸控資料或執行其他操作
        
            // read spi 16byte data 
            uint8_t touch_data[16] = {0};
            digitalWrite(TOUCH_CS, LOW); // 拉低 CS 以開始 SPI 傳輸
            SPI.beginTransaction(SPISettings(8000000, MSBFIRST, SPI_MODE0));
            SPI.transfer(touch_data, sizeof(touch_data)); // 讀取 16 字
            SPI.endTransaction();
            digitalWrite(TOUCH_CS, HIGH); // 拉高 CS 以結束 SPI 傳輸
            Serial.print("Touch data: ");
            for (int i = 0; i < sizeof(touch_data); i++) {
                Serial.printf("%02X ", touch_data[i]);
            }
            Serial.println();

            delay(2);
        }
    }

    const uint8_t tx_data[] = {0x01, 0x02, 0x03, 0x04}; // 要傳送的數據
    while(1){


        
        // spi transfer example
        SPI.beginTransaction(SPISettings(8000000, MSBFIRST, SPI_MODE0));
        SPI.transfer((uint8_t*)tx_data, sizeof(tx_data));
        SPI.endTransaction(); // 結束 SPI 交易
        
        // Serial.printf("Sent: 0x%02X, Received: 0x%02X\n", dataToSend, receivedData);
        delay(150); // 延遲150毫秒
    }

}

