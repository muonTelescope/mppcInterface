#include <stdio.h>
#include <stdlib.h>

#include <iostream>
#include <fstream>

#include <wiringPi.h>
#include <wiringPiSPI.h>

#include "ice40.h"

using namespace std;

// Instatiates a new class and sets up the pins
ICE40::ICE40(const uint8_t CS_PIN, const uint8_t DONE_PIN, const uint8_t RST_PIN, const uint8_t SPI_CHANNEL){
  _CS_PIN = CS_PIN;
  _DONE_PIN = DONE_PIN;
  _RST_PIN = RST_PIN;
  _SPI_CHANNEL = SPI_CHANNEL;
  setup(_SPI_CHANNEL, 1000000);
}

void ICE40::setup(const uint8_t SPI_CHANNEL, const uint32_t clkSpeed){
    // Initilize wiring pi libray
  wiringPiSetup () ;
  // SPI Mode 3, CPOL=1 CPHA=1, Clock Idle High, Sample on rising edge
  wiringPiSPISetupMode(_SPI_CHANNEL, clkSpeed, 3);

  // Set pin modes
  pinMode (_CS_PIN, OUTPUT);
  pinMode (_RST_PIN, OUTPUT);
  pinMode (_DONE_PIN, INPUT);
  // Enable pullup resistor
  pullUpDnControl (_DONE_PIN, PUD_UP);
}

void ICE40::configure(const char filename[]){
  loadFile(filename);
  hexDump();
  burnData();
}


void ICE40::loadFile(const char filename[]){
  // Import file
  ifstream bitstream;
  bitstream.open (filename, ios::binary);

  // Determine file size 
  _bitstreamSize = (int)bitstream.tellg();
  bitstream.seekg (0, ios::end);
  _bitstreamSize = (int)bitstream.tellg() - _bitstreamSize;
  bitstream.seekg (0);

  // Load file into data variable
  _data = new unsigned char[_bitstreamSize];
  for(int i = 0 ; i < _bitstreamSize ; i++ ){
    char readBuffer[1];
    bitstream.read(readBuffer, 1);
    _data[i] = readBuffer[0];
  }

  bitstream.close();
}


void ICE40::burnData(){
  //Clear Internal Memory
  clear();
  // 8 Dummy Clocks
  dummyClocks();
  // Burn
  burn();
  // confirm
  confirmBurn();
}

void ICE40::clear(){
  // Set CS Pin low
  digitalWrite (_CS_PIN,  LOW);
  // Set RESET Pin low
  digitalWrite (_RST_PIN,  LOW);
  // Delay Fig 13.2 200us+
  delayMicroseconds (200);
  // Set RESET Pin high
  digitalWrite (_RST_PIN,  HIGH);  
  // Wait 1200us for internal memory clear 
  delayMicroseconds (1200);
    // Set CS Pin high
  digitalWrite (_CS_PIN, HIGH);
}

void ICE40::dummyClocks(){
  // Write 8 dummy clocks
  unsigned char eightClocks[1] = {0xAA};
  wiringPiSPIDataRW (_SPI_CHANNEL, eightClocks, sizeof(eightClocks));
}


void ICE40::burn(){
    // Set CS Pin low
  digitalWrite (_CS_PIN, LOW);
  // Write BIN file over SPI, MSB First
  // for(i = 0 ; i < sizeof(data)/0x1000 ; i++ ){
    wiringPiSPIDataRW (_SPI_CHANNEL, _data, 0x1000);
    wiringPiSPIDataRW (_SPI_CHANNEL, &_data[0x1000], (_bitstreamSize - 0x1000)+1);
  // }
  
  // Set CS Pin high
  digitalWrite (_CS_PIN,  HIGH);
}

void ICE40::confirmBurn(){
    // Clock dummy pulses
  unsigned char dummyPulses[20];
  wiringPiSPIDataRW (_SPI_CHANNEL, dummyPulses , sizeof(dummyPulses));
  // Wait until done is high
  while(!digitalRead(_DONE_PIN)){}
  // Clock 49 Dummy pulses
  unsigned char dummyPulses[49];
  wiringPiSPIDataRW (_SPI_CHANNEL, dummyPulses , sizeof(dummyPulses));

  // Free memory from loadfile
  delete [] _data;
}


void ICE40::hexDump(){
    //Print out file
  const uint8_t lineWidth = 16;
  for(int i = 0 ; i < (_bitstreamSize+1) ; i+=lineWidth ){
    printf("%04x  ", i);
    for(int j = 0 ; j < lineWidth ; j++ ){
      if(i+j < _bitstreamSize){
        printf("%02x", _data[i+j]);
      }
    }
  printf("\n");
  }
}