EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 9
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
L power:GND #PWR?
U 1 1 6780547E
P 2250 3950
AR Path="/6780547E" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/6780547E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2250 3700 50  0001 C CNN
F 1 "GND" V 2255 3822 50  0000 R CNN
F 2 "" H 2250 3950 50  0001 C CNN
F 3 "" H 2250 3950 50  0001 C CNN
	1    2250 3950
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 4800 3100 4800
Wire Wire Line
	2350 2900 3100 2900
Connection ~ 2350 3750
Wire Wire Line
	2350 3750 2350 2900
Connection ~ 2350 3950
Wire Wire Line
	2350 3950 2350 4800
Wire Wire Line
	2250 3750 2350 3750
Wire Wire Line
	2250 3950 2350 3950
$Comp
L power:+3.3V #PWR?
U 1 1 6780548C
P 2250 3750
AR Path="/6780548C" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/6780548C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2250 3600 50  0001 C CNN
F 1 "+3.3V" V 2265 3878 50  0000 L CNN
F 2 "" H 2250 3750 50  0001 C CNN
F 3 "" H 2250 3750 50  0001 C CNN
	1    2250 3750
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 67805492
P 2350 3850
AR Path="/67805492" Ref="C?"  Part="1" 
AR Path="/677EFB73/67805492" Ref="C?"  Part="1" 
F 0 "C?" H 2442 3896 50  0000 L CNN
F 1 "10uF" H 2442 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2350 3850 50  0001 C CNN
F 3 "~" H 2350 3850 50  0001 C CNN
	1    2350 3850
	1    0    0    -1  
$EndComp
Text GLabel 2700 3100 0    50   Input ~ 0
PI_SCL
Text GLabel 2700 3200 0    50   Input ~ 0
PI_SDA
$Comp
L power:+3.3V #PWR?
U 1 1 678054A4
P 2500 3600
AR Path="/678054A4" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/678054A4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2500 3450 50  0001 C CNN
F 1 "+3.3V" V 2515 3728 50  0000 L CNN
F 2 "" H 2500 3600 50  0001 C CNN
F 3 "" H 2500 3600 50  0001 C CNN
	1    2500 3600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 678054AA
P 2600 3600
AR Path="/678054AA" Ref="R?"  Part="1" 
AR Path="/677EFB73/678054AA" Ref="R?"  Part="1" 
F 0 "R?" V 2404 3600 50  0000 C CNN
F 1 "10k" V 2495 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" H 2600 3600 50  0000 C CNN
F 3 "~" H 2600 3600 50  0001 C CNN
	1    2600 3600
	0    1    1    0   
$EndComp
$Comp
L Interface_Expansion:TCA9548APWR U?
U 1 1 678054B0
P 3100 3800
AR Path="/678054B0" Ref="U?"  Part="1" 
AR Path="/677EFB73/678054B0" Ref="U?"  Part="1" 
F 0 "U?" H 3100 4881 50  0000 C CNN
F 1 "TCA9548APWR" H 3100 4790 50  0000 C CNN
F 2 "Package_SO:TSSOP-24_4.4x7.8mm_P0.65mm" H 3100 2800 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tca9548a.pdf" H 3150 4050 50  0001 C CNN
	1    3100 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 678054B6
P 2700 4100
AR Path="/678054B6" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/678054B6" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2700 3850 50  0001 C CNN
F 1 "GND" V 2705 3972 50  0000 R CNN
F 2 "" H 2700 4100 50  0001 C CNN
F 3 "" H 2700 4100 50  0001 C CNN
	1    2700 4100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 678054BC
P 2700 4200
AR Path="/678054BC" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/678054BC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2700 3950 50  0001 C CNN
F 1 "GND" V 2705 4072 50  0000 R CNN
F 2 "" H 2700 4200 50  0001 C CNN
F 3 "" H 2700 4200 50  0001 C CNN
	1    2700 4200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 678054C2
P 2700 4300
AR Path="/678054C2" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/678054C2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2700 4050 50  0001 C CNN
F 1 "GND" V 2705 4172 50  0000 R CNN
F 2 "" H 2700 4300 50  0001 C CNN
F 3 "" H 2700 4300 50  0001 C CNN
	1    2700 4300
	0    1    1    0   
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
$Comp
L power:GND #PWR?
U 1 1 6785D10F
P 7700 1100
AR Path="/6785D10F" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/6785D10F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7700 850 50  0001 C CNN
F 1 "GND" V 7705 972 50  0000 R CNN
F 2 "" H 7700 1100 50  0001 C CNN
F 3 "" H 7700 1100 50  0001 C CNN
	1    7700 1100
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6785D115
P 7700 900
AR Path="/6785D115" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/6785D115" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7700 750 50  0001 C CNN
F 1 "+3.3V" V 7715 1028 50  0000 L CNN
F 2 "" H 7700 900 50  0001 C CNN
F 3 "" H 7700 900 50  0001 C CNN
	1    7700 900 
	0    1    1    0   
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
Connection ~ 7700 1100
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
Connection ~ 8400 1800
$Comp
L power:+3.3V #PWR?
U 1 1 6785D13A
P 7800 2150
AR Path="/6785D13A" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/6785D13A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7800 2000 50  0001 C CNN
F 1 "+3.3V" V 7815 2278 50  0000 L CNN
F 2 "" H 7800 2150 50  0001 C CNN
F 3 "" H 7800 2150 50  0001 C CNN
	1    7800 2150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6785D140
