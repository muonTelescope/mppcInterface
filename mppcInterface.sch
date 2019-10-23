EESchema Schematic File Version 4
LIBS:mppcInterface-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 10
Title "MPPC Interface Board"
Date ""
Rev "1.2"
Comp "Sawaiz Syed"
Comment1 "Georgia State Univertiy"
Comment2 "Nuclear Physics Group"
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 6350 850  650  300 
U 5C221BCC
F0 "AMP-CH0" 50
F1 "OPA846.sch" 50
F2 "Signal" O R 7000 950 50 
F3 "HV" I L 6350 950 50 
F4 "DAC" I L 6350 1050 50 
$EndSheet
$Sheet
S 6350 1350 650  300 
U 5C227394
F0 "AMP-CH1" 50
F1 "OPA846.sch" 50
F2 "Signal" O R 7000 1450 50 
F3 "HV" I L 6350 1450 50 
F4 "DAC" I L 6350 1550 50 
$EndSheet
$Sheet
S 6350 1850 650  300 
U 5C2273E8
F0 "AMP-CH2" 50
F1 "OPA846.sch" 50
F2 "Signal" O R 7000 1950 50 
F3 "HV" I L 6350 1950 50 
F4 "DAC" I L 6350 2050 50 
$EndSheet
$Sheet
S 6350 2350 650  300 
U 5C2274F3
F0 "AMP-CH3" 50
F1 "OPA846.sch" 50
F2 "Signal" O R 7000 2450 50 
F3 "HV" I L 6350 2450 50 
F4 "DAC" I L 6350 2550 50 
$EndSheet
$Sheet
S 6350 2850 650  300 
U 5C2275F2
F0 "AMP-CH4" 50
F1 "OPA846.sch" 50
F2 "Signal" O R 7000 2950 50 
F3 "HV" I L 6350 2950 50 
F4 "DAC" I L 6350 3050 50 
$EndSheet
$Sheet
S 6350 3350 650  300 
U 5C2275F7
F0 "AMP-CH5" 50
F1 "OPA846.sch" 50
F2 "Signal" O R 7000 3450 50 
F3 "HV" I L 6350 3450 50 
F4 "DAC" I L 6350 3550 50 
$EndSheet
$Sheet
S 6350 3850 650  300 
U 5C2275FC
F0 "AMP-CH6" 50
F1 "OPA846.sch" 50
F2 "Signal" O R 7000 3950 50 
F3 "HV" I L 6350 3950 50 
F4 "DAC" I L 6350 4050 50 
$EndSheet
$Sheet
S 6350 4350 650  300 
U 5C227601
F0 "AMP-CH7" 50
F1 "OPA846.sch" 50
F2 "Signal" O R 7000 4450 50 
F3 "HV" I L 6350 4450 50 
F4 "DAC" I L 6350 4550 50 
$EndSheet
$Comp
L dacx0508:DAC60508ZRTE U1
U 1 1 5C230724
P 4950 3850
F 0 "U1" H 4950 3950 50  0000 C CNN
F 1 "DAC60508ZRTE" H 4950 3850 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-16-1EP_3x3mm_P0.5mm_EP1.8x1.8mm" H 4950 3850 50  0001 C CNN
F 3 "" H 4950 3850 50  0001 C CNN
	1    4950 3850
	1    0    0    -1  
$EndComp
Entry Wire Line
	6000 850  6100 950 
Entry Wire Line
	6000 1350 6100 1450
Entry Wire Line
	6000 1850 6100 1950
Entry Wire Line
	6000 2350 6100 2450
Entry Wire Line
	6000 2850 6100 2950
Entry Wire Line
	6000 3350 6100 3450
Entry Wire Line
	6000 3450 6100 3550
Entry Wire Line
	6000 3850 6100 3950
Entry Wire Line
	6000 3950 6100 4050
Entry Wire Line
	6000 4350 6100 4450
Entry Wire Line
	6000 4450 6100 4550
Entry Wire Line
	6000 2950 6100 3050
Entry Wire Line
	6000 2450 6100 2550
Entry Wire Line
	6000 1950 6100 2050
Entry Wire Line
	6000 1450 6100 1550
Entry Wire Line
	6000 950  6100 1050
Wire Wire Line
	6100 950  6350 950 
Text Label 6100 950  0    50   ~ 0
HV
Wire Wire Line
	6100 1050 6350 1050
Text Label 6100 1050 0    50   ~ 0
DAC0
Wire Wire Line
	6100 1450 6350 1450
Wire Wire Line
	6350 1550 6100 1550
Wire Wire Line
	6100 1950 6350 1950
Wire Wire Line
	6350 2050 6100 2050
Wire Wire Line
	6100 2450 6350 2450
Wire Wire Line
	6350 2550 6100 2550
Wire Wire Line
	6100 2950 6350 2950
Wire Wire Line
	6350 3050 6100 3050
Wire Wire Line
	6100 4550 6350 4550
Wire Wire Line
	6350 4450 6100 4450
Wire Wire Line
	6100 4050 6350 4050
Wire Wire Line
	6350 3950 6100 3950
Wire Wire Line
	6100 3550 6350 3550
Wire Wire Line
	6350 3450 6100 3450
$Comp
L mppcInterface-rescue:GND-power #PWR03
U 1 1 5C23C4D4
P 4950 4500
F 0 "#PWR03" H 4950 4250 50  0001 C CNN
F 1 "GND" H 4955 4327 50  0000 C CNN
F 2 "" H 4950 4500 50  0001 C CNN
F 3 "" H 4950 4500 50  0001 C CNN
	1    4950 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4500 4950 4450
$Comp
L mppcInterface-rescue:+5V-power #PWR02
U 1 1 5C23E259
P 4950 3200
F 0 "#PWR02" H 4950 3050 50  0001 C CNN
F 1 "+5V" H 4965 3373 50  0000 C CNN
F 2 "" H 4950 3200 50  0001 C CNN
F 3 "" H 4950 3200 50  0001 C CNN
	1    4950 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3250 4950 3200
$Comp
L mppcInterface-rescue:+3V3-power #PWR01
U 1 1 5C23F0C6
P 4750 3200
F 0 "#PWR01" H 4750 3050 50  0001 C CNN
F 1 "+3V3" H 4765 3373 50  0000 C CNN
F 2 "" H 4750 3200 50  0001 C CNN
F 3 "" H 4750 3200 50  0001 C CNN
	1    4750 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3200 4750 3250
NoConn ~ 5150 3250
Entry Wire Line
	5900 3600 6000 3700
Entry Wire Line
	5900 3500 6000 3600
Entry Wire Line
	5900 3700 6000 3800
Entry Wire Line
	5900 3800 6000 3900
Entry Wire Line
	5900 3900 6000 4000
Entry Wire Line
	5900 4000 6000 4100
Entry Wire Line
	5900 4100 6000 4200
Wire Wire Line
	5700 3500 5900 3500
Wire Wire Line
	5900 3600 5700 3600
Wire Wire Line
	5700 3700 5900 3700
Wire Wire Line
	5900 3800 5700 3800
Wire Wire Line
	5700 3900 5900 3900
Wire Wire Line
	5900 4000 5700 4000
Wire Wire Line
	5700 4100 5900 4100
Entry Wire Line
	5900 4200 6000 4300
Wire Wire Line
	5900 4200 5700 4200
Text Label 5700 3500 0    50   ~ 0
DAC0
Text Label 5700 3600 0    50   ~ 0
DAC1
Text Label 5700 3700 0    50   ~ 0
DAC2
Text Label 5700 3800 0    50   ~ 0
DAC3
Text Label 5700 3900 0    50   ~ 0
DAC4
Text Label 5700 4000 0    50   ~ 0
DAC5
Text Label 5700 4100 0    50   ~ 0
DAC6
Text Label 5700 4200 0    50   ~ 0
DAC7
Entry Wire Line
	5900 2600 6000 2700
Wire Wire Line
	5900 2600 5600 2600
