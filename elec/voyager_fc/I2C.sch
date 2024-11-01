EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	4200 4400 4950 4400
Wire Wire Line
	4200 2500 4950 2500
Connection ~ 4200 3350
Wire Wire Line
	4200 3350 4200 2500
Connection ~ 4200 3550
Wire Wire Line
	4200 3550 4200 4400
Wire Wire Line
	4100 3350 4200 3350
Wire Wire Line
	4100 3550 4200 3550
$Comp
L Device:C_Small C?
U 1 1 67805492
P 4200 3450
AR Path="/67805492" Ref="C?"  Part="1" 
AR Path="/677EFB73/67805492" Ref="C?"  Part="1" 
F 0 "C?" H 4292 3496 50  0000 L CNN
F 1 "10uF" H 4292 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4200 3450 50  0001 C CNN
F 3 "~" H 4200 3450 50  0001 C CNN
	1    4200 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 678054AA
P 4450 3200
AR Path="/678054AA" Ref="R?"  Part="1" 
AR Path="/677EFB73/678054AA" Ref="R?"  Part="1" 
F 0 "R?" V 4254 3200 50  0000 C CNN
F 1 "10k" V 4345 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 4450 3200 50  0000 C CNN
F 3 "~" H 4450 3200 50  0001 C CNN
	1    4450 3200
	0    1    1    0   
$EndComp
$Comp
L Interface_Expansion:TCA9548APWR U?
U 1 1 678054B0
P 4950 3400
AR Path="/678054B0" Ref="U?"  Part="1" 
AR Path="/677EFB73/678054B0" Ref="U?"  Part="1" 
F 0 "U?" H 4950 4481 50  0000 C CNN
F 1 "TCA9548APWR" H 4950 4390 50  0000 C CNN
F 2 "Package_SO:TSSOP-24_4.4x7.8mm_P0.65mm" H 4950 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tca9548a.pdf" H 5000 3650 50  0001 C CNN
	1    4950 3400
	1    0    0    -1  
$EndComp
$Comp
L LTC4311CDC_TRMPBF:LTC4311CDC_TRMPBF U?
U 1 1 6785D064
P 6400 1500
AR Path="/6785D064" Ref="U?"  Part="1" 
AR Path="/677EFB73/6785D064" Ref="U?"  Part="1" 
F 0 "U?" H 7300 1865 50  0000 C CNN
F 1 "LTC4311CDC_TRMPBF" H 7300 1774 50  0000 C CNN
F 2 "DFN-6_DC" H 6400 1500 50  0001 L BNN
F 3 "" H 6400 1500 50  0001 L BNN
F 4 "Analog Devices" H 6400 1500 50  0001 L BNN "MF"
F 5 "Linear Technology" H 6400 1500 50  0001 L BNN "VENDOR"
F 6 "\\n                        \\n                            Low Voltage I2C/SMBus Accelerator\\n                        \\n" H 6400 1500 50  0001 L BNN "Description"
F 7 "Copyright C 2016 Accelerated Designs. All rights reserved" H 6400 1500 50  0001 L BNN "COPYRIGHT"
F 8 "DFN -6 Analog Devices" H 6400 1500 50  0001 L BNN "Package"
F 9 "None" H 6400 1500 50  0001 L BNN "Price"
F 10 "https://www.snapeda.com/parts/LTC4311CDC%23TRMPBF/Analog+Devices/view-part/?ref=eda" H 6400 1500 50  0001 L BNN "Check_prices"
F 11 "https://www.snapeda.com/parts/LTC4311CDC%23TRMPBF/Analog+Devices/view-part/?ref=snap" H 6400 1500 50  0001 L BNN "SnapEDA_Link"
F 12 "LTC4311CDC#TRMPBF" H 6400 1500 50  0001 L BNN "MP"
F 13 "In Stock" H 6400 1500 50  0001 L BNN "Availability"
F 14 "ltc4311cdc#trpbf" H 6400 1500 50  0001 L BNN "MANUFACTURER_PART_NUMBER"
	1    6400 1500
	1    0    0    -1  
$EndComp
$Comp
L LTC4311CDC_TRMPBF:LTC4311CDC_TRMPBF U?
U 1 1 6785D075
P 6400 2700
AR Path="/6785D075" Ref="U?"  Part="1" 
AR Path="/677EFB73/6785D075" Ref="U?"  Part="1" 
F 0 "U?" H 7300 3065 50  0000 C CNN
F 1 "LTC4311CDC_TRMPBF" H 7300 2974 50  0000 C CNN
F 2 "DFN-6_DC" H 6400 2700 50  0001 L BNN
F 3 "" H 6400 2700 50  0001 L BNN
F 4 "Analog Devices" H 6400 2700 50  0001 L BNN "MF"
F 5 "Linear Technology" H 6400 2700 50  0001 L BNN "VENDOR"
F 6 "\\n                        \\n                            Low Voltage I2C/SMBus Accelerator\\n                        \\n" H 6400 2700 50  0001 L BNN "Description"
F 7 "Copyright C 2016 Accelerated Designs. All rights reserved" H 6400 2700 50  0001 L BNN "COPYRIGHT"
F 8 "DFN -6 Analog Devices" H 6400 2700 50  0001 L BNN "Package"
F 9 "None" H 6400 2700 50  0001 L BNN "Price"
F 10 "https://www.snapeda.com/parts/LTC4311CDC%23TRMPBF/Analog+Devices/view-part/?ref=eda" H 6400 2700 50  0001 L BNN "Check_prices"
F 11 "https://www.snapeda.com/parts/LTC4311CDC%23TRMPBF/Analog+Devices/view-part/?ref=snap" H 6400 2700 50  0001 L BNN "SnapEDA_Link"
F 12 "LTC4311CDC#TRMPBF" H 6400 2700 50  0001 L BNN "MP"
F 13 "In Stock" H 6400 2700 50  0001 L BNN "Availability"
F 14 "ltc4311cdc#trpbf" H 6400 2700 50  0001 L BNN "MANUFACTURER_PART_NUMBER"
	1    6400 2700
	1    0    0    -1  
