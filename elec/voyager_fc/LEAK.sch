EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 5300 3650 2    50   Input ~ 0
PI_GPIO5
Text GLabel 5000 3650 0    50   Input ~ 0
LEAK_IN
$Comp
L power:GND #PWR?
U 1 1 67940941
P 5300 4150
AR Path="/67940941" Ref="#PWR?"  Part="1" 
AR Path="/6793F336/67940941" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5300 3900 50  0001 C CNN
F 1 "GND" H 5305 3977 50  0000 C CNN
F 2 "" H 5300 4150 50  0001 C CNN
F 3 "" H 5300 4150 50  0001 C CNN
	1    5300 4150
	1    0    0    -1  
$EndComp
Connection ~ 5150 3100
Wire Wire Line
	5300 3100 5300 3250
Wire Wire Line
	5150 3100 5300 3100
Wire Wire Line
	5000 3100 5000 3250
Wire Wire Line
	5150 3100 5000 3100
$Comp
L power:+3.3V #PWR?
U 1 1 6794094C
P 5150 3100
AR Path="/6794094C" Ref="#PWR?"  Part="1" 
AR Path="/6793F336/6794094C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5150 2950 50  0001 C CNN
F 1 "+3.3V" H 5165 3273 50  0000 C CNN
F 2 "" H 5150 3100 50  0001 C CNN
F 3 "" H 5150 3100 50  0001 C CNN
	1    5150 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 67940952
P 5300 4000
AR Path="/67940952" Ref="D?"  Part="1" 
AR Path="/6793F336/67940952" Ref="D?"  Part="1" 
F 0 "D?" V 5339 3882 50  0000 R CNN
F 1 "WHITE" V 5248 3882 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric" H 5300 4000 50  0001 C CNN
F 3 "~" H 5300 4000 50  0001 C CNN
	1    5300 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 67940958
P 5300 3750
AR Path="/67940958" Ref="R?"  Part="1" 
AR Path="/6793F336/67940958" Ref="R?"  Part="1" 
F 0 "R?" H 5359 3796 50  0000 L CNN
F 1 "220" H 5359 3705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5300 3750 50  0001 C CNN
F 3 "~" H 5300 3750 50  0001 C CNN
	1    5300 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6794095E
P 5000 3350
AR Path="/6794095E" Ref="R?"  Part="1" 
AR Path="/6793F336/6794095E" Ref="R?"  Part="1" 
F 0 "R?" H 5059 3396 50  0000 L CNN
F 1 "20K" H 5059 3305 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5000 3350 50  0001 C CNN
F 3 "~" H 5000 3350 50  0001 C CNN
	1    5000 3350
	1    0    0    -1  
$EndComp
Connection ~ 5000 3450
$Comp
L Device:R_Small R?
U 1 1 67940965
P 5000 3550
AR Path="/67940965" Ref="R?"  Part="1" 
AR Path="/6793F336/67940965" Ref="R?"  Part="1" 
F 0 "R?" H 5059 3596 50  0000 L CNN
F 1 "1K" H 5059 3505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5000 3550 50  0001 C CNN
F 3 "~" H 5000 3550 50  0001 C CNN
	1    5000 3550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:MMBT3906 Q?
U 1 1 6794096B
P 5200 3450
AR Path="/6794096B" Ref="Q?"  Part="1" 
AR Path="/6793F336/6794096B" Ref="Q?"  Part="1" 
F 0 "Q?" H 5391 3496 50  0000 L CNN
F 1 "MMBT3906" H 5391 3405 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5400 3375 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/2N3906-D.PDF" H 5200 3450 50  0001 L CNN
	1    5200 3450
	1    0    0    -1  
