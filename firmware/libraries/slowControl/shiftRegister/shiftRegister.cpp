#include <stdio.h>
#include <stdlib.h>
#include <wiringPi.h>

#include "shiftRegister.h"

// Intital Setup
shiftRegister::shiftRegister(uint8_t SRDATA_PIN, uint8_t SRCLK_PIN, uint8_t RCLK_PIN){
  // Set pins to private variables
  _SRDATA_PIN = SRDATA_PIN;
  _SRCLK_PIN = SRCLK_PIN;
  _RCLK_PIN = RCLK_PIN;

  wiringPiSetup();
  // Set pins as ouptuts
  pinMode(_SRDATA_PIN, OUTPUT);
  pinMode(_SRCLK_PIN, OUTPUT);
  pinMode(_RCLK_PIN, OUTPUT);
  // Starting at low
  digitalWrite(_SRDATA_PIN, LOW);
  digitalWrite(_SRCLK_PIN, LOW);
  digitalWrite(_RCLK_PIN, LOW);
}

// Clear Shift register by setting all outputs high
void shiftRegister::clear(){
  setBytes(~(uint64_t)0);
}

// Shift in so all are 1 exect for chip select
void shiftRegister::chipSelect(uint8_t channel){
  setBytes(~(uint64_t)(1<<channel));
}

//Private functions

void shiftRegister::setBytes(uint64_t data){
  for(int i = 63 ; i >= 0; i--){
    digitalWrite(_SRCLK_PIN,  LOW);
    digitalWrite(_SRDATA_PIN, (data >> i & 1)?HIGH:LOW);   
    digitalWrite(_SRCLK_PIN,  HIGH);
  }
  digitalWrite(_RCLK_PIN,  HIGH);
  delay(1);
  digitalWrite(_RCLK_PIN,  LOW);
}