EESchema Schematic File Version 4
LIBS:mppcInterface-cache
EELAYER 29 0
EELAYER END
$Descr User 5827 4134
encoding utf-8
Sheet 7 10
Title "Amplifier-Subsection"
Date ""
Rev "1.2"
Comp "Sawaiz Syed"
Comment1 "Georgia State University"
Comment2 "Nuclear Physics Group"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L opa84x:OPA846 U6
U 1 1 5C221C17
P 2700 1200
AR Path="/5C221BCC/5C221C17" Ref="U6"  Part="1" 
AR Path="/5C227394/5C221C17" Ref="U7"  Part="1" 
AR Path="/5C2273E8/5C221C17" Ref="U8"  Part="1" 
AR Path="/5C2273ED/5C221C17" Ref="U?"  Part="1" 
AR Path="/5C2274F3/5C221C17" Ref="U9"  Part="1" 
AR Path="/5C2274F8/5C221C17" Ref="U?"  Part="1" 
AR Path="/5C2275F2/5C221C17" Ref="U10"  Part="1" 
AR Path="/5C2275F7/5C221C17" Ref="U11"  Part="1" 
AR Path="/5C2275FC/5C221C17" Ref="U12"  Part="1" 
AR Path="/5C227601/5C221C17" Ref="U13"  Part="1" 
F 0 "U11" H 2800 1350 50  0000 L CNN
F 1 "OPA846" H 2800 1050 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 2700 1200 50  0001 C CNN
F 3 "" H 2700 1200 50  0001 C CNN
	1    2700 1200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 5C221C68
P 2700 850
AR Path="/5C221BCC/5C221C68" Ref="#PWR020"  Part="1" 
AR Path="/5C227394/5C221C68" Ref="#PWR025"  Part="1" 
AR Path="/5C2273E8/5C221C68" Ref="#PWR030"  Part="1" 
AR Path="/5C2273ED/5C221C68" Ref="#PWR?"  Part="1" 
AR Path="/5C2274F3/5C221C68" Ref="#PWR035"  Part="1" 
AR Path="/5C2274F8/5C221C68" Ref="#PWR?"  Part="1" 
AR Path="/5C2275F2/5C221C68" Ref="#PWR040"  Part="1" 
AR Path="/5C2275F7/5C221C68" Ref="#PWR045"  Part="1" 
AR Path="/5C2275FC/5C221C68" Ref="#PWR050"  Part="1" 
AR Path="/5C227601/5C221C68" Ref="#PWR055"  Part="1" 
F 0 "#PWR045" H 2700 700 50  0001 C CNN
F 1 "+5V" H 2715 1023 50  0000 C CNN
F 2 "" H 2700 850 50  0001 C CNN
F 3 "" H 2700 850 50  0001 C CNN
	1    2700 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 900  2700 850 
$Comp
L Device:R_US R10
U 1 1 5C221E33
P 2700 1900
AR Path="/5C221BCC/5C221E33" Ref="R10"  Part="1" 
AR Path="/5C227394/5C221E33" Ref="R15"  Part="1" 
AR Path="/5C2273E8/5C221E33" Ref="R20"  Part="1" 
AR Path="/5C2273ED/5C221E33" Ref="R?"  Part="1" 
AR Path="/5C2274F3/5C221E33" Ref="R25"  Part="1" 
AR Path="/5C2274F8/5C221E33" Ref="R?"  Part="1" 
AR Path="/5C2275F2/5C221E33" Ref="R30"  Part="1" 
AR Path="/5C2275F7/5C221E33" Ref="R35"  Part="1" 
AR Path="/5C2275FC/5C221E33" Ref="R40"  Part="1" 
AR Path="/5C227601/5C221E33" Ref="R45"  Part="1" 
F 0 "R35" V 2900 1900 50  0000 C CNN
F 1 "20K" V 2800 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2740 1890 50  0001 C CNN
F 3 "~" H 2700 1900 50  0001 C CNN
	1    2700 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	2850 1900 3150 1900
Wire Wire Line
	3150 1900 3150 1200
Wire Wire Line
	3150 1200 3100 1200
