//C Wiring Pi library for interfacing with the DAC60508 12b DAC
#ifndef __DAC60508_H__
#define __DAC60508_H__

#include <stdint.h>

// Register Map
#define DAC60508_NOP       0x00        //REG0x00:NOP         No Operation
#define DAC60508_DEVICEID  0x01        //REG0x01:DEVICEID    Device ID [15:2], Version ID [1:0]
#define DAC60508_SYNC      0x02        //REG0x02:SYNC        Broadcast [8:15], Sync [0:7]
#define DAC60508_CONFIG    0x03        //REG0x03:CONFIG      Configuration Options
#define DAC60508_GAIN      0x04        //REG0x04:GAIN        Reference and Buffer Gain
#define DAC60508_TRIGGER   0x05        //REG0x05:TRIGGER     Trigger sync buffer
#define DAC60508_BRDCAST   0x06        //REG0x06:BRDCAST     Data to broadcast to all CH [15:0]
#define DAC60508_STATUS    0x07        //REG0x07:STATUS      Refrence Alarm [0]

#define DAC60508_DAC0      0x08        //REG0x08:DAC0        CH0 data [15:0]
#define DAC60508_DAC1      0x09        //REG0x09:DAC1        CH1 data [15:0]
#define DAC60508_DAC2      0x0A        //REG0x0A:DAC2        CH2 data [15:0]
#define DAC60508_DAC3      0x0B        //REG0x0B:DAC3        CH3 data [15:0]
#define DAC60508_DAC4      0x0C        //REG0x0C:DAC4        CH4 data [15:0]
#define DAC60508_DAC5      0x0D        //REG0x0D:DAC5        CH5 data [15:0]
#define DAC60508_DAC6      0x0E        //REG0x0E:DAC6        CH6 data [15:0]
#define DAC60508_DAC7      0x0F        //REG0x0F:DAC7        CH7 data [15:0]

//REG0x02:SYNC        Broadcast [8:15], Sync [0:7]
#define DAC60508_DAC0_SYNC_EN       0  //CH0 Sync Source   1:LDAC Trigger  0:Automatic   (0-Default)
#define DAC60508_DAC1_SYNC_EN       1  //CH1 Sync Source   1:LDAC Trigger  0:Automatic   (0-Default)
#define DAC60508_DAC2_SYNC_EN       2  //CH2 Sync Source   1:LDAC Trigger  0:Automatic   (0-Default)
#define DAC60508_DAC3_SYNC_EN       3  //CH3 Sync Source   1:LDAC Trigger  0:Automatic   (0-Default)
#define DAC60508_DAC4_SYNC_EN       4  //CH4 Sync Source   1:LDAC Trigger  0:Automatic   (0-Default)
#define DAC60508_DAC5_SYNC_EN       5  //CH5 Sync Source   1:LDAC Trigger  0:Automatic   (0-Default)
#define DAC60508_DAC6_SYNC_EN       6  //CH6 Sync Source   1:LDAC Trigger  0:Automatic   (0-Default)
#define DAC60508_DAC7_SYNC_EN       7  //CH7 Sync Source   1:LDAC Trigger  0:Automatic   (0-Default)

#define DAC60508_DAC0_BRDCAST_EN    8  //CH0 Broadcast      1:Enabled       0:Disabled    (1-Default)
#define DAC60508_DAC1_BRDCAST_EN    9  //CH1 Broadcast      1:Enabled       0:Disabled    (1-Default)
#define DAC60508_DAC2_BRDCAST_EN   10  //CH2 Broadcast      1:Enabled       0:Disabled    (1-Default)
#define DAC60508_DAC3_BRDCAST_EN   11  //CH3 Broadcast      1:Enabled       0:Disabled    (1-Default)
#define DAC60508_DAC4_BRDCAST_EN   12  //CH4 Broadcast      1:Enabled       0:Disabled    (1-Default)
#define DAC60508_DAC5_BRDCAST_EN   13  //CH5 Broadcast      1:Enabled       0:Disabled    (1-Default)
#define DAC60508_DAC6_BRDCAST_EN   14  //CH6 Broadcast      1:Enabled       0:Disabled    (1-Default)
#define DAC60508_DAC7_BRDCAST_EN   15  //CH7 Broadcast      1:Enabled       0:Disabled    (1-Default)