$EndComp
$Comp
L LTC4311CDC_TRMPBF:LTC4311CDC_TRMPBF U?
U 1 1 6785D086
P 6400 4050
AR Path="/6785D086" Ref="U?"  Part="1" 
AR Path="/677EFB73/6785D086" Ref="U?"  Part="1" 
F 0 "U?" H 7300 3477 50  0000 C CNN
F 1 "LTC4311CDC_TRMPBF" H 7300 3386 50  0000 C CNN
F 2 "DFN-6_DC" H 6400 4050 50  0001 L BNN
F 3 "" H 6400 4050 50  0001 L BNN
F 4 "Analog Devices" H 6400 4050 50  0001 L BNN "MF"
F 5 "Linear Technology" H 6400 4050 50  0001 L BNN "VENDOR"
F 6 "\\n                        \\n                            Low Voltage I2C/SMBus Accelerator\\n                        \\n" H 6400 4050 50  0001 L BNN "Description"
F 7 "Copyright C 2016 Accelerated Designs. All rights reserved" H 6400 4050 50  0001 L BNN "COPYRIGHT"
F 8 "DFN -6 Analog Devices" H 6400 4050 50  0001 L BNN "Package"
F 9 "None" H 6400 4050 50  0001 L BNN "Price"
F 10 "https://www.snapeda.com/parts/LTC4311CDC%23TRMPBF/Analog+Devices/view-part/?ref=eda" H 6400 4050 50  0001 L BNN "Check_prices"
F 11 "https://www.snapeda.com/parts/LTC4311CDC%23TRMPBF/Analog+Devices/view-part/?ref=snap" H 6400 4050 50  0001 L BNN "SnapEDA_Link"
F 12 "LTC4311CDC#TRMPBF" H 6400 4050 50  0001 L BNN "MP"
F 13 "In Stock" H 6400 4050 50  0001 L BNN "Availability"
F 14 "ltc4311cdc#trpbf" H 6400 4050 50  0001 L BNN "MANUFACTURER_PART_NUMBER"
	1    6400 4050
	1    0    0    -1  
$EndComp
$Comp
L LTC4311CDC_TRMPBF:LTC4311CDC_TRMPBF U?
U 1 1 6785D097
P 6400 5300
AR Path="/6785D097" Ref="U?"  Part="1" 
AR Path="/677EFB73/6785D097" Ref="U?"  Part="1" 
F 0 "U?" H 7300 5665 50  0000 C CNN
F 1 "LTC4311CDC_TRMPBF" H 7300 5574 50  0000 C CNN
F 2 "DFN-6_DC" H 6400 5300 50  0001 L BNN
F 3 "" H 6400 5300 50  0001 L BNN
F 4 "Analog Devices" H 6400 5300 50  0001 L BNN "MF"
F 5 "Linear Technology" H 6400 5300 50  0001 L BNN "VENDOR"
F 6 "\\n                        \\n                            Low Voltage I2C/SMBus Accelerator\\n                        \\n" H 6400 5300 50  0001 L BNN "Description"
F 7 "Copyright C 2016 Accelerated Designs. All rights reserved" H 6400 5300 50  0001 L BNN "COPYRIGHT"
F 8 "DFN -6 Analog Devices" H 6400 5300 50  0001 L BNN "Package"
F 9 "None" H 6400 5300 50  0001 L BNN "Price"
F 10 "https://www.snapeda.com/parts/LTC4311CDC%23TRMPBF/Analog+Devices/view-part/?ref=eda" H 6400 5300 50  0001 L BNN "Check_prices"
F 11 "https://www.snapeda.com/parts/LTC4311CDC%23TRMPBF/Analog+Devices/view-part/?ref=snap" H 6400 5300 50  0001 L BNN "SnapEDA_Link"
F 12 "LTC4311CDC#TRMPBF" H 6400 5300 50  0001 L BNN "MP"
F 13 "In Stock" H 6400 5300 50  0001 L BNN "Availability"
F 14 "ltc4311cdc#trpbf" H 6400 5300 50  0001 L BNN "MANUFACTURER_PART_NUMBER"
	1    6400 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6785D09D
P 7150 1000
AR Path="/6785D09D" Ref="C?"  Part="1" 
AR Path="/677EFB73/6785D09D" Ref="C?"  Part="1" 
F 0 "C?" H 7242 1046 50  0000 L CNN
F 1 "10uF" H 7242 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0504_1310Metric" H 7150 1000 50  0001 C CNN
F 3 "~" H 7150 1000 50  0001 C CNN
	1    7150 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6785D0A3
P 7500 1000
AR Path="/6785D0A3" Ref="C?"  Part="1" 
AR Path="/677EFB73/6785D0A3" Ref="C?"  Part="1" 
F 0 "C?" H 7592 1046 50  0000 L CNN
F 1 "0.1uF" H 7592 955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0504_1310Metric" H 7500 1000 50  0001 C CNN
F 3 "~" H 7500 1000 50  0001 C CNN
	1    7500 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6785D0A9
P 7550 2250
AR Path="/6785D0A9" Ref="C?"  Part="1" 
AR Path="/677EFB73/6785D0A9" Ref="C?"  Part="1" 
F 0 "C?" H 7642 2296 50  0000 L CNN
F 1 "0.1uF" H 7642 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0504_1310Metric" H 7550 2250 50  0001 C CNN
F 3 "~" H 7550 2250 50  0001 C CNN
	1    7550 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6785D0AF
P 7600 3600
AR Path="/6785D0AF" Ref="C?"  Part="1" 
AR Path="/677EFB73/6785D0AF" Ref="C?"  Part="1" 
F 0 "C?" H 7692 3646 50  0000 L CNN
F 1 "0.1uF" H 7692 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0504_1310Metric" H 7600 3600 50  0001 C CNN
F 3 "~" H 7600 3600 50  0001 C CNN
	1    7600 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6785D0BB
P 7200 2250
AR Path="/6785D0BB" Ref="C?"  Part="1" 
AR Path="/677EFB73/6785D0BB" Ref="C?"  Part="1" 
F 0 "C?" H 7292 2296 50  0000 L CNN
F 1 "10uF" H 7292 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0504_1310Metric" H 7200 2250 50  0001 C CNN
F 3 "~" H 7200 2250 50  0001 C CNN
	1    7200 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6785D0C1
P 7250 3600
AR Path="/6785D0C1" Ref="C?"  Part="1" 
AR Path="/677EFB73/6785D0C1" Ref="C?"  Part="1" 
F 0 "C?" H 7342 3646 50  0000 L CNN
F 1 "10uF" H 7342 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0504_1310Metric" H 7250 3600 50  0001 C CNN
F 3 "~" H 7250 3600 50  0001 C CNN
	1    7250 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6785D0C7
P 7250 4900
AR Path="/6785D0C7" Ref="C?"  Part="1" 
AR Path="/677EFB73/6785D0C7" Ref="C?"  Part="1" 
F 0 "C?" H 7342 4946 50  0000 L CNN
F 1 "10uF" H 7342 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0504_1310Metric" H 7250 4900 50  0001 C CNN
F 3 "~" H 7250 4900 50  0001 C CNN
	1    7250 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6785D0CD
P 8400 1900
AR Path="/6785D0CD" Ref="R?"  Part="1" 
AR Path="/677EFB73/6785D0CD" Ref="R?"  Part="1" 
F 0 "R?" H 8459 1946 50  0000 L CNN
F 1 "10k" H 8459 1855 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8400 1900 50  0001 C CNN
F 3 "~" H 8400 1900 50  0001 C CNN
	1    8400 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6785D0D3
P 6300 1500
AR Path="/6785D0D3" Ref="R?"  Part="1" 
AR Path="/677EFB73/6785D0D3" Ref="R?"  Part="1" 
F 0 "R?" V 6104 1500 50  0000 C CNN
F 1 "10k" V 6195 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6300 1500 50  0001 C CNN
F 3 "~" H 6300 1500 50  0001 C CNN
	1    6300 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6785D0D9