$Comp
L Device:R_US R8
U 1 1 5C221F1E
P 2200 1900
AR Path="/5C221BCC/5C221F1E" Ref="R8"  Part="1" 
AR Path="/5C227394/5C221F1E" Ref="R13"  Part="1" 
AR Path="/5C2273E8/5C221F1E" Ref="R18"  Part="1" 
AR Path="/5C2273ED/5C221F1E" Ref="R?"  Part="1" 
AR Path="/5C2274F3/5C221F1E" Ref="R23"  Part="1" 
AR Path="/5C2274F8/5C221F1E" Ref="R?"  Part="1" 
AR Path="/5C2275F2/5C221F1E" Ref="R28"  Part="1" 
AR Path="/5C2275F7/5C221F1E" Ref="R33"  Part="1" 
AR Path="/5C2275FC/5C221F1E" Ref="R38"  Part="1" 
AR Path="/5C227601/5C221F1E" Ref="R43"  Part="1" 
F 0 "R33" V 2000 1900 50  0000 C CNN
F 1 "49R9" V 2100 1900 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2240 1890 50  0001 C CNN
F 3 "~" H 2200 1900 50  0001 C CNN
	1    2200 1900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR018
U 1 1 5C221F9E
P 2000 1950
AR Path="/5C221BCC/5C221F9E" Ref="#PWR018"  Part="1" 
AR Path="/5C227394/5C221F9E" Ref="#PWR023"  Part="1" 
AR Path="/5C2273E8/5C221F9E" Ref="#PWR028"  Part="1" 
AR Path="/5C2273ED/5C221F9E" Ref="#PWR?"  Part="1" 
AR Path="/5C2274F3/5C221F9E" Ref="#PWR033"  Part="1" 
AR Path="/5C2274F8/5C221F9E" Ref="#PWR?"  Part="1" 
AR Path="/5C2275F2/5C221F9E" Ref="#PWR038"  Part="1" 
AR Path="/5C2275F7/5C221F9E" Ref="#PWR043"  Part="1" 
AR Path="/5C2275FC/5C221F9E" Ref="#PWR048"  Part="1" 
AR Path="/5C227601/5C221F9E" Ref="#PWR053"  Part="1" 
F 0 "#PWR043" H 2000 1700 50  0001 C CNN
F 1 "GND" H 2005 1777 50  0000 C CNN
F 2 "" H 2000 1950 50  0001 C CNN
F 3 "" H 2000 1950 50  0001 C CNN
	1    2000 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1950 2000 1900
Wire Wire Line
	2000 1900 2050 1900
Wire Wire Line
	2500 1300 2450 1300
Wire Wire Line
	2350 1900 2450 1900
Wire Wire Line
	2450 1900 2450 1300
Connection ~ 2450 1900
Wire Wire Line
	2450 1900 2550 1900
$Comp
L power:GND #PWR019
U 1 1 5C222395
P 2350 1500
AR Path="/5C221BCC/5C222395" Ref="#PWR019"  Part="1" 
AR Path="/5C227394/5C222395" Ref="#PWR024"  Part="1" 
AR Path="/5C2273E8/5C222395" Ref="#PWR029"  Part="1" 
AR Path="/5C2273ED/5C222395" Ref="#PWR?"  Part="1" 
AR Path="/5C2274F3/5C222395" Ref="#PWR034"  Part="1" 
AR Path="/5C2274F8/5C222395" Ref="#PWR?"  Part="1" 
AR Path="/5C2275F2/5C222395" Ref="#PWR039"  Part="1" 
AR Path="/5C2275F7/5C222395" Ref="#PWR044"  Part="1" 
AR Path="/5C2275FC/5C222395" Ref="#PWR049"  Part="1" 
AR Path="/5C227601/5C222395" Ref="#PWR054"  Part="1" 
F 0 "#PWR044" H 2350 1250 50  0001 C CNN
F 1 "GND" H 2355 1327 50  0000 C CNN
F 2 "" H 2350 1500 50  0001 C CNN
F 3 "" H 2350 1500 50  0001 C CNN
	1    2350 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R9
