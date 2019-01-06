EESchema Schematic File Version 4
LIBS:mppcHighVoltage-cache
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
$Comp
L ina28x:INA285 U4
U 1 1 5C1D3652
P 12450 5300
F 0 "U4" V 12404 5641 50  0000 L CNN
F 1 "INA285" V 12495 5641 50  0000 L CNN
F 2 "ina28x:TI-DGK-VSSOP-8" H 12450 5300 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ina282.pdf" H 12450 5300 50  0001 C CNN
	1    12450 5300
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R1
U 1 1 5C1D3736
P 12450 4900
F 0 "R1" V 12150 4900 50  0000 C CNN
F 1 "4K99" V 12250 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 12490 4890 50  0001 C CNN
F 3 "~" H 12450 4900 50  0001 C CNN
F 4 "0.01%" V 12350 4900 50  0000 C CNN "Tolerance"
	1    12450 4900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5C1E8169
P 12150 5400
F 0 "#PWR09" H 12150 5150 50  0001 C CNN
F 1 "GND" H 12155 5227 50  0000 C CNN
F 2 "" H 12150 5400 50  0001 C CNN
F 3 "" H 12150 5400 50  0001 C CNN
	1    12150 5400
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR08
U 1 1 5C1E8981
P 12100 5200
F 0 "#PWR08" H 12100 5050 50  0001 C CNN
F 1 "VBUS" H 12115 5373 50  0000 C CNN
F 2 "" H 12100 5200 50  0001 C CNN
F 3 "" H 12100 5200 50  0001 C CNN
	1    12100 5200
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR010
U 1 1 5C1E8B61
P 12750 5200
F 0 "#PWR010" H 12750 5050 50  0001 C CNN
F 1 "VBUS" H 12765 5373 50  0000 C CNN
F 2 "" H 12750 5200 50  0001 C CNN
F 3 "" H 12750 5200 50  0001 C CNN
	1    12750 5200
	1    0    0    -1  
$EndComp
$Comp
L s13360-2050ve:S13360-2050VE D1
U 1 1 5C1F8ED8
P 13550 4850
F 0 "D1" H 13550 5145 50  0000 C CNN
F 1 "S13360-2050VE" H 13550 5054 50  0000 C CNN
F 2 "s13360-2050ve:S13360-2050VE" H 13600 5025 50  0001 C CNN
F 3 "https://www.hamamatsu.com/resources/pdf/ssd/s13360-2050ve_etc_kapd1053e.pdf" H 13550 4600 50  0001 C CNN
	1    13550 4850
	1    0    0    -1  
$EndComp
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
L 74xx:74HC14 U2
U 1 1 5C227E68
P 10400 900
F 0 "U2" H 10350 900 50  0000 C CNN
F 1 "74HC14" H 10600 800 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 10400 900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 10400 900 50  0001 C CNN
	1    10400 900 
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U2
U 2 1 5C227EE3
P 10400 1400
F 0 "U2" H 10350 1400 50  0000 C CNN
F 1 "74HC14" H 10600 1300 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 10400 1400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 10400 1400 50  0001 C CNN
	2    10400 1400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U2
U 3 1 5C227F3E
P 10400 1900
F 0 "U2" H 10350 1900 50  0000 C CNN
F 1 "74HC14" H 10600 1800 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 10400 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 10400 1900 50  0001 C CNN
	3    10400 1900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U2
U 4 1 5C227F79
P 10400 2400
F 0 "U2" H 10350 2400 50  0000 C CNN
F 1 "74HC14" H 10600 2300 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 10400 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 10400 2400 50  0001 C CNN
	4    10400 2400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U3
U 1 1 5C227FC4
P 10400 2900
F 0 "U3" H 10350 2900 50  0000 C CNN
F 1 "74HC14" H 10600 2800 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 10400 2900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 10400 2900 50  0001 C CNN
	1    10400 2900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U3
U 2 1 5C228011
P 10400 3400
F 0 "U3" H 10350 3400 50  0000 C CNN
F 1 "74HC14" H 10600 3300 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 10400 3400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 10400 3400 50  0001 C CNN
	2    10400 3400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U3