P 8400 1600
AR Path="/6785D0D9" Ref="R?"  Part="1" 
AR Path="/677EFB73/6785D0D9" Ref="R?"  Part="1" 
F 0 "R?" H 8459 1646 50  0000 L CNN
F 1 "10k" H 8459 1555 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8400 1600 50  0001 C CNN
F 3 "~" H 8400 1600 50  0001 C CNN
	1    8400 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6785D0DF
P 8400 2800
AR Path="/6785D0DF" Ref="R?"  Part="1" 
AR Path="/677EFB73/6785D0DF" Ref="R?"  Part="1" 
F 0 "R?" H 8459 2846 50  0000 L CNN
F 1 "10k" H 8459 2755 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8400 2800 50  0001 C CNN
F 3 "~" H 8400 2800 50  0001 C CNN
	1    8400 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6785D0E5
P 6300 2700
AR Path="/6785D0E5" Ref="R?"  Part="1" 
AR Path="/677EFB73/6785D0E5" Ref="R?"  Part="1" 
F 0 "R?" V 6104 2700 50  0000 C CNN
F 1 "10k" V 6195 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6300 2700 50  0001 C CNN
F 3 "~" H 6300 2700 50  0001 C CNN
	1    6300 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6785D0EB
P 8400 3100
AR Path="/6785D0EB" Ref="R?"  Part="1" 
AR Path="/677EFB73/6785D0EB" Ref="R?"  Part="1" 
F 0 "R?" H 8459 3146 50  0000 L CNN
F 1 "10k" H 8459 3055 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8400 3100 50  0001 C CNN
F 3 "~" H 8400 3100 50  0001 C CNN
	1    8400 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6785D0F1
P 8400 4450
AR Path="/6785D0F1" Ref="R?"  Part="1" 
AR Path="/677EFB73/6785D0F1" Ref="R?"  Part="1" 
F 0 "R?" H 8459 4496 50  0000 L CNN
F 1 "10k" H 8459 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8400 4450 50  0001 C CNN
F 3 "~" H 8400 4450 50  0001 C CNN
	1    8400 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6785D0F7
P 6300 4050
AR Path="/6785D0F7" Ref="R?"  Part="1" 
AR Path="/677EFB73/6785D0F7" Ref="R?"  Part="1" 
F 0 "R?" V 6104 4050 50  0000 C CNN
F 1 "10k" V 6195 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6300 4050 50  0001 C CNN
F 3 "~" H 6300 4050 50  0001 C CNN
	1    6300 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6785D0FD
P 8400 4150
AR Path="/6785D0FD" Ref="R?"  Part="1" 
AR Path="/677EFB73/6785D0FD" Ref="R?"  Part="1" 
F 0 "R?" H 8459 4196 50  0000 L CNN
F 1 "10k" H 8459 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8400 4150 50  0001 C CNN
F 3 "~" H 8400 4150 50  0001 C CNN
	1    8400 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6785D103
P 8400 5400
AR Path="/6785D103" Ref="R?"  Part="1" 
AR Path="/677EFB73/6785D103" Ref="R?"  Part="1" 
F 0 "R?" H 8459 5446 50  0000 L CNN
F 1 "10k" H 8459 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8400 5400 50  0001 C CNN
F 3 "~" H 8400 5400 50  0001 C CNN
	1    8400 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 900  7500 900 
Connection ~ 7500 900 
Wire Wire Line
	7500 900  7150 900 
Wire Wire Line
	7150 1100 7500 1100
Connection ~ 7500 1100
Wire Wire Line
	7500 1100 7700 1100
Wire Wire Line
	7700 1100 7700 1250
Wire Wire Line
	7700 1250 8250 1250
Wire Wire Line
	8250 1250 8250 1500
Wire Wire Line
	8250 1600 8200 1600
Wire Wire Line
	8200 1500 8250 1500
Connection ~ 8250 1500
Wire Wire Line
	8250 1500 8250 1600
Wire Wire Line
	7150 900  6050 900 
Wire Wire Line
	6050 900  6050 1500
Connection ~ 7150 900 
Wire Wire Line
	6050 1700 6400 1700
Wire Wire Line
	6200 1500 6050 1500
Connection ~ 6050 1500
Wire Wire Line
	6050 1500 6050 1700
Wire Wire Line
	7150 900  7150 750 
Wire Wire Line
	7150 750  8400 750 
Wire Wire Line
	8400 750  8400 1350
Wire Wire Line
	8400 1350 8850 1350
Wire Wire Line
	8850 1350 8850 2000
Connection ~ 8400 1350
Wire Wire Line
	8400 1350 8400 1500
Wire Wire Line
	8400 1700 8200 1700
Wire Wire Line
	8200 1800 8400 1800
Wire Wire Line
	7800 2350 7550 2350
Connection ~ 7550 2350
Wire Wire Line
	7550 2350 7200 2350
Wire Wire Line
	7200 2150 7550 2150
Connection ~ 7550 2150
Wire Wire Line
	7550 2150 7800 2150
Wire Wire Line
	7800 2350 7800 2450
Wire Wire Line
	7800 2450 8200 2450
Wire Wire Line
	8200 2450 8200 2700
Connection ~ 8200 2700
Wire Wire Line
	8200 2700 8200 2800
Wire Wire Line
	7800 2150 7800 2100
Wire Wire Line
	7800 2100 8400 2100
Wire Wire Line
	7200 2150 6050 2150
Connection ~ 7200 2150
Wire Wire Line
	6050 2150 6050 2700
Wire Wire Line
	6050 2900 6400 2900
Wire Wire Line
	6200 2700 6050 2700
Connection ~ 6050 2700
Wire Wire Line
	6050 2700 6050 2900
Wire Wire Line
	8400 2100 8400 2600
Wire Wire Line
	8200 3000 8400 3000
Wire Wire Line
	8400 2600 8750 2600
Wire Wire Line
	8750 2600 8750 3200
Connection ~ 8400 2600
Wire Wire Line
	8400 2600 8400 2700
Wire Wire Line
	8750 3200 8400 3200
Wire Wire Line
	8200 4250 8400 4250
Wire Wire Line
	8200 4350 8400 4350
Wire Wire Line
	7600 3700 7250 3700
Wire Wire Line
	7250 3500 7600 3500
Wire Wire Line
	7250 3500 6050 3500
Connection ~ 7250 3500
Wire Wire Line
	6050 3500 6050 4050
Wire Wire Line
	6050 4250 6400 4250
Wire Wire Line
	6200 4050 6050 4050
Connection ~ 6050 4050
Wire Wire Line
	6050 4050 6050 4250
Wire Wire Line
	7600 4800 7250 4800
Connection ~ 7250 4800
Wire Wire Line
	7250 4800 6000 4800
Wire Wire Line
	6000 4800 6000 5300
Wire Wire Line
	6000 5500 6400 5500
Wire Wire Line
	6200 5300 6000 5300
Connection ~ 6000 5300
Wire Wire Line
	6000 5300 6000 5500
Wire Wire Line
	7600 5000 7250 5000
