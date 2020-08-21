#include <stdio.h>
#include <stdlib.h>
#include <wiringPi.h>
#include <wiringPiSPI.h>

#include "max1932.h"

// Makefile needed
// -lwiringPi

// HV chip select GPIO5, Header Pin 29, Wiring pi Pin 21
// SPI Channel 0

#define CS_PIN 21
#define SPI_CHANNEL 0

// Argv 1 Bit value to set for voltage

int main (int argc, char** argv){
  unsigned char data = (char)strtol(argv[1], NULL, 16);;
  printf("%d\n", (int)data);

  MAX1932 *hv = new MAX1932(CS_PIN, SPI_CHANNEL, 95400, 2064, 2317);
  printf("%g V\n", hv->setByte(data) / 1000.0);

  return 0;
}