U 3 1 5C228074
P 10400 3900
F 0 "U3" H 10350 3900 50  0000 C CNN
F 1 "74HC14" H 10600 3800 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 10400 3900 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 10400 3900 50  0001 C CNN
	3    10400 3900
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U3
U 4 1 5C2280CF
P 10400 4400
F 0 "U3" H 10350 4400 50  0000 C CNN
F 1 "74HC14" H 10600 4300 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 10400 4400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 10400 4400 50  0001 C CNN
	4    10400 4400
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U2
U 7 1 5C228136
P 10300 5450
F 0 "U2" H 10250 5500 50  0000 L CNN
F 1 "74HC14" H 10150 5400 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 10300 5450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 10300 5450 50  0001 C CNN
	7    10300 5450
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74HC14 U3
U 7 1 5C2281AE
P 10800 5450
F 0 "U3" H 10750 5500 50  0000 L CNN
F 1 "74HC14" H 10650 5400 50  0000 L CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 10800 5450 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/sn74HC14" H 10800 5450 50  0001 C CNN
	7    10800 5450
	1    0    0    -1  
$EndComp
Text Label 9800 900  0    50   ~ 0
CH0-A
Text Label 9800 1400 0    50   ~ 0
CH1-A
Text Label 9800 1900 0    50   ~ 0
CH2-A
Wire Wire Line
	12300 4900 12300 5000
Wire Wire Line
	12300 5000 12350 5000
Wire Wire Line
	12600 4900 12600 5000
Wire Wire Line
	12600 5000 12550 5000
Wire Wire Line
	12150 5400 12150 5300
Connection ~ 12150 5400
Wire Wire Line
	12150 5300 12100 5300
Wire Wire Line
	12100 5300 12100 5200
Connection ~ 12150 5300
Wire Wire Line
	12150 5300 12150 5200
Wire Wire Line
	9750 900  10100 900 
Wire Wire Line
	9750 1400 10100 1400
Wire Wire Line
	9750 1900 10100 1900
Wire Wire Line
	9750 2400 10100 2400
Wire Wire Line
	9750 2900 10100 2900
Wire Wire Line
	9750 3400 10100 3400
Wire Wire Line
	9750 3900 10100 3900
Wire Wire Line
	9750 4400 10100 4400
Text Label 9800 2400 0    50   ~ 0
CH3-A
Text Label 9800 2900 0    50   ~ 0
CH4-A
Text Label 9800 3400 0    50   ~ 0
CH5-A
Text Label 9800 3900 0    50   ~ 0
CH6-A
Text Label 9800 4400 0    50   ~ 0
CH7-A
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
L power:+5V #PWR04
U 1 1 5C25FD89
P 10300 4900
F 0 "#PWR04" H 10300 4750 50  0001 C CNN
F 1 "+5V" H 10315 5073 50  0000 C CNN
F 2 "" H 10300 4900 50  0001 C CNN
F 3 "" H 10300 4900 50  0001 C CNN
	1    10300 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 5C25FDC7
P 10800 4900
F 0 "#PWR06" H 10800 4750 50  0001 C CNN
F 1 "+5V" H 10815 5073 50  0000 C CNN
F 2 "" H 10800 4900 50  0001 C CNN
F 3 "" H 10800 4900 50  0001 C CNN
	1    10800 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5C25FE1A
P 10300 6000
F 0 "#PWR05" H 10300 5750 50  0001 C CNN
F 1 "GND" H 10305 5827 50  0000 C CNN
F 2 "" H 10300 6000 50  0001 C CNN
F 3 "" H 10300 6000 50  0001 C CNN
	1    10300 6000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5C25FE58
P 10800 6000
F 0 "#PWR07" H 10800 5750 50  0001 C CNN
F 1 "GND" H 10805 5827 50  0000 C CNN
F 2 "" H 10800 6000 50  0001 C CNN
F 3 "" H 10800 6000 50  0001 C CNN
	1    10800 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 4950 10800 4900
Wire Wire Line
	10800 6000 10800 5950
Wire Wire Line
	10300 6000 10300 5950
