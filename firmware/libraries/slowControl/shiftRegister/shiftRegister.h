//WiringPi library for interfacing with the 74HC595 shift register
#ifndef __74HC595_H__
#define __74HC595_H__

#include <stdint.h>

class shiftRegister {
 public:

  shiftRegister(uint8_t SRDATA_PIN, uint8_t SRCLK_PIN, uint8_t RCLK_PIN);

  void clear();
  void chipSelect(uint8_t channel);

 private:

  void setBytes(uint64_t byte);

  uint8_t _SRDATA_PIN;
  uint8_t _SRCLK_PIN;
  uint8_t _RCLK_PIN;

};

#endif //__74HC595_H__