$EndComp
$Comp
L BM02B-GHS-TBT_LF__SN__N_:BM02B-GHS-TBT_LF__SN__N_ J?
U 1 1 67D90B0B
P 8150 3500
F 0 "J?" H 8403 3496 50  0000 L CNN
F 1 "BM02B-GHS-TBT_LF__SN__N_" H 8403 3405 50  0000 L CNN
F 2 "JST_BM02B-GHS-TBT_LF__SN__N_" H 8150 3500 50  0001 L BNN
F 3 "" H 8150 3500 50  0001 L BNN
F 4 "JST Sales" H 8150 3500 50  0001 L BNN "MF"
F 5 "4.05 mm" H 8150 3500 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 6 "None" H 8150 3500 50  0001 L BNN "Package"
F 7 "None" H 8150 3500 50  0001 L BNN "Price"
F 8 "https://www.snapeda.com/parts/BM02B-GHS-TBT(LF)(SN)(N)/JST+Sales+America+Inc./view-part/?ref=eda" H 8150 3500 50  0001 L BNN "Check_prices"
F 9 "Manufacturer Recommendations" H 8150 3500 50  0001 L BNN "STANDARD"
F 10 "https://www.snapeda.com/parts/BM02B-GHS-TBT(LF)(SN)(N)/JST+Sales+America+Inc./view-part/?ref=snap" H 8150 3500 50  0001 L BNN "SnapEDA_Link"
F 11 "BM02B-GHS-TBT(LF)(SN)(N)" H 8150 3500 50  0001 L BNN "MP"
F 12 "\\n                        \\n                            Connector Header Surface Mount 2 position 0.049 (1.25mm)\\n                        \\n" H 8150 3500 50  0001 L BNN "Description"
F 13 "In Stock" H 8150 3500 50  0001 L BNN "Availability"
F 14 "JST" H 8150 3500 50  0001 L BNN "MANUFACTURER"
	1    8150 3500
	1    0    0    -1  
$EndComp
$Comp
L BM02B-GHS-TBT_LF__SN__N_:BM02B-GHS-TBT_LF__SN__N_ J?
U 1 1 67D90B1C
P 8150 3000
F 0 "J?" H 8403 2996 50  0000 L CNN
F 1 "BM02B-GHS-TBT_LF__SN__N_" H 8403 2905 50  0000 L CNN
F 2 "JST_BM02B-GHS-TBT_LF__SN__N_" H 8150 3000 50  0001 L BNN
F 3 "" H 8150 3000 50  0001 L BNN
F 4 "JST Sales" H 8150 3000 50  0001 L BNN "MF"
F 5 "4.05 mm" H 8150 3000 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 6 "None" H 8150 3000 50  0001 L BNN "Package"
F 7 "None" H 8150 3000 50  0001 L BNN "Price"
F 8 "https://www.snapeda.com/parts/BM02B-GHS-TBT(LF)(SN)(N)/JST+Sales+America+Inc./view-part/?ref=eda" H 8150 3000 50  0001 L BNN "Check_prices"
F 9 "Manufacturer Recommendations" H 8150 3000 50  0001 L BNN "STANDARD"
F 10 "https://www.snapeda.com/parts/BM02B-GHS-TBT(LF)(SN)(N)/JST+Sales+America+Inc./view-part/?ref=snap" H 8150 3000 50  0001 L BNN "SnapEDA_Link"
F 11 "BM02B-GHS-TBT(LF)(SN)(N)" H 8150 3000 50  0001 L BNN "MP"
F 12 "\\n                        \\n                            Connector Header Surface Mount 2 position 0.049 (1.25mm)\\n                        \\n" H 8150 3000 50  0001 L BNN "Description"
F 13 "In Stock" H 8150 3000 50  0001 L BNN "Availability"
F 14 "JST" H 8150 3000 50  0001 L BNN "MANUFACTURER"
	1    8150 3000
	1    0    0    -1  
$EndComp
$Comp
L BM02B-GHS-TBT_LF__SN__N_:BM02B-GHS-TBT_LF__SN__N_ J?
U 1 1 67D90B2D
P 8150 2500
F 0 "J?" H 8403 2496 50  0000 L CNN
F 1 "BM02B-GHS-TBT_LF__SN__N_" H 8403 2405 50  0000 L CNN
F 2 "JST_BM02B-GHS-TBT_LF__SN__N_" H 8150 2500 50  0001 L BNN
F 3 "" H 8150 2500 50  0001 L BNN
F 4 "JST Sales" H 8150 2500 50  0001 L BNN "MF"
F 5 "4.05 mm" H 8150 2500 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 6 "None" H 8150 2500 50  0001 L BNN "Package"
F 7 "None" H 8150 2500 50  0001 L BNN "Price"
F 8 "https://www.snapeda.com/parts/BM02B-GHS-TBT(LF)(SN)(N)/JST+Sales+America+Inc./view-part/?ref=eda" H 8150 2500 50  0001 L BNN "Check_prices"
F 9 "Manufacturer Recommendations" H 8150 2500 50  0001 L BNN "STANDARD"
F 10 "https://www.snapeda.com/parts/BM02B-GHS-TBT(LF)(SN)(N)/JST+Sales+America+Inc./view-part/?ref=snap" H 8150 2500 50  0001 L BNN "SnapEDA_Link"
F 11 "BM02B-GHS-TBT(LF)(SN)(N)" H 8150 2500 50  0001 L BNN "MP"
F 12 "\\n                        \\n                            Connector Header Surface Mount 2 position 0.049 (1.25mm)\\n                        \\n" H 8150 2500 50  0001 L BNN "Description"
F 13 "In Stock" H 8150 2500 50  0001 L BNN "Availability"
F 14 "JST" H 8150 2500 50  0001 L BNN "MANUFACTURER"
	1    8150 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 3000 7400 3500
