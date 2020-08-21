#include <stdio.h>
#include <stdlib.h>
#include <wiringPi.h>
#include <wiringPiSPI.h>

#include "ice40.h"

// Makefile needed
// -lwiringPi

// ICE40 chip select GPIO22, Header Pin 15, Wiring pi Pin 3
// ICE40 reset       GPIO25, Header Pin 22, Wiring pi Pin 6
// ICE40 done        GPIO24, Header Pin 18, Wiring pi Pin 5
// SPI Channel 0

#define CS_PIN      3
#define RST_PIN     6
#define DONE_PIN    5
#define SPI_CHANNEL 0

// Argv 1 file that is being burned
int main (int argc, char** argv){
  ICE40 *fpga = new ICE40(CS_PIN, RST_PIN, DONE_PIN, SPI_CHANNEL);
  fpga->configure(argv[1]);
  return 0 ;
}
