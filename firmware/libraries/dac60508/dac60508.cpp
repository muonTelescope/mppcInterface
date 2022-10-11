#include <stdio.h>
#include <stdlib.h>
#include <wiringPi.h>
#include <wiringPiSPI.h>

#include "dac60508.h"


// Instantiates a new DAC60508 class
DAC60508::DAC60508() {
  refDiv = false;
  buffGain[8] = {0};
  refV = 2.5;
}

// Setup Channel, mode, and chip select
bool DAC60508::begin(uint8_t CS_PIN, uint8_t SPI_CHANNEL){
  _SPI_CHANNEL = SPI_CHANNEL;
  _CS_PIN = CS_PIN;
  wiringPiSetup () ;
  wiringPiSPISetupMode (_SPI_CHANNEL, 500000, 1);
  pinMode (_CS_PIN, OUTPUT) ;
  digitalWrite (_CS_PIN,  HIGH);
  // Are these two next lines needed?
  delay (500);
  write(DAC60508_NOP, 0x0000);
  return 0;
}

// Read DAC channel in milivolts
float DAC60508::readmVDAC(uint8_t channel){
  float val;
  // Convert from bits to voltage
  val =  refV * readDAC(channel) / (1<<16);
  // Apply refrence dividor
  if(refDiv){
    val *= 0.5;
  }
  // Apply buffer gain
  if(buffGain[channel]){
    val *= 2;
  }
  return val*1000;
}

// bool setGain(uint8_t channel, uint8_t value){
//   if(channel >= 0 && channel < 8){
//     writeBit(DAC60508_GAIN, channel);
//   }
// }

// Write DAC value for channel in bits
bool DAC60508::setDAC(uint8_t channel, uint16_t value){
  if(channel >= 0 && channel < 8){
    write(DAC60508_DAC0+channel, value);
    // printf("Channel addresss = %02X\n", (uint8_t)DAC60508_DAC0+channel);
    return true;
  } else {
    return false;
  }
}

// Read DAC value for channel in bits
uint16_t DAC60508::readDAC(uint8_t channel){
  if(channel >= 0 && channel < 8){
    return read(DAC60508_DAC0+channel);
  } else {
    return -1;
  }
}

//Low level read and write procedures
//===================================
bool DAC60508::readBit(uint8_t reg, uint8_t bit){
  uint8_t bitmask = 1<<bit;
  if(read(reg) & bitmask){
    return true;
  }
  return false;
}

void DAC60508::writeBit(uint8_t reg, uint8_t bit) {
  uint16_t val = read(reg) | (1<<bit);
  write(reg, val);
}

void DAC60508::clearBit(uint8_t reg, uint8_t bit) {
  uint16_t val = read(reg) & ~(1<<bit);
  write(reg, val);
}

void DAC60508::readUntilTrue(uint8_t reg, uint8_t bit) {
  //create bitmask
  uint8_t bitmask = 1<<bit;
  bool readUntil = false;
  //Just keep reading until bit requested is true
  while(readUntil == false){
    if(read(reg) & bitmask){
      readUntil=true;
    }
  }
}

void DAC60508::readUntilFalse(uint8_t reg, uint8_t bit) {
  //create bitmask
  uint8_t bitmask = 1<<bit;
  bool readUntil = false;
  //Just keep reading until bit requested is false
  while(readUntil == false){
    if(~read(reg) & bitmask){
      readUntil=true;
    }
  }
}

// A read operation is initiated by issuing a read command access cycle. 
// After the read command, a second access cycle must be issued to get the requested data.
// cycle must be issued to get the requested data.
uint16_t DAC60508::read(uint8_t reg){
  uint8_t modReg = reg | DAC60508_SPI_READ<<(DAC60508_SPI_RW_INDEX-16);
  uint8_t dataArray[3] = {modReg, 0x00, 0x00};
  digitalWrite (_CS_PIN, LOW);
  wiringPiSPIDataRW (_SPI_CHANNEL, dataArray, (sizeof(dataArray)/sizeof(dataArray[0])));
  digitalWrite (_CS_PIN,  HIGH);
  // Second acess cycle
  digitalWrite (_CS_PIN, LOW);
  wiringPiSPIDataRW (_SPI_CHANNEL, dataArray, (sizeof(dataArray)/sizeof(dataArray[0])));
  digitalWrite (_CS_PIN,  HIGH);
  return (uint16_t)(dataArray[1]<<8 | dataArray[2]);
}

void DAC60508::write(uint8_t reg, uint16_t val){
  uint8_t modReg = reg | DAC60508_SPI_WRITE<<(DAC60508_SPI_RW_INDEX-16);
  uint8_t highByte = (uint8_t)(val>>8);
  uint8_t lowByte = (uint8_t)val;
  uint8_t dataArray[3] = {modReg, highByte, lowByte};
  digitalWrite (_CS_PIN, LOW);
  wiringPiSPIDataRW (_SPI_CHANNEL, dataArray, (sizeof(dataArray)/sizeof(dataArray[0])));
  digitalWrite (_CS_PIN,  HIGH);
}
