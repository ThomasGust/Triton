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
L TPS2121RUXR:TPS2121RUXR U?
U 1 1 6791EB5A
P 6700 3300
AR Path="/6791EB5A" Ref="U?"  Part="1" 
AR Path="/678FCE5E/6791EB5A" Ref="U?"  Part="1" 
F 0 "U?" H 6700 4267 50  0000 C CNN
F 1 "TPS2121RUXR" H 6700 4176 50  0000 C CNN
F 2 "IC_TPS2121RUXR" H 6700 3300 50  0001 L BNN
F 3 "" H 6700 3300 50  0001 L BNN
F 4 "Texas Instruments" H 6700 3300 50  0001 L BNN "MF"
F 5 "\\n                        \\n                            2.7-V&nbsp;to 22-V, 56-mΩ, 4.5-A, power mux with seamless switchover\\n                        \\n" H 6700 3300 50  0001 L BNN "Description"
F 6 "VQFN-HR-12 Texas Instruments" H 6700 3300 50  0001 L BNN "Package"
F 7 "None" H 6700 3300 50  0001 L BNN "Price"
F 8 "https://www.snapeda.com/parts/TPS2121RUXR/Texas+Instruments/view-part/?ref=eda" H 6700 3300 50  0001 L BNN "Check_prices"
F 9 "Manufacturer Recommendations" H 6700 3300 50  0001 L BNN "STANDARD"
F 10 "https://www.snapeda.com/parts/TPS2121RUXR/Texas+Instruments/view-part/?ref=snap" H 6700 3300 50  0001 L BNN "SnapEDA_Link"
F 11 "TPS2121RUXR" H 6700 3300 50  0001 L BNN "MP"
F 12 "In Stock" H 6700 3300 50  0001 L BNN "Availability"
F 13 "TEXAS INSTRUMENTS" H 6700 3300 50  0001 L BNN "MANUFACTURER"
	1    6700 3300
	1    0    0    -1  
$EndComp
Text GLabel 7200 2800 2    50   Input ~ 0
PMUX_ST
$Comp
L power:GND #PWR?
U 1 1 6791EB61
P 7200 3900
AR Path="/6791EB61" Ref="#PWR?"  Part="1" 
AR Path="/678FCE5E/6791EB61" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7200 3650 50  0001 C CNN
F 1 "GND" V 7205 3772 50  0000 R CNN
F 2 "" H 7200 3900 50  0001 C CNN
F 3 "" H 7200 3900 50  0001 C CNN
	1    7200 3900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6791EB67
P 6100 4000
AR Path="/6791EB67" Ref="#PWR?"  Part="1" 
AR Path="/678FCE5E/6791EB67" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6100 3750 50  0001 C CNN
F 1 "GND" H 6105 3827 50  0000 C CNN
F 2 "" H 6100 4000 50  0001 C CNN
F 3 "" H 6100 4000 50  0001 C CNN
	1    6100 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6791EB6D
P 6100 3900
AR Path="/6791EB6D" Ref="R?"  Part="1" 
AR Path="/678FCE5E/6791EB6D" Ref="R?"  Part="1" 
F 0 "R?" H 6159 3946 50  0000 L CNN
F 1 "19.6k" H 6159 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6100 3900 50  0001 C CNN
F 3 "~" H 6100 3900 50  0001 C CNN
	1    6100 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 3800 6100 3700
Wire Wire Line
	6100 3700 6200 3700
$Comp
L power:GND #PWR?
U 1 1 6791EB75
P 5750 3850
AR Path="/6791EB75" Ref="#PWR?"  Part="1" 
AR Path="/678FCE5E/6791EB75" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5750 3600 50  0001 C CNN
F 1 "GND" H 5755 3677 50  0000 C CNN
F 2 "" H 5750 3850 50  0001 C CNN
F 3 "" H 5750 3850 50  0001 C CNN
	1    5750 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3650 6200 3600
$Comp
L power:+3.3V #PWR?
U 1 1 6791EB7C
P 6200 3400
AR Path="/6791EB7C" Ref="#PWR?"  Part="1" 
AR Path="/678FCE5E/6791EB7C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6200 3250 50  0001 C CNN
F 1 "+3.3V" V 6215 3528 50  0000 L CNN
F 2 "" H 6200 3400 50  0001 C CNN
F 3 "" H 6200 3400 50  0001 C CNN
	1    6200 3400
	0    -1   -1   0   
