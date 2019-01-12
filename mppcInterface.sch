EESchema Schematic File Version 4
LIBS:mppcInterface-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 10
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 9100 800  650  300 
U 5C221BCC
F0 "AMP-CH0" 50
F1 "OPA846.sch" 50
F2 "Signal" O R 9750 900 50 
F3 "HV" I L 9100 900 50 
F4 "DAC" I L 9100 1000 50 
$EndSheet
$Sheet
S 9100 1300 650  300 
U 5C227394
F0 "AMP-CH1" 50
F1 "OPA846.sch" 50
F2 "Signal" O R 9750 1400 50 
F3 "HV" I L 9100 1400 50 
F4 "DAC" I L 9100 1500 50 
$EndSheet
$Sheet
S 9100 1800 650  300 
U 5C2273E8
F0 "AMP-CH2" 50
F1 "OPA846.sch" 50
F2 "Signal" O R 9750 1900 50 
F3 "HV" I L 9100 1900 50 
F4 "DAC" I L 9100 2000 50 
$EndSheet
$Sheet
S 9100 2300 650  300 
U 5C2274F3
F0 "AMP-CH3" 50
F1 "OPA846.sch" 50
F2 "Signal" O R 9750 2400 50 
F3 "HV" I L 9100 2400 50 
F4 "DAC" I L 9100 2500 50 
$EndSheet
$Sheet
S 9100 2800 650  300 
U 5C2275F2
F0 "AMP-CH4" 50
F1 "OPA846.sch" 50
F2 "Signal" O R 9750 2900 50 
F3 "HV" I L 9100 2900 50 
F4 "DAC" I L 9100 3000 50 
$EndSheet
$Sheet
S 9100 3300 650  300 
U 5C2275F7
F0 "AMP-CH5" 50
F1 "OPA846.sch" 50
F2 "Signal" O R 9750 3400 50 
F3 "HV" I L 9100 3400 50 
F4 "DAC" I L 9100 3500 50 
$EndSheet
$Sheet
S 9100 3800 650  300 
U 5C2275FC
F0 "AMP-CH6" 50
F1 "OPA846.sch" 50
F2 "Signal" O R 9750 3900 50 
F3 "HV" I L 9100 3900 50 
F4 "DAC" I L 9100 4000 50 
$EndSheet
$Sheet
S 9100 4300 650  300 
U 5C227601
F0 "AMP-CH7" 50
F1 "OPA846.sch" 50
F2 "Signal" O R 9750 4400 50 
F3 "HV" I L 9100 4400 50 
F4 "DAC" I L 9100 4500 50 
$EndSheet
$Comp
L dacx0508:DAC60508ZRTE U1
U 1 1 5C230724
P 7700 2300
F 0 "U1" H 7700 2400 50  0000 C CNN
F 1 "DAC60508ZRTE" H 7700 2300 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-16-1EP_3x3mm_P0.5mm_EP1.8x1.8mm" H 7700 2300 50  0001 C CNN
F 3 "" H 7700 2300 50  0001 C CNN
	1    7700 2300
	1    0    0    -1  
$EndComp
Entry Wire Line
	8750 800  8850 900 
Entry Wire Line
	8750 1300 8850 1400
Entry Wire Line
	8750 1800 8850 1900
Entry Wire Line
	8750 2300 8850 2400
Entry Wire Line
	8750 2800 8850 2900
Entry Wire Line
	8750 3300 8850 3400
Entry Wire Line
	8750 3400 8850 3500
Entry Wire Line
	8750 3800 8850 3900
Entry Wire Line
	8750 3900 8850 4000
Entry Wire Line
	8750 4300 8850 4400
Entry Wire Line
	8750 4400 8850 4500
Entry Wire Line
	8750 2900 8850 3000
Entry Wire Line
	8750 2400 8850 2500
Entry Wire Line
	8750 1900 8850 2000
Entry Wire Line
	8750 1400 8850 1500
Entry Wire Line
	8750 900  8850 1000
Wire Wire Line
	8850 900  9100 900 
Text Label 8850 900  0    50   ~ 0
HV
Wire Wire Line
	8850 1000 9100 1000
Text Label 8850 1000 0    50   ~ 0
DAC0
Wire Wire Line
	8850 1400 9100 1400
Wire Wire Line
	9100 1500 8850 1500
Wire Wire Line
	8850 1900 9100 1900
Wire Wire Line
	9100 2000 8850 2000
