EESchema Schematic File Version 4
LIBS:mppcHighVoltage-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L opa84x:OPA846 U?
U 1 1 5C221C17
P 5500 3800
AR Path="/5C221BCC/5C221C17" Ref="U?"  Part="1" 
AR Path="/5C227394/5C221C17" Ref="U?"  Part="1" 
AR Path="/5C2273E8/5C221C17" Ref="U?"  Part="1" 
AR Path="/5C2273ED/5C221C17" Ref="U?"  Part="1" 
F 0 "U?" H 5600 3950 50  0000 L CNN
F 1 "OPA846" H 5600 3650 50  0000 L CNN
F 2 "" H 5500 3800 50  0001 C CNN
F 3 "" H 5500 3800 50  0001 C CNN
	1    5500 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5C221C68
P 5500 3450
AR Path="/5C221BCC/5C221C68" Ref="#PWR?"  Part="1" 
AR Path="/5C227394/5C221C68" Ref="#PWR?"  Part="1" 
AR Path="/5C2273E8/5C221C68" Ref="#PWR?"  Part="1" 
AR Path="/5C2273ED/5C221C68" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5500 3300 50  0001 C CNN
F 1 "+5V" H 5515 3623 50  0000 C CNN
F 2 "" H 5500 3450 50  0001 C CNN
F 3 "" H 5500 3450 50  0001 C CNN
	1    5500 3450
	1    0    0    -1  
$EndComp
$Comp
L power:-5V #PWR?
U 1 1 5C221CA1
P 5500 4150
AR Path="/5C221BCC/5C221CA1" Ref="#PWR?"  Part="1" 
AR Path="/5C227394/5C221CA1" Ref="#PWR?"  Part="1" 
AR Path="/5C2273E8/5C221CA1" Ref="#PWR?"  Part="1" 
AR Path="/5C2273ED/5C221CA1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5500 4250 50  0001 C CNN
F 1 "-5V" H 5515 4323 50  0000 C CNN
F 2 "" H 5500 4150 50  0001 C CNN
F 3 "" H 5500 4150 50  0001 C CNN
	1    5500 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 4150 5500 4100
Wire Wire Line
	5500 3500 5500 3450
$Comp
L Device:R_US R?
U 1 1 5C221E33
P 5500 4500
AR Path="/5C221BCC/5C221E33" Ref="R?"  Part="1" 
AR Path="/5C227394/5C221E33" Ref="R?"  Part="1" 
AR Path="/5C2273E8/5C221E33" Ref="R?"  Part="1" 
AR Path="/5C2273ED/5C221E33" Ref="R?"  Part="1" 
F 0 "R?" V 5700 4500 50  0000 C CNN
F 1 "20K" V 5600 4500 50  0000 C CNN
F 2 "" V 5540 4490 50  0001 C CNN
F 3 "~" H 5500 4500 50  0001 C CNN
	1    5500 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 4500 5950 4500
Wire Wire Line
	5950 4500 5950 3800
Wire Wire Line
	5950 3800 5900 3800
$Comp
L Device:R_US R?
U 1 1 5C221F1E
P 5000 4500
AR Path="/5C221BCC/5C221F1E" Ref="R?"  Part="1" 
AR Path="/5C227394/5C221F1E" Ref="R?"  Part="1" 
AR Path="/5C2273E8/5C221F1E" Ref="R?"  Part="1" 
AR Path="/5C2273ED/5C221F1E" Ref="R?"  Part="1" 
F 0 "R?" V 4800 4500 50  0000 C CNN
F 1 "51R" V 4900 4500 50  0000 C CNN
F 2 "" V 5040 4490 50  0001 C CNN
F 3 "~" H 5000 4500 50  0001 C CNN
	1    5000 4500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C221F9E
P 4800 4550
AR Path="/5C221BCC/5C221F9E" Ref="#PWR?"  Part="1" 
AR Path="/5C227394/5C221F9E" Ref="#PWR?"  Part="1" 
AR Path="/5C2273E8/5C221F9E" Ref="#PWR?"  Part="1" 
AR Path="/5C2273ED/5C221F9E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4800 4300 50  0001 C CNN
F 1 "GND" H 4805 4377 50  0000 C CNN
F 2 "" H 4800 4550 50  0001 C CNN
F 3 "" H 4800 4550 50  0001 C CNN
	1    4800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4550 4800 4500
Wire Wire Line
	4800 4500 4850 4500
Wire Wire Line
	5300 3900 5250 3900
Wire Wire Line
	5150 4500 5250 4500
Wire Wire Line
	5250 4500 5250 3900
Connection ~ 5250 4500
Wire Wire Line
	5250 4500 5350 4500
$Comp
L power:GND #PWR?
U 1 1 5C222395
P 5150 4100
AR Path="/5C221BCC/5C222395" Ref="#PWR?"  Part="1" 
AR Path="/5C227394/5C222395" Ref="#PWR?"  Part="1" 
AR Path="/5C2273E8/5C222395" Ref="#PWR?"  Part="1" 
AR Path="/5C2273ED/5C222395" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5150 3850 50  0001 C CNN
F 1 "GND" H 5155 3927 50  0000 C CNN
F 2 "" H 5150 4100 50  0001 C CNN
F 3 "" H 5150 4100 50  0001 C CNN
	1    5150 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R?