//REG0x03:CONFIG      Configuration Options
#define DAC60508_DAC0_PWDWN         0  //CH0 Power State    1:Disabled      0:Enabled     (0-Default)
#define DAC60508_DAC1_PWDWN         1  //CH1 Power State    1:Disabled      0:Enabled     (0-Default)
#define DAC60508_DAC2_PWDWN         2  //CH2 Power State    1:Disabled      0:Enabled     (0-Default)
#define DAC60508_DAC3_PWDWN         3  //CH3 Power State    1:Disabled      0:Enabled     (0-Default)
#define DAC60508_DAC4_PWDWN         4  //CH4 Power State    1:Disabled      0:Enabled     (0-Default)
#define DAC60508_DAC5_PWDWN         5  //CH5 Power State    1:Disabled      0:Enabled     (0-Default)
#define DAC60508_DAC6_PWDWN         6  //CH6 Power State    1:Disabled      0:Enabled     (0-Default)
#define DAC60508_DAC7_PWDWN         7  //CH7 Power State    1:Disabled      0:Enabled     (0-Default)

#define DAC60508_REF_PWDN           8  //Ref Power State    1:Disabled      0:Enabled     (0-Default)
#define DAC60508_DSDO               9  //Data out           1:Disabled      0:Enabled     (0-Default)
#define DAC60508_FSDO              10  //Fast SDO           1:Enabled       0:Disabled    (0-Default)
#define DAC60508_CRC_EN            11  //CRC                1:Enabled       0:Disabled    (0-Default)
#define DAC60508_ALM_EN            12  //Alarm Enable       1:Enabled       0:Disabled    (0-Default)
#define DAC60508_ALM_SEL           13  //Alarm Select       1:REF           0:CRC         (0-Default)

//REG0x04:GAIN        Reference and Buffer Gain
#define DAC60508_BUFF0GAIN          0  //CH0 Buffer Gain    1:Gain 2x       0:Gain 1x     (0-Default)
#define DAC60508_BUFF1GAIN          1  //CH1 Buffer Gain    1:Gain 2x       0:Gain 1x     (0-Default)
#define DAC60508_BUFF2GAIN          2  //CH2 Buffer Gain    1:Gain 2x       0:Gain 1x     (0-Default)
#define DAC60508_BUFF3GAIN          3  //CH3 Buffer Gain    1:Gain 2x       0:Gain 1x     (0-Default)
#define DAC60508_BUFF4GAIN          4  //CH4 Buffer Gain    1:Gain 2x       0:Gain 1x     (0-Default)
#define DAC60508_BUFF5GAIN          5  //CH5 Buffer Gain    1:Gain 2x       0:Gain 1x     (0-Default)
#define DAC60508_BUFF6GAIN          6  //CH6 Buffer Gain    1:Gain 2x       0:Gain 1x     (0-Default)
#define DAC60508_BUFF7GAIN          7  //CH7 Buffer Gain    1:Gain 2x       0:Gain 1x     (0-Default)

#define DAC60508_REFDIV_EN          8  //Refrence Divider   1:Gain 0.5x     0:Gain 1x     (0-Default)


#define DAC60508_BUFFER_GAIN_2X     1   
#define DAC60508_BUFFER_GAIN_1X     0 

#define DAC60508_REF_GAIN_0X5       1   
#define DAC60508_REF_GAIN_1X0       0  

#define DAC60508_SPI_REG_INDEX     16
#define DAC60508_SPI_RW_INDEX      23
#define DAC60508_SPI_READ           1  
#define DAC60508_SPI_WRITE          0 


class DAC60508 {
  public:
    DAC60508();
    bool begin(uint8_t CS, uint8_t SPI_CH);
    bool begin(uint8_t CS, uint8_t SPI_CH, float extRef);
    float readmVDAC(uint8_t channel);
    uint16_t setmVDAC(uint8_t channel, uint16_t value);
    bool setGain(uint8_t channel, uint8_t value);
    uint16_t readDAC(uint8_t channel);
    bool setDAC(uint8_t channel, uint16_t value);

  private:
    void write(uint8_t reg, uint16_t val);
    void writeBit(uint8_t reg, uint8_t bit);
    void clearBit(uint8_t reg, uint8_t bit);

    uint16_t  read(uint8_t reg);
    bool  readBit(uint8_t reg, uint8_t bit);

    void  readUntilTrue(uint8_t reg, uint8_t bit);
    void  readUntilFalse(uint8_t reg, uint8_t bit);

    uint8_t _SPI_CHANNEL;
    uint8_t _CS_PIN;

    bool refDiv;
    bool buffGain[8];
    float refV;

};

#endif //__DAC60508_H__