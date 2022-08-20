[headerIMG]

# MPPC Interface
Measuring and logging photon level light sources is a large part of high energy physics instrumentaiton. This board was created to power and collect data from eight MPPC (Multi Pixel photon counters) or SiPM (Silicon Photomultiplers). Provide coincidence logic and log the data out to a Raspberry Pi.

[img]

This is the main conntroller board of the muon telescope project. This board aimts to replace the current tools used

This is the technical manual for anyone wanting to modify, hack, remix, or program their own SiPM readout. The manual goes into fine detail about construction, assembly, and firmware which should encompass all basic knowledge.

## TOC


## Design
THe design was based off a combiniation of topologies from [sPhenix] design, our previous hardware iterations, and new needs in this version. The MPPCs need a very stable high voltage bias voltage that can be controled over this range in sub-milivolt steps. 

[topologyDiagarm]

This is done thoug hthe top high voltage being controalbe in 1V steps and is common across all eight chanels and a eight channel bottom DAC that provides a controlable virtual ground seperately for each channel.

The anode signal is then sent though a high amplification instrumentation amplifier and then sent to the FPGA's schmitt inputs. The conicidence logic is then done in the FPGA and its outputs are mapped to interupt vectors on the host machine.


### Components
Component selection was built off previous verisons, and the specific use case  of driving [Hamamtsu]'s MPPCs. The major ICs and other unique componets will be descibed below.

#### High Voltage Boost
*Maxim Semiconducr's* [MAX1932] has proven itself with proper layout in pervious interations of the design to provide a stable, controlable, low ripple high voltage for avalanche photodidoes. 

THe chip interanlly has a boost controller, current sensing for a current limit, and a 8b DAC that can be tied in to set the voltage over SPI.

#### Bottom DAC
The other half of the bias voltage is handled by the *Texas Instument* [DAC60508] 8 channel 12b (with a direct drop in replace for up to 16b) digital to analog converter. The linear regulation inside provides a stable output, and using the internal `2.5 V` precsion refrence LSB steps of `0.6 mV` are achived. THe output is highly linear and monotonic. 

The power consuption is also low at `0.6mA/ch` for future power constrained applicaitons.




### Schematic
### Layout
### Mechanics

## Firmware
### High Voltage
### Bottom DAC
### FPGA burning
### Compiling
### Flashing

## Gateware
### Pin connections
### Logic
### Compiling
### Flashing