Text Label 5800 2600 0    50   ~ 0
HV
Text Label 6100 1450 0    50   ~ 0
HV
Text Label 6100 1950 0    50   ~ 0
HV
Text Label 6100 2450 0    50   ~ 0
HV
Text Label 6100 2950 0    50   ~ 0
HV
Text Label 6100 3450 0    50   ~ 0
HV
Text Label 6100 3950 0    50   ~ 0
HV
Text Label 6100 4450 0    50   ~ 0
HV
Text Label 6100 4550 0    50   ~ 0
DAC7
Text Label 6100 4050 0    50   ~ 0
DAC6
Text Label 6100 3550 0    50   ~ 0
DAC5
Text Label 6100 3050 0    50   ~ 0
DAC4
Text Label 6100 2550 0    50   ~ 0
DAC3
Text Label 6100 2050 0    50   ~ 0
DAC2
Text Label 6100 1550 0    50   ~ 0
DAC1
$Comp
L mppcInterface-rescue:MountingHole-Mechanical H1
U 1 1 5C270EB3
P 9700 6100
F 0 "H1" H 9800 6146 50  0000 L CNN
F 1 "MountingHole" H 9800 6055 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965" H 9700 6100 50  0001 C CNN
F 3 "~" H 9700 6100 50  0001 C CNN
	1    9700 6100
	1    0    0    -1  
$EndComp
$Comp
L mppcInterface-rescue:MountingHole-Mechanical H2
U 1 1 5C270F65
P 10450 6100
F 0 "H2" H 10550 6146 50  0000 L CNN
F 1 "MountingHole" H 10550 6055 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965" H 10450 6100 50  0001 C CNN
F 3 "~" H 10450 6100 50  0001 C CNN
	1    10450 6100
	1    0    0    -1  
$EndComp
$Comp
L mppcInterface-rescue:MountingHole-Mechanical H3
U 1 1 5C270FAD
P 9700 6300
F 0 "H3" H 9800 6346 50  0000 L CNN
F 1 "MountingHole" H 9800 6255 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965" H 9700 6300 50  0001 C CNN
F 3 "~" H 9700 6300 50  0001 C CNN
	1    9700 6300
	1    0    0    -1  
$EndComp
$Comp
L mppcInterface-rescue:MountingHole-Mechanical H4
U 1 1 5C271017
P 10450 6300
F 0 "H4" H 10550 6346 50  0000 L CNN
F 1 "MountingHole" H 10550 6255 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965" H 10450 6300 50  0001 C CNN
F 3 "~" H 10450 6300 50  0001 C CNN
	1    10450 6300
	1    0    0    -1  
$EndComp
$Comp
L ice40-lp384:ICE40-LP384-SG32 U14
U 1 1 5C278598
P 2100 6100
F 0 "U14" H 2100 6150 50  0000 C CNN
F 1 "ICE40-LP384-SG32" H 2100 6050 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.45x3.45mm" H 3600 4850 50  0001 C CNN
F 3 "http://www.latticesemi.com/~/media/LatticeSemi/Documents/DataSheets/iCE/iCE40LPHXFamilyDataSheet.pdf" H 4450 4750 50  0001 C CNN
	1    2100 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4900 2000 4850
Wire Wire Line
	2000 4850 2100 4850
Wire Wire Line
	2100 4850 2100 4900
Wire Wire Line
	2100 4850 2200 4850
Wire Wire Line
	2200 4850 2200 4900
Connection ~ 2100 4850
Wire Wire Line
	2200 4850 2300 4850
Wire Wire Line
	2300 4850 2300 4900
Connection ~ 2200 4850
Wire Wire Line
	2300 4850 2400 4850
Wire Wire Line
	2400 4850 2400 4900
Connection ~ 2300 4850
$Comp
L mppcInterface-rescue:+1V2-power #PWR060
U 1 1 5C299499
P 1900 4800
F 0 "#PWR060" H 1900 4650 50  0001 C CNN
F 1 "+1V2" V 1900 5050 50  0000 C CNN
F 2 "" H 1900 4800 50  0001 C CNN
F 3 "" H 1900 4800 50  0001 C CNN
	1    1900 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4800 2200 4850
Wire Wire Line
	2000 7300 2000 7350
Wire Wire Line
	2000 7350 2100 7350
Wire Wire Line
	2100 7350 2100 7300
Wire Wire Line
	2100 7350 2200 7350
Wire Wire Line
	2200 7350 2200 7300
Connection ~ 2100 7350
$Comp
L mppcInterface-rescue:GND-power #PWR061
U 1 1 5C29F492
P 2100 7400
F 0 "#PWR061" H 2100 7150 50  0001 C CNN
F 1 "GND" H 2105 7227 50  0000 C CNN
F 2 "" H 2100 7400 50  0001 C CNN
F 3 "" H 2100 7400 50  0001 C CNN
	1    2100 7400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 7400 2100 7350
$Comp
L mppcInterface-rescue:Raspberry_Pi_2_3-Connector J9
U 1 1 5C2D1722
P 2200 2300
F 0 "J9" H 2200 2300 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 1850 1400 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 2200 2300 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 2200 2300 50  0001 C CNN
	1    2200 2300
	1    0    0    -1  
$EndComp
Text GLabel 7350 950  2    50   Input ~ 0
CH0
Text GLabel 7350 1450 2    50   Input ~ 0
CH1
Text GLabel 7350 1950 2    50   Input ~ 0
CH2
Text GLabel 7350 2450 2    50   Input ~ 0
CH3
Text GLabel 7350 2950 2    50   Input ~ 0
CH4
Text GLabel 7350 3450 2    50   Input ~ 0
CH5
Text GLabel 7350 3950 2    50   Input ~ 0
CH6
Text GLabel 7350 4450 2    50   Input ~ 0
CH7
Wire Wire Line
	7000 950  7100 950 
Wire Wire Line
	7000 1950 7100 1950
Wire Wire Line
	7100 3450 7000 3450
Wire Wire Line
	7000 4450 7100 4450
Wire Wire Line
	7000 3950 7100 3950
Text GLabel 3050 2600 2    50   Input ~ 0
MISO
Text GLabel 3050 2700 2    50   Input ~ 0
MOSI
Text GLabel 3050 2800 2    50   Input ~ 0
SCLK
Wire Wire Line
	2000 1000 2000 950 
Wire Wire Line
	2000 950  2050 950 
Wire Wire Line
	2100 950  2100 1000
Wire Wire Line
	2300 1000 2300 950 
Wire Wire Line
	2300 950  2350 950 
Wire Wire Line
	2400 950  2400 1000
$Comp
L mppcInterface-rescue:+3V3-power #PWR059
U 1 1 5C2FC91C
P 2350 900
F 0 "#PWR059" H 2350 750 50  0001 C CNN
F 1 "+3V3" H 2365 1073 50  0000 C CNN
F 2 "" H 2350 900 50  0001 C CNN
F 3 "" H 2350 900 50  0001 C CNN
	1    2350 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 900  2350 950 
Connection ~ 2350 950 
Wire Wire Line
	2350 950  2400 950 
$Comp
L mppcInterface-rescue:+5V-power #PWR057
U 1 1 5C2FEBA3
P 2050 900
F 0 "#PWR057" H 2050 750 50  0001 C CNN
F 1 "+5V" H 2065 1073 50  0000 C CNN
F 2 "" H 2050 900 50  0001 C CNN
F 3 "" H 2050 900 50  0001 C CNN
	1    2050 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 900  2050 950 
Connection ~ 2050 950 
Wire Wire Line
	2050 950  2100 950 
Wire Wire Line
	1800 3600 1800 3650
Wire Wire Line
	1800 3650 1900 3650
Wire Wire Line
	1900 3650 1900 3600
Wire Wire Line
	1900 3650 2000 3650
Wire Wire Line
	2000 3650 2000 3600
Connection ~ 1900 3650
Wire Wire Line
	2000 3650 2100 3650
Wire Wire Line
	2100 3650 2100 3600