Connection ~ 7600 3500
Connection ~ 7600 3700
Wire Wire Line
	7600 4700 7600 4800
Wire Wire Line
	8400 5300 8400 5200
Wire Wire Line
	8400 4700 7600 4700
Wire Wire Line
	8600 5800 8600 5200
Wire Wire Line
	8400 5200 8600 5200
Connection ~ 8400 5200
Wire Wire Line
	8400 5200 8400 4700
Wire Wire Line
	8400 4550 8500 4550
Wire Wire Line
	8500 4550 8500 3900
Wire Wire Line
	8500 3900 8400 3900
Wire Wire Line
	8400 3900 8400 4050
Wire Wire Line
	8400 3900 8400 3450
Wire Wire Line
	8400 3450 7600 3450
Connection ~ 8400 3900
Wire Wire Line
	7600 3450 7600 3500
Wire Wire Line
	8200 2900 8400 2900
Wire Wire Line
	7600 5000 7600 5050
Wire Wire Line
	7600 5050 8200 5050
Wire Wire Line
	8200 5050 8200 5300
Connection ~ 8200 5300
Wire Wire Line
	8200 5300 8200 5400
Wire Wire Line
	8200 4150 8200 4050
Wire Wire Line
	8200 4050 8200 3800
Wire Wire Line
	8200 3800 7600 3800
Connection ~ 8200 4050
Wire Wire Line
	7600 3800 7600 3700
$Comp
L Logic_LevelTranslator:TXS0102YZP U?
U 1 1 6785D1BD
P 9350 1750
AR Path="/6785D1BD" Ref="U?"  Part="1" 
AR Path="/677EFB73/6785D1BD" Ref="U?"  Part="1" 
F 0 "U?" H 9350 1161 50  0000 C CNN
F 1 "TXS0102YZP" H 9350 1070 50  0000 C CNN
F 2 "Package_BGA:Texas_DSBGA-8_0.9x1.9mm_Layout2x4_P0.5mm" H 9350 1200 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/txs0102" H 9350 1730 50  0001 C CNN
	1    9350 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 2000 8850 2000
Wire Wire Line
	8950 1800 8950 1850
$Comp
L Logic_LevelTranslator:TXS0102YZP U?
U 1 1 6785D1CA
P 9350 2950
AR Path="/6785D1CA" Ref="U?"  Part="1" 
AR Path="/677EFB73/6785D1CA" Ref="U?"  Part="1" 
F 0 "U?" H 9350 2361 50  0000 C CNN
F 1 "TXS0102YZP" H 9350 2270 50  0000 C CNN
F 2 "Package_BGA:Texas_DSBGA-8_0.9x1.9mm_Layout2x4_P0.5mm" H 9350 2400 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/txs0102" H 9350 2930 50  0001 C CNN
	1    9350 2950
	1    0    0    -1  
$EndComp
$Comp
L Logic_LevelTranslator:TXS0102YZP U?
U 1 1 6785D1D6
P 9350 5550
AR Path="/6785D1D6" Ref="U?"  Part="1" 
AR Path="/677EFB73/6785D1D6" Ref="U?"  Part="1" 
F 0 "U?" H 9350 4961 50  0000 C CNN
F 1 "TXS0102YZP" H 9350 4870 50  0000 C CNN
F 2 "Package_BGA:Texas_DSBGA-8_0.9x1.9mm_Layout2x4_P0.5mm" H 9350 5000 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/txs0102" H 9350 5530 50  0001 C CNN
	1    9350 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 3000 8950 3050
Wire Wire Line
	8950 4350 8950 4400
Wire Wire Line
	9450 1250 9250 1250
Connection ~ 9450 5050
Wire Wire Line
	9450 5050 9250 5050
Wire Wire Line
	9450 2450 9250 2450
$Comp
L Device:R_Small R?
U 1 1 6785D220
P 6300 5300
AR Path="/6785D220" Ref="R?"  Part="1" 
AR Path="/677EFB73/6785D220" Ref="R?"  Part="1" 
F 0 "R?" V 6104 5300 50  0000 C CNN
F 1 "10k" V 6195 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 6300 5300 50  0001 C CNN
F 3 "~" H 6300 5300 50  0001 C CNN
	1    6300 5300
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6785D226
P 8950 2150
AR Path="/6785D226" Ref="R?"  Part="1" 
AR Path="/677EFB73/6785D226" Ref="R?"  Part="1" 
F 0 "R?" H 9009 2196 50  0000 L CNN
F 1 "10k" H 9009 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8950 2150 50  0001 C CNN
F 3 "~" H 8950 2150 50  0001 C CNN
	1    8950 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6785D22C
P 8950 3350
AR Path="/6785D22C" Ref="R?"  Part="1" 
AR Path="/677EFB73/6785D22C" Ref="R?"  Part="1" 
F 0 "R?" H 9009 3396 50  0000 L CNN
F 1 "10k" H 9009 3305 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8950 3350 50  0001 C CNN
F 3 "~" H 8950 3350 50  0001 C CNN
	1    8950 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6785D232
P 8950 4700
AR Path="/6785D232" Ref="R?"  Part="1" 
AR Path="/677EFB73/6785D232" Ref="R?"  Part="1" 
F 0 "R?" H 9009 4746 50  0000 L CNN
F 1 "10k" H 9009 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8950 4700 50  0001 C CNN
F 3 "~" H 8950 4700 50  0001 C CNN
	1    8950 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6785D238
P 8950 5950
AR Path="/6785D238" Ref="R?"  Part="1" 
AR Path="/677EFB73/6785D238" Ref="R?"  Part="1" 
F 0 "R?" H 9009 5996 50  0000 L CNN
F 1 "10k" H 9009 5905 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8950 5950 50  0001 C CNN
F 3 "~" H 8950 5950 50  0001 C CNN
	1    8950 5950
	1    0    0    -1  
$EndComp
Connection ~ 9450 2450
Connection ~ 9450 1250
Wire Wire Line
	5350 3500 5550 3500
Wire Wire Line
	5350 3600 5550 3600
Wire Wire Line
	5350 3700 5550 3700
Wire Wire Line
	5350 3800 5550 3800
Wire Wire Line
	5350 3900 5550 3900
Wire Wire Line
	5350 4000 5550 4000
Wire Wire Line
	5350 4100 5550 4100
Wire Wire Line
	5350 4200 5550 4200