$EndComp
Text GLabel 6200 2800 0    50   Input ~ 0
PMUX_PR1
Text GLabel 6200 2900 0    50   Input ~ 0
PMUX_OV1
Text GLabel 6200 3200 0    50   Input ~ 0
PMUX_OV2
$Comp
L Device:C_Small C?
U 1 1 6791EB85
P 4700 3200
AR Path="/6791EB85" Ref="C?"  Part="1" 
AR Path="/678FCE5E/6791EB85" Ref="C?"  Part="1" 
F 0 "C?" H 4792 3246 50  0000 L CNN
F 1 "10uF" H 4792 3155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4700 3200 50  0001 C CNN
F 3 "~" H 4700 3200 50  0001 C CNN
	1    4700 3200
	1    0    0    -1  
$EndComp
Connection ~ 4700 3100
$Comp
L Device:C_Small C?
U 1 1 6791EB8C
P 4900 3200
AR Path="/6791EB8C" Ref="C?"  Part="1" 
AR Path="/678FCE5E/6791EB8C" Ref="C?"  Part="1" 
F 0 "C?" H 4992 3246 50  0000 L CNN
F 1 "10uF" H 4992 3155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4900 3200 50  0001 C CNN
F 3 "~" H 4900 3200 50  0001 C CNN
	1    4900 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6791EB92
P 5100 3200
AR Path="/6791EB92" Ref="C?"  Part="1" 
AR Path="/678FCE5E/6791EB92" Ref="C?"  Part="1" 
F 0 "C?" H 5192 3246 50  0000 L CNN
F 1 "10uF" H 5192 3155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5100 3200 50  0001 C CNN
F 3 "~" H 5100 3200 50  0001 C CNN
	1    5100 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6791EB98
P 5300 3200
AR Path="/6791EB98" Ref="C?"  Part="1" 
AR Path="/678FCE5E/6791EB98" Ref="C?"  Part="1" 
F 0 "C?" H 5392 3246 50  0000 L CNN
F 1 "10uF" H 5392 3155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5300 3200 50  0001 C CNN
F 3 "~" H 5300 3200 50  0001 C CNN
	1    5300 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6791EB9E
P 5500 3200
AR Path="/6791EB9E" Ref="C?"  Part="1" 
AR Path="/678FCE5E/6791EB9E" Ref="C?"  Part="1" 
F 0 "C?" H 5592 3246 50  0000 L CNN
F 1 "10uF" H 5592 3155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5500 3200 50  0001 C CNN
F 3 "~" H 5500 3200 50  0001 C CNN
	1    5500 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6791EBA4
P 4500 3200
AR Path="/6791EBA4" Ref="C?"  Part="1" 
AR Path="/678FCE5E/6791EBA4" Ref="C?"  Part="1" 
F 0 "C?" H 4592 3246 50  0000 L CNN
F 1 "10uF" H 4592 3155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4500 3200 50  0001 C CNN
F 3 "~" H 4500 3200 50  0001 C CNN
	1    4500 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3100 4500 3100
Connection ~ 4500 3100
Wire Wire Line
	4500 3100 4700 3100
Wire Wire Line
	5150 3150 5100 3150
Wire Wire Line
	5100 3150 5100 3100
Connection ~ 5100 3100
Wire Wire Line
	5100 3100 4900 3100
Connection ~ 4900 3100
Wire Wire Line
	4900 3100 4700 3100
Wire Wire Line
	5100 3100 5300 3100
Connection ~ 5300 3100
Wire Wire Line
	5300 3100 5500 3100
Connection ~ 5500 3100
Wire Wire Line
	5500 3100 6200 3100
$Comp
L power:GND #PWR?
U 1 1 6791EBB8
P 4350 3300
AR Path="/6791EBB8" Ref="#PWR?"  Part="1" 
AR Path="/678FCE5E/6791EBB8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4350 3050 50  0001 C CNN
F 1 "GND" V 4355 3172 50  0000 R CNN
F 2 "" H 4350 3300 50  0001 C CNN
F 3 "" H 4350 3300 50  0001 C CNN
	1    4350 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	4350 3300 4500 3300
Connection ~ 4500 3300
Wire Wire Line
	4500 3300 4700 3300
Connection ~ 4700 3300
Wire Wire Line
	4700 3300 4900 3300
Connection ~ 4900 3300
Wire Wire Line
	4900 3300 5100 3300
Connection ~ 5100 3300
Wire Wire Line
	5100 3300 5300 3300
Connection ~ 5300 3300
Wire Wire Line
	5300 3300 5500 3300
