# MPPC Interface
A single assembled board breaks out singals and provides all the interfaces that 4 [MPPC Sesnor](https://github.com/Sawaiz/mppcSensor) boards need. The power to each module is supplied via the [MPPC high voltage](https://github.com/Sawaiz/mppcHighVoltage) modules
attached board. It is able to be run independently for testing and debugging, or on a backplane with many others for more channels.

![][mppcInterfaceIsometric]

## Hardware
The board attaches directly to a raspberryPi using the centered GPIO headers. The raspberryPi is mounted to the board via four standoffs. It is a stand alone board requiring no backplane. This board can be mounted via the M5 screw holes around the edge.

### Power
Power is supplied through two pins on the edge connector, or via the micro USB port on board. There is a 600mA buck regulator that provides power when the USB port is used. The board should be powered by 3.3V and a negative power supply module with convert it to -3.3V for the biasing for the op-amps.

### High Voltage
High voltage is supplied through a daughter board. Each channel has a independent voltage source that can be temperature modulated and monitored via the on board ADC. for more information about the modules, read [here](https://github.com/Sawaiz/mppcHighVoltage).

### Microcontroller
The side of the board has a Arduino compatible ([ATmega328](http://www.atmel.com/images/Atmel-8271-8-bit-AVR-Microcontroller-ATmega48A-48PA-88A-88PA-168A-168PA-328-328P_datasheet_Complete.pdf)) microcontroller, along with a USB part, USB to UART converter and other supporting circuitry. The button is connected to the reset pin. The programing port on board is a Tag-Connect 6 pin, and is only used for programing the Arduino bootloader.

![][mppcInterfaceBack]

### I2C Switch
As all the ADC modules on the daughter boards have the same address, a 8 channel I2C switch ([TCA9548A](http://www.ti.com/lit/ds/symlink/tca9548a.pdf)) is used to communicate to them independently. The pins attached to it are referenced as master, as the microcontroller is acting as the master controlling it.


### Pinout
There are eight RJ-45 jacks on the edge of the board, each jack has the following pinout. The signal lines are kept on a single twisted pair so if a differential signal is used, higher signal integrity is maintained.

|Pin# | Pin  | Signal        |
| --- | ---- | ------------- |
| 1   | MD0+ | High Voltage  |
| 2   | MD0- | Ground        |
| 3   | MD1+ | LED           |
| 4   | MD1- | Thermistor    |
| 5   | MD2+ | +3.3V         |
| 6   | MD2- | -3.3V         |
| 7   | MD3+ | Signal+       |
| 8   | MD3- | Signal-       |

![][mppcInterfaceFront]

## Software
The device acts as both a master and slave device. It takes instructions from an external I2C bus, and executes them on the AVR microcontroller to set voltages, provide telemetry, and preform closed loop control.

### AVR
The microcontroller on board takes commands sent to the whole module, and forwards them to each daughterboard. It primary control loop involves reading the temperature, finding the associated required bias voltage based on the temperature and setting the voltage on the high voltage supply, then checking if the output voltage is within specification of the required output, and fixing it if not. This loops for all eight channels. Otherwise there is an instruction queue of commands that come into the module.

### Module
The master can communicate to up to 128 slave devices the address is set within software. The master can request the temperature, or current voltage of any of the eight channels on board, select between different voltage to temperature curves, and set the bias voltage, or pulse the LED on the modules.


[mppcInterfaceIsometric]: cad/renderings/mppcInterfaceIsometric.jpg "View of Back of Board"
[mppcInterfaceFront]: cad/renderings/mppcInterfaceFront.jpg "Direct front view"
[mppcInterfaceBack]: cad/renderings/mppcInterfaceBack.jpg "Board rendering with EMI shield"