U 1 1 5C2223CB
P 5150 3900
AR Path="/5C221BCC/5C2223CB" Ref="R?"  Part="1" 
AR Path="/5C227394/5C2223CB" Ref="R?"  Part="1" 
AR Path="/5C2273E8/5C2223CB" Ref="R?"  Part="1" 
AR Path="/5C2273ED/5C2223CB" Ref="R?"  Part="1" 
F 0 "R?" H 5300 3850 50  0000 R CNN
F 1 "51R" H 5350 3950 50  0000 R CNN
F 2 "" V 5190 3890 50  0001 C CNN
F 3 "~" H 5150 3900 50  0001 C CNN
	1    5150 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 3750 5150 3700
Wire Wire Line
	5150 4100 5150 4050
Wire Wire Line
	5150 3700 5300 3700
$Comp
L Device:R_US R?
U 1 1 5C222E0B
P 6150 3800
AR Path="/5C221BCC/5C222E0B" Ref="R?"  Part="1" 
AR Path="/5C227394/5C222E0B" Ref="R?"  Part="1" 
AR Path="/5C2273E8/5C222E0B" Ref="R?"  Part="1" 
AR Path="/5C2273ED/5C222E0B" Ref="R?"  Part="1" 
F 0 "R?" V 5945 3800 50  0000 C CNN
F 1 "51R" V 6036 3800 50  0000 C CNN
F 2 "" V 6190 3790 50  0001 C CNN
F 3 "~" H 6150 3800 50  0001 C CNN
	1    6150 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 3800 5950 3800
Connection ~ 5950 3800
Text HLabel 6350 3800 2    50   Output ~ 0
Signal
Text HLabel 3850 3700 0    50   Input ~ 0
HV
Wire Wire Line
	6300 3800 6350 3800
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5C223897
P 4500 3700
AR Path="/5C223897" Ref="J?"  Part="1" 
AR Path="/5C221BCC/5C223897" Ref="J?"  Part="1" 
AR Path="/5C227394/5C223897" Ref="J?"  Part="1" 
AR Path="/5C2273E8/5C223897" Ref="J?"  Part="1" 
AR Path="/5C2273ED/5C223897" Ref="J?"  Part="1" 
F 0 "J?" H 4430 3938 50  0000 C CNN
F 1 "Conn_Coaxial" H 4430 3847 50  0000 C CNN
F 2 "Connector_Coaxial:U.FL_Hirose_U.FL-R-SMT-1_Vertical" H 4500 3700 50  0001 C CNN
F 3 " ~" H 4500 3700 50  0001 C CNN
	1    4500 3700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4400 3900 4500 3900
Wire Wire Line
	4400 3900 4400 3700
$Comp
L Device:R_US R?
U 1 1 5C224FDA
P 4050 3700
AR Path="/5C221BCC/5C224FDA" Ref="R?"  Part="1" 
AR Path="/5C227394/5C224FDA" Ref="R?"  Part="1" 
AR Path="/5C2273E8/5C224FDA" Ref="R?"  Part="1" 
AR Path="/5C2273ED/5C224FDA" Ref="R?"  Part="1" 
F 0 "R?" V 3845 3700 50  0000 C CNN
F 1 "1K" V 3936 3700 50  0000 C CNN
F 2 "" V 4090 3690 50  0001 C CNN
F 3 "~" H 4050 3700 50  0001 C CNN
	1    4050 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 3700 3850 3700
$Comp
L Device:C C?
U 1 1 5C225702
P 4250 3900
AR Path="/5C221BCC/5C225702" Ref="C?"  Part="1" 
AR Path="/5C227394/5C225702" Ref="C?"  Part="1" 
AR Path="/5C2273E8/5C225702" Ref="C?"  Part="1" 
AR Path="/5C2273ED/5C225702" Ref="C?"  Part="1" 
F 0 "C?" H 4050 3950 50  0000 L CNN
F 1 "47n" H 4000 3850 50  0000 L CNN
F 2 "" H 4288 3750 50  0001 C CNN
F 3 "~" H 4250 3900 50  0001 C CNN
	1    4250 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C225760
P 4250 4100
AR Path="/5C221BCC/5C225760" Ref="#PWR?"  Part="1" 
AR Path="/5C227394/5C225760" Ref="#PWR?"  Part="1" 
AR Path="/5C2273E8/5C225760" Ref="#PWR?"  Part="1" 
AR Path="/5C2273ED/5C225760" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4250 3850 50  0001 C CNN
F 1 "GND" H 4255 3927 50  0000 C CNN
F 2 "" H 4250 4100 50  0001 C CNN
F 3 "" H 4250 4100 50  0001 C CNN
	1    4250 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4100 4250 4050
Wire Wire Line
	4250 3750 4250 3700
Wire Wire Line
	4250 3700 4200 3700
Wire Wire Line
	4400 3700 4250 3700
Connection ~ 4250 3700
$Comp
L Device:C C?
U 1 1 5C2261DF
P 4950 3700
AR Path="/5C221BCC/5C2261DF" Ref="C?"  Part="1" 
AR Path="/5C227394/5C2261DF" Ref="C?"  Part="1" 
AR Path="/5C2273E8/5C2261DF" Ref="C?"  Part="1" 
AR Path="/5C2273ED/5C2261DF" Ref="C?"  Part="1" 
F 0 "C?" V 4698 3700 50  0000 C CNN
F 1 "1u" V 4789 3700 50  0000 C CNN
F 2 "" H 4988 3550 50  0001 C CNN
F 3 "~" H 4950 3700 50  0001 C CNN
	1    4950 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	5150 3700 5100 3700
Connection ~ 5150 3700
Text HLabel 4750 3750 3    50   Input ~ 0
DAC
Wire Wire Line
	4750 3750 4750 3700
Wire Wire Line
	4750 3700 4800 3700
Wire Wire Line
	4750 3700 4700 3700
Connection ~ 4750 3700
$EndSCHEMATC