U 1 1 5C2223CB
P 2350 1300
AR Path="/5C221BCC/5C2223CB" Ref="R9"  Part="1" 
AR Path="/5C227394/5C2223CB" Ref="R14"  Part="1" 
AR Path="/5C2273E8/5C2223CB" Ref="R19"  Part="1" 
AR Path="/5C2273ED/5C2223CB" Ref="R?"  Part="1" 
AR Path="/5C2274F3/5C2223CB" Ref="R24"  Part="1" 
AR Path="/5C2274F8/5C2223CB" Ref="R?"  Part="1" 
AR Path="/5C2275F2/5C2223CB" Ref="R29"  Part="1" 
AR Path="/5C2275F7/5C2223CB" Ref="R34"  Part="1" 
AR Path="/5C2275FC/5C2223CB" Ref="R39"  Part="1" 
AR Path="/5C227601/5C2223CB" Ref="R44"  Part="1" 
F 0 "R34" H 2550 1300 50  0000 R CNN
F 1 "49R9" H 2600 1400 50  0000 R CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 2390 1290 50  0001 C CNN
F 3 "~" H 2350 1300 50  0001 C CNN
	1    2350 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	2350 1150 2350 1100
Wire Wire Line
	2350 1500 2350 1450
Wire Wire Line
	2350 1100 2500 1100
Wire Wire Line
	3200 1200 3150 1200
Connection ~ 3150 1200
Text HLabel 3550 1200 2    50   Output ~ 0
Signal
Text HLabel 1050 1100 0    50   Input ~ 0
HV
Wire Wire Line
	3500 1200 3550 1200
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5C223897
P 1700 1100
AR Path="/5C223897" Ref="J?"  Part="1" 
AR Path="/5C221BCC/5C223897" Ref="J1"  Part="1" 
AR Path="/5C227394/5C223897" Ref="J2"  Part="1" 
AR Path="/5C2273E8/5C223897" Ref="J3"  Part="1" 
AR Path="/5C2273ED/5C223897" Ref="J?"  Part="1" 
AR Path="/5C2274F3/5C223897" Ref="J4"  Part="1" 
AR Path="/5C2274F8/5C223897" Ref="J?"  Part="1" 
AR Path="/5C2275F2/5C223897" Ref="J5"  Part="1" 
AR Path="/5C2275F7/5C223897" Ref="J6"  Part="1" 
AR Path="/5C2275FC/5C223897" Ref="J7"  Part="1" 
AR Path="/5C227601/5C223897" Ref="J8"  Part="1" 
F 0 "J6" H 1630 1338 50  0000 C CNN
F 1 "Conn_Coaxial" H 1630 1247 50  0000 C CNN
F 2 "Connector_Coaxial:U.FL_Hirose_U.FL-R-SMT-1_Vertical" H 1700 1100 50  0001 C CNN
F 3 " ~" H 1700 1100 50  0001 C CNN
	1    1700 1100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1600 1300 1700 1300
Wire Wire Line
	1600 1300 1600 1100
$Comp
L Device:R_US R7
U 1 1 5C224FDA
P 1250 1100
AR Path="/5C221BCC/5C224FDA" Ref="R7"  Part="1" 
AR Path="/5C227394/5C224FDA" Ref="R12"  Part="1" 
AR Path="/5C2273E8/5C224FDA" Ref="R17"  Part="1" 
AR Path="/5C2273ED/5C224FDA" Ref="R?"  Part="1" 
AR Path="/5C2274F3/5C224FDA" Ref="R22"  Part="1" 
AR Path="/5C2274F8/5C224FDA" Ref="R?"  Part="1" 
AR Path="/5C2275F2/5C224FDA" Ref="R27"  Part="1" 
AR Path="/5C2275F7/5C224FDA" Ref="R32"  Part="1" 
AR Path="/5C2275FC/5C224FDA" Ref="R37"  Part="1" 
AR Path="/5C227601/5C224FDA" Ref="R42"  Part="1" 
F 0 "R32" V 1045 1100 50  0000 C CNN
F 1 "1K" V 1136 1100 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1290 1090 50  0001 C CNN
F 3 "~" H 1250 1100 50  0001 C CNN
	1    1250 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	1100 1100 1050 1100
