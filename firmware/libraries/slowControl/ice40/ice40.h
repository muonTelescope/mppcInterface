// Wiring Pi library for configuing the ICE40 FPGA with a *.bin file.
#ifndef __ICE40_H__
#define __ICE40_H__

#include <stdint.h>

class ICE40 {
 public:
  ICE40(const uint8_t CS_PIN, const uint8_t DONE_PIN, const uint8_t RST_PIN, const uint8_t SPI_CHANNEL);
  void configure(const char filename[]);

  // Semi private, built for segmented burn
  // Segmented Burn functions for external CS
  // loadFile(file)
  // CS LOW
  // clear()
  // CS HIGH
  // dummyClocks()
  // CS LOW
  // burn()
  // CS HIGH
  // comfirmBurn()
  void loadFile(const char filename[]);
  void burnData();
  void clear();
  void dummyClocks();
  void burn();
  void confirmBurn();
  void hexDump();

 private:
  void setup(const uint8_t SPI_CHANNEL, const uint32_t clkSpeed);

  uint8_t _CS_PIN;
  uint8_t _RST_PIN;
  uint8_t _DONE_PIN;
  uint8_t _SPI_CHANNEL;
  unsigned char *_data;
  uint16_t _bitstreamSize;
};

#endif //__ICE40_H__