Connection ~ 2000 3650
Wire Wire Line
	2100 3650 2150 3650
Wire Wire Line
	2200 3650 2200 3600
Connection ~ 2100 3650
Wire Wire Line
	2200 3650 2300 3650
Wire Wire Line
	2300 3650 2300 3600
Connection ~ 2200 3650
Wire Wire Line
	2300 3650 2400 3650
Wire Wire Line
	2400 3650 2400 3600
Connection ~ 2300 3650
Wire Wire Line
	2400 3650 2500 3650
Wire Wire Line
	2500 3650 2500 3600
Connection ~ 2400 3650
$Comp
L mppcInterface-rescue:GND-power #PWR058
U 1 1 5C315005
P 2150 3700
F 0 "#PWR058" H 2150 3450 50  0001 C CNN
F 1 "GND" H 2155 3527 50  0000 C CNN
F 2 "" H 2150 3700 50  0001 C CNN
F 3 "" H 2150 3700 50  0001 C CNN
	1    2150 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3700 2150 3650
Connection ~ 2150 3650
Wire Wire Line
	2150 3650 2200 3650
Text GLabel 5000 2550 0    50   Input ~ 0
SCLK
Text GLabel 5000 2650 0    50   Input ~ 0
MOSI
Text GLabel 1150 6850 0    50   Input ~ 0
SCLK
Text GLabel 1150 6650 0    50   Input ~ 0
MOSI
Text GLabel 1150 6550 0    50   Input ~ 0
MISO
$Comp
L mppcInterface-rescue:+3V3-power #PWR062
U 1 1 5C3529BC
P 2200 4800
F 0 "#PWR062" H 2200 4650 50  0001 C CNN
F 1 "+3V3" V 2200 5050 50  0000 C CNN
F 2 "" H 2200 4800 50  0001 C CNN
F 3 "" H 2200 4800 50  0001 C CNN
	1    2200 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4800 1900 4900
NoConn ~ 3000 2400
NoConn ~ 3000 2500
Text GLabel 5000 2450 0    50   Input ~ 0
HV_CS
Text GLabel 4150 3700 0    50   Input ~ 0
DAC_CS
Text GLabel 1150 6750 0    50   Input ~ 0
FPGA_CS
Text GLabel 4150 3800 0    50   Input ~ 0
SCLK
Text GLabel 4150 3900 0    50   Input ~ 0
MOSI
Text GLabel 4150 4000 0    50   Input ~ 0
MISO
Wire Wire Line
	1150 6550 1200 6550
Wire Wire Line
	1200 6650 1150 6650
Wire Wire Line
	1150 6750 1200 6750
Wire Wire Line
	1200 6850 1150 6850
Text GLabel 1150 6350 0    50   Input ~ 0
FPGA_RST
Text GLabel 1150 6250 0    50   Input ~ 0
FPGA_DONE
Wire Wire Line
	1150 6250 1200 6250
Wire Wire Line
	1200 6350 1150 6350
Wire Wire Line
	4200 3700 4150 3700
Wire Wire Line
	4150 3800 4200 3800
Wire Wire Line
	4200 3900 4150 3900
Wire Wire Line
	4150 4000 4200 4000
Wire Wire Line
	5050 2450 5000 2450
Wire Wire Line
	5000 2550 5050 2550
Wire Wire Line
	5050 2650 5000 2650
Text GLabel 5000 2750 0    50   Input ~ 0
CL
Wire Wire Line
	5000 2750 5050 2750
Wire Wire Line
	3050 2800 3000 2800
Wire Wire Line
	3000 2700 3050 2700
Wire Wire Line
	3050 2600 3000 2600
$Sheet
S 5050 2350 550  500 
U 5C210B26
F0 "MAX1932" 50
F1 "MAX1932.sch" 50
F2 "~CS" I L 5050 2450 50 
F3 "SCLK" I L 5050 2550 50 
F4 "DIN" I L 5050 2650 50 
F5 "~CL" I L 5050 2750 50 
F6 "HV" I R 5600 2600 50 
$EndSheet
$Comp
L mppcInterface-rescue:+3V3-power #PWR0101
U 1 1 5C354717
P 1800 4800
F 0 "#PWR0101" H 1800 4650 50  0001 C CNN
F 1 "+3V3" V 1800 5050 50  0000 C CNN
F 2 "" H 1800 4800 50  0001 C CNN
F 3 "" H 1800 4800 50  0001 C CNN
	1    1800 4800
	1    0    0    -1  
$EndComp
$Comp
L mppcInterface-rescue:TestPoint-Connector TP?
U 1 1 5C3C2C1A
P 7100 900
AR Path="/5C210B26/5C3C2C1A" Ref="TP?"  Part="1" 
AR Path="/5C3C2C1A" Ref="TP5"  Part="1" 
F 0 "TP5" H 7158 1020 50  0000 L CNN
F 1 "CH0" H 7158 929 50  0000 L CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch2.0mm_Drill0.7mm" H 7300 900 50  0001 C CNN
F 3 "~" H 7300 900 50  0001 C CNN
	1    7100 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 900  7100 950 
Connection ~ 7100 950 
Wire Wire Line
	7100 950  7350 950 
$Comp
L mppcInterface-rescue:TestPoint-Connector TP?
U 1 1 5C3D3F85
P 7100 1400
AR Path="/5C210B26/5C3D3F85" Ref="TP?"  Part="1" 
AR Path="/5C3D3F85" Ref="TP6"  Part="1" 
F 0 "TP6" H 7158 1520 50  0000 L CNN
F 1 "CH1" H 7158 1429 50  0000 L CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch2.0mm_Drill0.7mm" H 7300 1400 50  0001 C CNN
F 3 "~" H 7300 1400 50  0001 C CNN
	1    7100 1400
	1    0    0    -1  
$EndComp
$Comp
L mppcInterface-rescue:TestPoint-Connector TP?
U 1 1 5C3D3FBD
P 7100 1900
AR Path="/5C210B26/5C3D3FBD" Ref="TP?"  Part="1" 
AR Path="/5C3D3FBD" Ref="TP7"  Part="1" 
F 0 "TP7" H 7158 2020 50  0000 L CNN
F 1 "CH2" H 7158 1929 50  0000 L CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch2.0mm_Drill0.7mm" H 7300 1900 50  0001 C CNN
F 3 "~" H 7300 1900 50  0001 C CNN
	1    7100 1900
	1    0    0    -1  
$EndComp
$Comp
L mppcInterface-rescue:TestPoint-Connector TP?
U 1 1 5C3D3FF7
P 7100 2400
AR Path="/5C210B26/5C3D3FF7" Ref="TP?"  Part="1" 
AR Path="/5C3D3FF7" Ref="TP8"  Part="1" 
F 0 "TP8" H 7158 2520 50  0000 L CNN
F 1 "CH3" H 7158 2429 50  0000 L CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch2.0mm_Drill0.7mm" H 7300 2400 50  0001 C CNN
F 3 "~" H 7300 2400 50  0001 C CNN
	1    7100 2400
	1    0    0    -1  
$EndComp
$Comp
L mppcInterface-rescue:TestPoint-Connector TP?
U 1 1 5C3D406D
P 7100 2900
AR Path="/5C210B26/5C3D406D" Ref="TP?"  Part="1" 
AR Path="/5C3D406D" Ref="TP9"  Part="1" 
F 0 "TP9" H 7158 3020 50  0000 L CNN
F 1 "CH4" H 7158 2929 50  0000 L CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch2.0mm_Drill0.7mm" H 7300 2900 50  0001 C CNN
F 3 "~" H 7300 2900 50  0001 C CNN
	1    7100 2900
	1    0    0    -1  