P 7800 2350
AR Path="/6785D140" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/6785D140" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7800 2100 50  0001 C CNN
F 1 "GND" V 7805 2222 50  0000 R CNN
F 2 "" H 7800 2350 50  0001 C CNN
F 3 "" H 7800 2350 50  0001 C CNN
	1    7800 2350
	0    -1   -1   0   
$EndComp
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
Connection ~ 7800 2350
Wire Wire Line
	8200 2450 8200 2700
Connection ~ 8200 2700
Wire Wire Line
	8200 2700 8200 2800
Wire Wire Line
	7800 2150 7800 2100
Wire Wire Line
	7800 2100 8400 2100
Connection ~ 7800 2150
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
Wire Wire Line
	8400 5600 8200 5600
Wire Wire Line
	8200 5500 8400 5500
$Comp
L power:+3.3V #PWR?
U 1 1 6785D179
P 7600 4800
AR Path="/6785D179" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/6785D179" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7600 4650 50  0001 C CNN
F 1 "+3.3V" V 7615 4928 50  0000 L CNN
F 2 "" H 7600 4800 50  0001 C CNN
F 3 "" H 7600 4800 50  0001 C CNN
	1    7600 4800
	0    1    1    0   
$EndComp
Connection ~ 7600 4800
$Comp
L power:+3.3V #PWR?
U 1 1 6785D180
P 7600 3500
AR Path="/6785D180" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/6785D180" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7600 3350 50  0001 C CNN
F 1 "+3.3V" V 7615 3628 50  0000 L CNN
F 2 "" H 7600 3500 50  0001 C CNN
F 3 "" H 7600 3500 50  0001 C CNN
	1    7600 3500
	0    1    1    0   
$EndComp
Connection ~ 7600 3500
$Comp
L power:GND #PWR?
U 1 1 6785D187
P 7600 3700
AR Path="/6785D187" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/6785D187" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7600 3450 50  0001 C CNN
F 1 "GND" V 7605 3572 50  0000 R CNN
F 2 "" H 7600 3700 50  0001 C CNN
F 3 "" H 7600 3700 50  0001 C CNN
	1    7600 3700
	0    -1   -1   0   
$EndComp
Connection ~ 7600 3700
$Comp
L power:GND #PWR?
U 1 1 6785D18E
P 7600 5000
AR Path="/6785D18E" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/6785D18E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7600 4750 50  0001 C CNN
F 1 "GND" V 7605 4872 50  0000 R CNN
F 2 "" H 7600 5000 50  0001 C CNN
F 3 "" H 7600 5000 50  0001 C CNN
	1    7600 5000
	0    -1   -1   0   
$EndComp
Connection ~ 7600 5000
Wire Wire Line
	7600 4700 7600 4800
Wire Wire Line
	8400 5300 8400 5200
Wire Wire Line
	8400 4700 7600 4700
Wire Wire Line
	8400 5800 8600 5800
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
Connection ~ 8400 2900
Connection ~ 8400 3000
Connection ~ 8400 4250
Connection ~ 8400 4350
Connection ~ 8400 5500
Connection ~ 8400 5600
Text GLabel 8650 1800 3    50   Input ~ 0
SC4
Text GLabel 8700 3000 3    50   Input ~ 0
SC5
Text GLabel 8700 2900 1    50   Input ~ 0
SD5
Text GLabel 8450 4350 3    50   Input ~ 0
SC6
Text GLabel 8450 4250 1    50   Input ~ 0
SD6
Text GLabel 8500 5600 3    50   Input ~ 0
SC7
Text GLabel 8500 5500 1    50   Input ~ 0
SD7
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
Connection ~ 8400 1700
Text GLabel 8650 1700 1    50   Input ~ 0
SD4
Wire Wire Line
	8400 2000 8850 2000
Wire Wire Line
	8950 1700 8950 1650
Wire Wire Line
	8400 1700 8950 1700
Wire Wire Line
	8950 1800 8950 1850