$Comp
L Device:C_Small C?
U 1 1 6791EBC9
P 4650 2800
AR Path="/6791EBC9" Ref="C?"  Part="1" 
AR Path="/678FCE5E/6791EBC9" Ref="C?"  Part="1" 
F 0 "C?" H 4742 2846 50  0000 L CNN
F 1 "10uF" H 4742 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4650 2800 50  0001 C CNN
F 3 "~" H 4650 2800 50  0001 C CNN
	1    4650 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6791EBCF
P 4850 2800
AR Path="/6791EBCF" Ref="C?"  Part="1" 
AR Path="/678FCE5E/6791EBCF" Ref="C?"  Part="1" 
F 0 "C?" H 4942 2846 50  0000 L CNN
F 1 "10uF" H 4942 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4850 2800 50  0001 C CNN
F 3 "~" H 4850 2800 50  0001 C CNN
	1    4850 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6791EBD5
P 5050 2800
AR Path="/6791EBD5" Ref="C?"  Part="1" 
AR Path="/678FCE5E/6791EBD5" Ref="C?"  Part="1" 
F 0 "C?" H 5142 2846 50  0000 L CNN
F 1 "10uF" H 5142 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5050 2800 50  0001 C CNN
F 3 "~" H 5050 2800 50  0001 C CNN
	1    5050 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6791EBDB
P 5250 2800
AR Path="/6791EBDB" Ref="C?"  Part="1" 
AR Path="/678FCE5E/6791EBDB" Ref="C?"  Part="1" 
F 0 "C?" H 5342 2846 50  0000 L CNN
F 1 "10uF" H 5342 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5250 2800 50  0001 C CNN
F 3 "~" H 5250 2800 50  0001 C CNN
	1    5250 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6791EBE1
P 5450 2800
AR Path="/6791EBE1" Ref="C?"  Part="1" 
AR Path="/678FCE5E/6791EBE1" Ref="C?"  Part="1" 
F 0 "C?" H 5542 2846 50  0000 L CNN
F 1 "10uF" H 5542 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5450 2800 50  0001 C CNN
F 3 "~" H 5450 2800 50  0001 C CNN
	1    5450 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6791EBE7
P 4450 2800
AR Path="/6791EBE7" Ref="C?"  Part="1" 
AR Path="/678FCE5E/6791EBE7" Ref="C?"  Part="1" 
F 0 "C?" H 4542 2846 50  0000 L CNN
F 1 "10uF" H 4542 2755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4450 2800 50  0001 C CNN
F 3 "~" H 4450 2800 50  0001 C CNN
	1    4450 2800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6791EBED
P 4300 2900
AR Path="/6791EBED" Ref="#PWR?"  Part="1" 
AR Path="/678FCE5E/6791EBED" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4300 2650 50  0001 C CNN
F 1 "GND" V 4305 2772 50  0000 R CNN
F 2 "" H 4300 2900 50  0001 C CNN
F 3 "" H 4300 2900 50  0001 C CNN
	1    4300 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 2900 4450 2900
Connection ~ 4450 2900
Wire Wire Line
	4450 2900 4650 2900
Connection ~ 4650 2900
Wire Wire Line
	4650 2900 4850 2900
Connection ~ 4850 2900
Wire Wire Line
	4850 2900 5050 2900
Connection ~ 5050 2900
Wire Wire Line
	5050 2900 5250 2900
Connection ~ 5250 2900
Wire Wire Line
	5250 2900 5450 2900
Wire Wire Line
	4400 2700 4450 2700
Connection ~ 4450 2700
Wire Wire Line
	4450 2700 4650 2700
Connection ~ 4650 2700
Wire Wire Line
	4650 2700 4850 2700
Connection ~ 4850 2700
Wire Wire Line
	4850 2700 5050 2700
Connection ~ 5050 2700
Wire Wire Line
	5050 2700 5250 2700
Connection ~ 5250 2700
Wire Wire Line
	5250 2700 5450 2700
Connection ~ 5450 2700
Wire Wire Line
	5450 2700 6200 2700
$Comp
L Device:C_Small C?
U 1 1 6791EC0B
P 7600 3100
AR Path="/6791EC0B" Ref="C?"  Part="1" 
AR Path="/678FCE5E/6791EC0B" Ref="C?"  Part="1" 
F 0 "C?" H 7692 3146 50  0000 L CNN
F 1 "10uF" H 7692 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7600 3100 50  0001 C CNN
F 3 "~" H 7600 3100 50  0001 C CNN
	1    7600 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6791EC11