$Comp
L power:GND #PWR017
U 1 1 5C225760
P 1450 1500
AR Path="/5C221BCC/5C225760" Ref="#PWR017"  Part="1" 
AR Path="/5C227394/5C225760" Ref="#PWR022"  Part="1" 
AR Path="/5C2273E8/5C225760" Ref="#PWR027"  Part="1" 
AR Path="/5C2273ED/5C225760" Ref="#PWR?"  Part="1" 
AR Path="/5C2274F3/5C225760" Ref="#PWR032"  Part="1" 
AR Path="/5C2274F8/5C225760" Ref="#PWR?"  Part="1" 
AR Path="/5C2275F2/5C225760" Ref="#PWR037"  Part="1" 
AR Path="/5C2275F7/5C225760" Ref="#PWR042"  Part="1" 
AR Path="/5C2275FC/5C225760" Ref="#PWR047"  Part="1" 
AR Path="/5C227601/5C225760" Ref="#PWR052"  Part="1" 
F 0 "#PWR042" H 1450 1250 50  0001 C CNN
F 1 "GND" H 1455 1327 50  0000 C CNN
F 2 "" H 1450 1500 50  0001 C CNN
F 3 "" H 1450 1500 50  0001 C CNN
	1    1450 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1500 1450 1450
Wire Wire Line
	1450 1150 1450 1100
Wire Wire Line
	1450 1100 1400 1100
Wire Wire Line
	1600 1100 1450 1100
Connection ~ 1450 1100
$Comp
L Device:C C4
U 1 1 5C2261DF
P 2150 1100
AR Path="/5C221BCC/5C2261DF" Ref="C4"  Part="1" 
AR Path="/5C227394/5C2261DF" Ref="C6"  Part="1" 
AR Path="/5C2273E8/5C2261DF" Ref="C8"  Part="1" 
AR Path="/5C2273ED/5C2261DF" Ref="C?"  Part="1" 
AR Path="/5C2274F3/5C2261DF" Ref="C10"  Part="1" 
AR Path="/5C2274F8/5C2261DF" Ref="C?"  Part="1" 
AR Path="/5C2275F2/5C2261DF" Ref="C12"  Part="1" 
AR Path="/5C2275F7/5C2261DF" Ref="C14"  Part="1" 
AR Path="/5C2275FC/5C2261DF" Ref="C16"  Part="1" 
AR Path="/5C227601/5C2261DF" Ref="C18"  Part="1" 
F 0 "C14" V 1898 1100 50  0000 C CNN
F 1 "1u" V 1989 1100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2188 950 50  0001 C CNN
F 3 "~" H 2150 1100 50  0001 C CNN
	1    2150 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 1100 2300 1100
Connection ~ 2350 1100
Text HLabel 1950 1150 3    50   Input ~ 0
DAC
Wire Wire Line
	1950 1150 1950 1100
Wire Wire Line
	1950 1100 2000 1100
Wire Wire Line
	1950 1100 1900 1100
Connection ~ 1950 1100
$Comp
L Device:C C3
U 1 1 5C225702
P 1450 1300
AR Path="/5C221BCC/5C225702" Ref="C3"  Part="1" 
AR Path="/5C227394/5C225702" Ref="C5"  Part="1" 
AR Path="/5C2273E8/5C225702" Ref="C7"  Part="1" 
AR Path="/5C2273ED/5C225702" Ref="C?"  Part="1" 
AR Path="/5C2274F3/5C225702" Ref="C9"  Part="1" 
AR Path="/5C2274F8/5C225702" Ref="C?"  Part="1" 
AR Path="/5C2275F2/5C225702" Ref="C11"  Part="1" 
AR Path="/5C2275F7/5C225702" Ref="C13"  Part="1" 
AR Path="/5C2275FC/5C225702" Ref="C15"  Part="1" 
AR Path="/5C227601/5C225702" Ref="C17"  Part="1" 
F 0 "C13" H 1250 1350 50  0000 L CNN
F 1 "47n" H 1200 1250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1488 1150 50  0001 C CNN
F 3 "~" H 1450 1300 50  0001 C CNN
	1    1450 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C25
