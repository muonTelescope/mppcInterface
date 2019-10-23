EESchema Schematic File Version 4
LIBS:mppcInterface-cache
EELAYER 29 0
EELAYER END
$Descr User 8268 5827
encoding utf-8
Sheet 10 10
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
L max1932:MAX1932 U?
U 1 1 5C210D38
P 1750 2450
AR Path="/5C210D38" Ref="U?"  Part="1" 
AR Path="/5C210B26/5C210D38" Ref="U5"  Part="1" 
F 0 "U5" H 1750 2550 50  0000 C CNN
F 1 "MAX1932" H 1750 2450 50  0000 C CNN
F 2 "tqfn-12:TQFN-12" H 1750 1100 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX1932.pdf" H 1750 1250 50  0001 C CNN
	1    1750 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5C210D3F
P 3650 1650
AR Path="/5C210D3F" Ref="R?"  Part="1" 
AR Path="/5C210B26/5C210D3F" Ref="R4"  Part="1" 
F 0 "R4" V 3445 1650 50  0000 C CNN
F 1 "806R" V 3536 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3690 1640 50  0001 C CNN
F 3 "~" H 3650 1650 50  0001 C CNN
	1    3650 1650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C210D4C
P 1750 4000
AR Path="/5C210D4C" Ref="#PWR?"  Part="1" 
AR Path="/5C210B26/5C210D4C" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 1750 3750 50  0001 C CNN
F 1 "GND" H 1755 3827 50  0000 C CNN
F 2 "" H 1750 4000 50  0001 C CNN
F 3 "" H 1750 4000 50  0001 C CNN
	1    1750 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C210D52
P 1550 3800
AR Path="/5C210D52" Ref="C?"  Part="1" 
AR Path="/5C210B26/5C210D52" Ref="C1"  Part="1" 
F 0 "C1" H 1350 3850 50  0000 L CNN
F 1 "0u22" H 1250 3750 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1588 3650 50  0001 C CNN
F 3 "~" H 1550 3800 50  0001 C CNN
	1    1550 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5C210D59
P 1550 3450
AR Path="/5C210D59" Ref="R?"  Part="1" 
AR Path="/5C210B26/5C210D59" Ref="R2"  Part="1" 
F 0 "R2" H 1350 3500 50  0000 L CNN
F 1 "20R" H 1300 3400 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1590 3440 50  0001 C CNN
F 3 "~" H 1550 3450 50  0001 C CNN
	1    1550 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 3300 1550 3250
Wire Wire Line
	1750 3950 1550 3950
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5C210D62
P 2500 1900
AR Path="/5C210D62" Ref="Q?"  Part="1" 
AR Path="/5C210B26/5C210D62" Ref="Q1"  Part="1" 
F 0 "Q1" H 2706 1946 50  0000 L CNN
F 1 "BSS123L" H 2706 1855 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2700 2000 50  0001 C CNN
F 3 "~" H 2500 1900 50  0001 C CNN
	1    2500 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C210D69
P 2600 2150
AR Path="/5C210D69" Ref="#PWR?"  Part="1" 
AR Path="/5C210B26/5C210D69" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 2600 1900 50  0001 C CNN
F 1 "GND" H 2605 1977 50  0000 C CNN
F 2 "" H 2600 2150 50  0001 C CNN
F 3 "" H 2600 2150 50  0001 C CNN
	1    2600 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 2150 2600 2100
Wire Wire Line
	2300 1900 2250 1900
$Comp
L Device:L_Core_Ferrite L?
U 1 1 5C210D71
P 2600 1450
AR Path="/5C210D71" Ref="L?"  Part="1" 
AR Path="/5C210B26/5C210D71" Ref="L1"  Part="1" 
F 0 "L1" H 2500 1500 50  0000 L CNN
F 1 "150uH" H 2350 1400 50  0000 L CNN
F 2 "srn4018:SRN4018" H 2600 1450 50  0001 C CNN
F 3 "~" H 2600 1450 50  0001 C CNN
	1    2600 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1600 2600 1650
$Comp
L Diode:LL4148 D?
U 1 1 5C210D79
P 2900 1650
AR Path="/5C210D79" Ref="D?"  Part="1" 
AR Path="/5C210B26/5C210D79" Ref="D2"  Part="1" 
F 0 "D2" H 2900 1434 50  0000 C CNN
F 1 "LL4148" H 2900 1525 50  0000 C CNN
F 2 "Diode_SMD:D_MiniMELF" H 2900 1475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85557/ll4148.pdf" H 2900 1650 50  0001 C CNN
	1    2900 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	2750 1650 2600 1650
Connection ~ 2600 1650
Wire Wire Line
	2600 1650 2600 1700
