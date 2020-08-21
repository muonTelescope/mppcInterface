# Shift Register Libray
C++ Wiring Pi library for [74xx595](http://www.ti.com/lit/ds/symlink/sn74hc595.pdf) shift register. 

## Example
```cpp
#include <stdio.h>
#include <stdlib.h>
#include <wiringPi.h>

#include "shiftRegister.h"

#define SRDATA 23 // Header Pin 33, GPIO13, Wiring Pi Pin 23
#define SRCLK 25  // Header Pin 37, GPIO26, Wiring PI Pin 25
#define RCLK 27   // Header Pin 36, GPIO16, Wiring PI Pin 27

int main (int argc, char** argv){
  shiftRegister *shift = new shiftRegister(SRDATA, SRCLK, RCLK);
  shift->chipSelect(5);
  return 0;
}
```