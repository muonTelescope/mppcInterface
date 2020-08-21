# MAX1932 Libray
C++ Wiring Pi library for Maxim's [MAX1932](https://datasheets.maximintegrated.com/en/ds/MAX1932.pdf) APD bias supply. 

## Example
```cpp
#include <stdio.h>
#include <stdlib.h>
#include <wiringPi.h>
#include <wiringPiSPI.h>

#include "max1932.h"

// HV chip select GPIO5, Header Pin 29, Wiring pi Pin 21
#define CS_PIN 21
#define SPI_CHANNEL 0

int main (){
  MAX1932 *hv = new MAX1932(CS_PIN, SPI_CHANNEL);
  hv->setByte(0xAE);
  return 0;
}
```

## Voltage Curves

### Calculation