Wire Wire Line
	8850 2400 9100 2400
Wire Wire Line
	9100 2500 8850 2500
Wire Wire Line
	8850 2900 9100 2900
Wire Wire Line
	9100 3000 8850 3000
Wire Wire Line
	8850 4500 9100 4500
Wire Wire Line
	9100 4400 8850 4400
Wire Wire Line
	8850 4000 9100 4000
Wire Wire Line
	9100 3900 8850 3900
Wire Wire Line
	8850 3500 9100 3500
Wire Wire Line
	9100 3400 8850 3400
$Comp
L power:GND #PWR03
U 1 1 5C23C4D4
P 7700 2950
F 0 "#PWR03" H 7700 2700 50  0001 C CNN
F 1 "GND" H 7705 2777 50  0000 C CNN
F 2 "" H 7700 2950 50  0001 C CNN
F 3 "" H 7700 2950 50  0001 C CNN
	1    7700 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 2950 7700 2900
$Comp
L power:+5V #PWR02
U 1 1 5C23E259
P 7700 1650
F 0 "#PWR02" H 7700 1500 50  0001 C CNN
F 1 "+5V" H 7715 1823 50  0000 C CNN
F 2 "" H 7700 1650 50  0001 C CNN
F 3 "" H 7700 1650 50  0001 C CNN
	1    7700 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1700 7700 1650
$Comp
L power:+3V3 #PWR01
U 1 1 5C23F0C6
P 7500 1650
F 0 "#PWR01" H 7500 1500 50  0001 C CNN
F 1 "+3V3" H 7515 1823 50  0000 C CNN
F 2 "" H 7500 1650 50  0001 C CNN
F 3 "" H 7500 1650 50  0001 C CNN
	1    7500 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 1650 7500 1700
NoConn ~ 7900 1700
Entry Wire Line
	8650 2050 8750 2150
Entry Wire Line
	8650 1950 8750 2050
Entry Wire Line
	8650 2150 8750 2250
Entry Wire Line
	8650 2250 8750 2350
Entry Wire Line
	8650 2350 8750 2450
Entry Wire Line
	8650 2450 8750 2550
Entry Wire Line
	8650 2550 8750 2650
Wire Wire Line
	8450 1950 8650 1950
Wire Wire Line
	8650 2050 8450 2050
Wire Wire Line
	8450 2150 8650 2150
Wire Wire Line
	8650 2250 8450 2250
Wire Wire Line
	8450 2350 8650 2350
Wire Wire Line
	8650 2450 8450 2450
Wire Wire Line
	8450 2550 8650 2550
Entry Wire Line
	8650 2650 8750 2750
Wire Wire Line
	8650 2650 8450 2650
Text Label 8450 1950 0    50   ~ 0
DAC0
Text Label 8450 2050 0    50   ~ 0
DAC1
Text Label 8450 2150 0    50   ~ 0
DAC2
Text Label 8450 2250 0    50   ~ 0
DAC3
Text Label 8450 2350 0    50   ~ 0
DAC4
Text Label 8450 2450 0    50   ~ 0
DAC5
Text Label 8450 2550 0    50   ~ 0
DAC6
Text Label 8450 2650 0    50   ~ 0
DAC7
Entry Wire Line
	8650 1050 8750 1150
Wire Wire Line
	8650 1050 8350 1050
Text Label 8550 1050 0    50   ~ 0
HV
Text Label 8850 1400 0    50   ~ 0
HV
Text Label 8850 1900 0    50   ~ 0
HV
Text Label 8850 2400 0    50   ~ 0
HV
Text Label 8850 2900 0    50   ~ 0
HV
Text Label 8850 3400 0    50   ~ 0
HV
Text Label 8850 3900 0    50   ~ 0
HV
Text Label 8850 4400 0    50   ~ 0
HV
Text Label 8850 4500 0    50   ~ 0
DAC7
Text Label 8850 4000 0    50   ~ 0
DAC6
Text Label 8850 3500 0    50   ~ 0
DAC5
Text Label 8850 3000 0    50   ~ 0
DAC4
Text Label 8850 2500 0    50   ~ 0
DAC3
Text Label 8850 2000 0    50   ~ 0
DAC2
Text Label 8850 1500 0    50   ~ 0
DAC1
$Comp
L Mechanical:MountingHole H1
U 1 1 5C270EB3
P 9300 5000
F 0 "H1" H 9400 5046 50  0000 L CNN
F 1 "MountingHole" H 9400 4955 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965" H 9300 5000 50  0001 C CNN
F 3 "~" H 9300 5000 50  0001 C CNN
	1    9300 5000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5C270F65