$EndComp
$Comp
L mppcInterface-rescue:TestPoint-Connector TP?
U 1 1 5C3D40AB
P 7100 3400
AR Path="/5C210B26/5C3D40AB" Ref="TP?"  Part="1" 
AR Path="/5C3D40AB" Ref="TP10"  Part="1" 
F 0 "TP10" H 7158 3520 50  0000 L CNN
F 1 "CH5" H 7158 3429 50  0000 L CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch2.0mm_Drill0.7mm" H 7300 3400 50  0001 C CNN
F 3 "~" H 7300 3400 50  0001 C CNN
	1    7100 3400
	1    0    0    -1  
$EndComp
$Comp
L mppcInterface-rescue:TestPoint-Connector TP?
U 1 1 5C3D40FB
P 7100 3900
AR Path="/5C210B26/5C3D40FB" Ref="TP?"  Part="1" 
AR Path="/5C3D40FB" Ref="TP11"  Part="1" 
F 0 "TP11" H 7158 4020 50  0000 L CNN
F 1 "CH6" H 7158 3929 50  0000 L CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch2.0mm_Drill0.7mm" H 7300 3900 50  0001 C CNN
F 3 "~" H 7300 3900 50  0001 C CNN
	1    7100 3900
	1    0    0    -1  
$EndComp
$Comp
L mppcInterface-rescue:TestPoint-Connector TP?
U 1 1 5C3D41A4
P 7100 4400
AR Path="/5C210B26/5C3D41A4" Ref="TP?"  Part="1" 
AR Path="/5C3D41A4" Ref="TP12"  Part="1" 
F 0 "TP12" H 7158 4520 50  0000 L CNN
F 1 "CH7" H 7158 4429 50  0000 L CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch2.0mm_Drill0.7mm" H 7300 4400 50  0001 C CNN
F 3 "~" H 7300 4400 50  0001 C CNN
	1    7100 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4400 7100 4450
Connection ~ 7100 4450
Wire Wire Line
	7100 4450 7350 4450
Wire Wire Line
	7100 3900 7100 3950
Connection ~ 7100 3950
Wire Wire Line
	7100 3950 7350 3950
Wire Wire Line
	7100 3400 7100 3450
Wire Wire Line
	7100 3450 7350 3450
Connection ~ 7100 3450
Wire Wire Line
	7000 2950 7100 2950
Wire Wire Line
	7100 2950 7100 2900
Connection ~ 7100 2950
Wire Wire Line
	7100 2950 7350 2950
Wire Wire Line
	7000 2450 7100 2450
Wire Wire Line
	7100 2450 7100 2400
Connection ~ 7100 2450
Wire Wire Line
	7100 2450 7350 2450
Wire Wire Line
	7100 1950 7100 1900
Wire Wire Line
	7100 1950 7350 1950
Connection ~ 7100 1950
Wire Wire Line
	7000 1450 7100 1450
Wire Wire Line
	7100 1400 7100 1450
Connection ~ 7100 1450
Wire Wire Line
	7100 1450 7350 1450
Text GLabel 1100 5550 0    50   Input ~ 0
CH7
Text GLabel 1100 5450 0    50   Input ~ 0
CH6
Text GLabel 3100 5450 2    50   Input ~ 0
CH5
Text GLabel 3100 5550 2    50   Input ~ 0
CH4
Text GLabel 3100 5650 2    50   Input ~ 0
CH3
Text GLabel 3100 5750 2    50   Input ~ 0
CH2
Text GLabel 3100 5850 2    50   Input ~ 0
CH1
Text GLabel 3100 5950 2    50   Input ~ 0
CH0
Wire Wire Line
	1100 5450 1200 5450
Wire Wire Line
	1200 5550 1100 5550
Wire Wire Line
	3100 5450 3000 5450
Wire Wire Line
	3000 5550 3100 5550
Wire Wire Line
	3100 5650 3000 5650
Wire Wire Line
	3000 5750 3100 5750
Wire Wire Line
	3100 5850 3000 5850
Wire Wire Line
	3000 5950 3100 5950
$Comp
L mppcInterface-rescue:MIC5504-1.2YM5-Regulator_Linear U2
U 1 1 5C3A61F2
P 6250 7100
F 0 "U2" H 6250 7467 50  0000 C CNN
F 1 "MIC5504-1.2YM5" H 6250 7376 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 6250 6700 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/MIC550X.pdf" H 6000 7350 50  0001 C CNN
	1    6250 7100
	1    0    0    -1  
$EndComp
$Comp
L mppcInterface-rescue:+3V3-power #PWR0105
U 1 1 5C3A62A7
P 5750 7000
F 0 "#PWR0105" H 5750 6850 50  0001 C CNN
F 1 "+3V3" H 5765 7173 50  0000 C CNN
F 2 "" H 5750 7000 50  0001 C CNN
F 3 "" H 5750 7000 50  0001 C CNN
	1    5750 7000
	1    0    0    -1  
$EndComp
$Comp
L mppcInterface-rescue:GND-power #PWR0106
U 1 1 5C3A62D4
P 6250 7450
F 0 "#PWR0106" H 6250 7200 50  0001 C CNN
F 1 "GND" H 6255 7277 50  0000 C CNN
F 2 "" H 6250 7450 50  0001 C CNN
F 3 "" H 6250 7450 50  0001 C CNN
	1    6250 7450
	1    0    0    -1  
$EndComp
$Comp
L mppcInterface-rescue:+1V2-power #PWR0107
U 1 1 5C3A6301
P 6700 6950
F 0 "#PWR0107" H 6700 6800 50  0001 C CNN
F 1 "+1V2" H 6715 7123 50  0000 C CNN
F 2 "" H 6700 6950 50  0001 C CNN
F 3 "" H 6700 6950 50  0001 C CNN
	1    6700 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 7200 5800 7200
Wire Wire Line
	5800 7200 5800 7000
Wire Wire Line
	5800 7000 5850 7000
Wire Wire Line
	6700 6950 6700 7000
Wire Wire Line
	6700 7000 6650 7000
Wire Wire Line
	6250 7450 6250 7400
Wire Wire Line
	5750 7000 5800 7000
Connection ~ 5800 7000
$Comp
L mppcInterface-rescue:TestPoint-Connector TP?
U 1 1 5C3D0D7D
P 10850 5700
AR Path="/5C210B26/5C3D0D7D" Ref="TP?"  Part="1" 
AR Path="/5C3D0D7D" Ref="TP2"  Part="1" 
F 0 "TP2" H 10908 5820 50  0000 L CNN
F 1 "GND" H 10908 5729 50  0000 L CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch2.0mm_Drill0.7mm" H 11050 5700 50  0001 C CNN
F 3 "~" H 11050 5700 50  0001 C CNN
	1    10850 5700
	1    0    0    -1  
$EndComp
$Comp
L mppcInterface-rescue:GND-power #PWR0108
U 1 1 5C3D0E0F
P 10850 5750
F 0 "#PWR0108" H 10850 5500 50  0001 C CNN
F 1 "GND" H 10855 5577 50  0000 C CNN
F 2 "" H 10850 5750 50  0001 C CNN
F 3 "" H 10850 5750 50  0001 C CNN
	1    10850 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10850 5700 10850 5750
Text GLabel 3050 2000 2    50   Input ~ 0
CLK
NoConn ~ 3000 1400
NoConn ~ 3000 1500
Text GLabel 3050 1800 2    50   Input ~ 0
SCL
Text GLabel 3050 1700 2    50   Input ~ 0
SDA
Wire Wire Line
	3050 1800 3000 1800
Wire Wire Line
	3000 1700 3050 1700
Wire Wire Line
	3050 2000 3000 2000
Text GLabel 3100 6250 2    50   Input ~ 0
CLK
Wire Wire Line
	3100 6250 3000 6250
Text GLabel 1350 1400 0    50   Input ~ 0
TXD
Wire Wire Line
	1350 1400 1400 1400
Text GLabel 1350 1500 0    50   Input ~ 0
RXD
Wire Wire Line
	1350 1500 1400 1500
Wire Wire Line
	1350 2300 1400 2300
Wire Wire Line
	1400 2200 1350 2200
Wire Wire Line
	1350 2100 1400 2100
