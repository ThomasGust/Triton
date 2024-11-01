EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 9
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
L Device:C_Small C?
U 1 1 6793528D
P 5700 3400
AR Path="/6793528D" Ref="C?"  Part="1" 
AR Path="/67932B94/6793528D" Ref="C?"  Part="1" 
F 0 "C?" V 5471 3400 50  0000 C CNN
F 1 "10uF" V 5562 3400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5700 3400 50  0001 C CNN
F 3 "~" H 5700 3400 50  0001 C CNN
	1    5700 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 3400 5500 3400
Wire Wire Line
	5500 3550 5500 3400
Connection ~ 5500 3400
Wire Wire Line
	5500 3400 5600 3400
Text GLabel 5900 4050 2    50   Input ~ 0
SC3
Text GLabel 5900 4150 2    50   Input ~ 0
SD3
Text GLabel 5100 3950 0    50   Input ~ 0
AIN0
Text GLabel 5100 4050 0    50   Input ~ 0
AIN1
Text GLabel 5100 4150 0    50   Input ~ 0
AIN2
Text GLabel 5100 4250 0    50   Input ~ 0
AIN3
$Comp
L power:GND #PWR?
U 1 1 6793529D
P 5500 4450
AR Path="/6793529D" Ref="#PWR?"  Part="1" 
AR Path="/67932B94/6793529D" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5500 4200 50  0001 C CNN
F 1 "GND" H 5505 4277 50  0000 C CNN
F 2 "" H 5500 4450 50  0001 C CNN
F 3 "" H 5500 4450 50  0001 C CNN
	1    5500 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 679352A3
P 5900 4250
AR Path="/679352A3" Ref="#PWR?"  Part="1" 
AR Path="/67932B94/679352A3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5900 4000 50  0001 C CNN
F 1 "GND" V 5905 4122 50  0000 R CNN
F 2 "" H 5900 4250 50  0001 C CNN
F 3 "" H 5900 4250 50  0001 C CNN
	1    5900 4250
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 679352A9
P 5900 3850
AR Path="/679352A9" Ref="#PWR?"  Part="1" 
AR Path="/67932B94/679352A9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5900 3600 50  0001 C CNN
F 1 "GND" V 5905 3722 50  0000 R CNN
F 2 "" H 5900 3850 50  0001 C CNN
F 3 "" H 5900 3850 50  0001 C CNN
	1    5900 3850
	0    -1   -1   0   
$EndComp
$Comp
L Analog_ADC:ADS1015IDGS U?
U 1 1 679352AF
P 5500 4050
AR Path="/679352AF" Ref="U?"  Part="1" 
AR Path="/67932B94/679352AF" Ref="U?"  Part="1" 
F 0 "U?" H 5500 4731 50  0000 C CNN
F 1 "ADS1015IDGS" H 5500 4640 50  0000 C CNN
F 2 "Package_SO:TSSOP-10_3x3mm_P0.5mm" H 5500 3550 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ads1015.pdf" H 5450 3150 50  0001 C CNN
	1    5500 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 679352B5
P 5250 3400
AR Path="/679352B5" Ref="#PWR?"  Part="1" 
AR Path="/67932B94/679352B5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5250 3250 50  0001 C CNN
F 1 "+5V" V 5265 3528 50  0000 L CNN
F 2 "" H 5250 3400 50  0001 C CNN
F 3 "" H 5250 3400 50  0001 C CNN
	1    5250 3400
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 679352BB
P 5800 3400
AR Path="/679352BB" Ref="#PWR?"  Part="1" 
AR Path="/67932B94/679352BB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5800 3150 50  0001 C CNN
F 1 "GND" V 5805 3272 50  0000 R CNN
F 2 "" H 5800 3400 50  0001 C CNN
F 3 "" H 5800 3400 50  0001 C CNN
	1    5800 3400
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 67D9D5FD
P 7900 3150
F 0 "#PWR?" H 7900 3000 50  0001 C CNN
F 1 "+3.3V" V 7915 3278 50  0000 L CNN
F 2 "" H 7900 3150 50  0001 C CNN
F 3 "" H 7900 3150 50  0001 C CNN
	1    7900 3150
	0    -1   -1   0   
