// Wiring Pi library for configuing the ICE40 FPGA with a *.bin file.
#ifndef __ICE40_H__
#define __ICE40_H__

#include <stdint.h>

class ICE40 {
 public:
  ICE40(const uint8_t CS_PIN, const uint8_t DONE_PIN, const uint8_t RST_PIN, const uint8_t SPI_CHANNEL);
  void configure(const char filename[]);

 private:

  void setup(const uint8_t SPI_CHANNEL, const uint32_t clkSpeed);
  void writeFile(const char filename[]);
  void burnData(unsigned char *data, uint16_t length);
  void clear();

  uint8_t _CS_PIN;
  uint8_t _RST_PIN;
  uint8_t _DONE_PIN;
  uint8_t _SPI_CHANNEL;
};

#endif //__ICE40_H__