Text Label 5550 3500 0    50   ~ 0
SC4
Text Label 5550 3600 0    50   ~ 0
SD4
Text Label 5550 3700 0    50   ~ 0
SC5
Text Label 5550 3800 0    50   ~ 0
SD5
Text Label 5550 3900 0    50   ~ 0
SC6
Text Label 5550 4000 0    50   ~ 0
SD6
Text Label 5550 4100 0    50   ~ 0
SC7
Text Label 5550 4200 0    50   ~ 0
SD7
Text HLabel 5350 2700 2    50   Input ~ 0
SC0
Text HLabel 5350 2800 2    50   Input ~ 0
SD0
Text HLabel 5350 2900 2    50   Input ~ 0
SC1
Text HLabel 5350 3000 2    50   Input ~ 0
SD1
Text HLabel 5350 3100 2    50   Input ~ 0
SC2
Text HLabel 5350 3200 2    50   Input ~ 0
SD2
Text HLabel 5350 3300 2    50   Input ~ 0
SC3
Text HLabel 5350 3400 2    50   Input ~ 0
SD3
$Comp
L Device:C_Small C?
U 1 1 6785D274
P 10250 1800
AR Path="/6785D274" Ref="C?"  Part="1" 
AR Path="/677EFB73/6785D274" Ref="C?"  Part="1" 
F 0 "C?" H 10342 1846 50  0000 L CNN
F 1 "10uF" H 10342 1755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0504_1310Metric" H 10250 1800 50  0001 C CNN
F 3 "~" H 10250 1800 50  0001 C CNN
	1    10250 1800
	1    0    0    -1  
$EndComp
Text HLabel 4550 2700 0    50   Input ~ 0
SCIN
Text HLabel 4550 2800 0    50   Input ~ 0
SDIN
Text Notes 7050 6700 0    50   ~ 0
I2C module integrates multiplexing with logic level shifting and active termination/range extension.
Text HLabel 10250 1700 2    50   Input ~ 0
VCC
Text HLabel 10250 1900 2    50   Input ~ 0
GND
$Comp
L Device:C_Small C?
U 1 1 679EA901
P 10150 3000
AR Path="/679EA901" Ref="C?"  Part="1" 
AR Path="/677EFB73/679EA901" Ref="C?"  Part="1" 
F 0 "C?" H 10242 3046 50  0000 L CNN
F 1 "10uF" H 10242 2955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0504_1310Metric" H 10150 3000 50  0001 C CNN
F 3 "~" H 10150 3000 50  0001 C CNN
	1    10150 3000
	1    0    0    -1  
$EndComp
Text HLabel 10150 2900 2    50   Input ~ 0
VCC
Text HLabel 10150 3100 2    50   Input ~ 0
GND
$Comp
L Device:C_Small C?
U 1 1 679EECDE
P 10200 4300
AR Path="/679EECDE" Ref="C?"  Part="1" 
AR Path="/677EFB73/679EECDE" Ref="C?"  Part="1" 
F 0 "C?" H 10292 4346 50  0000 L CNN
F 1 "10uF" H 10292 4255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0504_1310Metric" H 10200 4300 50  0001 C CNN
F 3 "~" H 10200 4300 50  0001 C CNN
	1    10200 4300
	1    0    0    -1  
$EndComp
Text HLabel 10200 4200 2    50   Input ~ 0
VCC
Text HLabel 10200 4400 2    50   Input ~ 0
GND
$Comp
L Device:C_Small C?
U 1 1 679F2DF3
P 10200 5550
AR Path="/679F2DF3" Ref="C?"  Part="1" 
AR Path="/677EFB73/679F2DF3" Ref="C?"  Part="1" 
F 0 "C?" H 10292 5596 50  0000 L CNN
F 1 "10uF" H 10292 5505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0504_1310Metric" H 10200 5550 50  0001 C CNN
F 3 "~" H 10200 5550 50  0001 C CNN
	1    10200 5550
	1    0    0    -1  
$EndComp
Text HLabel 10200 5450 2    50   Input ~ 0
VCC
Text HLabel 10200 5650 2    50   Input ~ 0
GND
Connection ~ 9450 3800
Wire Wire Line
	9450 3800 9250 3800
$Comp
L Logic_LevelTranslator:TXS0102YZP U?
U 1 1 6785D1D0
P 9350 4300
AR Path="/6785D1D0" Ref="U?"  Part="1" 
AR Path="/677EFB73/6785D1D0" Ref="U?"  Part="1" 
F 0 "U?" H 9350 3711 50  0000 C CNN
F 1 "TXS0102YZP" H 9350 3620 50  0000 C CNN
F 2 "Package_BGA:Texas_DSBGA-8_0.9x1.9mm_Layout2x4_P0.5mm" H 9350 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/gpn/txs0102" H 9350 4280 50  0001 C CNN
	1    9350 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1700 10250 1250
Wire Wire Line
	9450 1250 10250 1250
Wire Wire Line
	10250 1900 10250 2250
Wire Wire Line
	10250 2250 9350 2250
Wire Wire Line
	10150 2900 10150 2450
Wire Wire Line
	9450 2450 10150 2450
Wire Wire Line
	10150 3100 10150 3450
Wire Wire Line
	10150 3450 9350 3450
Wire Wire Line
	10200 4200 10200 3800
Wire Wire Line
	9450 3800 10200 3800
Wire Wire Line
	10200 4400 10200 4800
Wire Wire Line
	10200 4800 9350 4800
Wire Wire Line
	10200 5450 10200 5050
Wire Wire Line
	9450 5050 10200 5050
Wire Wire Line
	10200 5650 10200 6050
Wire Wire Line
	10200 6050 9350 6050
Text HLabel 8950 6050 3    50   Input ~ 0
VCC
Text HLabel 8950 4800 3    50   Input ~ 0
VCC
Text HLabel 8950 3450 3    50   Input ~ 0
VCC
Text HLabel 8950 2250 3    50   Input ~ 0
VCC
Wire Wire Line
	8200 5500 8400 5500
Wire Wire Line
	8400 5800 8600 5800
Wire Wire Line
	8950 5600 8950 5650
Wire Wire Line
	8400 5600 8200 5600
$Comp
L Device:R_Small R?
U 1 1 6785D109
P 8400 5700
AR Path="/6785D109" Ref="R?"  Part="1" 
AR Path="/677EFB73/6785D109" Ref="R?"  Part="1" 
F 0 "R?" H 8459 5746 50  0000 L CNN
F 1 "10k" H 8459 5655 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 8400 5700 50  0001 C CNN
F 3 "~" H 8400 5700 50  0001 C CNN
	1    8400 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 5500 8650 5500
Wire Wire Line
	8800 5500 8800 5600
Connection ~ 8400 5500
Wire Wire Line
	8800 5600 8950 5600
Wire Wire Line
	8400 5600 8650 5600
Wire Wire Line
	8750 5600 8750 5550
Connection ~ 8400 5600
Wire Wire Line
	8750 5550 8950 5550
Wire Wire Line
	8950 5450 8950 5550
Wire Wire Line
	8650 5600 8650 5700
Connection ~ 8650 5600
Wire Wire Line
	8650 5600 8750 5600
Text Label 8650 5700 0    50   ~ 0
SD7
Wire Wire Line
	8650 5500 8650 5450
Connection ~ 8650 5500
Wire Wire Line
	8650 5500 8800 5500
