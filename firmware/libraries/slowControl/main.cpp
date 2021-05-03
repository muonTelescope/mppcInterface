#include <stdio.h>
#include <stdlib.h>
#include <wiringPi.h>
#include <wiringPiSPI.h>


using namespace std;

#include "dac60508/dac60508.h"
#include "shiftRegister/shiftRegister.h"
#include "max1932/max1932.h"
#include "ice40/ice40.h"

#include <iostream>
#include <fstream>

// Makefile needed
// -lwiringPi

#define SRDATA 23 // Header Pin 33, GPIO13, Wiring Pi Pin 23
#define SRCLK 25  // Header Pin 37, GPIO26, Wiring PI Pin 25
#define RCLK 27   // Header Pin 36, GPIO16, Wiring PI Pin 27

// SPI Channel 0
#define CS_PIN 21
#define SPI_CHANNEL 0

// FPGA
// ICE40 reset       GPIO25, Header Pin 22, Wiring pi Pin 6
// ICE40 done        GPIO24, Header Pin 18, Wiring pi Pin 5
// SPI Channel 0
#define RST_PIN  6
#define DONE_PIN 5
#define SPI_CHANNEL 0

char inbuf[10][10];
uint16_t settings[10];
char gateware[100];

FILE * fp;
fp = fopen ("config.txt", "r");
fscanf("%s %x\n", &inbuf[0], &val);
fclose(fp);



//Global counters
static volatile int counters[] = {0,0,0,0,0,0,0};

// Prototypes
void interrupt0 (void);
void interrupt1 (void);
void interrupt2 (void);
void interrupt3 (void);
void interrupt4 (void);
void interrupt5 (void);
void interrupt6 (void);

// Argv 1 byte to output.
int main (int argc, char** argv){

  // Set voltage
  shiftRegister *shift = new shiftRegister(SRDATA, SRCLK, RCLK);
  shift->chipSelect(4);

  unsigned char maxByte = (char)strtol(argv[1], NULL, 16);;
  printf("%d\n", (int)maxByte);

  MAX1932 *hv = new MAX1932(CS_PIN, SPI_CHANNEL, 100000, 2370, 2490);
  printf("%g V\n", hv->setByte(maxByte) / 1000.0);

  shift->clear();

  // Set DACs
  shift->chipSelect(0);
  DAC60508 *dac = new DAC60508();
  dac->begin(CS_PIN, SPI_CHANNEL);
  dac->setDAC(0, 0x0000);
  dac->setDAC(1, 0x0000);
  shift->clear();

  ICE40 *fpga = new ICE40(CS_PIN, RST_PIN, DONE_PIN, SPI_CHANNEL);
  // Segmented Burn functions for external CS
  fpga->loadFile(argv[2]);
  fpga->hexDump();
  shift->chipSelect(1);
  fpga->clear();
  // shift->clear();
  fpga->dummyClocks();
  // shift->chipSelect(1);
  fpga->burn();
  fpga->confirmBurn();

  printf("Burn Confirmed\n");


  // Start logging data into console

  //   if (wiringPiISR (03, INT_EDGE_RISING,  &ssInterrupt) < 0){
  //   printf ("Unable to setup ISR: \n") ;
  //   return 1 ;
  // }
  

  //Enable interupts
  wiringPiISR (02, INT_EDGE_RISING,  &interrupt0);  // GPIO27
  wiringPiISR (04, INT_EDGE_RISING,  &interrupt1);  // GPIO23
  wiringPiISR (01, INT_EDGE_RISING,  &interrupt2);  // GPIO18
  wiringPiISR (00, INT_EDGE_RISING,  &interrupt3);  // GPIO17
  wiringPiISR (14, INT_EDGE_RISING,  &interrupt4);  // SCK
  wiringPiISR (13, INT_EDGE_RISING,  &interrupt5);  // MISO
  wiringPiISR (12, INT_EDGE_RISING,  &interrupt6);  // MOSI


  while(1){
    delay(6000);
    printf("Interupt Counts: %d,%d,%d,%d,%d,%d,%d \n", counters[0],counters[1],counters[2],counters[3],counters[4],counters[5], counters[6]);
    for(int i = 0 ; i < sizeof(counters)/sizeof(counters[0]) ; i ++){
      counters[i] = 0;
    }
  }


  return 0;
}

void interrupt0 (void){
  counters[0]++ ;
}

void interrupt1 (void){
  counters[1]++ ;
}

void interrupt2 (void){
  counters[2]++ ;
}

void interrupt3 (void){
  counters[3]++ ;
}

void interrupt4 (void){
  counters[4]++ ;
}

void interrupt5 (void){
  counters[5]++ ;
}

void interrupt6 (void){
  counters[6]++ ;
}