Wire Wire Line
	8400 1800 8950 1800
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
	8400 3000 8950 3000
Wire Wire Line
	8950 2900 8950 2850
Wire Wire Line
	8400 2900 8950 2900
Wire Wire Line
	8950 4350 8950 4400
Wire Wire Line
	8400 4350 8950 4350
Wire Wire Line
	8950 4250 8950 4200
Wire Wire Line
	8400 4250 8950 4250
Wire Wire Line
	8950 5500 8950 5450
Wire Wire Line
	8400 5500 8950 5500
Wire Wire Line
	8950 5600 8950 5650
Wire Wire Line
	8400 5600 8950 5600
Wire Wire Line
	9450 1250 9250 1250
$Comp
L power:GND #PWR?
U 1 1 6785D1E9
P 9350 2250
AR Path="/6785D1E9" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/6785D1E9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9350 2000 50  0001 C CNN
F 1 "GND" H 9355 2077 50  0000 C CNN
F 2 "" H 9350 2250 50  0001 C CNN
F 3 "" H 9350 2250 50  0001 C CNN
	1    9350 2250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6785D1EF
P 9350 3450
AR Path="/6785D1EF" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/6785D1EF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9350 3200 50  0001 C CNN
F 1 "GND" H 9355 3277 50  0000 C CNN
F 2 "" H 9350 3450 50  0001 C CNN
F 3 "" H 9350 3450 50  0001 C CNN
	1    9350 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6785D1F5
P 9350 4800
AR Path="/6785D1F5" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/6785D1F5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9350 4550 50  0001 C CNN
F 1 "GND" H 9355 4627 50  0000 C CNN
F 2 "" H 9350 4800 50  0001 C CNN
F 3 "" H 9350 4800 50  0001 C CNN
	1    9350 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6785D1FB
P 9350 6050
AR Path="/6785D1FB" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/6785D1FB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9350 5800 50  0001 C CNN
F 1 "GND" H 9355 5877 50  0000 C CNN
F 2 "" H 9350 6050 50  0001 C CNN
F 3 "" H 9350 6050 50  0001 C CNN
	1    9350 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6785D201
P 9800 3900
AR Path="/6785D201" Ref="C?"  Part="1" 
AR Path="/677EFB73/6785D201" Ref="C?"  Part="1" 
F 0 "C?" H 9892 3946 50  0000 L CNN
F 1 "10uF" H 9892 3855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0504_1310Metric" H 9800 3900 50  0001 C CNN
F 3 "~" H 9800 3900 50  0001 C CNN
	1    9800 3900
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6785D207
P 9800 4000
AR Path="/6785D207" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/6785D207" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9800 3850 50  0001 C CNN
F 1 "+3.3V" H 9815 4173 50  0000 C CNN
F 2 "" H 9800 4000 50  0001 C CNN
F 3 "" H 9800 4000 50  0001 C CNN
	1    9800 4000
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6785D20D
P 9800 5150
AR Path="/6785D20D" Ref="C?"  Part="1" 
AR Path="/677EFB73/6785D20D" Ref="C?"  Part="1" 
F 0 "C?" H 9892 5196 50  0000 L CNN
F 1 "10uF" H 9892 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0504_1310Metric" H 9800 5150 50  0001 C CNN
F 3 "~" H 9800 5150 50  0001 C CNN
	1    9800 5150
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6785D213
P 9800 5250
AR Path="/6785D213" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/6785D213" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9800 5100 50  0001 C CNN
F 1 "+3.3V" H 9815 5423 50  0000 C CNN
F 2 "" H 9800 5250 50  0001 C CNN
F 3 "" H 9800 5250 50  0001 C CNN
	1    9800 5250
	-1   0    0    1   
$EndComp
Wire Wire Line
	9800 5050 9450 5050
Connection ~ 9450 5050
Wire Wire Line
	9450 5050 9250 5050
Wire Wire Line
	9800 3800 9450 3800
Connection ~ 9450 3800
Wire Wire Line
	9450 3800 9250 3800
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
$Comp
L power:+3.3V #PWR?
U 1 1 6785D23E
P 8950 2250
AR Path="/6785D23E" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/6785D23E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8950 2100 50  0001 C CNN
F 1 "+3.3V" H 8965 2423 50  0000 C CNN
F 2 "" H 8950 2250 50  0001 C CNN
F 3 "" H 8950 2250 50  0001 C CNN
	1    8950 2250
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6785D244
P 8950 3450
AR Path="/6785D244" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/6785D244" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8950 3300 50  0001 C CNN
F 1 "+3.3V" H 8965 3623 50  0000 C CNN
F 2 "" H 8950 3450 50  0001 C CNN
F 3 "" H 8950 3450 50  0001 C CNN
	1    8950 3450
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6785D24A
P 8950 4800
AR Path="/6785D24A" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/6785D24A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8950 4650 50  0001 C CNN
F 1 "+3.3V" H 8965 4973 50  0000 C CNN
F 2 "" H 8950 4800 50  0001 C CNN
F 3 "" H 8950 4800 50  0001 C CNN
	1    8950 4800
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6785D250
P 8950 6050
AR Path="/6785D250" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/6785D250" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8950 5900 50  0001 C CNN
F 1 "+3.3V" H 8965 6223 50  0000 C CNN
F 2 "" H 8950 6050 50  0001 C CNN
F 3 "" H 8950 6050 50  0001 C CNN
	1    8950 6050
	-1   0    0    1   