Text Label 8650 5450 0    50   ~ 0
SC7
Text HLabel 7600 4800 2    50   Input ~ 0
VCC
Text HLabel 7600 3500 2    50   Input ~ 0
VCC
Text HLabel 7800 2150 2    50   Input ~ 0
VCC
Text HLabel 7700 900  2    50   Input ~ 0
VCC
Text HLabel 7700 1100 2    50   Input ~ 0
GND
Connection ~ 7600 5000
Connection ~ 7600 4800
$Comp
L Device:C_Small C?
U 1 1 6785D0B5
P 7600 4900
AR Path="/6785D0B5" Ref="C?"  Part="1" 
AR Path="/677EFB73/6785D0B5" Ref="C?"  Part="1" 
F 0 "C?" H 7692 4946 50  0000 L CNN
F 1 "0.1uF" H 7692 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0504_1310Metric" H 7600 4900 50  0001 C CNN
F 3 "~" H 7600 4900 50  0001 C CNN
	1    7600 4900
	1    0    0    -1  
$EndComp
Text HLabel 7600 3700 2    50   Input ~ 0
GND
Text HLabel 7600 5000 2    50   Input ~ 0
GND
Text HLabel 7800 2350 2    50   Input ~ 0
GND
Wire Wire Line
	8400 1700 8700 1700
Wire Wire Line
	8900 1700 8900 1800
Connection ~ 8400 1700
Wire Wire Line
	8900 1800 8950 1800
Wire Wire Line
	8400 1800 8700 1800
Wire Wire Line
	8800 1800 8800 1750
Connection ~ 8400 1800
Wire Wire Line
	8800 1750 8950 1750
Wire Wire Line
	8950 1650 8950 1750
Wire Wire Line
	8400 2900 8700 2900
Wire Wire Line
	8900 2900 8900 3000
Connection ~ 8400 2900
Wire Wire Line
	8900 3000 8950 3000
Wire Wire Line
	8400 3000 8700 3000
Wire Wire Line
	8850 3000 8850 2950
Connection ~ 8400 3000
Wire Wire Line
	8850 2950 8950 2950
Wire Wire Line
	8950 2850 8950 2950
Wire Wire Line
	8400 4250 8700 4250
Wire Wire Line
	8850 4250 8850 4350
Connection ~ 8400 4250
Wire Wire Line
	8850 4350 8950 4350
Wire Wire Line
	8400 4350 8700 4350
Wire Wire Line
	8800 4350 8800 4300
Connection ~ 8400 4350
Wire Wire Line
	8800 4300 8950 4300
Wire Wire Line
	8950 4200 8950 4300
Wire Wire Line
	8700 4250 8700 4200
Connection ~ 8700 4250
Wire Wire Line
	8700 4250 8850 4250
Wire Wire Line
	8700 4350 8700 4450
Connection ~ 8700 4350
Wire Wire Line
	8700 4350 8800 4350
Wire Wire Line
	8700 2900 8700 2800
Connection ~ 8700 2900
Wire Wire Line
	8700 2900 8900 2900
Wire Wire Line
	8700 3000 8700 3100
Connection ~ 8700 3000
Wire Wire Line
	8700 3000 8850 3000
Wire Wire Line
	8700 1700 8700 1600
Connection ~ 8700 1700
Wire Wire Line
	8700 1700 8900 1700
Wire Wire Line
	8700 1800 8700 1900
Connection ~ 8700 1800
Wire Wire Line
	8700 1800 8800 1800
Text Label 8700 1600 0    50   ~ 0
SC4
Text Label 8700 1900 0    50   ~ 0
SD4
Text Label 8700 2800 0    50   ~ 0
SC5
Text Label 8700 3100 0    50   ~ 0
SD5
Text Label 8700 4200 0    50   ~ 0
SC6
Text Label 8700 4450 0    50   ~ 0
SD6
Text HLabel 4100 3350 0    50   Input ~ 0
VCC
Text HLabel 4100 3550 0    50   Input ~ 0
GND
Text HLabel 4350 3200 0    50   Input ~ 0
VCC
Text HLabel 4550 3900 0    50   Input ~ 0
GND
Text HLabel 4550 3800 0    50   Input ~ 0
GND
Text HLabel 4550 3700 0    50   Input ~ 0
GND
Text Notes 7050 6800 0    50   ~ 0
TCA9548 I2C MUX gives an 1:8 configuration on the raspberry pi's primary i2c bus.
Text Notes 7050 6900 0    50   ~ 0
Four of these new busses are auto level shifted with a TXS0102 and actively terminated with an LTC4311
Text Notes 7050 7000 0    50   ~ 0
for off board communication, and the other are used for communication within the hat.
$Comp
L power:GND #PWR?
U 1 1 67C6FF6F
P 1850 4950
F 0 "#PWR?" H 1850 4700 50  0001 C CNN
F 1 "GND" V 1855 4822 50  0000 R CNN
F 2 "" H 1850 4950 50  0001 C CNN
F 3 "" H 1850 4950 50  0001 C CNN
	1    1850 4950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67C6FF75
P 1850 4250
F 0 "#PWR?" H 1850 4000 50  0001 C CNN
F 1 "GND" V 1855 4122 50  0000 R CNN
F 2 "" H 1850 4250 50  0001 C CNN
F 3 "" H 1850 4250 50  0001 C CNN
	1    1850 4250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67C6FF7B
P 1850 3550
F 0 "#PWR?" H 1850 3300 50  0001 C CNN
F 1 "GND" V 1855 3422 50  0000 R CNN
F 2 "" H 1850 3550 50  0001 C CNN
F 3 "" H 1850 3550 50  0001 C CNN
	1    1850 3550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67C6FF81
P 1850 2850
F 0 "#PWR?" H 1850 2600 50  0001 C CNN
F 1 "GND" V 1855 2722 50  0000 R CNN
F 2 "" H 1850 2850 50  0001 C CNN
F 3 "" H 1850 2850 50  0001 C CNN
	1    1850 2850
	0    1    1    0   
$EndComp
$Comp
L BM04B-GHS-TBT_LF__SN__N_:BM04B-GHS-TBT_LF__SN__N_ J?
U 1 1 67C6FF93
P 2250 4650
F 0 "J?" H 2480 4646 50  0000 L CNN
F 1 "BM04B-GHS-TBT_LF__SN__N_" H 2480 4555 50  0000 L CNN
F 2 "JST_BM04B-GHS-TBT_LF__SN__N_" H 2250 4650 50  0001 L BNN
F 3 "" H 2250 4650 50  0001 L BNN
F 4 "JST Sales" H 2250 4650 50  0001 L BNN "MF"
F 5 "4.05mm" H 2250 4650 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 6 "None" H 2250 4650 50  0001 L BNN "Package"
F 7 "None" H 2250 4650 50  0001 L BNN "Price"
F 8 "https://www.snapeda.com/parts/BM04B-GHS-TBT(LF)(SN)(N)/JST+Sales+America+Inc./view-part/?ref=eda" H 2250 4650 50  0001 L BNN "Check_prices"
F 9 "Manufacturer Recommendations" H 2250 4650 50  0001 L BNN "STANDARD"
F 10 "N/A" H 2250 4650 50  0001 L BNN "PARTREV"
F 11 "https://www.snapeda.com/parts/BM04B-GHS-TBT(LF)(SN)(N)/JST+Sales+America+Inc./view-part/?ref=snap" H 2250 4650 50  0001 L BNN "SnapEDA_Link"
F 12 "BM04B-GHS-TBT(LF)(SN)(N)" H 2250 4650 50  0001 L BNN "MP"
F 13 "\\n                        \\n                            Connector Header Surface Mount 4 position 0.049 (1.25mm)\\n                        \\n" H 2250 4650 50  0001 L BNN "Description"
F 14 "In Stock" H 2250 4650 50  0001 L BNN "Availability"
F 15 "JST" H 2250 4650 50  0001 L BNN "MANUFACTURER"
	1    2250 4650
	1    0    0    -1  
