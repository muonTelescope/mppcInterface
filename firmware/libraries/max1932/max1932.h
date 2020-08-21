//WiringPi library for interfacing with the MAX1932 APD Bias Supply
#ifndef __MAX1932_H__
#define __MAX1932_H__

#include <stdint.h>

class MAX1932 {
 public:

  MAX1932();
  MAX1932(uint8_t CS_PIN, uint8_t SPI_CHANNEL);
  MAX1932(uint8_t CS_PIN, uint8_t SPI_CHANNEL, uint32_t DIV_TOP, uint32_t DIV_BOT, uint32_t DAC_OUT);

  uint32_t setByte(uint8_t byte);
  uint32_t setmV(uint32_t mV);

 private:

  uint32_t byteTomV(uint8_t byte);
  uint8_t mVToByte(uint32_t mV);

  void setup(uint8_t CS_PIN, uint8_t SPI_CHANNEL);
  void write(uint8_t val);

  uint8_t _CS_PIN;
  uint8_t _SPI_CHANNEL;

  uint32_t _DIV_TOP = 100000;
  uint32_t _DIV_BOT = 2370;
  uint32_t _DAC_OUT = 2490;
};

#endif //__MAX1932_H__