$Comp
L Device:C C?
U 1 1 5C210D8A
P 3200 1950
AR Path="/5C210D8A" Ref="C?"  Part="1" 
AR Path="/5C210B26/5C210D8A" Ref="C2"  Part="1" 
F 0 "C2" H 3315 1996 50  0000 L CNN
F 1 "47n" H 3315 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 3238 1800 50  0001 C CNN
F 3 "~" H 3200 1950 50  0001 C CNN
	1    3200 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1800 3200 1650
Wire Wire Line
	3200 1650 3050 1650
$Comp
L power:GND #PWR?
U 1 1 5C210D93
P 3200 2150
AR Path="/5C210D93" Ref="#PWR?"  Part="1" 
AR Path="/5C210B26/5C210D93" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 3200 1900 50  0001 C CNN
F 1 "GND" H 3205 1977 50  0000 C CNN
F 2 "" H 3200 2150 50  0001 C CNN
F 3 "" H 3200 2150 50  0001 C CNN
	1    3200 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 2100 3200 2150
Wire Wire Line
	3500 1650 3200 1650
Connection ~ 3200 1650
$Comp
L Device:R_US R?
U 1 1 5C210D9C
P 2450 2900
AR Path="/5C210D9C" Ref="R?"  Part="1" 
AR Path="/5C210B26/5C210D9C" Ref="R3"  Part="1" 
F 0 "R3" V 2650 2900 50  0000 C CNN
F 1 "2K49" V 2550 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2490 2890 50  0001 C CNN
F 3 "~" H 2450 2900 50  0001 C CNN
	1    2450 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5C210DA3
P 3850 3100
AR Path="/5C210DA3" Ref="R?"  Part="1" 
AR Path="/5C210B26/5C210DA3" Ref="R6"  Part="1" 
F 0 "R6" H 3700 3200 50  0000 L CNN
F 1 "2K37" H 3600 3100 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3890 3090 50  0001 C CNN
F 3 "~" H 3850 3100 50  0001 C CNN
F 4 "0.1%" H 3700 3000 50  0000 C CNN "Tolerance"
	1    3850 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5C210DAA
P 3850 2700
AR Path="/5C210DAA" Ref="R?"  Part="1" 
AR Path="/5C210B26/5C210DAA" Ref="R5"  Part="1" 
F 0 "R5" H 3700 2800 50  0000 L CNN
F 1 "100K" H 3600 2700 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3890 2690 50  0001 C CNN
F 3 "~" H 3850 2700 50  0001 C CNN
F 4 "0.1%" H 3700 2600 50  0000 C CNN "Tolerance"
	1    3850 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2950 3850 2900
Wire Wire Line
	3850 2900 2650 2900
Connection ~ 3850 2900
Wire Wire Line
	3850 2900 3850 2850
$Comp
L power:GND #PWR?
U 1 1 5C210DB5
P 3850 3350
AR Path="/5C210DB5" Ref="#PWR?"  Part="1" 
AR Path="/5C210B26/5C210DB5" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 3850 3100 50  0001 C CNN
F 1 "GND" H 3855 3177 50  0000 C CNN
F 2 "" H 3850 3350 50  0001 C CNN
F 3 "" H 3850 3350 50  0001 C CNN
	1    3850 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 4000 1750 3950
Wire Wire Line
	1750 1650 1750 1200
Wire Wire Line
	1750 3250 1750 3950
Wire Wire Line
	1550 3650 1550 3600
Connection ~ 1750 3950
Wire Wire Line
	2250 2400 3500 2400
Wire Wire Line
	3500 2400 3500 1650
Connection ~ 3500 1650
Wire Wire Line
	3800 1650 3850 1650
Wire Wire Line
	3850 1650 3850 2500
Wire Wire Line
	3850 2500 2250 2500
Wire Wire Line
	2300 2900 2250 2900
Wire Wire Line
	2250 2700 2650 2700
Wire Wire Line
	2650 2700 2650 2900
Connection ~ 2650 2900
Wire Wire Line
	2650 2900 2600 2900
Wire Wire Line
	3850 3250 3850 3350
Wire Wire Line
	3850 2550 3850 2500
Connection ~ 3850 2500
Text HLabel 1150 2300 0    50   Input ~ 0
~CS
Text HLabel 1150 2400 0    50   Input ~ 0
SCLK
Text HLabel 1150 2500 0    50   Input ~ 0
DIN
Text HLabel 1150 2600 0    50   Input ~ 0
~CL
Wire Wire Line
	1150 2300 1200 2300
Wire Wire Line
	1200 2400 1150 2400
Wire Wire Line
	1150 2500 1200 2500
Wire Wire Line
	1200 2600 1150 2600
