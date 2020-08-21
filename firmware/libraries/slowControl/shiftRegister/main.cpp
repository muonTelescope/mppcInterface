#include <stdio.h>
#include <stdlib.h>
#include <wiringPi.h>

#include "shiftRegister.h"

// Makefile needed
// -lwiringPi

#define SRDATA 23 // Header Pin 33, GPIO13, Wiring Pi Pin 23
#define SRCLK 25  // Header Pin 37, GPIO26, Wiring PI Pin 25
#define RCLK 27   // Header Pin 36, GPIO16, Wiring PI Pin 27

// Argv 1 byte to output.
int main (int argc, char** argv){
  printf("%d\n", atoi(argv[1]));

  shiftRegister *shift = new shiftRegister(SRDATA, SRCLK, RCLK);
  shift->chipSelect(atoi(argv[1]));

  return 0;
}

