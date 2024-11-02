EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 10
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
L Memory_NVRAM:MB85RS512T U?
U 1 1 679818F2
P 5750 4150
AR Path="/679818F2" Ref="U?"  Part="1" 
AR Path="/67980E8D/679818F2" Ref="U9"  Part="1" 
F 0 "U9" H 5750 4631 50  0000 C CNN
F 1 "MB85RS512T" H 5750 4540 50  0000 C CNN
F 2 "MB85RS512TPNF-G-JNERE1:SOIC127P600X88-8N" H 5400 4100 50  0001 C CNN
F 3 "http://www.fujitsu.com/downloads/MICRO/fsa/pdf/products/memory/fram/MB85RS16-DS501-00014-6v0-E.pdf" H 5400 4100 50  0001 C CNN
	1    5750 4150
	1    0    0    -1  
$EndComp
Text HLabel 6150 4250 2    50   Input ~ 0
MISO
Text HLabel 6150 4150 2    50   Input ~ 0
MOSI
Text HLabel 6150 4050 2    50   Input ~ 0
SCK
Text HLabel 5150 4150 0    50   Input ~ 0
VDD
$Comp
L Device:R_Small R57
U 1 1 6798CA35
P 5250 4150
F 0 "R57" V 5054 4150 50  0000 C CNN
F 1 "10k" V 5145 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5250 4150 50  0001 C CNN
F 3 "~" H 5250 4150 50  0001 C CNN
	1    5250 4150
	0    1    1    0   
$EndComp
Text HLabel 6600 4100 2    50   Input ~ 0
VDD
Text HLabel 6600 4300 2    50   Input ~ 0
GND
Text HLabel 5350 4250 0    50   Input ~ 0
CS
Text HLabel 5350 4050 0    50   Input ~ 0
WP
$Comp
L Device:C_Small C39
U 1 1 6798DE5C
P 6600 4200
F 0 "C39" H 6692 4246 50  0000 L CNN
F 1 "10uF" H 6692 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6600 4200 50  0001 C CNN
F 3 "~" H 6600 4200 50  0001 C CNN
	1    6600 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4100 6600 3850
Wire Wire Line
	6600 3850 5750 3850
Wire Wire Line
	6600 4300 6600 4450
Wire Wire Line
	6600 4450 5750 4450
$EndSCHEMATC
