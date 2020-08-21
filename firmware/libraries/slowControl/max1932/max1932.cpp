#include <stdio.h>
#include <stdlib.h>
#include <wiringPi.h>
#include <wiringPiSPI.h>

#include "max1932.h"

MAX1932::MAX1932(){}

MAX1932::MAX1932(uint8_t CS_PIN, uint8_t SPI_CHANNEL){
  setup(CS_PIN, SPI_CHANNEL);
}
//DIV_TOP R5, DIV_BOTTOM R8, DAC_OUT R6
MAX1932::MAX1932(uint8_t CS_PIN, uint8_t SPI_CHANNEL, uint32_t DIV_TOP, uint32_t DIV_BOT, uint32_t DAC_OUT){
  _DIV_TOP = DIV_TOP;
  _DIV_BOT = DIV_BOT;
  _DAC_OUT = DAC_OUT;
  setup(CS_PIN, SPI_CHANNEL);
}

// Set DAC to byte value, return set voltage in mV
uint32_t MAX1932::setByte(uint8_t byte){
  write(byte);
  return byteTomV(byte);
}

// Set to closest voltage below mV, return set voltage in mV
uint32_t MAX1932::setmV(uint32_t mV){
  write(mVToByte(mV));
  return byteTomV(mVToByte(mV));
}

//Private functions

uint32_t MAX1932::byteTomV(uint8_t byte){
  if(byte == 0x00){
    return 0;
  } else {
    uint32_t votlageFF = (1250 * _DIV_TOP) / _DIV_BOT;
    uint32_t voltageSpan = (1250 * _DIV_TOP) / _DAC_OUT;
    uint32_t voltage01 = (voltageSpan - votlageFF);
    return (votlageFF + (voltageSpan * ((255 - byte) / 255.0)));
  }
}
uint8_t MAX1932::mVToByte(uint32_t mV){
  uint32_t votlageFF = (1250 * _DIV_TOP) / _DIV_BOT;
  uint32_t voltageSpan = (1250 * _DIV_TOP) / _DAC_OUT;
  if( mV > (votlageFF + voltageSpan)){
    // Voltage is above range, set to max.
    return 0x01;
  } else if (mV < votlageFF){
    // Voltage is below range, turn HV off.
    return 0x00;
  } else {
    float rangeSubtracted = (mV - (float)votlageFF);
    float invertedByte = (rangeSubtracted / voltageSpan) * 255;
    return (uint8_t)(255 - invertedByte);
  }
}

void MAX1932::setup(uint8_t CS_PIN, uint8_t SPI_CHANNEL){
  _CS_PIN = CS_PIN;
  _SPI_CHANNEL = SPI_CHANNEL;

  wiringPiSetup();
  wiringPiSPISetupMode(_SPI_CHANNEL, 1000000, 0);
  pinMode(_CS_PIN, OUTPUT);
  digitalWrite(_CS_PIN,  HIGH);
  delay(5);
}

void MAX1932::write(uint8_t val){
  uint8_t data[1] = {val};
  digitalWrite(_CS_PIN, LOW);
  wiringPiSPIDataRW(_SPI_CHANNEL, data, 1);
  digitalWrite(_CS_PIN,  HIGH);
}

