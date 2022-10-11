#include <stdio.h>
#include <stdlib.h>
#include <wiringPi.h>
#include <wiringPiSPI.h>

#include "dac60508.h"

// Makefile needed
// -lwiringPi

// DAC chip select GPI025, Header Pin 22, Wiring PI Pin 6
// SPI Channel 0

#define CS_PIN 6
#define SPI_CHANNEL 0

// Argv 1 Bit value to set for channel
// Argv 2 Bit value to set for setByte

int main (int argc, char** argv){
  unsigned int channel = (unsigned int)strtol(argv[1], NULL, 16);
  unsigned int data = (unsigned int)strtol(argv[2], NULL, 16);
  printf("Channel %d set to 0x%04X, %d\n", channel, data, data);

  DAC60508 *dac = new DAC60508();
  dac->begin(CS_PIN, SPI_CHANNEL);
  dac->setDAC(channel, data);
  printf("Readback: %f\n\n", dac->readmVDAC(channel));

  return 0 ;
}
