EESchema Schematic File Version 4
LIBS:mppcInterface-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
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
P 4650 3150
AR Path="/5C210D38" Ref="U?"  Part="1" 
AR Path="/5C210B26/5C210D38" Ref="U5"  Part="1" 
F 0 "U5" H 4650 3250 50  0000 C CNN
F 1 "MAX1932" H 4650 3150 50  0000 C CNN
F 2 "tqfn-12:TQFN-12" H 4650 1800 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/MAX1932.pdf" H 4650 1950 50  0001 C CNN
	1    4650 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5C210D3F
P 6550 2350
AR Path="/5C210D3F" Ref="R?"  Part="1" 
AR Path="/5C210B26/5C210D3F" Ref="R4"  Part="1" 
F 0 "R4" V 6345 2350 50  0000 C CNN
F 1 "806R" V 6436 2350 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6590 2340 50  0001 C CNN
F 3 "~" H 6550 2350 50  0001 C CNN
	1    6550 2350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C210D4C
P 4650 4700
AR Path="/5C210D4C" Ref="#PWR?"  Part="1" 
AR Path="/5C210B26/5C210D4C" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 4650 4450 50  0001 C CNN
F 1 "GND" H 4655 4527 50  0000 C CNN
F 2 "" H 4650 4700 50  0001 C CNN
F 3 "" H 4650 4700 50  0001 C CNN
	1    4650 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5C210D52
P 4450 4500
AR Path="/5C210D52" Ref="C?"  Part="1" 
AR Path="/5C210B26/5C210D52" Ref="C1"  Part="1" 
F 0 "C1" H 4250 4550 50  0000 L CNN
F 1 "0u22" H 4150 4450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4488 4350 50  0001 C CNN
F 3 "~" H 4450 4500 50  0001 C CNN
	1    4450 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5C210D59
P 4450 4150
AR Path="/5C210D59" Ref="R?"  Part="1" 
AR Path="/5C210B26/5C210D59" Ref="R2"  Part="1" 
F 0 "R2" H 4250 4200 50  0000 L CNN
F 1 "20R" H 4200 4100 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4490 4140 50  0001 C CNN
F 3 "~" H 4450 4150 50  0001 C CNN
	1    4450 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 4000 4450 3950
Wire Wire Line
	4650 4650 4450 4650
$Comp
L Device:Q_NMOS_GSD Q?
U 1 1 5C210D62
P 5400 2600
AR Path="/5C210D62" Ref="Q?"  Part="1" 
AR Path="/5C210B26/5C210D62" Ref="Q1"  Part="1" 
F 0 "Q1" H 5606 2646 50  0000 L CNN
F 1 "BSS123L" H 5606 2555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5600 2700 50  0001 C CNN
F 3 "~" H 5400 2600 50  0001 C CNN
	1    5400 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C210D69
P 5500 2850
AR Path="/5C210D69" Ref="#PWR?"  Part="1" 
AR Path="/5C210B26/5C210D69" Ref="#PWR014"  Part="1" 
F 0 "#PWR014" H 5500 2600 50  0001 C CNN
F 1 "GND" H 5505 2677 50  0000 C CNN
F 2 "" H 5500 2850 50  0001 C CNN
F 3 "" H 5500 2850 50  0001 C CNN
	1    5500 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2850 5500 2800
Wire Wire Line
	5200 2600 5150 2600
$Comp
L Device:L_Core_Ferrite L?
U 1 1 5C210D71
P 5500 2150
AR Path="/5C210D71" Ref="L?"  Part="1" 
AR Path="/5C210B26/5C210D71" Ref="L1"  Part="1" 
F 0 "L1" H 5400 2200 50  0000 L CNN
F 1 "150uH" H 5250 2100 50  0000 L CNN
F 2 "srn4018:SRN4018" H 5500 2150 50  0001 C CNN
F 3 "~" H 5500 2150 50  0001 C CNN
	1    5500 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 2300 5500 2350
$Comp
L Diode:LL4148 D?
U 1 1 5C210D79
P 5800 2350
AR Path="/5C210D79" Ref="D?"  Part="1" 
AR Path="/5C210B26/5C210D79" Ref="D2"  Part="1" 
F 0 "D2" H 5800 2134 50  0000 C CNN
F 1 "LL4148" H 5800 2225 50  0000 C CNN
F 2 "Diode_SMD:D_MiniMELF" H 5800 2175 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85557/ll4148.pdf" H 5800 2350 50  0001 C CNN
	1    5800 2350
	-1   0    0    1   
$EndComp
Wire Wire Line
	5650 2350 5500 2350
Connection ~ 5500 2350
Wire Wire Line
	5500 2350 5500 2400