P 9300 5300
F 0 "H2" H 9400 5346 50  0000 L CNN
F 1 "MountingHole" H 9400 5255 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965" H 9300 5300 50  0001 C CNN
F 3 "~" H 9300 5300 50  0001 C CNN
	1    9300 5300
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5C270FAD
P 9300 5600
F 0 "H3" H 9400 5646 50  0000 L CNN
F 1 "MountingHole" H 9400 5555 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965" H 9300 5600 50  0001 C CNN
F 3 "~" H 9300 5600 50  0001 C CNN
	1    9300 5600
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 5C271017
P 9300 5900
F 0 "H4" H 9400 5946 50  0000 L CNN
F 1 "MountingHole" H 9400 5855 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965" H 9300 5900 50  0001 C CNN
F 3 "~" H 9300 5900 50  0001 C CNN
	1    9300 5900
	1    0    0    -1  
$EndComp
$Comp
L ice40-lp384:ICE40-LP384-SG32 U14
U 1 1 5C278598
P 5350 4800
F 0 "U14" H 5350 4850 50  0000 C CNN
F 1 "ICE40-LP384-SG32" H 5350 4750 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.45x3.45mm" H 6850 3550 50  0001 C CNN
F 3 "http://www.latticesemi.com/~/media/LatticeSemi/Documents/DataSheets/iCE/iCE40LPHXFamilyDataSheet.pdf" H 7700 3450 50  0001 C CNN
	1    5350 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3600 5250 3550
Wire Wire Line
	5250 3550 5350 3550
Wire Wire Line
	5350 3550 5350 3600
Wire Wire Line
	5350 3550 5450 3550
Wire Wire Line
	5450 3550 5450 3600
Connection ~ 5350 3550
Wire Wire Line
	5450 3550 5550 3550
Wire Wire Line
	5550 3550 5550 3600
Connection ~ 5450 3550
Wire Wire Line
	5550 3550 5650 3550
Wire Wire Line
	5650 3550 5650 3600
Connection ~ 5550 3550
$Comp
L power:+1V2 #PWR060
U 1 1 5C299499
P 5150 3500
F 0 "#PWR060" H 5150 3350 50  0001 C CNN
F 1 "+1V2" H 5165 3673 50  0000 C CNN
F 2 "" H 5150 3500 50  0001 C CNN
F 3 "" H 5150 3500 50  0001 C CNN
	1    5150 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3500 5450 3550
Wire Wire Line
	5250 6000 5250 6050
Wire Wire Line
	5250 6050 5350 6050
Wire Wire Line
	5350 6050 5350 6000
Wire Wire Line
	5350 6050 5450 6050
Wire Wire Line
	5450 6050 5450 6000
Connection ~ 5350 6050
$Comp
L power:GND #PWR061
U 1 1 5C29F492
P 5350 6100
F 0 "#PWR061" H 5350 5850 50  0001 C CNN
F 1 "GND" H 5355 5927 50  0000 C CNN
F 2 "" H 5350 6100 50  0001 C CNN
F 3 "" H 5350 6100 50  0001 C CNN
	1    5350 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 6100 5350 6050
$Comp
L Connector:Raspberry_Pi_2_3 J9
U 1 1 5C2D1722
P 1700 2200
F 0 "J9" H 1700 2200 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 1350 1300 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 1700 2200 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 1700 2200 50  0001 C CNN
	1    1700 2200
	1    0    0    -1  
$EndComp
Text GLabel 10100 900  2    50   Input ~ 0
CH0
Text GLabel 10100 1400 2    50   Input ~ 0
CH1
Text GLabel 10100 1900 2    50   Input ~ 0
CH2
Text GLabel 10100 2400 2    50   Input ~ 0
CH3
Text GLabel 10100 2900 2    50   Input ~ 0
CH4
Text GLabel 10100 3400 2    50   Input ~ 0
CH5
Text GLabel 10100 3900 2    50   Input ~ 0
CH6
Text GLabel 10100 4400 2    50   Input ~ 0
CH7
Wire Wire Line
	9750 900  9850 900 
Wire Wire Line
	9750 1900 9850 1900
Wire Wire Line
	9850 3400 9750 3400
Wire Wire Line
	9750 4400 9850 4400
Wire Wire Line
	9750 3900 9850 3900