$EndComp
Wire Notes Line
	7800 3200 7300 3200
Text GLabel 7900 3250 0    50   Input ~ 0
AIN0
$Comp
L power:+3.3V #PWR?
U 1 1 67D9D605
P 7900 3750
F 0 "#PWR?" H 7900 3600 50  0001 C CNN
F 1 "+3.3V" V 7915 3878 50  0000 L CNN
F 2 "" H 7900 3750 50  0001 C CNN
F 3 "" H 7900 3750 50  0001 C CNN
	1    7900 3750
	0    -1   -1   0   
$EndComp
Wire Notes Line
	7800 3800 7300 3800
Text GLabel 7900 3850 0    50   Input ~ 0
AIN1
$Comp
L power:+3.3V #PWR?
U 1 1 67D9D60D
P 7900 4350
F 0 "#PWR?" H 7900 4200 50  0001 C CNN
F 1 "+3.3V" V 7915 4478 50  0000 L CNN
F 2 "" H 7900 4350 50  0001 C CNN
F 3 "" H 7900 4350 50  0001 C CNN
	1    7900 4350
	0    -1   -1   0   
$EndComp
Wire Notes Line
	7800 4400 7300 4400
Text GLabel 7900 4450 0    50   Input ~ 0
AIN2
$Comp
L power:+3.3V #PWR?
U 1 1 67D9D615
P 7900 4950
F 0 "#PWR?" H 7900 4800 50  0001 C CNN
F 1 "+3.3V" V 7915 5078 50  0000 L CNN
F 2 "" H 7900 4950 50  0001 C CNN
F 3 "" H 7900 4950 50  0001 C CNN
	1    7900 4950
	0    -1   -1   0   
$EndComp
Wire Notes Line
	7800 5000 7300 5000
Text GLabel 7900 5050 0    50   Input ~ 0
AIN3
$Comp
L power:GND #PWR?
U 1 1 67D9D61D
P 7900 3350
F 0 "#PWR?" H 7900 3100 50  0001 C CNN
F 1 "GND" V 7905 3222 50  0000 R CNN
F 2 "" H 7900 3350 50  0001 C CNN
F 3 "" H 7900 3350 50  0001 C CNN
	1    7900 3350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67D9D623
P 7900 3950
F 0 "#PWR?" H 7900 3700 50  0001 C CNN
F 1 "GND" V 7905 3822 50  0000 R CNN
F 2 "" H 7900 3950 50  0001 C CNN
F 3 "" H 7900 3950 50  0001 C CNN
	1    7900 3950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67D9D629
P 7900 4550
F 0 "#PWR?" H 7900 4300 50  0001 C CNN
F 1 "GND" V 7905 4422 50  0000 R CNN
F 2 "" H 7900 4550 50  0001 C CNN
F 3 "" H 7900 4550 50  0001 C CNN
	1    7900 4550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67D9D62F
P 7900 5150
F 0 "#PWR?" H 7900 4900 50  0001 C CNN
F 1 "GND" V 7905 5022 50  0000 R CNN
F 2 "" H 7900 5150 50  0001 C CNN
F 3 "" H 7900 5150 50  0001 C CNN
	1    7900 5150
	0    1    1    0   