Text GLabel 1350 2700 0    50   Input ~ 0
FPGA_DONE
Wire Wire Line
	1350 2700 1400 2700
Text GLabel 1350 1900 0    50   Input ~ 0
GPIO18
Text GLabel 3100 6350 2    50   Input ~ 0
GPIO18
Text GLabel 1350 1800 0    50   Input ~ 0
GPIO17
Text GLabel 3100 6450 2    50   Input ~ 0
GPIO17
Wire Wire Line
	1350 1900 1400 1900
Wire Wire Line
	1350 1800 1400 1800
Wire Wire Line
	3100 6350 3000 6350
Wire Wire Line
	3000 6450 3100 6450
Text GLabel 1350 3000 0    50   Input ~ 0
GPIO27
Wire Wire Line
	1350 3000 1400 3000
Text GLabel 3100 6550 2    50   Input ~ 0
GPIO27
Wire Wire Line
	3100 6550 3000 6550
Text GLabel 1350 2600 0    50   Input ~ 0
GPIO23
Wire Wire Line
	1350 2600 1400 2600
Text GLabel 3100 6650 2    50   Input ~ 0
GPIO23
Wire Wire Line
	3000 6650 3100 6650
Text GLabel 9250 1450 2    50   Input ~ 0
FPGA_CS
Text GLabel 1350 2800 0    50   Input ~ 0
FPGA_RST
Wire Wire Line
	1350 2800 1400 2800
NoConn ~ 1350 2300
NoConn ~ 1350 2200
NoConn ~ 1350 2100
Text GLabel 9250 1350 2    50   Input ~ 0
DAC_CS
Wire Wire Line
	1800 4800 1800 4900
$Comp
L Regulator_SwitchedCapacitor:LM27761 U3
U 1 1 5D89942D
P 6550 5600
F 0 "U3" H 6550 6167 50  0000 C CNN
F 1 "LM27761" H 6550 6076 50  0000 C CNN
F 2 "Package_SON:WSON-8-1EP_2x2mm_P0.5mm_EP0.9x1.6mm" H 6700 5100 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm27761.pdf" H 9050 5200 50  0001 C CNN
	1    6550 5600
	1    0    0    -1  
$EndComp
$Comp
L mppcInterface-rescue:GND-power #PWR080
U 1 1 5D89B24A
P 6550 6200
F 0 "#PWR080" H 6550 5950 50  0001 C CNN
F 1 "GND" H 6555 6027 50  0000 C CNN
F 2 "" H 6550 6200 50  0001 C CNN
F 3 "" H 6550 6200 50  0001 C CNN
	1    6550 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 6100 6550 6150
Wire Wire Line
	6550 6150 6650 6150
Wire Wire Line
	6650 6150 6650 6100
Wire Wire Line
	6550 6200 6550 6150
Connection ~ 6550 6150
$Comp
L mppcInterface-rescue:C-Device C23
U 1 1 5D8B0220
P 6050 5750
AR Path="/5D8B0220" Ref="C23"  Part="1" 
AR Path="/5C210B26/5D8B0220" Ref="C?"  Part="1" 
F 0 "C23" H 5800 5800 50  0000 L CNN
F 1 "1u" H 5850 5700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 6088 5600 50  0001 C CNN
F 3 "~" H 6050 5750 50  0001 C CNN
	1    6050 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 5600 6150 5600
Wire Wire Line
	6150 5900 6050 5900
Wire Wire Line
	6150 5400 6100 5400
Wire Wire Line
	6100 5400 6100 5300
Wire Wire Line
	6100 5300 6150 5300
$Comp
L mppcInterface-rescue:C-Device C22
U 1 1 5D8D0BAC
P 5750 5500
AR Path="/5D8D0BAC" Ref="C22"  Part="1" 
AR Path="/5C210B26/5D8D0BAC" Ref="C?"  Part="1" 
F 0 "C22" H 5500 5550 50  0000 L CNN
F 1 "10u" H 5500 5450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 5788 5350 50  0001 C CNN
F 3 "~" H 5750 5500 50  0001 C CNN
	1    5750 5500
	1    0    0    -1  
$EndComp
$Comp
L mppcInterface-rescue:GND-power #PWR079
U 1 1 5D8D186C
P 5750 6200
F 0 "#PWR079" H 5750 5950 50  0001 C CNN
F 1 "GND" H 5755 6027 50  0000 C CNN
F 2 "" H 5750 6200 50  0001 C CNN
F 3 "" H 5750 6200 50  0001 C CNN
	1    5750 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 5350 5750 5300
Wire Wire Line
	5750 5300 6100 5300
Connection ~ 6100 5300
Wire Wire Line
	5750 6200 5750 5650
$Comp
L power:+5V #PWR078
U 1 1 5D900672
P 5750 5250
F 0 "#PWR078" H 5750 5100 50  0001 C CNN
F 1 "+5V" H 5765 5423 50  0000 C CNN
F 2 "" H 5750 5250 50  0001 C CNN
F 3 "" H 5750 5250 50  0001 C CNN
	1    5750 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 5250 5750 5300
Connection ~ 5750 5300
$Comp
L mppcInterface-rescue:C-Device C65
U 1 1 5D90E485
P 7700 5500
AR Path="/5D90E485" Ref="C65"  Part="1" 
AR Path="/5C210B26/5D90E485" Ref="C?"  Part="1" 
F 0 "C65" H 7800 5550 50  0000 L CNN
F 1 "3u3" H 7800 5450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7738 5350 50  0001 C CNN
F 3 "~" H 7700 5500 50  0001 C CNN
	1    7700 5500
	1    0    0    -1  
$EndComp
$Comp
L mppcInterface-rescue:GND-power #PWR084
U 1 1 5D90EDB6
P 7700 6200
F 0 "#PWR084" H 7700 5950 50  0001 C CNN
F 1 "GND" H 7705 6027 50  0000 C CNN
F 2 "" H 7700 6200 50  0001 C CNN
F 3 "" H 7700 6200 50  0001 C CNN
	1    7700 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 5300 7700 5200
Wire Wire Line
	7700 5300 7700 5350
Connection ~ 7700 5300
Wire Wire Line
	7700 5650 7700 6200
$Comp
L Device:R_US R1
U 1 1 5D9325B3
P 7300 5500
F 0 "R1" H 7368 5546 50  0000 L CNN
F 1 "1M13" H 7368 5455 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7340 5490 50  0001 C CNN
F 3 "~" H 7300 5500 50  0001 C CNN
	1    7300 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R11
U 1 1 5D932C8A
P 7300 5900
F 0 "R11" H 7368 5946 50  0000 L CNN
F 1 "499k" H 7368 5855 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 7340 5890 50  0001 C CNN
F 3 "~" H 7300 5900 50  0001 C CNN
	1    7300 5900
	1    0    0    -1  
$EndComp
$Comp
L mppcInterface-rescue:C-Device C24
U 1 1 5D9330E3
P 7000 5900
AR Path="/5D9330E3" Ref="C24"  Part="1" 
AR Path="/5C210B26/5D9330E3" Ref="C?"  Part="1" 
F 0 "C24" H 7100 5950 50  0000 L CNN
F 1 "10u" H 7100 5850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 7038 5750 50  0001 C CNN
F 3 "~" H 7000 5900 50  0001 C CNN
	1    7000 5900
	1    0    0    -1  
$EndComp
$Comp
L mppcInterface-rescue:GND-power #PWR082
U 1 1 5D94123B
P 7300 6200
F 0 "#PWR082" H 7300 5950 50  0001 C CNN
F 1 "GND" H 7305 6027 50  0000 C CNN
F 2 "" H 7300 6200 50  0001 C CNN
F 3 "" H 7300 6200 50  0001 C CNN
	1    7300 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 5750 7300 5700
Wire Wire Line
	7300 5350 7300 5300
Connection ~ 7300 5300
Wire Wire Line
	7300 5300 7700 5300
Wire Wire Line
	7300 6050 7300 6200
Wire Wire Line
	6950 5300 7300 5300