$EndComp
Text GLabel 9750 3050 2    50   Input ~ 0
OSC5
Text GLabel 9750 4200 2    50   Input ~ 0
OSD6
Text GLabel 9750 4400 2    50   Input ~ 0
OSC6
Text GLabel 9750 5450 2    50   Input ~ 0
OSD7
Text GLabel 9750 5650 2    50   Input ~ 0
OSC7
Connection ~ 9450 2450
Connection ~ 9450 1250
Text GLabel 9750 2850 2    50   Input ~ 0
OSD5
Text GLabel 9750 1850 2    50   Input ~ 0
OSC4
Text GLabel 9750 1650 2    50   Input ~ 0
OSD4
Wire Wire Line
	9850 2450 9450 2450
$Comp
L power:+3.3V #PWR?
U 1 1 6785D261
P 9850 2650
AR Path="/6785D261" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/6785D261" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9850 2500 50  0001 C CNN
F 1 "+3.3V" H 9865 2823 50  0000 C CNN
F 2 "" H 9850 2650 50  0001 C CNN
F 3 "" H 9850 2650 50  0001 C CNN
	1    9850 2650
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6785D267
P 9850 2550
AR Path="/6785D267" Ref="C?"  Part="1" 
AR Path="/677EFB73/6785D267" Ref="C?"  Part="1" 
F 0 "C?" H 9942 2596 50  0000 L CNN
F 1 "10uF" H 9942 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0504_1310Metric" H 9850 2550 50  0001 C CNN
F 3 "~" H 9850 2550 50  0001 C CNN
	1    9850 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 1250 9450 1250
$Comp
L power:+3.3V #PWR?
U 1 1 6785D26E
P 9850 1450
AR Path="/6785D26E" Ref="#PWR?"  Part="1" 
AR Path="/677EFB73/6785D26E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9850 1300 50  0001 C CNN
F 1 "+3.3V" H 9865 1623 50  0000 C CNN
F 2 "" H 9850 1450 50  0001 C CNN
F 3 "" H 9850 1450 50  0001 C CNN
	1    9850 1450
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6785D274
P 9850 1350
AR Path="/6785D274" Ref="C?"  Part="1" 
AR Path="/677EFB73/6785D274" Ref="C?"  Part="1" 
F 0 "C?" H 9942 1396 50  0000 L CNN
F 1 "10uF" H 9942 1305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0504_1310Metric" H 9850 1350 50  0001 C CNN
F 3 "~" H 9850 1350 50  0001 C CNN
	1    9850 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3900 3700 3900
Wire Wire Line
	3500 4000 3700 4000
Wire Wire Line
	3500 4100 3700 4100
Wire Wire Line
	3500 4200 3700 4200
Wire Wire Line
	3500 4300 3700 4300
Wire Wire Line
	3500 4400 3700 4400
Wire Wire Line
	3500 4500 3700 4500
Wire Wire Line
	3500 4600 3700 4600
Text Label 3700 3900 0    50   ~ 0
SC4
Text Label 3700 4000 0    50   ~ 0
SD4
Text Label 3700 4100 0    50   ~ 0
SC5
Text Label 3700 4200 0    50   ~ 0
SD5
Text Label 3700 4300 0    50   ~ 0
SC6
Text Label 3700 4400 0    50   ~ 0
SD6
Text Label 3700 4500 0    50   ~ 0
SC7
Text Label 3700 4600 0    50   ~ 0
SD7
Text HLabel 3500 3100 2    50   Input ~ 0
SC0
Text HLabel 3500 3200 2    50   Input ~ 0
SD0
Text HLabel 3500 3300 2    50   Input ~ 0
SC1
Text HLabel 3500 3400 2    50   Input ~ 0
SD1
Text HLabel 3500 3500 2    50   Input ~ 0
SC2
Text HLabel 3500 3600 2    50   Input ~ 0
SD2
Text HLabel 3500 3700 2    50   Input ~ 0
SC3
Text HLabel 3500 3800 2    50   Input ~ 0
SD3
$EndSCHEMATC