$Comp
L Device:C C?
U 1 1 5C210D8A
P 6100 2650
AR Path="/5C210D8A" Ref="C?"  Part="1" 
AR Path="/5C210B26/5C210D8A" Ref="C2"  Part="1" 
F 0 "C2" H 6215 2696 50  0000 L CNN
F 1 "47n" H 6215 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 6138 2500 50  0001 C CNN
F 3 "~" H 6100 2650 50  0001 C CNN
	1    6100 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2500 6100 2350
Wire Wire Line
	6100 2350 5950 2350
$Comp
L power:GND #PWR?
U 1 1 5C210D93
P 6100 2850
AR Path="/5C210D93" Ref="#PWR?"  Part="1" 
AR Path="/5C210B26/5C210D93" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 6100 2600 50  0001 C CNN
F 1 "GND" H 6105 2677 50  0000 C CNN
F 2 "" H 6100 2850 50  0001 C CNN
F 3 "" H 6100 2850 50  0001 C CNN
	1    6100 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2800 6100 2850
Wire Wire Line
	6400 2350 6100 2350
Connection ~ 6100 2350
$Comp
L Device:R_US R?
U 1 1 5C210D9C
P 5350 3600
AR Path="/5C210D9C" Ref="R?"  Part="1" 
AR Path="/5C210B26/5C210D9C" Ref="R3"  Part="1" 
F 0 "R3" V 5550 3600 50  0000 C CNN
F 1 "2K49" V 5450 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5390 3590 50  0001 C CNN
F 3 "~" H 5350 3600 50  0001 C CNN
	1    5350 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 5C210DA3
P 6750 3800
AR Path="/5C210DA3" Ref="R?"  Part="1" 
AR Path="/5C210B26/5C210DA3" Ref="R6"  Part="1" 
F 0 "R6" H 6600 3900 50  0000 L CNN
F 1 "2K37" H 6500 3800 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6790 3790 50  0001 C CNN
F 3 "~" H 6750 3800 50  0001 C CNN
F 4 "0.1%" H 6600 3700 50  0000 C CNN "Tolerance"
	1    6750 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5C210DAA
P 6750 3400
AR Path="/5C210DAA" Ref="R?"  Part="1" 
AR Path="/5C210B26/5C210DAA" Ref="R5"  Part="1" 
F 0 "R5" H 6600 3500 50  0000 L CNN
F 1 "100K" H 6500 3400 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 6790 3390 50  0001 C CNN
F 3 "~" H 6750 3400 50  0001 C CNN
F 4 "0.1%" H 6600 3300 50  0000 C CNN "Tolerance"
	1    6750 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 3650 6750 3600
Wire Wire Line
	6750 3600 5550 3600
Connection ~ 6750 3600
Wire Wire Line
	6750 3600 6750 3550
$Comp
L power:GND #PWR?
U 1 1 5C210DB5
P 6750 4050
AR Path="/5C210DB5" Ref="#PWR?"  Part="1" 
AR Path="/5C210B26/5C210DB5" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 6750 3800 50  0001 C CNN
F 1 "GND" H 6755 3877 50  0000 C CNN
F 2 "" H 6750 4050 50  0001 C CNN
F 3 "" H 6750 4050 50  0001 C CNN
	1    6750 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 4700 4650 4650
Wire Wire Line
	4650 2350 4650 1900
Wire Wire Line
	4650 3950 4650 4650
Wire Wire Line
	4450 4350 4450 4300
Connection ~ 4650 4650
Wire Wire Line
	5150 3100 6400 3100
Wire Wire Line
	6400 3100 6400 2350
Connection ~ 6400 2350
Wire Wire Line
	6700 2350 6750 2350
Wire Wire Line
	6750 2350 6750 3200
Wire Wire Line
	6750 3200 5150 3200
Wire Wire Line
	5200 3600 5150 3600
Wire Wire Line
	5150 3400 5550 3400
Wire Wire Line
	5550 3400 5550 3600
Connection ~ 5550 3600
Wire Wire Line
	5550 3600 5500 3600
Wire Wire Line
	6750 3950 6750 4050
Wire Wire Line
	6750 3250 6750 3200
Connection ~ 6750 3200
Text HLabel 4050 3000 0    50   Input ~ 0
~CS
Text HLabel 4050 3100 0    50   Input ~ 0
SCLK
Text HLabel 4050 3200 0    50   Input ~ 0
DIN
Text HLabel 4050 3300 0    50   Input ~ 0
~CL
Wire Wire Line
	4050 3000 4100 3000
Wire Wire Line
	4100 3100 4050 3100
Wire Wire Line
	4050 3200 4100 3200
Wire Wire Line
	4100 3300 4050 3300