$EndComp
$Comp
L BM03B-GHS-TBT_LF__SN__N_:BM03B-GHS-TBT_LF__SN__N_ J?
U 1 1 67D9D63E
P 8200 3150
F 0 "J?" H 7970 3104 50  0000 R CNN
F 1 "BM03B-GHS-TBT_LF__SN__N_" H 7970 3195 50  0000 R CNN
F 2 "CONN_BM03B-GHS-TBT_LF__SN__N_" H 8200 3150 50  0001 L BNN
F 3 "" H 8200 3150 50  0001 L BNN
F 4 "JST Sales" H 8200 3150 50  0001 L BNN "MF"
F 5 "\\n                        \\n                            Connector Header Surface Mount 3 position 0.049 (1.25mm)\\n                        \\n" H 8200 3150 50  0001 L BNN "Description"
F 6 "None" H 8200 3150 50  0001 L BNN "Package"
F 7 "None" H 8200 3150 50  0001 L BNN "Price"
F 8 "https://www.snapeda.com/parts/BM03B-GHS-TBT(LF)(SN)(N)/JST+Sales+America+Inc./view-part/?ref=eda" H 8200 3150 50  0001 L BNN "Check_prices"
F 9 "https://www.snapeda.com/parts/BM03B-GHS-TBT(LF)(SN)(N)/JST+Sales+America+Inc./view-part/?ref=snap" H 8200 3150 50  0001 L BNN "SnapEDA_Link"
F 10 "BM03B-GHS-TBT(LF)(SN)(N)" H 8200 3150 50  0001 L BNN "MP"
F 11 "In Stock" H 8200 3150 50  0001 L BNN "Availability"
F 12 "JST Sales America Inc." H 8200 3150 50  0001 L BNN "MANUFACTURER"
	1    8200 3150
	-1   0    0    1   
$EndComp
$Comp
L BM03B-GHS-TBT_LF__SN__N_:BM03B-GHS-TBT_LF__SN__N_ J?
U 1 1 67D9D64D
P 8200 3750
F 0 "J?" H 7970 3704 50  0000 R CNN
F 1 "BM03B-GHS-TBT_LF__SN__N_" H 7970 3795 50  0000 R CNN
F 2 "CONN_BM03B-GHS-TBT_LF__SN__N_" H 8200 3750 50  0001 L BNN
F 3 "" H 8200 3750 50  0001 L BNN
F 4 "JST Sales" H 8200 3750 50  0001 L BNN "MF"
F 5 "\\n                        \\n                            Connector Header Surface Mount 3 position 0.049 (1.25mm)\\n                        \\n" H 8200 3750 50  0001 L BNN "Description"
F 6 "None" H 8200 3750 50  0001 L BNN "Package"
F 7 "None" H 8200 3750 50  0001 L BNN "Price"
F 8 "https://www.snapeda.com/parts/BM03B-GHS-TBT(LF)(SN)(N)/JST+Sales+America+Inc./view-part/?ref=eda" H 8200 3750 50  0001 L BNN "Check_prices"
F 9 "https://www.snapeda.com/parts/BM03B-GHS-TBT(LF)(SN)(N)/JST+Sales+America+Inc./view-part/?ref=snap" H 8200 3750 50  0001 L BNN "SnapEDA_Link"
F 10 "BM03B-GHS-TBT(LF)(SN)(N)" H 8200 3750 50  0001 L BNN "MP"
F 11 "In Stock" H 8200 3750 50  0001 L BNN "Availability"
F 12 "JST Sales America Inc." H 8200 3750 50  0001 L BNN "MANUFACTURER"
	1    8200 3750
	-1   0    0    1   
$EndComp
$Comp
L BM03B-GHS-TBT_LF__SN__N_:BM03B-GHS-TBT_LF__SN__N_ J?
U 1 1 67D9D65C
P 8200 4350
F 0 "J?" H 7970 4304 50  0000 R CNN
F 1 "BM03B-GHS-TBT_LF__SN__N_" H 7970 4395 50  0000 R CNN
F 2 "CONN_BM03B-GHS-TBT_LF__SN__N_" H 8200 4350 50  0001 L BNN
F 3 "" H 8200 4350 50  0001 L BNN
F 4 "JST Sales" H 8200 4350 50  0001 L BNN "MF"
F 5 "\\n                        \\n                            Connector Header Surface Mount 3 position 0.049 (1.25mm)\\n                        \\n" H 8200 4350 50  0001 L BNN "Description"
F 6 "None" H 8200 4350 50  0001 L BNN "Package"
F 7 "None" H 8200 4350 50  0001 L BNN "Price"
F 8 "https://www.snapeda.com/parts/BM03B-GHS-TBT(LF)(SN)(N)/JST+Sales+America+Inc./view-part/?ref=eda" H 8200 4350 50  0001 L BNN "Check_prices"
F 9 "https://www.snapeda.com/parts/BM03B-GHS-TBT(LF)(SN)(N)/JST+Sales+America+Inc./view-part/?ref=snap" H 8200 4350 50  0001 L BNN "SnapEDA_Link"
F 10 "BM03B-GHS-TBT(LF)(SN)(N)" H 8200 4350 50  0001 L BNN "MP"
F 11 "In Stock" H 8200 4350 50  0001 L BNN "Availability"
F 12 "JST Sales America Inc." H 8200 4350 50  0001 L BNN "MANUFACTURER"
	1    8200 4350
	-1   0    0    1   