Wire Wire Line
	7300 5700 7150 5700
Wire Wire Line
	7150 5700 7150 5500
Wire Wire Line
	7150 5500 6950 5500
Connection ~ 7300 5700
Wire Wire Line
	7300 5700 7300 5650
Wire Wire Line
	7000 5750 7000 5700
Wire Wire Line
	7000 5700 6950 5700
$Comp
L mppcInterface-rescue:GND-power #PWR081
U 1 1 5D98A742
P 7000 6200
F 0 "#PWR081" H 7000 5950 50  0001 C CNN
F 1 "GND" H 7005 6027 50  0000 C CNN
F 2 "" H 7000 6200 50  0001 C CNN
F 3 "" H 7000 6200 50  0001 C CNN
	1    7000 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 6050 7000 6200
$Comp
L Connector:RJ14 J10
U 1 1 5DAECA3B
P 8800 5850
F 0 "J10" H 8470 5854 50  0000 R CNN
F 1 "RJ14" H 8470 5945 50  0000 R CNN
F 2 "Connector_RJ:RJ12_Amphenol_54601" V 8800 5875 50  0001 C CNN
F 3 "~" V 8800 5875 50  0001 C CNN
	1    8800 5850
	-1   0    0    1   
$EndComp
Text GLabel 8350 5850 0    50   Input ~ 0
SDA
Text GLabel 8350 5950 0    50   Input ~ 0
SCL
$Comp
L mppcInterface-rescue:GND-power #PWR0109
U 1 1 5DB0661F
P 8350 6100
F 0 "#PWR0109" H 8350 5850 50  0001 C CNN
F 1 "GND" H 8355 5927 50  0000 C CNN
F 2 "" H 8350 6100 50  0001 C CNN
F 3 "" H 8350 6100 50  0001 C CNN
	1    8350 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 5750 8350 5750
Wire Wire Line
	8350 5750 8350 5700
Wire Wire Line
	8400 5850 8350 5850
Wire Wire Line
	8400 5950 8350 5950
Wire Wire Line
	8400 6050 8350 6050
Wire Wire Line
	8350 6050 8350 6100
Text Notes 8150 5100 0    100  ~ 0
I2C Expansion
Wire Notes Line
	9400 6450 8100 6450
Wire Notes Line
	8100 6450 8100 4900
Wire Notes Line
	8100 4900 9400 4900
Wire Notes Line
	9400 4900 9400 6450
Text GLabel 9250 1750 2    50   Input ~ 0
HV_CS
$Comp
L Connector:RJ45 J12
U 1 1 5DC4869D
P 10650 1450
F 0 "J12" H 10950 1000 50  0000 R CNN
F 1 "RJ45" H 10500 1000 50  0000 R CNN
F 2 "Connector_RJ:RJ45_Amphenol_54602-x08_Horizontal" V 10650 1475 50  0001 C CNN
F 3 "~" V 10650 1475 50  0001 C CNN
	1    10650 1450
	-1   0    0    1   
$EndComp
$Comp
L mppcInterface-rescue:GND-power #PWR0112
U 1 1 5DC486B1
P 10200 1900
F 0 "#PWR0112" H 10200 1650 50  0001 C CNN
F 1 "GND" H 10205 1727 50  0000 C CNN
F 2 "" H 10200 1900 50  0001 C CNN
F 3 "" H 10200 1900 50  0001 C CNN
	1    10200 1900
	1    0    0    -1  
$EndComp
Text GLabel 8500 3350 0    50   Input ~ 0
MISO
Text GLabel 8500 3450 0    50   Input ~ 0
MOSI
Text GLabel 8500 3250 0    50   Input ~ 0
SCLK
Wire Wire Line
	10200 1100 10200 1150
Wire Wire Line
	10200 1150 10250 1150
Wire Wire Line
	10200 1900 10200 1850
Wire Wire Line
	10200 1850 10250 1850
Text GLabel 9250 1850 2    50   Input ~ 0
SPI_EX0
Text GLabel 9250 1950 2    50   Input ~ 0
SPI_EX1
Text GLabel 9250 2050 2    50   Input ~ 0
SPI_EX2
Text GLabel 9250 1550 2    50   Input ~ 0
SPI_EX3
Text GLabel 9250 1650 2    50   Input ~ 0
SPI_EX4
$Comp
L mppcInterface-rescue:GND-power #PWR0114
U 1 1 5DCA15CC
P 8800 2550
F 0 "#PWR0114" H 8800 2300 50  0001 C CNN
F 1 "GND" H 8805 2377 50  0000 C CNN
F 2 "" H 8800 2550 50  0001 C CNN
F 3 "" H 8800 2550 50  0001 C CNN
	1    8800 2550
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC595 U4
U 1 1 5DAE5414
P 8800 1750
F 0 "U4" H 8950 2400 50  0000 C CNN
F 1 "74HC595" H 9050 2300 50  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 8800 1750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 8800 1750 50  0001 C CNN
	1    8800 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 2450 8800 2500
$Comp
L mppcInterface-rescue:+3V3-power #PWR0116
U 1 1 5DCCE67E
P 10200 1100
F 0 "#PWR0116" H 10200 950 50  0001 C CNN
F 1 "+3V3" H 10215 1273 50  0000 C CNN
F 2 "" H 10200 1100 50  0001 C CNN
F 3 "" H 10200 1100 50  0001 C CNN
	1    10200 1100
	1    0    0    -1  
$EndComp
$Comp
L mppcInterface-rescue:+3V3-power #PWR0119
U 1 1 5DCCF6E6
P 8350 5700
F 0 "#PWR0119" H 8350 5550 50  0001 C CNN
F 1 "+3V3" H 8365 5873 50  0000 C CNN
F 2 "" H 8350 5700 50  0001 C CNN
F 3 "" H 8350 5700 50  0001 C CNN
	1    8350 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 2050 9250 2050
Wire Wire Line
	9200 1950 9250 1950
Wire Wire Line
	9200 1850 9250 1850
Wire Wire Line
	9200 1750 9250 1750
Wire Wire Line
	9200 1650 9250 1650
Wire Wire Line
	9200 1550 9250 1550
Wire Wire Line
	9200 1450 9250 1450
Wire Wire Line
	9200 1350 9250 1350
Wire Notes Line
	9500 4900 9500 6450
Wire Notes Line
	9500 6450 11150 6450
Wire Notes Line
	11150 6450 11150 4900
Wire Notes Line
	11150 4900 9500 4900
Text Notes 9550 5100 0    100  ~ 0
Mount and Test
Text GLabel 8500 3550 0    50   Input ~ 0
SPI_EX0
Text GLabel 9100 3450 2    50   Input ~ 0
SPI_EX1
Text GLabel 9100 3350 2    50   Input ~ 0
SPI_EX2
Text GLabel 9100 3250 2    50   Input ~ 0
SPI_EX3
Text GLabel 9100 3150 2    50   Input ~ 0
SPI_EX4
$Comp
L mppcInterface-rescue:+3V3-power #PWR0121
U 1 1 5DF8FB67
P 8800 1100
F 0 "#PWR0121" H 8800 950 50  0001 C CNN
F 1 "+3V3" H 8815 1273 50  0000 C CNN
F 2 "" H 8800 1100 50  0001 C CNN
F 3 "" H 8800 1100 50  0001 C CNN
	1    8800 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 1150 8800 1100
Wire Wire Line
	8400 1950 8350 1950
Wire Wire Line
	8350 1950 8350 2500
Wire Wire Line
	8350 2500 8800 2500
Connection ~ 8800 2500
Wire Wire Line
	8800 2550 8800 2500
Wire Wire Line
	9200 2250 9250 2250
