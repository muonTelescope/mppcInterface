# DAC60508
A C++ ARM library for communication with the TI [DAC60508](http://www.ti.com/lit/ds/symlink/dac70508.pdf) 12/14/16b DAC. It communicates over SPI using mode 1 and is currently able to set values by bytes.

# Use

## Example
Set channel 0 to 0xABCD which coresponds to 1.68V. 
```cpp
#include <stdio.h>
#include <stdlib.h>
#include <wiringPi.h>
#include <wiringPiSPI.h>

#include "dac60508.h"

// DAC chip select GPI026, Header Pin 37, Wiring PI Pin 25
// SPI Channel 0

#define CS_PIN 25
#define SPI_CHANNEL 0

int main (){
  DAC60508 *dac = new DAC60508();
  dac->begin(CS_PIN, SPI_CHANNEL);
  dac->setDAC(0, 0XABCD);
  return 0 ;
}
```
## All Functions

| Returns | Command                           | Function    | 
| ------- | --------------------------------- | ----------- |
| bool    | begin(uint8_t CS, uint8_t SPI_CH) | Sets up DAC |