P 7800 3100
AR Path="/6791EC11" Ref="C?"  Part="1" 
AR Path="/678FCE5E/6791EC11" Ref="C?"  Part="1" 
F 0 "C?" H 7892 3146 50  0000 L CNN
F 1 "10uF" H 7892 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7800 3100 50  0001 C CNN
F 3 "~" H 7800 3100 50  0001 C CNN
	1    7800 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6791EC17
P 8000 3100
AR Path="/6791EC17" Ref="C?"  Part="1" 
AR Path="/678FCE5E/6791EC17" Ref="C?"  Part="1" 
F 0 "C?" H 8092 3146 50  0000 L CNN
F 1 "10uF" H 8092 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8000 3100 50  0001 C CNN
F 3 "~" H 8000 3100 50  0001 C CNN
	1    8000 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6791EC1D
P 8200 3100
AR Path="/6791EC1D" Ref="C?"  Part="1" 
AR Path="/678FCE5E/6791EC1D" Ref="C?"  Part="1" 
F 0 "C?" H 8292 3146 50  0000 L CNN
F 1 "10uF" H 8292 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8200 3100 50  0001 C CNN
F 3 "~" H 8200 3100 50  0001 C CNN
	1    8200 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6791EC23
P 8400 3100
AR Path="/6791EC23" Ref="C?"  Part="1" 
AR Path="/678FCE5E/6791EC23" Ref="C?"  Part="1" 
F 0 "C?" H 8492 3146 50  0000 L CNN
F 1 "10uF" H 8492 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8400 3100 50  0001 C CNN
F 3 "~" H 8400 3100 50  0001 C CNN
	1    8400 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6791EC29
P 7400 3100
AR Path="/6791EC29" Ref="C?"  Part="1" 
AR Path="/678FCE5E/6791EC29" Ref="C?"  Part="1" 
F 0 "C?" H 7492 3146 50  0000 L CNN
F 1 "10uF" H 7492 3055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7400 3100 50  0001 C CNN
F 3 "~" H 7400 3100 50  0001 C CNN
	1    7400 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6791EC2F
P 7250 3200
AR Path="/6791EC2F" Ref="#PWR?"  Part="1" 
AR Path="/678FCE5E/6791EC2F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7250 2950 50  0001 C CNN
F 1 "GND" V 7255 3072 50  0000 R CNN
F 2 "" H 7250 3200 50  0001 C CNN
F 3 "" H 7250 3200 50  0001 C CNN
	1    7250 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 3200 7400 3200
Connection ~ 7400 3200
Wire Wire Line
	7400 3200 7600 3200
Connection ~ 7600 3200
Wire Wire Line
	7600 3200 7800 3200
Connection ~ 7800 3200
Wire Wire Line
	7800 3200 8000 3200
Connection ~ 8000 3200
Wire Wire Line
	8000 3200 8200 3200
Connection ~ 8200 3200
Wire Wire Line
	8200 3200 8400 3200
Wire Wire Line
	7200 2700 7400 2700
Wire Wire Line
	7400 2700 7400 3000
Wire Wire Line
	7400 3000 7600 3000
Connection ~ 7400 3000
Connection ~ 7600 3000
Wire Wire Line
	7600 3000 7800 3000
Connection ~ 7800 3000
Wire Wire Line
	7800 3000 8000 3000
Connection ~ 8000 3000
Wire Wire Line
	8000 3000 8200 3000
Connection ~ 8200 3000
Wire Wire Line
	8200 3000 8400 3000
Text GLabel 4450 3100 0    50   Input ~ 0
PMUX_IN2
Text GLabel 4400 2700 0    50   Input ~ 0
PMUX_IN1
Wire Wire Line
	5750 3650 6200 3650
$Comp
L Device:C_Small C?
U 1 1 6791EC4F
P 5750 3750
AR Path="/6791EC4F" Ref="C?"  Part="1" 
AR Path="/678FCE5E/6791EC4F" Ref="C?"  Part="1" 
F 0 "C?" H 5842 3796 50  0000 L CNN
F 1 "1nF" H 5842 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5750 3750 50  0001 C CNN
F 3 "~" H 5750 3750 50  0001 C CNN
	1    5750 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6791EC55
P 6100 4800
AR Path="/6791EC55" Ref="#PWR?"  Part="1" 
AR Path="/678FCE5E/6791EC55" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6100 4550 50  0001 C CNN
F 1 "GND" H 6105 4627 50  0000 C CNN
F 2 "" H 6100 4800 50  0001 C CNN
F 3 "" H 6100 4800 50  0001 C CNN
	1    6100 4800
	-1   0    0    1   