$EndComp
$Comp
L BM04B-GHS-TBT_LF__SN__N_:BM04B-GHS-TBT_LF__SN__N_ J?
U 1 1 67C6FFA5
P 2250 3950
F 0 "J?" H 2480 3946 50  0000 L CNN
F 1 "BM04B-GHS-TBT_LF__SN__N_" H 2480 3855 50  0000 L CNN
F 2 "JST_BM04B-GHS-TBT_LF__SN__N_" H 2250 3950 50  0001 L BNN
F 3 "" H 2250 3950 50  0001 L BNN
F 4 "JST Sales" H 2250 3950 50  0001 L BNN "MF"
F 5 "4.05mm" H 2250 3950 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 6 "None" H 2250 3950 50  0001 L BNN "Package"
F 7 "None" H 2250 3950 50  0001 L BNN "Price"
F 8 "https://www.snapeda.com/parts/BM04B-GHS-TBT(LF)(SN)(N)/JST+Sales+America+Inc./view-part/?ref=eda" H 2250 3950 50  0001 L BNN "Check_prices"
F 9 "Manufacturer Recommendations" H 2250 3950 50  0001 L BNN "STANDARD"
F 10 "N/A" H 2250 3950 50  0001 L BNN "PARTREV"
F 11 "https://www.snapeda.com/parts/BM04B-GHS-TBT(LF)(SN)(N)/JST+Sales+America+Inc./view-part/?ref=snap" H 2250 3950 50  0001 L BNN "SnapEDA_Link"
F 12 "BM04B-GHS-TBT(LF)(SN)(N)" H 2250 3950 50  0001 L BNN "MP"
F 13 "\\n                        \\n                            Connector Header Surface Mount 4 position 0.049 (1.25mm)\\n                        \\n" H 2250 3950 50  0001 L BNN "Description"
F 14 "In Stock" H 2250 3950 50  0001 L BNN "Availability"
F 15 "JST" H 2250 3950 50  0001 L BNN "MANUFACTURER"
	1    2250 3950
	1    0    0    -1  
$EndComp
$Comp
L BM04B-GHS-TBT_LF__SN__N_:BM04B-GHS-TBT_LF__SN__N_ J?
U 1 1 67C6FFB7
P 2250 3250
F 0 "J?" H 2480 3246 50  0000 L CNN
F 1 "BM04B-GHS-TBT_LF__SN__N_" H 2480 3155 50  0000 L CNN
F 2 "JST_BM04B-GHS-TBT_LF__SN__N_" H 2250 3250 50  0001 L BNN
F 3 "" H 2250 3250 50  0001 L BNN
F 4 "JST Sales" H 2250 3250 50  0001 L BNN "MF"
F 5 "4.05mm" H 2250 3250 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 6 "None" H 2250 3250 50  0001 L BNN "Package"
F 7 "None" H 2250 3250 50  0001 L BNN "Price"
F 8 "https://www.snapeda.com/parts/BM04B-GHS-TBT(LF)(SN)(N)/JST+Sales+America+Inc./view-part/?ref=eda" H 2250 3250 50  0001 L BNN "Check_prices"
F 9 "Manufacturer Recommendations" H 2250 3250 50  0001 L BNN "STANDARD"
F 10 "N/A" H 2250 3250 50  0001 L BNN "PARTREV"
F 11 "https://www.snapeda.com/parts/BM04B-GHS-TBT(LF)(SN)(N)/JST+Sales+America+Inc./view-part/?ref=snap" H 2250 3250 50  0001 L BNN "SnapEDA_Link"
F 12 "BM04B-GHS-TBT(LF)(SN)(N)" H 2250 3250 50  0001 L BNN "MP"
F 13 "\\n                        \\n                            Connector Header Surface Mount 4 position 0.049 (1.25mm)\\n                        \\n" H 2250 3250 50  0001 L BNN "Description"
F 14 "In Stock" H 2250 3250 50  0001 L BNN "Availability"
F 15 "JST" H 2250 3250 50  0001 L BNN "MANUFACTURER"
	1    2250 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 67C6FFC5
P 1450 2400
F 0 "#PWR?" H 1450 2250 50  0001 C CNN
F 1 "+5V" H 1465 2573 50  0000 C CNN
F 2 "" H 1450 2400 50  0001 C CNN
F 3 "" H 1450 2400 50  0001 C CNN
	1    1450 2400
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 67C6FFCB
P 1450 2500
F 0 "C?" H 1542 2546 50  0000 L CNN
F 1 "10uF" H 1542 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0504_1310Metric" H 1450 2500 50  0001 C CNN
F 3 "~" H 1450 2500 50  0001 C CNN
	1    1450 2500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 67C6FFD1
P 1450 3200
F 0 "C?" H 1542 3246 50  0000 L CNN
F 1 "10uF" H 1542 3155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0504_1310Metric" H 1450 3200 50  0001 C CNN
F 3 "~" H 1450 3200 50  0001 C CNN
	1    1450 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 67C6FFD7
P 1450 3900
F 0 "C?" H 1542 3946 50  0000 L CNN
F 1 "10uF" H 1542 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0504_1310Metric" H 1450 3900 50  0001 C CNN
F 3 "~" H 1450 3900 50  0001 C CNN
	1    1450 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 67C6FFDD
P 1450 4600
F 0 "C?" H 1542 4646 50  0000 L CNN
F 1 "10uF" H 1542 4555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0504_1310Metric" H 1450 4600 50  0001 C CNN
F 3 "~" H 1450 4600 50  0001 C CNN
	1    1450 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67C6FFE3
P 1450 2600
F 0 "#PWR?" H 1450 2350 50  0001 C CNN
F 1 "GND" H 1455 2427 50  0000 C CNN
F 2 "" H 1450 2600 50  0001 C CNN
F 3 "" H 1450 2600 50  0001 C CNN
	1    1450 2600
	0    1    1    0   