Text GLabel 8350 1550 0    50   Input ~ 0
SRCLK
Text GLabel 8350 1850 0    50   Input ~ 0
RCLK
$Comp
L mppcInterface-rescue:+3V3-power #PWR0123
U 1 1 5E0FBF0E
P 7900 1700
F 0 "#PWR0123" H 7900 1550 50  0001 C CNN
F 1 "+3V3" H 7915 1873 50  0000 C CNN
F 2 "" H 7900 1700 50  0001 C CNN
F 3 "" H 7900 1700 50  0001 C CNN
	1    7900 1700
	1    0    0    -1  
$EndComp
Text GLabel 8350 1350 0    50   Input ~ 0
SRDATA
Wire Wire Line
	8350 1350 8400 1350
Wire Wire Line
	8350 1550 8400 1550
Wire Wire Line
	8350 1850 8400 1850
Wire Notes Line
	11150 600  11150 4800
Wire Notes Line
	11150 4800 7750 4800
Wire Notes Line
	7750 4800 7750 600 
Wire Notes Line
	7750 600  11150 600 
Text Notes 7850 800  0    100  ~ 0
SPI Expansion
Wire Notes Line
	3700 600  7650 600 
Wire Notes Line
	7650 600  7650 4800
Wire Notes Line
	3700 4800 3700 600 
Wire Notes Line
	3700 4800 7650 4800
Text Notes 3800 950  0    100  ~ 0
High Vlotage\nAmplifier
Wire Notes Line
	8000 4900 8000 6450
Wire Notes Line
	5150 6450 5150 4900
Wire Notes Line
	5150 4900 8000 4900
Wire Notes Line
	5150 6450 8000 6450
Text Notes 5350 6400 1    100  ~ 0
Amplifier Bias V
Wire Notes Line
	6850 6550 6850 7700
Wire Notes Line
	6850 7700 5150 7700
Wire Notes Line
	5150 7700 5150 6550
Wire Notes Line
	5150 6550 6850 6550
Text Notes 5350 7650 1    100  ~ 0
FPGA Core V
$Comp
L -4v:-4V #PWR0124
U 1 1 5E52048F
P 7700 5200
F 0 "#PWR0124" H 7700 5050 50  0001 C CNN
F 1 "-4V" H 7715 5373 50  0000 C CNN
F 2 "" H 7700 5200 50  0001 C CNN
F 3 "" H 7700 5200 50  0001 C CNN
	1    7700 5200
	1    0    0    -1  
$EndComp
Text Notes 650  800  0    100  ~ 0
Raspberry PI
Wire Notes Line
	600  600  600  3950
Wire Notes Line
	600  3950 3600 3950
Wire Notes Line
	3600 3950 3600 600 
Wire Notes Line
	3600 600  600  600 
Wire Notes Line
	600  4050 600  7700
Wire Notes Line
	3600 7700 3600 4050
Wire Notes Line
	3600 4050 600  4050
Wire Notes Line
	600  7700 3600 7700
Text Notes 650  4250 0    100  ~ 0
FPGA (ICE-40)
Wire Wire Line
	8400 1650 8050 1650
Wire Wire Line
	8050 1650 8050 1750
Wire Wire Line
	8050 1750 7900 1750
Wire Wire Line
	7900 1750 7900 1700
$Comp
L power:+5V #PWR?
U 1 1 5E6FADF4
P 4750 6350
AR Path="/5C221BCC/5E6FADF4" Ref="#PWR?"  Part="1" 
AR Path="/5C227394/5E6FADF4" Ref="#PWR?"  Part="1" 
AR Path="/5C2273E8/5E6FADF4" Ref="#PWR?"  Part="1" 
AR Path="/5C2273ED/5E6FADF4" Ref="#PWR?"  Part="1" 
AR Path="/5C2274F3/5E6FADF4" Ref="#PWR?"  Part="1" 
AR Path="/5C2274F8/5E6FADF4" Ref="#PWR?"  Part="1" 
AR Path="/5C2275F2/5E6FADF4" Ref="#PWR?"  Part="1" 
AR Path="/5C2275F7/5E6FADF4" Ref="#PWR?"  Part="1" 
AR Path="/5C2275FC/5E6FADF4" Ref="#PWR?"  Part="1" 
AR Path="/5C227601/5E6FADF4" Ref="#PWR?"  Part="1" 
AR Path="/5E6FADF4" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0141" H 4750 6200 50  0001 C CNN
F 1 "+5V" H 4765 6523 50  0000 C CNN
F 2 "" H 4750 6350 50  0001 C CNN
F 3 "" H 4750 6350 50  0001 C CNN
	1    4750 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 6800 4750 6800
Wire Wire Line
	4900 6850 4900 6800
Connection ~ 4750 6800
$Comp
L Device:C C?
U 1 1 5E6FADFD
P 4750 7200
AR Path="/5C221BCC/5E6FADFD" Ref="C?"  Part="1" 
AR Path="/5C227394/5E6FADFD" Ref="C?"  Part="1" 
AR Path="/5C2273E8/5E6FADFD" Ref="C?"  Part="1" 
AR Path="/5C2274F3/5E6FADFD" Ref="C?"  Part="1" 
AR Path="/5C2275F2/5E6FADFD" Ref="C?"  Part="1" 
AR Path="/5C2275F7/5E6FADFD" Ref="C?"  Part="1" 
AR Path="/5C2275FC/5E6FADFD" Ref="C?"  Part="1" 
AR Path="/5C227601/5E6FADFD" Ref="C?"  Part="1" 
AR Path="/5E6FADFD" Ref="C32"  Part="1" 
F 0 "C32" H 4865 7246 50  0000 L CNN
F 1 "1u" H 4865 7155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4788 7050 50  0001 C CNN
F 3 "~" H 4750 7200 50  0001 C CNN
	1    4750 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 6800 4750 6750
$Comp
L power:GND #PWR?
U 1 1 5E6FAE04
P 4900 6850
AR Path="/5C221BCC/5E6FAE04" Ref="#PWR?"  Part="1" 
AR Path="/5C227394/5E6FAE04" Ref="#PWR?"  Part="1" 
AR Path="/5C2273E8/5E6FAE04" Ref="#PWR?"  Part="1" 
AR Path="/5C2273ED/5E6FAE04" Ref="#PWR?"  Part="1" 
AR Path="/5C2274F3/5E6FAE04" Ref="#PWR?"  Part="1" 
AR Path="/5C2274F8/5E6FAE04" Ref="#PWR?"  Part="1" 
AR Path="/5C2275F2/5E6FAE04" Ref="#PWR?"  Part="1" 
AR Path="/5C2275F7/5E6FAE04" Ref="#PWR?"  Part="1" 
AR Path="/5C2275FC/5E6FAE04" Ref="#PWR?"  Part="1" 
AR Path="/5C227601/5E6FAE04" Ref="#PWR?"  Part="1" 
AR Path="/5E6FAE04" Ref="#PWR0142"  Part="1" 
F 0 "#PWR0142" H 4900 6600 50  0001 C CNN
F 1 "GND" H 4905 6677 50  0000 C CNN
F 2 "" H 4900 6850 50  0001 C CNN
F 3 "" H 4900 6850 50  0001 C CNN
	1    4900 6850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5E6FAE0A
P 4750 6600
AR Path="/5C221BCC/5E6FAE0A" Ref="C?"  Part="1" 
AR Path="/5C227394/5E6FAE0A" Ref="C?"  Part="1" 
AR Path="/5C2273E8/5E6FAE0A" Ref="C?"  Part="1" 
AR Path="/5C2274F3/5E6FAE0A" Ref="C?"  Part="1" 
AR Path="/5C2275F2/5E6FAE0A" Ref="C?"  Part="1" 
AR Path="/5C2275F7/5E6FAE0A" Ref="C?"  Part="1" 
AR Path="/5C2275FC/5E6FAE0A" Ref="C?"  Part="1" 
AR Path="/5C227601/5E6FAE0A" Ref="C?"  Part="1" 
AR Path="/5E6FAE0A" Ref="C31"  Part="1" 
F 0 "C31" H 4865 6646 50  0000 L CNN
F 1 "1u" H 4865 6555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4788 6450 50  0001 C CNN
F 3 "~" H 4750 6600 50  0001 C CNN
	1    4750 6600
	1    0    0    -1  