$EndComp
$Comp
L BM03B-GHS-TBT_LF__SN__N_:BM03B-GHS-TBT_LF__SN__N_ J?
U 1 1 67D9D66B
P 8200 4950
F 0 "J?" H 7970 4904 50  0000 R CNN
F 1 "BM03B-GHS-TBT_LF__SN__N_" H 7970 4995 50  0000 R CNN
F 2 "CONN_BM03B-GHS-TBT_LF__SN__N_" H 8200 4950 50  0001 L BNN
F 3 "" H 8200 4950 50  0001 L BNN
F 4 "JST Sales" H 8200 4950 50  0001 L BNN "MF"
F 5 "\\n                        \\n                            Connector Header Surface Mount 3 position 0.049 (1.25mm)\\n                        \\n" H 8200 4950 50  0001 L BNN "Description"
F 6 "None" H 8200 4950 50  0001 L BNN "Package"
F 7 "None" H 8200 4950 50  0001 L BNN "Price"
F 8 "https://www.snapeda.com/parts/BM03B-GHS-TBT(LF)(SN)(N)/JST+Sales+America+Inc./view-part/?ref=eda" H 8200 4950 50  0001 L BNN "Check_prices"
F 9 "https://www.snapeda.com/parts/BM03B-GHS-TBT(LF)(SN)(N)/JST+Sales+America+Inc./view-part/?ref=snap" H 8200 4950 50  0001 L BNN "SnapEDA_Link"
F 10 "BM03B-GHS-TBT(LF)(SN)(N)" H 8200 4950 50  0001 L BNN "MP"
F 11 "In Stock" H 8200 4950 50  0001 L BNN "Availability"
F 12 "JST Sales America Inc." H 8200 4950 50  0001 L BNN "MANUFACTURER"
	1    8200 4950
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67D9D671
P 7900 2950
F 0 "#PWR?" H 7900 2700 50  0001 C CNN
F 1 "GND" V 7905 2822 50  0000 R CNN
F 2 "" H 7900 2950 50  0001 C CNN
F 3 "" H 7900 2950 50  0001 C CNN
	1    7900 2950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67D9D677
P 7900 3550
F 0 "#PWR?" H 7900 3300 50  0001 C CNN
F 1 "GND" V 7905 3422 50  0000 R CNN
F 2 "" H 7900 3550 50  0001 C CNN
F 3 "" H 7900 3550 50  0001 C CNN
	1    7900 3550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67D9D67D
P 7900 4150
F 0 "#PWR?" H 7900 3900 50  0001 C CNN
F 1 "GND" V 7905 4022 50  0000 R CNN
F 2 "" H 7900 4150 50  0001 C CNN
F 3 "" H 7900 4150 50  0001 C CNN
	1    7900 4150
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67D9D683
P 7900 4750
F 0 "#PWR?" H 7900 4500 50  0001 C CNN
F 1 "GND" V 7905 4622 50  0000 R CNN
F 2 "" H 7900 4750 50  0001 C CNN
F 3 "" H 7900 4750 50  0001 C CNN
	1    7900 4750
	0    1    1    0   
$EndComp
$EndSCHEMATC
