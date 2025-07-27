#include <Arduino.h>

#include "ssd2828.h"



void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  Serial.println("Hello World");

  ssd2828_init();

  Serial.println("SSD2828 init done");
}

void loop() {

 

}