Wire Wire Line
	10300 4950 10300 4900
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
P 7600 4800
F 0 "U14" H 7600 4850 50  0000 C CNN
F 1 "ICE40-LP384-SG32" H 7600 4750 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.45x3.45mm" H 9100 3550 50  0001 C CNN
F 3 "http://www.latticesemi.com/~/media/LatticeSemi/Documents/DataSheets/iCE/iCE40LPHXFamilyDataSheet.pdf" H 9950 3450 50  0001 C CNN
	1    7600 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 3600 7500 3550
Wire Wire Line
	7500 3550 7600 3550
Wire Wire Line
	7600 3550 7600 3600
Wire Wire Line
	7600 3550 7700 3550
Wire Wire Line
	7700 3550 7700 3600
Connection ~ 7600 3550
Wire Wire Line
	7700 3550 7800 3550
Wire Wire Line
	7800 3550 7800 3600
Connection ~ 7700 3550
Wire Wire Line
	7800 3550 7900 3550
Wire Wire Line
	7900 3550 7900 3600
Connection ~ 7800 3550
$Comp
L power:+1V2 #PWR060
U 1 1 5C299499
P 7400 3500
F 0 "#PWR060" H 7400 3350 50  0001 C CNN
F 1 "+1V2" H 7415 3673 50  0000 C CNN
F 2 "" H 7400 3500 50  0001 C CNN
F 3 "" H 7400 3500 50  0001 C CNN
	1    7400 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3500 7700 3550
Wire Wire Line
	7500 6000 7500 6050
Wire Wire Line
	7500 6050 7600 6050
Wire Wire Line
	7600 6050 7600 6000
Wire Wire Line
	7600 6050 7700 6050
Wire Wire Line
	7700 6050 7700 6000
Connection ~ 7600 6050
$Comp
L power:GND #PWR061
U 1 1 5C29F492
P 7600 6100
F 0 "#PWR061" H 7600 5850 50  0001 C CNN
F 1 "GND" H 7605 5927 50  0000 C CNN
F 2 "" H 7600 6100 50  0001 C CNN
F 3 "" H 7600 6100 50  0001 C CNN
	1    7600 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 6100 7600 6050
$Comp
L Connector:Raspberry_Pi_2_3 J9
U 1 1 5C2D1722
P 4700 2350
F 0 "J9" H 4700 2350 50  0000 C CNN
F 1 "Raspberry_Pi_2_3" H 4350 1450 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 4700 2350 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 4700 2350 50  0001 C CNN
	1    4700 2350
	1    0    0    -1  
$EndComp
Text GLabel 10800 900  2    50   Input ~ 0
CH0
Text GLabel 10800 1400 2    50   Input ~ 0
CH1
Text GLabel 10800 1900 2    50   Input ~ 0
CH2
Text GLabel 10800 2400 2    50   Input ~ 0
CH3
Text GLabel 10800 2900 2    50   Input ~ 0
CH4
Text GLabel 10800 3400 2    50   Input ~ 0
CH5
Text GLabel 10800 3900 2    50   Input ~ 0
CH6
Text GLabel 10800 4400 2    50   Input ~ 0
CH7
Wire Wire Line
	10700 900  10800 900 
Wire Wire Line
	10800 1400 10700 1400
Wire Wire Line
	10700 1900 10800 1900
Wire Wire Line
	10700 2400 10800 2400
Wire Wire Line
	10700 2900 10800 2900
Wire Wire Line
	10800 3400 10700 3400
Wire Wire Line
	10700 4400 10800 4400
Wire Wire Line
	10700 3900 10800 3900
Text GLabel 5550 2650 2    50   Input ~ 0
MISO
Text GLabel 5550 2750 2    50   Input ~ 0
MOSI
Text GLabel 5550 2850 2    50   Input ~ 0
SCLK
Wire Wire Line
	4500 1050 4500 1000
Wire Wire Line
	4500 1000 4550 1000
Wire Wire Line
	4600 1000 4600 1050
Wire Wire Line
	4800 1050 4800 1000
Wire Wire Line
	4800 1000 4850 1000
Wire Wire Line
	4900 1000 4900 1050
$Comp
L power:+3V3 #PWR059
U 1 1 5C2FC91C
P 4850 950
F 0 "#PWR059" H 4850 800 50  0001 C CNN
F 1 "+3V3" H 4865 1123 50  0000 C CNN
F 2 "" H 4850 950 50  0001 C CNN
F 3 "" H 4850 950 50  0001 C CNN
	1    4850 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 950  4850 1000