Connection ~ 7400 3000
Wire Wire Line
	7400 3500 7400 3700
Connection ~ 7400 3500
Wire Wire Line
	7400 2500 7400 3000
Wire Wire Line
	7750 3500 7400 3500
Wire Wire Line
	7750 3000 7400 3000
Wire Wire Line
	7750 2500 7400 2500
$Comp
L power:GND #PWR?
U 1 1 67D90B3B
P 7750 2900
F 0 "#PWR?" H 7750 2650 50  0001 C CNN
F 1 "GND" V 7755 2772 50  0000 R CNN
F 2 "" H 7750 2900 50  0001 C CNN
F 3 "" H 7750 2900 50  0001 C CNN
	1    7750 2900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67D90B41
P 7750 2700
F 0 "#PWR?" H 7750 2450 50  0001 C CNN
F 1 "GND" V 7755 2572 50  0000 R CNN
F 2 "" H 7750 2700 50  0001 C CNN
F 3 "" H 7750 2700 50  0001 C CNN
	1    7750 2700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67D90B47
P 7750 3700
F 0 "#PWR?" H 7750 3450 50  0001 C CNN
F 1 "GND" V 7755 3572 50  0000 R CNN
F 2 "" H 7750 3700 50  0001 C CNN
F 3 "" H 7750 3700 50  0001 C CNN
	1    7750 3700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67D90B4D
P 7750 3400
F 0 "#PWR?" H 7750 3150 50  0001 C CNN
F 1 "GND" V 7755 3272 50  0000 R CNN
F 2 "" H 7750 3400 50  0001 C CNN
F 3 "" H 7750 3400 50  0001 C CNN
	1    7750 3400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67D90B53
P 7750 3200
F 0 "#PWR?" H 7750 2950 50  0001 C CNN
F 1 "GND" V 7755 3072 50  0000 R CNN
F 2 "" H 7750 3200 50  0001 C CNN
F 3 "" H 7750 3200 50  0001 C CNN
	1    7750 3200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67D90B59
P 7750 2400
F 0 "#PWR?" H 7750 2150 50  0001 C CNN
F 1 "GND" V 7755 2272 50  0000 R CNN
F 2 "" H 7750 2400 50  0001 C CNN
F 3 "" H 7750 2400 50  0001 C CNN
	1    7750 2400
	0    1    1    0   
$EndComp
Text GLabel 7400 3700 3    50   Input ~ 0
LEAK_IN
$Comp
L power:GND #PWR?
U 1 1 67D90B60
P 6450 2750
F 0 "#PWR?" H 6450 2500 50  0001 C CNN
F 1 "GND" V 6455 2622 50  0000 R CNN
F 2 "" H 6450 2750 50  0001 C CNN
F 3 "" H 6450 2750 50  0001 C CNN
	1    6450 2750
	0    -1   -1   0   
$EndComp
Text GLabel 6450 2550 2    50   Input ~ 0
LEAK_IN
$Comp
L power:+3V3 #PWR?
U 1 1 67D90B67
P 6450 2650
F 0 "#PWR?" H 6450 2500 50  0001 C CNN
F 1 "+3V3" V 6465 2778 50  0000 L CNN
F 2 "" H 6450 2650 50  0001 C CNN
F 3 "" H 6450 2650 50  0001 C CNN
	1    6450 2650
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 67D90B6D
P 6250 2650
F 0 "J?" H 6168 2325 50  0000 C CNN
F 1 "AUX Leak" H 6168 2416 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6250 2650 50  0001 C CNN
F 3 "~" H 6250 2650 50  0001 C CNN
	1    6250 2650
	-1   0    0    1   
$EndComp
$EndSCHEMATC