$EndComp
Connection ~ 6100 5000
$Comp
L power:GND #PWR?
U 1 1 6791EC5C
P 5500 5200
AR Path="/6791EC5C" Ref="#PWR?"  Part="1" 
AR Path="/678FCE5E/6791EC5C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5500 4950 50  0001 C CNN
F 1 "GND" H 5505 5027 50  0000 C CNN
F 2 "" H 5500 5200 50  0001 C CNN
F 3 "" H 5500 5200 50  0001 C CNN
	1    5500 5200
	1    0    0    -1  
$EndComp
Connection ~ 5500 5000
$Comp
L Device:C_Small C?
U 1 1 6791EC63
P 6100 4900
AR Path="/6791EC63" Ref="C?"  Part="1" 
AR Path="/678FCE5E/6791EC63" Ref="C?"  Part="1" 
F 0 "C?" H 6192 4946 50  0000 L CNN
F 1 "10uF" H 6192 4855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6100 4900 50  0001 C CNN
F 3 "~" H 6100 4900 50  0001 C CNN
	1    6100 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6791EC69
P 5500 5100
AR Path="/6791EC69" Ref="C?"  Part="1" 
AR Path="/678FCE5E/6791EC69" Ref="C?"  Part="1" 
F 0 "C?" H 5592 5146 50  0000 L CNN
F 1 "1uF" H 5592 5055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5500 5100 50  0001 C CNN
F 3 "~" H 5500 5100 50  0001 C CNN
	1    5500 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6791EC6F
P 7050 4850
AR Path="/6791EC6F" Ref="#PWR?"  Part="1" 
AR Path="/678FCE5E/6791EC6F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7050 4700 50  0001 C CNN
F 1 "+5V" H 7065 5023 50  0000 C CNN
F 2 "" H 7050 4850 50  0001 C CNN
F 3 "" H 7050 4850 50  0001 C CNN
	1    7050 4850
	1    0    0    -1  
$EndComp
Connection ~ 7050 4950
Wire Wire Line
	7050 4950 7050 4850
Wire Wire Line
	7050 5050 7050 4950
$Comp
L power:GND #PWR?
U 1 1 6791EC78
P 7050 5250
AR Path="/6791EC78" Ref="#PWR?"  Part="1" 
AR Path="/678FCE5E/6791EC78" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7050 5000 50  0001 C CNN
F 1 "GND" H 7055 5077 50  0000 C CNN
F 2 "" H 7050 5250 50  0001 C CNN
F 3 "" H 7050 5250 50  0001 C CNN
	1    7050 5250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6791EC7E
P 7050 5150
AR Path="/6791EC7E" Ref="C?"  Part="1" 
AR Path="/678FCE5E/6791EC7E" Ref="C?"  Part="1" 
F 0 "C?" H 7142 5196 50  0000 L CNN
F 1 "1uF" H 7142 5105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7050 5150 50  0001 C CNN
F 3 "~" H 7050 5150 50  0001 C CNN
	1    7050 5150
	1    0    0    -1  
$EndComp
Connection ~ 7650 4950
Wire Wire Line
	7700 4950 7650 4950
$Comp
L power:+3.3V #PWR?
U 1 1 6791EC86
P 7700 4950
AR Path="/6791EC86" Ref="#PWR?"  Part="1" 
AR Path="/678FCE5E/6791EC86" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7700 4800 50  0001 C CNN
F 1 "+3.3V" V 7715 5078 50  0000 L CNN
F 2 "" H 7700 4950 50  0001 C CNN
F 3 "" H 7700 4950 50  0001 C CNN
	1    7700 4950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6791EC8C
P 7650 4750
AR Path="/6791EC8C" Ref="#PWR?"  Part="1" 
AR Path="/678FCE5E/6791EC8C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7650 4500 50  0001 C CNN
F 1 "GND" H 7655 4577 50  0000 C CNN
F 2 "" H 7650 4750 50  0001 C CNN
F 3 "" H 7650 4750 50  0001 C CNN
	1    7650 4750
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6791EC92
P 7650 4850
AR Path="/6791EC92" Ref="C?"  Part="1" 
AR Path="/678FCE5E/6791EC92" Ref="C?"  Part="1" 
F 0 "C?" H 7742 4896 50  0000 L CNN
F 1 "10uF" H 7742 4805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7650 4850 50  0001 C CNN
F 3 "~" H 7650 4850 50  0001 C CNN
	1    7650 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6791EC98