## Setup
Download and flash a copy of the [Raspberry Pi OS](https://www.raspberrypi.com/software/) using either `dd` or the *Raspberry Pi imager* software.

### Raspberry Pi imager
Select the Raspberry Pi OS Lite and in advanced configuration menu (CTRL+SHIFT+X) enable ssh and add the WiFi credentials if the device will be connected over wireless network.


This video also shows using the software to flash a SD card [How to use Raspberry Pi Imager](https://www.youtube.com/watch?v=ntaXWS8Lk34)


### Advanced install with `dd`
Be very careful using `dd` to copy the image to the SD card. `dd` is a direct bit copy from the imput file to the output file and will indescriminately write over any drives without any checks or protection.

```bash
df -h
sudo umount sdx
sudo dd bs=4M if=<imgPath.img> of=/dev/sdx
```

Enable ssh by creating a blank `ssh` file in the root directory called *boot*.
```bash
cd boot
touch ssh
```

To setup connectingto WiFi on boot, a `/boot/wpa_supplicant.conf` file is created that is automatically copied over to `/etc/wpa_supplicant/wpa_supplicant.conf` on the next boot. 

```bash
nano /boot/wpa_supplicant.conf
```

And add in the relevant configuration.

```
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
country=<Insert 2 letter ISO 3166-1 country code here>
update_config=1

network={
 ssid="<Name of your wireless LAN>"
 psk="<Password for your wireless LAN>"
}
```

Insert the SD card into the Raspberry Pi, connect the ethernet cable (if connecting over wired network), and power (unless connecting though POE) and connect to the device using ssh.

You can figure out the IP address in several ways on linux you can use `nmap` or `arp` to search for the Raspberry Pi foundation's OUID (`DC:A6:32` for Raspberry Pi 4, `B8:27:EB` otherwise) on your local subnet. 

```bash
nmap -sP 192.168.1.0/24 | awk '/^Nmap/{ip=$NF}/B8:27:EB/{print ip}'
```

```bash
arp -na | grep -i b8:27:eb
```

For Windows
```cmd
arp -a | findstr b8-27-eb
```

It is also possible to ping a new install with the default hostname if DNS or the bonjour service has the device in its tables.

```bash
ping raspi
```

### Bootstrap
The setup script in the root directory can be run to set up a Raspberry pi from scratch. 

Connect to the raspberry pi using the IP adress found.
```bash
ssh pi@192.168.1.*
sudo apt install -y git
```

```bash
git clone https://github.com/muonTelescope/mppcInterface.git
cd mppcInterface
```

The root directory includes a setup script that updates the operationg system, sets up accounts, installs the toolchain, and enables all required modules. On cloning th repository on the Raspberry Pi, this file shoud be made executable and run.

```bash
chmod +x setup.sh
sudo ./setup.sh
```

expand filwsystem, not needed as pi does it on boot now.








get mac adress to set hostname
```bash
cat /sys/class/net/eth0/address | cut -d: -f4- | sed 's/://g' | tr [:lower:] [:upper:]
```

channelSelect.sh
```bash
#!/bin/bash

dtparam spi=off

gpio mode 6  out  # CS_DAC
gpio mode 23 out  # CS_MAX1932
gpio mode 5  out  # CS_FPGA

gpio write 6  1
gpio write 23 1
gpio write 5  1

sleep 2

gpio mode 12 out # MOSI
gpio mode 13 out # MISO
gpio mode 14 out # SCK

gpio write 12 $1
gpio write 13 $2
gpio write 14 $3

sleep 2
#rmmod spi_bcm2835
#modprobe spi_bcm2835

dtparam spi=on
```

softwareSerial read python
```python
import sys
import time
import difflib
import pigpio
import datetime
import binascii

RX=17

try:
        pi = pigpio.pi()
        pi.set_mode(RX, pigpio.INPUT)
        pi.bb_serial_read_open(RX, 115200, 8)

        print "DATA - SOFTWARE SERIAL:"
        while 1:
                (count, data) = pi.bb_serial_read(RX)
                if count:
			print str(datetime.datetime.now()) + " " +  str(binascii.hexlify(data))
                time.sleep(0.5)

except Exception as e:
	print(e)
        pi.bb_serial_read_close(RX)
        pi.stop()
```


A controller board for 

This is a continuation of a long process, over five years at this point. It is also part of a much broader set of tools and parts that make up the Muon Telesecope.

## Design

## Hardware
There are three main sections to the hardware. High voltage generation and control, Analog front end, and digital logic conatined in the FPGA.

### Bias Voltage
The MPPCs requre a bias of around 80V (varies greatly by model) with very low ripple and high precision. The gain of the sensors varies with respect to the voltage put across them and even a deviation of 10mV has a significat impact on the gain. The gain is also a function of ambient temperature and the bias needs to be controlabe to within a mV to adjust the gain as temperature changes.

[Gain vs Bias]
[Gain Vs temp chart]

The bias voltage is set though a top high voltage rail and a bottom DAC. This approach allows for a very high precision on the bottom dac along with the range on the top HV. With a 16b DAC, steps of under 100uV are possible, whcih is below the accuracy of most of the rest of the supply

For example to set the voltage to 78.434 the top rail is set to its minimal on voltage to ensure there is never a risk of a forward bias (although with the HV off the output is at 4.5V, the input voltage save the shotky didode drop so the risk is only there if the dac is ser to near its max voltage which may still be below the conduction voltage of the MPPC), then the bottom rail can be set to 1.566V, followed by the HV rail being set to 80V providing a voltage diffreential of 78.434 across the sensor.

#### HV Rail
The top high voltage rail is created using Maxim's [MAX1932] APD bias boost converter. This IC provides a low ripple 5V input to 55V to 110V output (design configurable to 20V-100V) with 8b digital control over SPI and built in current limiting set at 2.5mA.

Using a high amount of filtering on the inputs and outpurs, large bulk capacitors, a tight layout, EMC shields, and sectioned off ground and power planes, the output ripple as well as emitted noise is reduced significantly. The output ripple is well below 1mV.

The voltage range, and step size is dictated with setting R2, R3, and R4. The minimum and maximum voltage set using the equations for on page 7 of the datasheet, and there are 8 bits (256) intermediate values that are possible. The high switching portion was designed with general SMPS design requirements (short high current loops, separated ground planes, EMI shielding) providing a low ripple output (<5mVpp ripple) and no significant back EMF.

The Setting resistors are 0.01% and the chip provides a 0.5% accuracy which needs to be calibrated. The calibration and certification procedure is provided in another section of documention.

[Table of set R values and the range they create]
[Fucntion of byte to voltage with perfect resistors]

#### Bottom DAC

The "Bottom DAC" is the term used to describe the arrangement where the voltage supply at the anode of a reverse biased SiPM is used to "subtract" from the top bias voltage. It is implemented with a eight channel 16b [DAC80508] by Texas Instruments. This provides independent control with a 5V range for each of the eight chanels. 

### Analog Front End
The analog front end amplifier is also highly specilized. The design condierations to be considered are considerable and require specilized parts [MPPC AFE talk]. In the end the selection is a very high bandwidth low noise instrumentation amplifier with a 400x gain. The [OPA846] has a high slew rate of 625V/us and a gain bandwith product of 1.75Ghz providing a adequate bandwith of ~4.3Mhz with our gain. 

[Outfput waveform]

This provides waveforms from over xx photons to reach the 1.4V lower schmitt threadhold of the digital logic 3.3V/2-100mV. 

[Photn and gain calculation]
x photons needed * 40% efficency * 	1.7E6 * 1.602E-19C / nS?	

The aplifier's input in coupled with a DC blocking capacitor and routed very tightly on a single layer to reduce noise and emissions that will easily be amplified with such a high gain. The gain of 400x is acivhed with a 20k and 50R positive feedback in a non-inverting configuration. The output is AC coupled to make sure the output has minimal capacitive loading especially since we are only looking for a hihg speed signal output.

[Routing of AFE]

#### Digital Logic
The digital logic is done with a FPGA and can be reconfigured though gateware based on the detector configuration. The eight channels are connected to the GPIO and the schmitt inputs act as discriminators. The rest of the lines are run to three LEDs that can be used for indication and to the GPIO of the Raspberry Pi.

#### Power supply
The general supply rails are provide dby the host Raspberry pi connector. The entire board uses about 1W across all the modules. The 5V supply, after some back EMF filtering is provided to the HV supply as well as the AFE power module. The 3.3V is used on the FPGA and the signaling Power supply of the DAC.

Very stable +-5V rails are required for the analog front end to have have the low noise it needs. The Analog \pm 5V is seperated to its own power planes and is hevily filtered and decoupled ensuring very little noise that would show amplifed on the output. This supply is generated thougha commerical module which is rated at a low ripple and switching frequency.

A 1.2V linear regulator provides the core voltage to the FPGA.

#### Mounting
The hat is attached to the raspberry pi with four 2.6mm mounting holes form M2.5 screwas nad standoffs. A M2.5x11 standoff provides mounting and clearence. The size of the module is showin in the drawing below, it is the same sizing as a raspberry pi zero.

## Firmware
This repository contains firmware in the form of C++ libraries that can be linked into your own code as well as a basic data logging application that sets up everything and logs the counts to a file. 

#### High Voltage
The SPI bus is connected directly to the MAX1932. Chip select is active low and data is sent MSB (most significant bit first). Sending bytes to it sets the voltage. Setting them to 0x00 turns off the DC-DC converter portion. As values increase to 0xFF (256), the output voltage falls linearly.

```Arduino
//Example Arduino code that loops through all voltages.
//SCLK --> Pin 13 for Uno or Duemilanove
//DIN ---> Pin 11 for Uno or Duemilanove

#include <SPI.h>
#define CS 2 //Any pin

void setup(){
	Serial.begin(9600);
	pinMode(CS, OUTPUT);
	digitalWrite(CS, HIGH);
	SPI.begin();
	SPI.setBitOrder(MSBFIRST);
}

void loop(){
	for(int i = 0 ; i < 256 ; i++){
		digitalWrite(CS, LOW);
		SPI.transfer(i);
		digitalWrite(CS, HIGH);
		Serial.println(i);
	}
}
```

---
In the config file the voltage is set for 25*. 


#### DAC


## Gateware

#### Flashing

##### Clearing
##### Burning
##### File format

##### Compilation
###### Yosys
###### AracnePNR


## Absolute Maximum ratings
## Gaurenteed Ratings
## Manufacturing
### BOM
### PCB Assembly
The board has three fiducials and 1.152mm tooling holes for automated assembly.
### Artwork
### Labeling
## Safety
## Certifications
## Licence
## Attributions


- HV Calibration procedure and certification.

Glossary
MPPC Multi pixel photon counter, Hamamtsu Photonics's 
SiPM
DAC
Bias













# Old Version of docs


A single assembled board breaks out singals and provides all the interfaces that 4 [MPPC Sesnor](https://github.com/Sawaiz/mppcSensor) boards need. The power to each module is supplied via the [MPPC high voltage](https://github.com/Sawaiz/mppcHighVoltage) modules
attached board. It is able to be run independently for testing and debugging, or on a backplane with many others for more channels.

![][mppcInterfaceAssembly]


## Expansion Format

### SPI
The SPI exapansion format is designed to be infinetly expandable up to the signal propgation length and capactive loading. 

The Design of the SPI system is chained shift registers. The shift registers 

SPI EEPROM lies on each expansion board and has the code needed to interface with it (this sounds beautiful, really).
The EEPROM contains the device enumeration and drivers for all the 8 slots on its adress.
Master downloads drivers 


### I2C

## Hardware
The board attaches directly to a Raspberry Pi using the centered GPIO headers. The Raspberry Pi is mounted to the board via four standoffs. It is a stand alone board requiring no backplane. This board can be mounted via the M5 screw holes around the edge.

### Power
Power is supplied through two pins on the edge connector, or via the micro USB port on board. There is a 600mA buck regulator that provides power when the USB port is used. The board should be powered by 3.3V and a negative power supply module with convert it to -3.3V for the biasing for the op-amps.

### High Voltage
High voltage is supplied through a daughter board. Each channel has a independent voltage source that can be temperature modulated and monitored via the on board ADC. for more information about the modules, read [here](https://github.com/Sawaiz/mppcHighVoltage).

![][mppcInterfaceTopISO]

### Microcontroller
The side of the board has a Arduino compatible ([ATmega328](http://www.atmel.com/images/Atmel-8271-8-bit-AVR-Microcontroller-ATmega48A-48PA-88A-88PA-168A-168PA-328-328P_datasheet_Complete.pdf)) microcontroller, along with a USB part, USB to UART converter and other supporting circuitry. The button is connected to the reset pin. The programing port on board is a Tag-Connect 6 pin, and is only used for programing the Arduino bootloader.

![][mppcInterfaceBottom]

### I2C Switch
As all the ADC modules on the daughter boards have the same address, a 8 channel I2C switch ([TCA9548A](http://www.ti.com/lit/ds/symlink/tca9548a.pdf)) is used to communicate to them independently. The pins attached to it are referenced as master, as the microcontroller is acting as the master controlling it.


## BOM
The bill of materials is availible in [bom.csv](bom.csv) and is copied into a table below.

| Ref Des                                                                                          | Qty | Manufacturer          | MPN                 | Description                      |
| ------------------------------------------------------------------------------------------------ | ---:| --------------------- | ------------------- | -------------------------------- |
| C1                                                                                               | 1   | Wuerth Elektronik     | 885012105011        | CAP CER 0.22UF 10V X5R 0402      |
| C2                                                                                               | 1   | Wuerth Elektronik     | 885012208116        | CAP CER 0.047UF 100V X7R 1206    |
| C3 C5 C7 C9 C11 C13 C15 C17                                                                      | 8   | Wuerth Elektronik     | 885012205016        | CAP CER 0.047UF 10V X7R 0402     |
| C19                                                                                              | 1   | Samsung               | CL21B105KOFNNNG     | CAP CER 1UF 16V X7R 0805         |
| C20                                                                                              | 1   | Samsung               | CL31B105KCHNNNE     | CAP CER 1UF 100V X7R 1206        |
| C21                                                                                              | 1   | AVX                   | 22201C106MAT2A      | CAP CER 10UF 100V X7R 2220       |
| C22 C24                                                                                          | 2   | Murata                | GRM155C80J106ME11D  | CAP CER 10UF 6.3V X6S 0402       |
| C29 C28 C34 C33 C39 C38 C44 C43 C49 C48 C54 C53 C59 C58 C64 C63                                  | 16  | Wuerth Elektronik     | 885012105016        | CAP CER 0.1UF 16V X5R 0402       |
| C23 C32 C31 C27 C26 C37 C41 C42 C36 C4 C25 C6 C30 C8 C35 C10 C40 C12 C45 C14 C50 C16 C55 C18 C60 | 25  | Samsung               | CL05A105MP5NNNC     | CAP CER 1UF 10V X5R 0402         |
| C65                                                                                              | 1   | TDK                   | C1005X5R1A335M050BC | CAP CER 3.3UF 10V X5R 0402       |
| R1                                                                                               | 1   | Stackpole Electronics | RMCF0402FT1M13      | RES 1.13M OHM 1% 1/16W 0402      |
| R2                                                                                               | 1   | Stackpole Electronics | RMCF0402JT20R0      | RES 20 OHM 5% 1/16W 0402         |
| R3                                                                                               | 1   | Yageo                 | RT0402BRD072K49L    | RES SMD 2.49KOHM 0.1% 1/16W 0402 |
| R4                                                                                               | 1   | Yageo                 | RC0402FR-07806RL    | RES SMD 806 OHM 1% 1/16W 0402    |
| R5                                                                                               | 1   | Yageo                 | RT0402BRD07100KL    | RES SMD 100K OHM 0.1% 1/16W 0402 |
| R6                                                                                               | 1   | TE Connectivity       | CPF0402B23R7E1      | RES SMD 23.7 OHM 0.1% 1/16W 0402 |
| R7 R12 R17 R22 R27 R32 R37 R42                                                                   | 8   | Yageo                 | RT0402DRE071KL      | RES SMD 1K OHM 0.5% 1/16W 0402   |
| R8 R9 R13 R14 R18 R19 R23 R24 R28 R29 R33 R34 R38 R39 R43 R44                                    | 16  | Panasonic             | ERJ-2RKD49R9X       | RES SMD 49.9 OHM 0.5% 1/16W 0402 |
| R10 R15 R20 R25 R30 R35 R40 R45                                                                  | 8   | Stackpole Electronics | RNCF0402DTE20K0     | RES 20K OHM 0.5% 1/16W 0402      |
| R11                                                                                              | 1   | Stackpole Electronics | RMCF0402FT499K      | RES 499K OHM 1% 1/16W 0402       |
| D2                                                                                               | 1   | ON Semiconductor      | FDLL4148            | DIODE GEN PURP 100V 200MA LL34   |
| J1 J2 J3 J4 J5 J6 J7 J8                                                                          | 8   | Hirose                | U.FL-R-SMT-1(40)    | CONN U.FL RCPT STR 50 OHM SMD    |
| J9                                                                                               | 1   | Sullins               | SFH11-PBPC-D20-ST-BK| CONN HDR 40POS 0.1 GOLD PCB      |
| J10                                                                                              | 1   | FCI                   | 54601-906WPLF       | CONN MOD JACK 6P6C R/A UNSHLD    |
| J11                                                                                              | 1   | Harwin                | M20-8760542         | CONN HEADER SMD 10POS 2.54MM     |
| J12                                                                                              | 1   | FCI                   | 54602-908LF         | CONN MOD JACK 8P8C R/A UNSHLD    |
| L1                                                                                               | 1   | Bourns                | SRN4018-151M        | FIXED IND 150UH 320MA 2.4 OHM    |
| L2                                                                                               | 1   | Taiyo Yuden           | CBC3225T102KR       | FIXED IND 1MH 100MA 13 OHM SMD   |
| Q1                                                                                               | 1   | ON Semiconductor      | BSS123L             | MOSFET N-CH 100V 0.17A SOT-23    |
| U1                                                                                               | 1   | Texas Instruments     | DAC60508ZRTER       | IC DAC 12BIT V-OUT 16WQFN        |
| U2                                                                                               | 1   | Microchip             | MIC5504-1.2YM5-TR   | IC REG LINEAR 1.2V 300MA SOT23-5 |
| U3                                                                                               | 1   | Texas Instruments     | LM27761DSGR         | IC REG CHARGE PUMP ADJ 8WSON     |
| U4                                                                                               | 1   | Nexperia              | 74HC595PW-112       | IC 8BIT SHIFT REGISTER 16TSSOP   |
| U5                                                                                               | 1   | Maxim Integrated      | MAX1932ETC+T        | IC REG CTRLR FBR OPT 1OUT 12TQFN |
| U6 U7 U8 U9 U10 U11 U12 U13                                                                      | 8   | Texas Instruments     | OPA846IDBVT         | IC OPAMP VFB 1 CIRCUIT SOT23-5   |
| U14                                                                                              | 1   | Lattice Semiconductor | ICE40LP384-SG32     | IC FPGA 21 I/O 32QFN             |

Aslo availible though [octopart](https://octopart.com/bom-tool/T0iNvVYe) 

![][mppcInterfaceBottomISO]

## Software
The device acts as both a master and slave device. It takes instructions from an external I2C bus, and executes them on the AVR microcontroller to set voltages, provide telemetry, and preform closed loop control.

### AVR
The microcontroller on board takes commands sent to the whole module, and forwards them to each daughterboard. It primary control loop involves reading the temperature, finding the associated required bias voltage based on the temperature and setting the voltage on the high voltage supply, then checking if the output voltage is within specification of the required output, and fixing it if not. This loops for all eight channels. Otherwise there is an instruction queue of commands that come into the module.

### Module
The master can communicate to up to 128 slave devices the address is set within software. The master can request the temperature, or current voltage of any of the eight channels on board, select between different voltage to temperature curves, and set the bias voltage, or pulse the LED on the modules.


[mppcInterfaceAssembly]:  cad/renderings/mppcInterfaceAssembly.png  "View of Back of Board"
[mppcInterfaceTopISO]:    cad/renderings/mppcInterfaceTopISO.png    "Direct front view"
[mppcInterfaceBottomISO]: cad/renderings/mppcInterfaceBottomISO.png "Board rendering with EMI shield"
[mppcInterfaceBottom]:    cad/renderings/mppcInterfaceBottom.png    "Board rendering with EMI shield"