$EndComp
$Comp
L -4v:-4V #PWR?
U 1 1 5E6FAE10
P 4750 7450
AR Path="/5C227601/5E6FAE10" Ref="#PWR?"  Part="1" 
AR Path="/5C2275FC/5E6FAE10" Ref="#PWR?"  Part="1" 
AR Path="/5C221BCC/5E6FAE10" Ref="#PWR?"  Part="1" 
AR Path="/5C227394/5E6FAE10" Ref="#PWR?"  Part="1" 
AR Path="/5C2273E8/5E6FAE10" Ref="#PWR?"  Part="1" 
AR Path="/5C2274F3/5E6FAE10" Ref="#PWR?"  Part="1" 
AR Path="/5C2275F2/5E6FAE10" Ref="#PWR?"  Part="1" 
AR Path="/5C2275F7/5E6FAE10" Ref="#PWR?"  Part="1" 
AR Path="/5E6FAE10" Ref="#PWR0143"  Part="1" 
F 0 "#PWR0143" H 4750 7300 50  0001 C CNN
F 1 "-4V" H 4765 7623 50  0000 C CNN
F 2 "" H 4750 7450 50  0001 C CNN
F 3 "" H 4750 7450 50  0001 C CNN
	1    4750 7450
	-1   0    0    1   
$EndComp
Wire Wire Line
	4400 7000 4400 7050
Wire Wire Line
	4750 7400 4750 7350
Wire Wire Line
	4750 7450 4750 7400
Connection ~ 4750 7400
Wire Wire Line
	4400 7400 4750 7400
Wire Wire Line
	4400 7350 4400 7400
$Comp
L Device:C C?
U 1 1 5E6FAE1D
P 4400 7200
AR Path="/5C221BCC/5E6FAE1D" Ref="C?"  Part="1" 
AR Path="/5C227394/5E6FAE1D" Ref="C?"  Part="1" 
AR Path="/5C2273E8/5E6FAE1D" Ref="C?"  Part="1" 
AR Path="/5C2274F3/5E6FAE1D" Ref="C?"  Part="1" 
AR Path="/5C2275F2/5E6FAE1D" Ref="C?"  Part="1" 
AR Path="/5C2275F7/5E6FAE1D" Ref="C?"  Part="1" 
AR Path="/5C2275FC/5E6FAE1D" Ref="C?"  Part="1" 
AR Path="/5C227601/5E6FAE1D" Ref="C?"  Part="1" 
AR Path="/5E6FAE1D" Ref="C27"  Part="1" 
F 0 "C27" H 4285 7154 50  0000 R CNN
F 1 "1u" H 4285 7245 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4438 7050 50  0001 C CNN
F 3 "~" H 4400 7200 50  0001 C CNN
	1    4400 7200
	-1   0    0    1   
$EndComp
Wire Wire Line
	4750 7050 4750 7000
Wire Wire Line
	4750 7000 4750 6800
Connection ~ 4750 7000
Wire Wire Line
	4750 7000 4400 7000
Wire Wire Line
	4400 6400 4400 6450
Wire Wire Line
	4750 6450 4750 6400
Wire Wire Line
	4750 6350 4750 6400
Connection ~ 4750 6400
Wire Wire Line
	4750 6400 4400 6400
Wire Wire Line
	4400 6800 4750 6800
Wire Wire Line
	4400 6750 4400 6800
$Comp
L Device:C C?
U 1 1 5E6FAE2E
P 4400 6600
AR Path="/5C221BCC/5E6FAE2E" Ref="C?"  Part="1" 
AR Path="/5C227394/5E6FAE2E" Ref="C?"  Part="1" 
AR Path="/5C2273E8/5E6FAE2E" Ref="C?"  Part="1" 
AR Path="/5C2274F3/5E6FAE2E" Ref="C?"  Part="1" 
AR Path="/5C2275F2/5E6FAE2E" Ref="C?"  Part="1" 
AR Path="/5C2275F7/5E6FAE2E" Ref="C?"  Part="1" 
AR Path="/5C2275FC/5E6FAE2E" Ref="C?"  Part="1" 
AR Path="/5C227601/5E6FAE2E" Ref="C?"  Part="1" 
AR Path="/5E6FAE2E" Ref="C26"  Part="1" 
F 0 "C26" H 4285 6554 50  0000 R CNN
F 1 "1u" H 4285 6645 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4438 6450 50  0001 C CNN
F 3 "~" H 4400 6600 50  0001 C CNN
	1    4400 6600
	-1   0    0    1   
$EndComp
Wire Notes Line
	5050 7700 5050 4900
Wire Notes Line
	5050 4900 3700 4900
Wire Notes Line
	3700 4900 3700 7700
Wire Notes Line
	3700 7700 5050 7700
Text Notes 4600 5100 2    100  ~ 0
Decoupling
Text GLabel 3050 3100 2    50   Input ~ 0
SRDATA
Text GLabel 1350 2900 0    50   Input ~ 0
SRCLK
Text GLabel 1350 1700 0    50   Input ~ 0
RCLK
Wire Wire Line
	1350 2900 1400 2900
Wire Wire Line
	1400 1700 1350 1700
Wire Wire Line
	3050 3100 3000 3100
$Comp
L mppcInterface-rescue:+3V3-power #PWR0110
U 1 1 5E971D91
P 8050 3100
F 0 "#PWR0110" H 8050 2950 50  0001 C CNN
F 1 "+3V3" H 8065 3273 50  0000 C CNN
F 2 "" H 8050 3100 50  0001 C CNN
F 3 "" H 8050 3100 50  0001 C CNN
	1    8050 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3250 8550 3250
Wire Wire Line
	8550 3350 8500 3350
Wire Wire Line
	8500 3450 8550 3450
Wire Wire Line
	8550 3550 8500 3550
Wire Wire Line
	9050 3450 9100 3450
Wire Wire Line
	9100 3600 9100 3550
Wire Wire Line
	8550 3150 8050 3150
Wire Wire Line
	8050 3150 8050 3100
Text GLabel 10150 1250 0    50   Input ~ 0
SCLK
Text GLabel 10150 1450 0    50   Input ~ 0
MISO
Text GLabel 10150 1350 0    50   Input ~ 0
MOSI
Text GLabel 10150 1550 0    50   Input ~ 0
SRCLK
Text GLabel 10150 1650 0    50   Input ~ 0
RCLK
Text GLabel 9250 2250 2    50   Input ~ 0
SR_OUT
Text GLabel 10150 1750 0    50   Input ~ 0
SR_OUT
$Comp
L mppcInterface-rescue:GND-power #PWR0111
U 1 1 5E971890
P 9100 3600
F 0 "#PWR0111" H 9100 3350 50  0001 C CNN
F 1 "GND" H 9105 3427 50  0000 C CNN
F 2 "" H 9100 3600 50  0001 C CNN
F 3 "" H 9100 3600 50  0001 C CNN
	1    9100 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 3550 9050 3550
$Comp
L Connector_Generic:Conn_02x05_Counter_Clockwise J11
U 1 1 5EB95ACD
P 8750 3350
F 0 "J11" H 8800 3767 50  0000 C CNN
F 1 "Conn_02x05_Counter_Clockwise" H 8800 3676 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical_SMD" H 8750 3350 50  0001 C CNN
F 3 "~" H 8750 3350 50  0001 C CNN
	1    8750 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 3350 9050 3350
Wire Wire Line
	9050 3250 9100 3250
Wire Wire Line
	9100 3150 9050 3150
Wire Wire Line
	10150 1250 10250 1250
Wire Wire Line
	10150 1350 10250 1350
Wire Wire Line
	10150 1450 10250 1450
Wire Wire Line
	10150 1550 10250 1550
Wire Wire Line
	10150 1650 10250 1650
Wire Wire Line
	10150 1750 10250 1750
Wire Bus Line
	6000 850  6000 4650
$EndSCHEMATC