Text HLabel 5050 1650 2    50   Input ~ 0
HV
$Comp
L Device:C C?
U 1 1 5C35CF36
P 2250 1400
AR Path="/5C35CF36" Ref="C?"  Part="1" 
AR Path="/5C210B26/5C35CF36" Ref="C19"  Part="1" 
F 0 "C19" H 2000 1450 50  0000 L CNN
F 1 "1u" H 2050 1350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2288 1250 50  0001 C CNN
F 3 "~" H 2250 1400 50  0001 C CNN
	1    2250 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C35CFC7
P 2250 1600
AR Path="/5C35CFC7" Ref="#PWR?"  Part="1" 
AR Path="/5C210B26/5C35CFC7" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 2250 1350 50  0001 C CNN
F 1 "GND" H 2255 1427 50  0000 C CNN
F 2 "" H 2250 1600 50  0001 C CNN
F 3 "" H 2250 1600 50  0001 C CNN
	1    2250 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1200 2250 1200
Connection ~ 2600 1200
Wire Wire Line
	2600 1200 2600 1300
Wire Wire Line
	2250 1250 2250 1200
Wire Wire Line
	2250 1200 1750 1200
Connection ~ 2250 1200
Wire Wire Line
	2250 1550 2250 1600
$Comp
L Device:C C?
U 1 1 5C3A2F73
P 4650 1950
AR Path="/5C3A2F73" Ref="C?"  Part="1" 
AR Path="/5C210B26/5C3A2F73" Ref="C21"  Part="1" 
F 0 "C21" H 4765 1996 50  0000 L CNN
F 1 "10u" H 4765 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_2220_5650Metric" H 4688 1800 50  0001 C CNN
F 3 "~" H 4650 1950 50  0001 C CNN
	1    4650 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:L L2
U 1 1 5C3A3011
P 4400 1650
F 0 "L2" V 4590 1650 50  0000 C CNN
F 1 "1mH" V 4499 1650 50  0000 C CNN
F 2 "Inductor_SMD:L_1210_3225Metric" H 4400 1650 50  0001 C CNN
F 3 "~" H 4400 1650 50  0001 C CNN
	1    4400 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5C3A3104
P 4100 1950
AR Path="/5C3A3104" Ref="C?"  Part="1" 
AR Path="/5C210B26/5C3A3104" Ref="C20"  Part="1" 
F 0 "C20" H 4200 2000 50  0000 L CNN
F 1 "1u" H 4200 1900 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 4138 1800 50  0001 C CNN
F 3 "~" H 4100 1950 50  0001 C CNN
	1    4100 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C3A319C
P 4100 2150
AR Path="/5C3A319C" Ref="#PWR?"  Part="1" 
AR Path="/5C210B26/5C3A319C" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 4100 1900 50  0001 C CNN
F 1 "GND" H 4105 1977 50  0000 C CNN
F 2 "" H 4100 2150 50  0001 C CNN
F 3 "" H 4100 2150 50  0001 C CNN
	1    4100 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C3A31C5
P 4650 2150
AR Path="/5C3A31C5" Ref="#PWR?"  Part="1" 
AR Path="/5C210B26/5C3A31C5" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 4650 1900 50  0001 C CNN
F 1 "GND" H 4655 1977 50  0000 C CNN
F 2 "" H 4650 2150 50  0001 C CNN
F 3 "" H 4650 2150 50  0001 C CNN
	1    4650 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1650 4100 1650
Wire Wire Line
	4100 1650 4100 1800
Connection ~ 3850 1650
Wire Wire Line
	4100 1650 4250 1650
Connection ~ 4100 1650
Wire Wire Line
	4650 1650 4650 1800
Wire Wire Line
	4650 2100 4650 2150
Wire Wire Line
	4100 2150 4100 2100
Wire Wire Line
	4550 1650 4650 1650
$Comp
L Connector:TestPoint TP1
U 1 1 5C3A155F
P 4850 1650
F 0 "TP1" H 4908 1770 50  0000 L CNN
F 1 "HV" H 4908 1679 50  0000 L CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch2.0mm_Drill0.7mm" H 5050 1650 50  0001 C CNN
F 3 "~" H 5050 1650 50  0001 C CNN
	1    4850 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1650 4850 1650
Connection ~ 4650 1650
Connection ~ 4850 1650
Wire Wire Line
	4850 1650 5050 1650
$Comp
L power:+5V #PWR0115
U 1 1 5C3A857A
P 2600 1100
F 0 "#PWR0115" H 2600 950 50  0001 C CNN
F 1 "+5V" H 2615 1273 50  0000 C CNN
F 2 "" H 2600 1100 50  0001 C CNN
F 3 "" H 2600 1100 50  0001 C CNN
	1    2600 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 1100 2600 1200
$EndSCHEMATC