U 1 1 5D85554C
P 3350 1200
AR Path="/5C221BCC/5D85554C" Ref="C25"  Part="1" 
AR Path="/5C227394/5D85554C" Ref="C30"  Part="1" 
AR Path="/5C2273E8/5D85554C" Ref="C35"  Part="1" 
AR Path="/5C2273ED/5D85554C" Ref="C?"  Part="1" 
AR Path="/5C2274F3/5D85554C" Ref="C40"  Part="1" 
AR Path="/5C2274F8/5D85554C" Ref="C?"  Part="1" 
AR Path="/5C2275F2/5D85554C" Ref="C45"  Part="1" 
AR Path="/5C2275F7/5D85554C" Ref="C50"  Part="1" 
AR Path="/5C2275FC/5D85554C" Ref="C55"  Part="1" 
AR Path="/5C227601/5D85554C" Ref="C60"  Part="1" 
F 0 "C50" V 3098 1200 50  0000 C CNN
F 1 "1u" V 3189 1200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 3388 1050 50  0001 C CNN
F 3 "~" H 3350 1200 50  0001 C CNN
	1    3350 1200
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 5D862B10
P 4850 850
AR Path="/5C221BCC/5D862B10" Ref="#PWR04"  Part="1" 
AR Path="/5C227394/5D862B10" Ref="#PWR07"  Part="1" 
AR Path="/5C2273E8/5D862B10" Ref="#PWR010"  Part="1" 
AR Path="/5C2273ED/5D862B10" Ref="#PWR?"  Part="1" 
AR Path="/5C2274F3/5D862B10" Ref="#PWR063"  Part="1" 
AR Path="/5C2274F8/5D862B10" Ref="#PWR?"  Part="1" 
AR Path="/5C2275F2/5D862B10" Ref="#PWR066"  Part="1" 
AR Path="/5C2275F7/5D862B10" Ref="#PWR069"  Part="1" 
AR Path="/5C2275FC/5D862B10" Ref="#PWR072"  Part="1" 
AR Path="/5C227601/5D862B10" Ref="#PWR075"  Part="1" 
F 0 "#PWR069" H 4850 700 50  0001 C CNN
F 1 "+5V" H 4865 1023 50  0000 C CNN
F 2 "" H 4850 850 50  0001 C CNN
F 3 "" H 4850 850 50  0001 C CNN
	1    4850 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1300 4850 1300
Wire Wire Line
	5000 1350 5000 1300
Connection ~ 4850 1300
$Comp
L Device:C C29
U 1 1 5D85DAAD
P 4850 1700
AR Path="/5C221BCC/5D85DAAD" Ref="C29"  Part="1" 
AR Path="/5C227394/5D85DAAD" Ref="C34"  Part="1" 
AR Path="/5C2273E8/5D85DAAD" Ref="C39"  Part="1" 
AR Path="/5C2274F3/5D85DAAD" Ref="C44"  Part="1" 
AR Path="/5C2275F2/5D85DAAD" Ref="C49"  Part="1" 
AR Path="/5C2275F7/5D85DAAD" Ref="C54"  Part="1" 
AR Path="/5C2275FC/5D85DAAD" Ref="C59"  Part="1" 
AR Path="/5C227601/5D85DAAD" Ref="C64"  Part="1" 
F 0 "C54" H 4965 1746 50  0000 L CNN
F 1 "0u1" H 4965 1655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4888 1550 50  0001 C CNN
F 3 "~" H 4850 1700 50  0001 C CNN
	1    4850 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 1300 4850 1250
$Comp
L power:GND #PWR06
U 1 1 5D856631
P 5000 1350
AR Path="/5C221BCC/5D856631" Ref="#PWR06"  Part="1" 
AR Path="/5C227394/5D856631" Ref="#PWR09"  Part="1" 
AR Path="/5C2273E8/5D856631" Ref="#PWR013"  Part="1" 
AR Path="/5C2273ED/5D856631" Ref="#PWR?"  Part="1" 
AR Path="/5C2274F3/5D856631" Ref="#PWR065"  Part="1" 
AR Path="/5C2274F8/5D856631" Ref="#PWR?"  Part="1" 
AR Path="/5C2275F2/5D856631" Ref="#PWR068"  Part="1" 
AR Path="/5C2275F7/5D856631" Ref="#PWR071"  Part="1" 
AR Path="/5C2275FC/5D856631" Ref="#PWR074"  Part="1" 
AR Path="/5C227601/5D856631" Ref="#PWR077"  Part="1" 
F 0 "#PWR071" H 5000 1100 50  0001 C CNN
F 1 "GND" H 5005 1177 50  0000 C CNN
F 2 "" H 5000 1350 50  0001 C CNN
F 3 "" H 5000 1350 50  0001 C CNN
	1    5000 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C28
