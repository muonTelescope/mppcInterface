#include <stdio.h>
#include <stdlib.h>
#include <wiringPi.h>
#include <wiringPiSPI.h>

#include "dac60508.h"

// Makefile needed
// -lwiringPi 

// DAC chip select GPI026, Header Pin 37, Wiring PI Pin 25
// SPI Channel 0

#define CS_PIN 25
#define SPI_CHANNEL 0

// Argv 1 Bit value to set for channel
// Argv 2 Bit value to set for setByte

int main (int argc, char** argv){
  unsigned int data = (unsigned int)strtol(argv[1], NULL, 16);
  printf("%04x\n", (unsigned int)data);

  DAC60508 *dac = new DAC60508();
  dac->begin(CS_PIN, SPI_CHANNEL);
  dac->setDAC(0, data);
  dac->setDAC(1, data);
  // printf("%d", dac->readmVDAC(0));

  return 0 ;
}