P 7350 5250
AR Path="/6791EC98" Ref="#PWR?"  Part="1" 
AR Path="/678FCE5E/6791EC98" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7350 5000 50  0001 C CNN
F 1 "GND" H 7355 5077 50  0000 C CNN
F 2 "" H 7350 5250 50  0001 C CNN
F 3 "" H 7350 5250 50  0001 C CNN
	1    7350 5250
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-3.3 U?
U 1 1 6791EC9E
P 7350 4950
AR Path="/6791EC9E" Ref="U?"  Part="1" 
AR Path="/678FCE5E/6791EC9E" Ref="U?"  Part="1" 
F 0 "U?" H 7350 5192 50  0000 C CNN
F 1 "AMS1117-3.3" H 7350 5101 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 7350 5150 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 7450 4700 50  0001 C CNN
	1    7350 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6791ECA4
P 5800 5300
AR Path="/6791ECA4" Ref="#PWR?"  Part="1" 
AR Path="/678FCE5E/6791ECA4" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5800 5050 50  0001 C CNN
F 1 "GND" H 5805 5127 50  0000 C CNN
F 2 "" H 5800 5300 50  0001 C CNN
F 3 "" H 5800 5300 50  0001 C CNN
	1    5800 5300
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR?
U 1 1 6791ECAA
P 6100 5000
AR Path="/6791ECAA" Ref="#PWR?"  Part="1" 
AR Path="/678FCE5E/6791ECAA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6100 4850 50  0001 C CNN
F 1 "+1V8" V 6115 5128 50  0000 L CNN
F 2 "" H 6100 5000 50  0001 C CNN
F 3 "" H 6100 5000 50  0001 C CNN
	1    6100 5000
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6791ECB0
P 5500 5000
AR Path="/6791ECB0" Ref="#PWR?"  Part="1" 
AR Path="/678FCE5E/6791ECB0" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5500 4850 50  0001 C CNN
F 1 "+3.3V" V 5515 5128 50  0000 L CNN
F 2 "" H 5500 5000 50  0001 C CNN
F 3 "" H 5500 5000 50  0001 C CNN
	1    5500 5000
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AMS1117-1.8 U?
U 1 1 6791ECB6
P 5800 5000
AR Path="/6791ECB6" Ref="U?"  Part="1" 
AR Path="/678FCE5E/6791ECB6" Ref="U?"  Part="1" 
F 0 "U?" H 5800 5242 50  0000 C CNN
F 1 "AMS1117-1.8" H 5800 5151 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 5800 5200 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 5900 4750 50  0001 C CNN
	1    5800 5000
	1    0    0    -1  
$EndComp
Connection ~ 7400 2700
Text GLabel 4500 3900 1    50   Input ~ 0
PMUX_IN1
Text GLabel 3550 3900 1    50   Input ~ 0
PMUX_IN2
Text GLabel 4150 3900 0    50   Input ~ 0
5VMain
$Comp
L Device:R_Small R?
U 1 1 6791ECC0
P 4300 4050
AR Path="/6791ECC0" Ref="R?"  Part="1" 
AR Path="/678FCE5E/6791ECC0" Ref="R?"  Part="1" 
F 0 "R?" H 4359 4096 50  0000 L CNN
F 1 "4.99K" H 4359 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4300 4050 50  0001 C CNN
F 3 "~" H 4300 4050 50  0001 C CNN
	1    4300 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6791ECC6
P 4750 4050
AR Path="/6791ECC6" Ref="R?"  Part="1" 
AR Path="/678FCE5E/6791ECC6" Ref="R?"  Part="1" 
F 0 "R?" H 4809 4096 50  0000 L CNN
F 1 "4.32k" H 4809 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4750 4050 50  0001 C CNN
F 3 "~" H 4750 4050 50  0001 C CNN
	1    4750 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3900 4300 3900
Wire Wire Line
	4750 3900 4750 3950
Wire Wire Line
	4300 3950 4300 3900
Connection ~ 4300 3900
Wire Wire Line
	4300 3900 4750 3900
Wire Wire Line
	4750 4150 5000 4150