Text GLabel 2550 2500 2    50   Input ~ 0
MISO
Text GLabel 2550 2600 2    50   Input ~ 0
MOSI
Text GLabel 2550 2700 2    50   Input ~ 0
SCLK
Wire Wire Line
	1500 900  1500 850 
Wire Wire Line
	1500 850  1550 850 
Wire Wire Line
	1600 850  1600 900 
Wire Wire Line
	1800 900  1800 850 
Wire Wire Line
	1800 850  1850 850 
Wire Wire Line
	1900 850  1900 900 
$Comp
L power:+3V3 #PWR059
U 1 1 5C2FC91C
P 1850 800
F 0 "#PWR059" H 1850 650 50  0001 C CNN
F 1 "+3V3" H 1865 973 50  0000 C CNN
F 2 "" H 1850 800 50  0001 C CNN
F 3 "" H 1850 800 50  0001 C CNN
	1    1850 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 800  1850 850 
Connection ~ 1850 850 
Wire Wire Line
	1850 850  1900 850 
$Comp
L power:+5V #PWR057
U 1 1 5C2FEBA3
P 1550 800
F 0 "#PWR057" H 1550 650 50  0001 C CNN
F 1 "+5V" H 1565 973 50  0000 C CNN
F 2 "" H 1550 800 50  0001 C CNN
F 3 "" H 1550 800 50  0001 C CNN
	1    1550 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 800  1550 850 
Connection ~ 1550 850 
Wire Wire Line
	1550 850  1600 850 
Wire Wire Line
	1300 3500 1300 3550
Wire Wire Line
	1300 3550 1400 3550
Wire Wire Line
	1400 3550 1400 3500
Wire Wire Line
	1400 3550 1500 3550
Wire Wire Line
	1500 3550 1500 3500
Connection ~ 1400 3550
Wire Wire Line
	1500 3550 1600 3550
Wire Wire Line
	1600 3550 1600 3500
Connection ~ 1500 3550
Wire Wire Line
	1600 3550 1650 3550
Wire Wire Line
	1700 3550 1700 3500
Connection ~ 1600 3550
Wire Wire Line
	1700 3550 1800 3550
Wire Wire Line
	1800 3550 1800 3500
Connection ~ 1700 3550
Wire Wire Line
	1800 3550 1900 3550
Wire Wire Line
	1900 3550 1900 3500
Connection ~ 1800 3550
Wire Wire Line
	1900 3550 2000 3550
Wire Wire Line
	2000 3550 2000 3500
Connection ~ 1900 3550
$Comp
L power:GND #PWR058
U 1 1 5C315005
P 1650 3600
F 0 "#PWR058" H 1650 3350 50  0001 C CNN
F 1 "GND" H 1655 3427 50  0000 C CNN
F 2 "" H 1650 3600 50  0001 C CNN
F 3 "" H 1650 3600 50  0001 C CNN
	1    1650 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 3600 1650 3550
Connection ~ 1650 3550
Wire Wire Line
	1650 3550 1700 3550
Text GLabel 7750 1000 0    50   Input ~ 0
SCLK
Text GLabel 7750 1100 0    50   Input ~ 0
MOSI
Text GLabel 4400 5550 0    50   Input ~ 0
SCLK
Text GLabel 4400 5350 0    50   Input ~ 0
MOSI
Text GLabel 4400 5250 0    50   Input ~ 0
MISO
$Comp
L power:+3V3 #PWR062
U 1 1 5C3529BC
P 5450 3500
F 0 "#PWR062" H 5450 3350 50  0001 C CNN
F 1 "+3V3" H 5465 3673 50  0000 C CNN
F 2 "" H 5450 3500 50  0001 C CNN
F 3 "" H 5450 3500 50  0001 C CNN
	1    5450 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 3500 5150 3600
NoConn ~ 2500 2300
NoConn ~ 2500 2400
Text GLabel 7750 900  0    50   Input ~ 0
HV_CS
Text GLabel 6900 2150 0    50   Input ~ 0
DAC_CS
Text GLabel 4400 5450 0    50   Input ~ 0
FPGA_CS
Text GLabel 6900 2250 0    50   Input ~ 0
SCLK
Text GLabel 6900 2350 0    50   Input ~ 0
MOSI
Text GLabel 6900 2450 0    50   Input ~ 0
MISO
Wire Wire Line
	4400 5250 4450 5250
Wire Wire Line
	4450 5350 4400 5350