Text HLabel 7950 2350 2    50   Input ~ 0
HV
$Comp
L Device:C C?
U 1 1 5C35CF36
P 5150 2100
AR Path="/5C35CF36" Ref="C?"  Part="1" 
AR Path="/5C210B26/5C35CF36" Ref="C19"  Part="1" 
F 0 "C19" H 4900 2150 50  0000 L CNN
F 1 "1u" H 4950 2050 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5188 1950 50  0001 C CNN
F 3 "~" H 5150 2100 50  0001 C CNN
	1    5150 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C35CFC7
P 5150 2300
AR Path="/5C35CFC7" Ref="#PWR?"  Part="1" 
AR Path="/5C210B26/5C35CFC7" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 5150 2050 50  0001 C CNN
F 1 "GND" H 5155 2127 50  0000 C CNN
F 2 "" H 5150 2300 50  0001 C CNN
F 3 "" H 5150 2300 50  0001 C CNN
	1    5150 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1900 5150 1900
Connection ~ 5500 1900
Wire Wire Line
	5500 1900 5500 2000
Wire Wire Line
	5150 1950 5150 1900
Wire Wire Line
	5150 1900 4650 1900
Connection ~ 5150 1900
Wire Wire Line
	5150 2250 5150 2300
$Comp
L Device:C C?
U 1 1 5C3A2F73
P 7550 2650
AR Path="/5C3A2F73" Ref="C?"  Part="1" 
AR Path="/5C210B26/5C3A2F73" Ref="C21"  Part="1" 
F 0 "C21" H 7665 2696 50  0000 L CNN
F 1 "10u" H 7665 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_2220_5650Metric" H 7588 2500 50  0001 C CNN
F 3 "~" H 7550 2650 50  0001 C CNN
	1    7550 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:L L2
U 1 1 5C3A3011
P 7300 2350
F 0 "L2" V 7490 2350 50  0000 C CNN
F 1 "1mH" V 7399 2350 50  0000 C CNN
F 2 "Inductor_SMD:L_1210_3225Metric" H 7300 2350 50  0001 C CNN
F 3 "~" H 7300 2350 50  0001 C CNN
	1    7300 2350
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5C3A3104
P 7000 2650
AR Path="/5C3A3104" Ref="C?"  Part="1" 
AR Path="/5C210B26/5C3A3104" Ref="C20"  Part="1" 
F 0 "C20" H 7100 2700 50  0000 L CNN
F 1 "1u" H 7100 2600 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 7038 2500 50  0001 C CNN
F 3 "~" H 7000 2650 50  0001 C CNN
	1    7000 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C3A319C
P 7000 2850
AR Path="/5C3A319C" Ref="#PWR?"  Part="1" 
AR Path="/5C210B26/5C3A319C" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 7000 2600 50  0001 C CNN
F 1 "GND" H 7005 2677 50  0000 C CNN
F 2 "" H 7000 2850 50  0001 C CNN
F 3 "" H 7000 2850 50  0001 C CNN
	1    7000 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C3A31C5
P 7550 2850
AR Path="/5C3A31C5" Ref="#PWR?"  Part="1" 
AR Path="/5C210B26/5C3A31C5" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 7550 2600 50  0001 C CNN
F 1 "GND" H 7555 2677 50  0000 C CNN
F 2 "" H 7550 2850 50  0001 C CNN
F 3 "" H 7550 2850 50  0001 C CNN
	1    7550 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 2350 7000 2350
Wire Wire Line
	7000 2350 7000 2500
Connection ~ 6750 2350
Wire Wire Line
	7000 2350 7150 2350
Connection ~ 7000 2350
Wire Wire Line
	7550 2350 7550 2500
Wire Wire Line
	7550 2800 7550 2850
Wire Wire Line
	7000 2850 7000 2800
Wire Wire Line
	7450 2350 7550 2350
$Comp
L Connector:TestPoint TP1
U 1 1 5C3A155F
P 7750 2350
F 0 "TP1" H 7808 2470 50  0000 L CNN
F 1 "HV" H 7808 2379 50  0000 L CNN
F 2 "TestPoint:TestPoint_Bridge_Pitch2.0mm_Drill0.7mm" H 7950 2350 50  0001 C CNN
F 3 "~" H 7950 2350 50  0001 C CNN
	1    7750 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2350 7750 2350
Connection ~ 7550 2350
Connection ~ 7750 2350
Wire Wire Line
	7750 2350 7950 2350
$Comp
L power:+5V #PWR0115
U 1 1 5C3A857A
P 5500 1800
F 0 "#PWR0115" H 5500 1650 50  0001 C CNN
F 1 "+5V" H 5515 1973 50  0000 C CNN
F 2 "" H 5500 1800 50  0001 C CNN
F 3 "" H 5500 1800 50  0001 C CNN
	1    5500 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1800 5500 1900
$EndSCHEMATC