Text GLabel 4950 4150 1    50   Input ~ 0
PMUX_PR1
$Comp
L Device:R_Small R?
U 1 1 6791ECD3
P 5100 4150
AR Path="/6791ECD3" Ref="R?"  Part="1" 
AR Path="/678FCE5E/6791ECD3" Ref="R?"  Part="1" 
F 0 "R?" V 4904 4150 50  0000 C CNN
F 1 "36.5k" V 4995 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5100 4150 50  0001 C CNN
F 3 "~" H 5100 4150 50  0001 C CNN
	1    5100 4150
	0    1    1    0   
$EndComp
Text GLabel 5200 4150 2    50   Input ~ 0
PMUX_ST
Text GLabel 4300 4150 0    50   Input ~ 0
PMUX_OV1
$Comp
L Device:R_Small R?
U 1 1 6791ECDB
P 4300 4250
AR Path="/6791ECDB" Ref="R?"  Part="1" 
AR Path="/678FCE5E/6791ECDB" Ref="R?"  Part="1" 
F 0 "R?" H 4359 4296 50  0000 L CNN
F 1 "1.15k" H 4359 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4300 4250 50  0001 C CNN
F 3 "~" H 4300 4250 50  0001 C CNN
	1    4300 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6791ECE1
P 4750 4250
AR Path="/6791ECE1" Ref="R?"  Part="1" 
AR Path="/678FCE5E/6791ECE1" Ref="R?"  Part="1" 
F 0 "R?" H 4809 4296 50  0000 L CNN
F 1 "10.2k" H 4809 4205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4750 4250 50  0001 C CNN
F 3 "~" H 4750 4250 50  0001 C CNN
	1    4750 4250
	1    0    0    -1  
$EndComp
Connection ~ 4750 4150
$Comp
L power:GND #PWR?
U 1 1 6791ECE8
P 4300 4350
AR Path="/6791ECE8" Ref="#PWR?"  Part="1" 
AR Path="/678FCE5E/6791ECE8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4300 4100 50  0001 C CNN
F 1 "GND" H 4305 4177 50  0000 C CNN
F 2 "" H 4300 4350 50  0001 C CNN
F 3 "" H 4300 4350 50  0001 C CNN
	1    4300 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6791ECEE
P 4750 4350
AR Path="/6791ECEE" Ref="#PWR?"  Part="1" 
AR Path="/678FCE5E/6791ECEE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4750 4100 50  0001 C CNN
F 1 "GND" H 4755 4177 50  0000 C CNN
F 2 "" H 4750 4350 50  0001 C CNN
F 3 "" H 4750 4350 50  0001 C CNN
	1    4750 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 6791ECF4
P 3550 4200
AR Path="/6791ECF4" Ref="R?"  Part="1" 
AR Path="/678FCE5E/6791ECF4" Ref="R?"  Part="1" 
F 0 "R?" H 3609 4246 50  0000 L CNN
F 1 "1.15k" H 3609 4155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3550 4200 50  0001 C CNN
F 3 "~" H 3550 4200 50  0001 C CNN
	1    3550 4200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6791ECFA
P 3550 4300
AR Path="/6791ECFA" Ref="#PWR?"  Part="1" 
AR Path="/678FCE5E/6791ECFA" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3550 4050 50  0001 C CNN
F 1 "GND" H 3555 4127 50  0000 C CNN
F 2 "" H 3550 4300 50  0001 C CNN
F 3 "" H 3550 4300 50  0001 C CNN
	1    3550 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 6791ED00
P 7550 2700
AR Path="/6791ED00" Ref="#PWR?"  Part="1" 
AR Path="/678FCE5E/6791ED00" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7550 2550 50  0001 C CNN
F 1 "+5V" V 7565 2828 50  0000 L CNN
F 2 "" H 7550 2700 50  0001 C CNN
F 3 "" H 7550 2700 50  0001 C CNN
	1    7550 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 2700 7550 2700
Text GLabel 3550 4100 0    50   Input ~ 0
PMUX_OV2
$Comp
L Device:R_Small R?
U 1 1 6791ED08
P 3550 4000
AR Path="/6791ED08" Ref="R?"  Part="1" 
AR Path="/678FCE5E/6791ED08" Ref="R?"  Part="1" 
F 0 "R?" H 3609 4046 50  0000 L CNN
F 1 "4.99k" H 3609 3955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3550 4000 50  0001 C CNN
F 3 "~" H 3550 4000 50  0001 C CNN
	1    3550 4000
	1    0    0    -1  