Wire Wire Line
	4400 5450 4450 5450
Wire Wire Line
	4450 5550 4400 5550
Text GLabel 4400 5050 0    50   Input ~ 0
FPGA_RST
Text GLabel 4400 4950 0    50   Input ~ 0
FPGA_DONE
Wire Wire Line
	4400 4950 4450 4950
Wire Wire Line
	4450 5050 4400 5050
Wire Wire Line
	6950 2150 6900 2150
Wire Wire Line
	6900 2250 6950 2250
Wire Wire Line
	6950 2350 6900 2350
Wire Wire Line
	6900 2450 6950 2450
Wire Wire Line
	7800 900  7750 900 
Wire Wire Line
	7750 1000 7800 1000
Wire Wire Line
	7800 1100 7750 1100
Text GLabel 7750 1200 0    50   Input ~ 0
CL
Wire Wire Line
	7750 1200 7800 1200
Wire Wire Line
	2550 2700 2500 2700
Wire Wire Line
	2500 2600 2550 2600
Wire Wire Line
	2550 2500 2500 2500
$Sheet
S 7800 800  550  500 
U 5C210B26
F0 "MAX1932" 50
F1 "MAX1932.sch" 50
F2 "~CS" I L 7800 900 50 
F3 "SCLK" I L 7800 1000 50 
F4 "DIN" I L 7800 1100 50 
F5 "~CL" I L 7800 1200 50 
F6 "HV" I R 8350 1050 50 
$EndSheet
$Comp
L power:+3V3 #PWR0101
U 1 1 5C354717
P 5050 2950
F 0 "#PWR0101" H 5050 2800 50  0001 C CNN
F 1 "+3V3" H 5065 3123 50  0000 C CNN
F 2 "" H 5050 2950 50  0001 C CNN
F 3 "" H 5050 2950 50  0001 C CNN
	1    5050 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3300 5050 3600
Wire Wire Line
	5050 2950 5050 3000
$Comp
L Device:D D1
U 1 1 5C35C3CC
P 5050 3150
F 0 "D1" V 5096 3071 50  0000 R CNN
F 1 "D" V 5005 3071 50  0000 R CNN
F 2 "Diode_SMD:D_0402_1005Metric" H 5050 3150 50  0001 C CNN
F 3 "~" H 5050 3150 50  0001 C CNN
	1    5050 3150
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5C3C2C1A
P 9850 850
AR Path="/5C210B26/5C3C2C1A" Ref="TP?"  Part="1" 
AR Path="/5C3C2C1A" Ref="TP5"  Part="1" 
F 0 "TP5" H 9908 970 50  0000 L CNN
F 1 "CH0" H 9908 879 50  0000 L CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch2.0mm_Drill0.7mm" H 10050 850 50  0001 C CNN
F 3 "~" H 10050 850 50  0001 C CNN
	1    9850 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 850  9850 900 
Connection ~ 9850 900 
Wire Wire Line
	9850 900  10100 900 
$Comp
L Connector:TestPoint TP?
U 1 1 5C3D3F85
P 9850 1350
AR Path="/5C210B26/5C3D3F85" Ref="TP?"  Part="1" 
AR Path="/5C3D3F85" Ref="TP6"  Part="1" 
F 0 "TP6" H 9908 1470 50  0000 L CNN
F 1 "CH1" H 9908 1379 50  0000 L CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch2.0mm_Drill0.7mm" H 10050 1350 50  0001 C CNN
F 3 "~" H 10050 1350 50  0001 C CNN
	1    9850 1350
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5C3D3FBD
P 9850 1850
AR Path="/5C210B26/5C3D3FBD" Ref="TP?"  Part="1" 
AR Path="/5C3D3FBD" Ref="TP7"  Part="1" 
F 0 "TP7" H 9908 1970 50  0000 L CNN
F 1 "CH2" H 9908 1879 50  0000 L CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch2.0mm_Drill0.7mm" H 10050 1850 50  0001 C CNN
F 3 "~" H 10050 1850 50  0001 C CNN
	1    9850 1850
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5C3D3FF7
P 9850 2350
AR Path="/5C210B26/5C3D3FF7" Ref="TP?"  Part="1" 
AR Path="/5C3D3FF7" Ref="TP8"  Part="1" 
F 0 "TP8" H 9908 2470 50  0000 L CNN
F 1 "CH3" H 9908 2379 50  0000 L CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch2.0mm_Drill0.7mm" H 10050 2350 50  0001 C CNN
F 3 "~" H 10050 2350 50  0001 C CNN
	1    9850 2350
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5C3D406D
P 9850 2850
AR Path="/5C210B26/5C3D406D" Ref="TP?"  Part="1" 
AR Path="/5C3D406D" Ref="TP9"  Part="1" 
F 0 "TP9" H 9908 2970 50  0000 L CNN
F 1 "CH4" H 9908 2879 50  0000 L CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch2.0mm_Drill0.7mm" H 10050 2850 50  0001 C CNN
F 3 "~" H 10050 2850 50  0001 C CNN
	1    9850 2850
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5C3D40AB
P 9850 3350
AR Path="/5C210B26/5C3D40AB" Ref="TP?"  Part="1" 
AR Path="/5C3D40AB" Ref="TP10"  Part="1" 
F 0 "TP10" H 9908 3470 50  0000 L CNN
F 1 "CH5" H 9908 3379 50  0000 L CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch2.0mm_Drill0.7mm" H 10050 3350 50  0001 C CNN
F 3 "~" H 10050 3350 50  0001 C CNN
	1    9850 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5C3D40FB