U 1 1 5D85479D
P 4850 1100
AR Path="/5C221BCC/5D85479D" Ref="C28"  Part="1" 
AR Path="/5C227394/5D85479D" Ref="C33"  Part="1" 
AR Path="/5C2273E8/5D85479D" Ref="C38"  Part="1" 
AR Path="/5C2274F3/5D85479D" Ref="C43"  Part="1" 
AR Path="/5C2275F2/5D85479D" Ref="C48"  Part="1" 
AR Path="/5C2275F7/5D85479D" Ref="C53"  Part="1" 
AR Path="/5C2275FC/5D85479D" Ref="C58"  Part="1" 
AR Path="/5C227601/5D85479D" Ref="C63"  Part="1" 
F 0 "C53" H 4965 1146 50  0000 L CNN
F 1 "0u1" H 4965 1055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 4888 950 50  0001 C CNN
F 3 "~" H 4850 1100 50  0001 C CNN
	1    4850 1100
	1    0    0    -1  
$EndComp
$Comp
L -4v:-4V #PWR0139
U 1 1 5E52130F
P 2700 1600
AR Path="/5C227601/5E52130F" Ref="#PWR0139"  Part="1" 
AR Path="/5C2275FC/5E52130F" Ref="#PWR0137"  Part="1" 
AR Path="/5C221BCC/5E52130F" Ref="#PWR0125"  Part="1" 
AR Path="/5C227394/5E52130F" Ref="#PWR0127"  Part="1" 
AR Path="/5C2273E8/5E52130F" Ref="#PWR0129"  Part="1" 
AR Path="/5C2274F3/5E52130F" Ref="#PWR0131"  Part="1" 
AR Path="/5C2275F2/5E52130F" Ref="#PWR0133"  Part="1" 
AR Path="/5C2275F7/5E52130F" Ref="#PWR0135"  Part="1" 
F 0 "#PWR0135" H 2700 1450 50  0001 C CNN
F 1 "-4V" H 2715 1773 50  0000 C CNN
F 2 "" H 2700 1600 50  0001 C CNN
F 3 "" H 2700 1600 50  0001 C CNN
	1    2700 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 1500 2700 1600
$Comp
L -4v:-4V #PWR0140
U 1 1 5E52333A
P 4850 1950
AR Path="/5C227601/5E52333A" Ref="#PWR0140"  Part="1" 
AR Path="/5C2275FC/5E52333A" Ref="#PWR0138"  Part="1" 
AR Path="/5C221BCC/5E52333A" Ref="#PWR0126"  Part="1" 
AR Path="/5C227394/5E52333A" Ref="#PWR0128"  Part="1" 
AR Path="/5C2273E8/5E52333A" Ref="#PWR0130"  Part="1" 
AR Path="/5C2274F3/5E52333A" Ref="#PWR0132"  Part="1" 
AR Path="/5C2275F2/5E52333A" Ref="#PWR0134"  Part="1" 
AR Path="/5C2275F7/5E52333A" Ref="#PWR0136"  Part="1" 
F 0 "#PWR0136" H 4850 1800 50  0001 C CNN
F 1 "-4V" H 4865 2123 50  0000 C CNN
F 2 "" H 4850 1950 50  0001 C CNN
F 3 "" H 4850 1950 50  0001 C CNN
	1    4850 1950
	-1   0    0    1   
$EndComp
Wire Notes Line
	5250 2250 4100 2250
Wire Notes Line
	4100 2250 4100 550 
Wire Notes Line
	4100 550  5250 550 
Wire Notes Line
	5250 550  5250 2250
Text Notes 4300 2150 1    100  ~ 0
Decoupling
Wire Notes Line
	3950 2250 3950 550 
Wire Notes Line
	3950 550  550  550 
Wire Notes Line
	550  550  550  2250
Wire Notes Line
	550  2250 3950 2250
Text Notes 1300 750  2    100  ~ 0
Amplifier
Wire Wire Line
	4850 850  4850 950 
Wire Wire Line
	4850 1850 4850 1950
Wire Wire Line
	4850 1300 4850 1550
$EndSCHEMATC