$EndComp
Text GLabel 3550 3900 0    50   Input ~ 0
5VAux
$Comp
L power:GND #PWR?
U 1 1 67DA5237
P 8950 2050
F 0 "#PWR?" H 8950 1800 50  0001 C CNN
F 1 "GND" V 8955 1922 50  0000 R CNN
F 2 "" H 8950 2050 50  0001 C CNN
F 3 "" H 8950 2050 50  0001 C CNN
	1    8950 2050
	0    1    1    0   
$EndComp
Wire Wire Line
	8950 1850 9000 1850
Text GLabel 8950 1850 0    50   Input ~ 0
5VMain
$Comp
L Device:C_Small C?
U 1 1 67DA523F
P 9000 1950
F 0 "C?" H 9092 1996 50  0000 L CNN
F 1 "0.1uF" H 9092 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9000 1950 50  0001 C CNN
F 3 "~" H 9000 1950 50  0001 C CNN
	1    9000 1950
	1    0    0    -1  
$EndComp
Connection ~ 9000 1850
Wire Wire Line
	9000 1850 9200 1850
Wire Wire Line
	8950 2050 9000 2050
Wire Wire Line
	9000 2050 9200 2050
Connection ~ 9200 1850
Connection ~ 9000 2050
Wire Wire Line
	9050 2550 9200 2550
Connection ~ 9050 2550
Wire Wire Line
	9050 2450 9050 2550
Wire Wire Line
	8950 2550 9050 2550
Wire Wire Line
	9200 2550 9650 2550
Connection ~ 9200 2550
$Comp
L power:GND #PWR?
U 1 1 67DA5251
P 8950 2550
F 0 "#PWR?" H 8950 2300 50  0001 C CNN
F 1 "GND" V 8955 2422 50  0000 R CNN
F 2 "" H 8950 2550 50  0001 C CNN
F 3 "" H 8950 2550 50  0001 C CNN
	1    8950 2550
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 67DA5257
P 9200 2400
F 0 "C?" H 9315 2446 50  0000 L CNN
F 1 "4700uF" H 9315 2355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 9238 2250 50  0001 C CNN
F 3 "~" H 9200 2400 50  0001 C CNN
	1    9200 2400
	1    0    0    -1  
$EndComp
Connection ~ 9200 2250
Wire Wire Line
	9200 2250 9650 2250
Wire Wire Line
	9050 2250 9200 2250
Connection ~ 9050 2250
Wire Wire Line
	8950 2250 9050 2250
$Comp
L Device:C_Small C?
U 1 1 67DA5262
P 9050 2350
F 0 "C?" H 9142 2396 50  0000 L CNN
F 1 "0.1uF" H 9142 2305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9050 2350 50  0001 C CNN
F 3 "~" H 9050 2350 50  0001 C CNN
	1    9050 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 67DA5268
P 9200 1950
F 0 "C?" H 9315 1996 50  0000 L CNN
F 1 "4700uF" H 9315 1905 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P5.00mm" H 9238 1800 50  0001 C CNN
F 3 "~" H 9200 1950 50  0001 C CNN
	1    9200 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67DA526E
P 9650 2400
F 0 "#PWR?" H 9650 2150 50  0001 C CNN
F 1 "GND" V 9655 2272 50  0000 R CNN
F 2 "" H 9650 2400 50  0001 C CNN
F 3 "" H 9650 2400 50  0001 C CNN
	1    9650 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	9650 2550 9650 2500
Wire Wire Line
	9650 2250 9650 2300
Text GLabel 8950 2250 0    50   Input ~ 0
5VAux
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 67DA5277
P 9850 2400
F 0 "J?" H 9930 2442 50  0000 L CNN
F 1 "AUX Power Connect" H 9930 2351 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9850 2400 50  0001 C CNN
F 3 "~" H 9850 2400 50  0001 C CNN
	1    9850 2400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 67DA527D
P 9850 1950
F 0 "J?" H 9930 1992 50  0000 L CNN
F 1 "Pi Power Connect" H 9930 1901 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9850 1950 50  0001 C CNN
F 3 "~" H 9850 1950 50  0001 C CNN
	1    9850 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 67DA5283
P 9650 1950
F 0 "#PWR?" H 9650 1700 50  0001 C CNN
F 1 "GND" V 9655 1822 50  0000 R CNN
F 2 "" H 9650 1950 50  0001 C CNN
F 3 "" H 9650 1950 50  0001 C CNN
	1    9650 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	9650 1850 9200 1850
Wire Wire Line
	9200 1850 9200 1800
Wire Wire Line
	9650 2050 9200 2050
Wire Wire Line
	9200 2050 9200 2100
Connection ~ 9200 2050
$EndSCHEMATC
