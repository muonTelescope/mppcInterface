# Development Tools
Development and testing tools run from command line and interact directly with the hardware. The tools provide everything that one can do from the web interface.

## Structure
The code is copied and trimmed down from what is used on the website backend, and is written in javascript. There are bash files that call the functions through nodejs and they make sure it is run with proper permissions and enough arguments.

## Installation
Install the required packages with 
```bash
npm install
```
As these integrate with hardware on a raspberry pi, you will need to build/compile them on the Broadcom chip itself. After the install, you should have a "node_modules" folder in the root project directory.

## Run
Each module is different and requires its own function call. All need to be run as root as hardware GPIO access is privileged

### Current Status
Prints out all the voltages, temperatures, and targets of all eights channels on slave address of 0x08
```bash
sudo ./voltageDump.sh
```
Response is a markdown compatible table
```md
|Board   0x08|  Channel 0 |  Channel 1 |  Channel 2 |  Channel 3 |  Channel 4 |  Channel 5 |  Channel 6 |  Channel 7 |
|------------|------------|------------|------------|------------|------------|------------|------------|------------|
|Target   (V)|   0.000000 |  55.110000 |  55.120000 |  55.170000 |   0.000000 |   0.000000 |   2.887680 |   0.000000 |
|Voltage  (V)|   4.484427 |  55.589808 |  55.323148 |  55.523284 |   0.000000 |   0.000000 |   0.000000 |   0.000000 |
|Temp     (C)|  11.174347 |  16.505951 |  21.479584 |  18.281768 |   0.000000 |   0.000000 |   0.000000 |   0.000000 |

```
The current voltage may not match the target. The firmware on each board should be temperature compensating the bias voltage depending on temperature. The target refers to the voltage at 25C.

### Sensor Temp
Given the channel on a board connected with the slave address of 0x08, it prints out the temperature in degrees Celsius.
```bash
sudo ./getTemp.sh <channel>
```
For example, to read the temperature from the sensor connected to the third port (channel 2, they index from 0).
```bash
sudo ./getTemp.sh 2
```
And the response is just
```bash
21.44754
```

### Current Voltage
Given the channel on a board connected with the slave address of 0x08, it prints out the voltage output from the power supply.
```bash
sudo ./getVoltage.sh <channel>
```
For example, to read the voltage from the sensor connected to the third port (channel 2, they index from 0).
```bash
sudo ./getVoltage.sh 2
```
And the response is just
```bash
55.322936
```

### Read Target Voltage
Given the channel on a board connected with the slave address of 0x08, it prints out the target voltage at 25C.
```bash
sudo ./getTarget.sh <channel>
```
For example, to read the target for the third port (channel 2, they index from 0).
```bash
sudo ./getTarget.sh 2
```
And the response is just
```bash
55.12
```

### Set Target Voltage
Given the channel on a board connected with the slave address of 0x08, it sets the target voltage at 25C.
```bash
sudo ./setTarget.sh <channel>
```
For example, to set the target for the third port (channel 2, they index from 0) to 55.12V.
```bash
sudo ./setTarget.sh 2 55.12
```
There is no response. Reading the target voltage can be used to confirm that the target was changed.

### GPS
If a GPS module is populated, running
```bash
./gpsData.sh
```
Will return
```javascript
{ time: 2016-11-14T07:20:12.000Z,
  latitude: 33.7535,
  longitude: -84.38733333333333,
  altitude: 322.9,
  speedKph: 0.424,
  trueCourse: 'N/A',
  PDOP: 12.12,
  HDOP: 4.79,
  VDOP: 11.13,
  vaild: true }
```
### SHT3X
SHT3X is a temperature and humidity module.
```bash
sudo ./sht3x.sh
```
Returns a JSON formatted object with temperature is Celsius, Fahrenheit, and relative humidity in percent
```javascript 
{ temp: 30004,
  humdity: 18553,
  temp_F: 95.21698329137104,
  temp_C: 35.1205462729839,
  RH: 28.31006332494087 }
```

### MPL3115A2
The MPL3115A2 is a temperature and pressure sensor.
```bash
sudo ./mpl3115a2.sh
``` 
Returns a JSON formatted object containing pressure in pascals and temperature in degrees Celsius
```javascript
{ pressure_H: 94,
  pressure_C: 93,
  pressure_L: 176,
  temp_H: 36,
  temp_L: 128,
  pressure: 386523,
  pascals: 96630.75,
  temp: 584,
  temp_C: 36.5 }
```

### Log Data
The log data module takes two additional parameters. The duration between each log in milliseconds, and the directory location to write the file to.
```bash
sudo ./logdata.sh <duration (ms)> <file location>
```
As the program runs, it also prints the contents of what it writes to the logfile to STDOUT. For example, to run the script with one minute time intervals and store the logfile in a parent directory logs folder run the following.
```bash
sudo ./logData.sh 60000 ../logs/
```
Below is an example of the file `2017-04-24T21:00:07.503Z.log`
```
date,Zero and One,Zero and Two,Zero and Three,One and Two,One and Three,Two and Three,Zero,One,Two,Three,
2017-04-24T21:01:07.625Z,0,0,0,0,37,0,0,830,0,688,
2017-04-24T21:02:07.634Z,0,0,0,0,44,0,0,843,0,725,
2017-04-24T21:03:07.639Z,0,0,0,0,40,0,0,869,0,717,
2017-04-24T21:04:07.643Z,0,0,0,0,36,0,0,810,0,688,
2017-04-24T21:05:07.647Z,0,0,0,0,42,0,0,860,0,673,
2017-04-24T21:06:07.652Z,0,0,0,0,47,0,0,888,0,728,
```