Connection ~ 4850 1000
Wire Wire Line
	4850 1000 4900 1000
$Comp
L power:+5V #PWR057
U 1 1 5C2FEBA3
P 4550 950
F 0 "#PWR057" H 4550 800 50  0001 C CNN
F 1 "+5V" H 4565 1123 50  0000 C CNN
F 2 "" H 4550 950 50  0001 C CNN
F 3 "" H 4550 950 50  0001 C CNN
	1    4550 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 950  4550 1000
Connection ~ 4550 1000
Wire Wire Line
	4550 1000 4600 1000
Wire Wire Line
	4300 3650 4300 3700
Wire Wire Line
	4300 3700 4400 3700
Wire Wire Line
	4400 3700 4400 3650
Wire Wire Line
	4400 3700 4500 3700
Wire Wire Line
	4500 3700 4500 3650
Connection ~ 4400 3700
Wire Wire Line
	4500 3700 4600 3700
Wire Wire Line
	4600 3700 4600 3650
Connection ~ 4500 3700
Wire Wire Line
	4600 3700 4650 3700
Wire Wire Line
	4700 3700 4700 3650
Connection ~ 4600 3700
Wire Wire Line
	4700 3700 4800 3700
Wire Wire Line
	4800 3700 4800 3650
Connection ~ 4700 3700
Wire Wire Line
	4800 3700 4900 3700
Wire Wire Line
	4900 3700 4900 3650
Connection ~ 4800 3700
Wire Wire Line
	4900 3700 5000 3700
Wire Wire Line
	5000 3700 5000 3650
Connection ~ 4900 3700
$Comp
L power:GND #PWR058
U 1 1 5C315005
P 4650 3750
F 0 "#PWR058" H 4650 3500 50  0001 C CNN
F 1 "GND" H 4655 3577 50  0000 C CNN
F 2 "" H 4650 3750 50  0001 C CNN
F 3 "" H 4650 3750 50  0001 C CNN
	1    4650 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3750 4650 3700
Connection ~ 4650 3700
Wire Wire Line
	4650 3700 4700 3700
Text GLabel 7750 1000 0    50   Input ~ 0
SCLK
Text GLabel 7750 1100 0    50   Input ~ 0
MOSI
Text GLabel 6650 5550 0    50   Input ~ 0
SCLK
Text GLabel 6650 5350 0    50   Input ~ 0
MOSI
Text GLabel 6650 5250 0    50   Input ~ 0
MISO
$Comp
L power:+3V3 #PWR062
U 1 1 5C3529BC
P 7700 3500
F 0 "#PWR062" H 7700 3350 50  0001 C CNN
F 1 "+3V3" H 7715 3673 50  0000 C CNN
F 2 "" H 7700 3500 50  0001 C CNN
F 3 "" H 7700 3500 50  0001 C CNN
	1    7700 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7300 3550 7300 3600
Wire Wire Line
	7400 3500 7400 3600
NoConn ~ 5500 2450
NoConn ~ 5500 2550
Text GLabel 7750 900  0    50   Input ~ 0
HV_CS
Text GLabel 6900 2150 0    50   Input ~ 0
DAC_CS
Text GLabel 6650 5450 0    50   Input ~ 0
FPGA_CS
Text GLabel 6900 2250 0    50   Input ~ 0
SCLK
Text GLabel 6900 2350 0    50   Input ~ 0
MOSI
Text GLabel 6900 2450 0    50   Input ~ 0
MISO
Wire Wire Line
	6650 5250 6700 5250
Wire Wire Line
	6700 5350 6650 5350
Wire Wire Line
	6650 5450 6700 5450
Wire Wire Line
	6700 5550 6650 5550
Text GLabel 6650 5050 0    50   Input ~ 0
FPGA_RST
Text GLabel 6650 4950 0    50   Input ~ 0
FPGA_DONE
Wire Wire Line
	6650 4950 6700 4950
Wire Wire Line
	6700 5050 6650 5050
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
	5550 2850 5500 2850
Wire Wire Line
	5500 2750 5550 2750
Wire Wire Line
	5550 2650 5500 2650
Wire Bus Line
	8750 800  8750 4600
$EndSCHEMATC