P 9850 3850
AR Path="/5C210B26/5C3D40FB" Ref="TP?"  Part="1" 
AR Path="/5C3D40FB" Ref="TP11"  Part="1" 
F 0 "TP11" H 9908 3970 50  0000 L CNN
F 1 "CH6" H 9908 3879 50  0000 L CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch2.0mm_Drill0.7mm" H 10050 3850 50  0001 C CNN
F 3 "~" H 10050 3850 50  0001 C CNN
	1    9850 3850
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 5C3D41A4
P 9850 4350
AR Path="/5C210B26/5C3D41A4" Ref="TP?"  Part="1" 
AR Path="/5C3D41A4" Ref="TP12"  Part="1" 
F 0 "TP12" H 9908 4470 50  0000 L CNN
F 1 "CH7" H 9908 4379 50  0000 L CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch2.0mm_Drill0.7mm" H 10050 4350 50  0001 C CNN
F 3 "~" H 10050 4350 50  0001 C CNN
	1    9850 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 4350 9850 4400
Connection ~ 9850 4400
Wire Wire Line
	9850 4400 10100 4400
Wire Wire Line
	9850 3850 9850 3900
Connection ~ 9850 3900
Wire Wire Line
	9850 3900 10100 3900
Wire Wire Line
	9850 3350 9850 3400
Wire Wire Line
	9850 3400 10100 3400
Connection ~ 9850 3400
Wire Wire Line
	9750 2900 9850 2900
Wire Wire Line
	9850 2900 9850 2850
Connection ~ 9850 2900
Wire Wire Line
	9850 2900 10100 2900
Wire Wire Line
	9750 2400 9850 2400
Wire Wire Line
	9850 2400 9850 2350
Connection ~ 9850 2400
Wire Wire Line
	9850 2400 10100 2400
Wire Wire Line
	9850 1900 9850 1850
Wire Wire Line
	9850 1900 10100 1900
Connection ~ 9850 1900
Wire Wire Line
	9750 1400 9850 1400
Wire Wire Line
	9850 1350 9850 1400
Connection ~ 9850 1400
Wire Wire Line
	9850 1400 10100 1400
Text GLabel 4350 4250 0    50   Input ~ 0
CH7
Text GLabel 4350 4150 0    50   Input ~ 0
CH6
Text GLabel 6350 4150 2    50   Input ~ 0
CH5
Text GLabel 6350 4250 2    50   Input ~ 0
CH4
Text GLabel 6350 4350 2    50   Input ~ 0
CH3
Text GLabel 6350 4450 2    50   Input ~ 0
CH2
Text GLabel 6350 4550 2    50   Input ~ 0
CH1
Text GLabel 6350 4650 2    50   Input ~ 0
CH0
Wire Wire Line
	4350 4150 4450 4150
Wire Wire Line
	4450 4250 4350 4250
Wire Wire Line
	6350 4150 6250 4150
Wire Wire Line
	6250 4250 6350 4250
Wire Wire Line
	6350 4350 6250 4350
Wire Wire Line
	6250 4450 6350 4450
Wire Wire Line
	6350 4550 6250 4550
Wire Wire Line
	6250 4650 6350 4650
Wire Bus Line
	8750 800  8750 4600
$EndSCHEMATC