$EndComp
$Comp
L BM04B-GHS-TBT_LF__SN__N_:BM04B-GHS-TBT_LF__SN__N_ J?
U 1 1 67C6FFF5
P 2250 2550
F 0 "J?" H 2480 2546 50  0000 L CNN
F 1 "BM04B-GHS-TBT_LF__SN__N_" H 2480 2455 50  0000 L CNN
F 2 "JST_BM04B-GHS-TBT_LF__SN__N_" H 2250 2550 50  0001 L BNN
F 3 "" H 2250 2550 50  0001 L BNN
F 4 "JST Sales" H 2250 2550 50  0001 L BNN "MF"
F 5 "4.05mm" H 2250 2550 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 6 "None" H 2250 2550 50  0001 L BNN "Package"
F 7 "None" H 2250 2550 50  0001 L BNN "Price"
F 8 "https://www.snapeda.com/parts/BM04B-GHS-TBT(LF)(SN)(N)/JST+Sales+America+Inc./view-part/?ref=eda" H 2250 2550 50  0001 L BNN "Check_prices"
F 9 "Manufacturer Recommendations" H 2250 2550 50  0001 L BNN "STANDARD"
F 10 "N/A" H 2250 2550 50  0001 L BNN "PARTREV"
F 11 "https://www.snapeda.com/parts/BM04B-GHS-TBT(LF)(SN)(N)/JST+Sales+America+Inc./view-part/?ref=snap" H 2250 2550 50  0001 L BNN "SnapEDA_Link"
F 12 "BM04B-GHS-TBT(LF)(SN)(N)" H 2250 2550 50  0001 L BNN "MP"
F 13 "\\n                        \\n                            Connector Header Surface Mount 4 position 0.049 (1.25mm)\\n                        \\n" H 2250 2550 50  0001 L BNN "Description"
F 14 "In Stock" H 2250 2550 50  0001 L BNN "Availability"
F 15 "JST" H 2250 2550 50  0001 L BNN "MANUFACTURER"
	1    2250 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2400 1850 2400
Wire Wire Line
	1850 2400 1850 2350
Connection ~ 1450 2400
Wire Wire Line
	1850 2600 1850 2650
Wire Wire Line
	1450 3100 1850 3100
Wire Wire Line
	1850 3100 1850 3050
Wire Wire Line
	1450 3300 1850 3300
Wire Wire Line
	1850 3300 1850 3350
$Comp
L power:+5V #PWR?
U 1 1 67C70005
P 1450 3100
F 0 "#PWR?" H 1450 2950 50  0001 C CNN
F 1 "+5V" V 1465 3228 50  0000 L CNN
F 2 "" H 1450 3100 50  0001 C CNN
F 3 "" H 1450 3100 50  0001 C CNN
	1    1450 3100
	0    -1   -1   0   
$EndComp
Connection ~ 1450 3100
$Comp
L power:GND #PWR?
U 1 1 67C7000C
P 1450 3300
F 0 "#PWR?" H 1450 3050 50  0001 C CNN
F 1 "GND" V 1455 3172 50  0000 R CNN
F 2 "" H 1450 3300 50  0001 C CNN
F 3 "" H 1450 3300 50  0001 C CNN
	1    1450 3300
	0    1    1    0   
$EndComp
Connection ~ 1450 3300
$Comp
L power:+5V #PWR?
U 1 1 67C70013
P 1450 3800
F 0 "#PWR?" H 1450 3650 50  0001 C CNN
F 1 "+5V" V 1465 3928 50  0000 L CNN
F 2 "" H 1450 3800 50  0001 C CNN
F 3 "" H 1450 3800 50  0001 C CNN
	1    1450 3800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67C70019
P 1450 4000
F 0 "#PWR?" H 1450 3750 50  0001 C CNN
F 1 "GND" V 1455 3872 50  0000 R CNN
F 2 "" H 1450 4000 50  0001 C CNN
F 3 "" H 1450 4000 50  0001 C CNN
	1    1450 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 3800 1850 3800
Wire Wire Line
	1850 3800 1850 3750
Connection ~ 1450 3800
Wire Wire Line
	1450 4000 1850 4000
Wire Wire Line
	1850 4000 1850 4050
Connection ~ 1450 4000
$Comp
L power:+5V #PWR?
U 1 1 67C70025
P 1450 4500
F 0 "#PWR?" H 1450 4350 50  0001 C CNN
F 1 "+5V" V 1465 4628 50  0000 L CNN
F 2 "" H 1450 4500 50  0001 C CNN
F 3 "" H 1450 4500 50  0001 C CNN
	1    1450 4500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67C7002B
P 1450 4700
F 0 "#PWR?" H 1450 4450 50  0001 C CNN
F 1 "GND" V 1455 4572 50  0000 R CNN
F 2 "" H 1450 4700 50  0001 C CNN
F 3 "" H 1450 4700 50  0001 C CNN
	1    1450 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 4700 1850 4700
Wire Wire Line
	1850 4700 1850 4750
Connection ~ 1450 4700
Wire Wire Line
	1450 4500 1850 4500
Wire Wire Line
	1850 4500 1850 4450
Connection ~ 1450 4500
Wire Wire Line
	9750 1650 9850 1650
Wire Wire Line
	9750 1850 9850 1850
Wire Wire Line
	9750 2850 9850 2850
Wire Wire Line
	9750 3050 9850 3050
Wire Wire Line
	9750 4200 9900 4200
Wire Wire Line
	9750 4400 9900 4400
Wire Wire Line
	9750 5450 9850 5450
Wire Wire Line
	9750 5650 9850 5650
Text Label 9850 1650 0    50   ~ 0
OSD4
Text Label 9850 1850 0    50   ~ 0
OSC4
Text Label 9850 2850 0    50   ~ 0
OSD5
Text Label 9850 3050 0    50   ~ 0
OSC5
Text Label 9900 4200 0    50   ~ 0
OSD6
Text Label 9900 4400 0    50   ~ 0
OSC6
Text Label 9850 5450 0    50   ~ 0
OSD7
Text Label 9850 5650 0    50   ~ 0
OSC7
Text Label 1850 2450 2    50   ~ 0
OSC4
Connection ~ 1450 2600
Text Label 1850 2550 2    50   ~ 0
OSD4
Wire Wire Line
	1450 2600 1850 2600
Text Label 1850 3150 2    50   ~ 0
OSC5
Text Label 1850 3250 2    50   ~ 0
OSD5
Text Label 1850 3850 2    50   ~ 0
OSC6
Text Label 1850 3950 2    50   ~ 0
OSD6
Text Label 1850 4550 2    50   ~ 0
OSC7
Text Label 1850 4650 2    50   ~ 0
OSD6
Text HLabel 3650 1850 1    50   Input ~ 0
5V
Text HLabel 3850 1850 1    50   Input ~ 0
GND
$Comp
L power:+5V #PWR?
U 1 1 67D77820
P 3650 1850
F 0 "#PWR?" H 3650 1700 50  0001 C CNN
F 1 "+5V" H 3665 2023 50  0000 C CNN
F 2 "" H 3650 1850 50  0001 C CNN
F 3 "" H 3650 1850 50  0001 C CNN
	1    3650 1850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67D7825A
P 3850 1850
F 0 "#PWR?" H 3850 1600 50  0001 C CNN
F 1 "GND" H 3855 1677 50  0000 C CNN
F 2 "" H 3850 1850 50  0001 C CNN
F 3 "" H 3850 1850 50  0001 C CNN
	1    3850 1850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
