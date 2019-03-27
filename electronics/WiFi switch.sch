EESchema Schematic File Version 4
LIBS:WiFi switch-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "WiFi Switch"
Date "2019-03-27"
Rev "R2"
Comp "Invize AB"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RF_Module:ESP-12F U2
U 1 1 5C7C6AAD
P 3900 3700
F 0 "U2" H 4150 4600 50  0000 C CNN
F 1 "ESP-12F" H 4150 4500 50  0000 C CNN
F 2 "RF_Modules:ESP-12E" H 3900 3700 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 3550 3800 50  0001 C CNN
	1    3900 3700
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC817 Q1
U 1 1 5C7DB7D1
P 3400 6300
F 0 "Q1" H 3591 6346 50  0000 L CNN
F 1 "BC817" H 3591 6255 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 3600 6225 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 3400 6300 50  0001 L CNN
	1    3400 6300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC817 Q2
U 1 1 5C7DB88F
P 3400 7000
F 0 "Q2" H 3591 6954 50  0000 L CNN
F 1 "BC817" H 3591 7045 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 3600 6925 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 3400 7000 50  0001 L CNN
	1    3400 7000
	1    0    0    1   
$EndComp
$Comp
L Device:R R10
U 1 1 5C7DB94D
P 2950 6300
F 0 "R10" V 2743 6300 50  0000 C CNN
F 1 "10K" V 2834 6300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2880 6300 50  0001 C CNN
F 3 "~" H 2950 6300 50  0001 C CNN
	1    2950 6300
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 5C7DBA03
P 2900 7000
F 0 "R9" V 2693 7000 50  0000 C CNN
F 1 "10K" V 2784 7000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2830 7000 50  0001 C CNN
F 3 "~" H 2900 7000 50  0001 C CNN
	1    2900 7000
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 6300 3100 6300
$Comp
L Connector:Conn_01x06_Female J1
U 1 1 5C7DBCE5
P 1000 6600
F 0 "J1" H 894 6075 50  0000 C CNN
F 1 "Programmer" H 894 6166 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 1000 6600 50  0001 C CNN
F 3 "~" H 1000 6600 50  0001 C CNN
	1    1000 6600
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5C7DBE18
P 1500 6950
F 0 "#PWR0101" H 1500 6700 50  0001 C CNN
F 1 "GND" H 1505 6777 50  0000 C CNN
F 2 "" H 1500 6950 50  0001 C CNN
F 3 "" H 1500 6950 50  0001 C CNN
	1    1500 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 6800 1500 6800
Wire Wire Line
	1500 6800 1500 6950
Wire Wire Line
	1500 6100 1500 6600
Wire Wire Line
	1500 6600 1200 6600
Wire Wire Line
	2000 6700 2000 7000
Wire Wire Line
	2000 7000 2600 7000
Wire Wire Line
	3050 7000 3200 7000
Wire Wire Line
	2700 6300 2700 6700
Wire Wire Line
	2700 6700 3500 6700
Wire Wire Line
	3500 6700 3500 6800
Connection ~ 2700 6300
Wire Wire Line
	2700 6300 2800 6300
Wire Wire Line
	2600 7000 2600 6600
Wire Wire Line
	2600 6600 3500 6600
Wire Wire Line
	3500 6600 3500 6500
Connection ~ 2600 7000
Wire Wire Line
	2600 7000 2750 7000
Text Label 1300 6700 0    50   ~ 0
RTS
Text Label 1300 6300 0    50   ~ 0
DTR
Text Label 1300 6600 0    50   ~ 0
VCC
Text Label 1300 6800 0    50   ~ 0
GND
Text GLabel 1700 6500 2    50   Input ~ 0
RX
Text GLabel 1700 6400 2    50   Input ~ 0
TX
Wire Wire Line
	1200 6400 1700 6400
Wire Wire Line
	1200 6500 1700 6500
Text Label 1300 6400 0    50   ~ 0
P_RX
Text Label 1300 6500 0    50   ~ 0
P_TX
Text GLabel 4800 3200 2    50   Input ~ 0
TX
Text GLabel 4800 3400 2    50   Input ~ 0
RX
Wire Wire Line
	4500 3400 4800 3400
Wire Wire Line
	4500 3200 4800 3200
Text Label 2500 6300 0    50   ~ 0
DTR
Text Label 2400 7000 0    50   ~ 0
RTS
Text GLabel 3500 5950 1    50   Input ~ 0
RST
Wire Wire Line
	3500 6100 3500 5950
Text GLabel 3500 7300 3    50   Input ~ 0
D3
Wire Wire Line
	3500 7200 3500 7300
Wire Wire Line
	1200 6300 2700 6300
Wire Wire Line
	1200 6700 2000 6700
$Comp
L power:+3V3 #PWR0104
U 1 1 5C7DF22D
P 4350 950
F 0 "#PWR0104" H 4350 800 50  0001 C CNN
F 1 "+3V3" H 4365 1123 50  0000 C CNN
F 2 "" H 4350 950 50  0001 C CNN
F 3 "" H 4350 950 50  0001 C CNN
	1    4350 950 
	1    0    0    -1  
$EndComp
Text GLabel 2900 3100 0    50   Input ~ 0
RST
Text GLabel 2900 3300 0    50   Input ~ 0
EN
Wire Wire Line
	2900 3300 3300 3300
Text GLabel 4800 3100 2    50   Input ~ 0
D3
Wire Wire Line
	4500 3100 4800 3100
Text GLabel 4800 3300 2    50   Input ~ 0
D4
Wire Wire Line
	4500 3300 4800 3300
$Comp
L power:+3V3 #PWR0105
U 1 1 5C7E0D63
P 1200 2950
F 0 "#PWR0105" H 1200 2800 50  0001 C CNN
F 1 "+3V3" H 1215 3123 50  0000 C CNN
F 2 "" H 1200 2950 50  0001 C CNN
F 3 "" H 1200 2950 50  0001 C CNN
	1    1200 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5C7E0DD0
P 1450 3100
F 0 "R1" V 1243 3100 50  0000 C CNN
F 1 "10K" V 1334 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1380 3100 50  0001 C CNN
F 3 "~" H 1450 3100 50  0001 C CNN
	1    1450 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5C7E0E5C
P 1450 3300
F 0 "R2" V 1243 3300 50  0000 C CNN
F 1 "10K" V 1334 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1380 3300 50  0001 C CNN
F 3 "~" H 1450 3300 50  0001 C CNN
	1    1450 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5C7E0EBC
P 1450 3700
F 0 "R6" V 1243 3700 50  0000 C CNN
F 1 "10K" V 1334 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1380 3700 50  0001 C CNN
F 3 "~" H 1450 3700 50  0001 C CNN
	1    1450 3700
	0    1    1    0   
$EndComp
Text GLabel 1900 3100 2    50   Input ~ 0
EN
Text GLabel 1900 3300 2    50   Input ~ 0
D3
Text GLabel 1900 3500 2    50   Input ~ 0
D4
Text GLabel 1900 3700 2    50   Input ~ 0
RST
Wire Wire Line
	1600 3500 1900 3500
Wire Wire Line
	1900 3300 1600 3300
Wire Wire Line
	1600 3100 1900 3100
Wire Wire Line
	1200 2950 1200 3100
Wire Wire Line
	1200 3700 1300 3700
Wire Wire Line
	1300 3500 1200 3500
Wire Wire Line
	1200 3300 1300 3300
Connection ~ 1200 3300
Wire Wire Line
	1200 3300 1200 3500
Wire Wire Line
	1300 3100 1200 3100
Connection ~ 1200 3100
Wire Wire Line
	1200 3100 1200 3300
$Comp
L Device:R R7
U 1 1 5C7E463D
P 1450 3900
F 0 "R7" V 1243 3900 50  0000 C CNN
F 1 "10K" V 1334 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1380 3900 50  0001 C CNN
F 3 "~" H 1450 3900 50  0001 C CNN
	1    1450 3900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5C7E4681
P 3900 4500
F 0 "#PWR0106" H 3900 4250 50  0001 C CNN
F 1 "GND" H 3905 4327 50  0000 C CNN
F 2 "" H 3900 4500 50  0001 C CNN
F 3 "" H 3900 4500 50  0001 C CNN
	1    3900 4500
	1    0    0    -1  
$EndComp
Text GLabel 1900 3900 2    50   Input ~ 0
D8
Wire Wire Line
	1600 3900 1900 3900
$Comp
L power:GND #PWR0108
U 1 1 5C7F719C
P 1200 4000
F 0 "#PWR0108" H 1200 3750 50  0001 C CNN
F 1 "GND" H 1205 3827 50  0000 C CNN
F 2 "" H 1200 4000 50  0001 C CNN
F 3 "" H 1200 4000 50  0001 C CNN
	1    1200 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 3900 1200 3900
Wire Wire Line
	1200 3900 1200 4000
Wire Wire Line
	3900 4500 3900 4400
$Comp
L power:+3V3 #PWR0109
U 1 1 5C7F8B23
P 3900 2700
F 0 "#PWR0109" H 3900 2550 50  0001 C CNN
F 1 "+3V3" H 3915 2873 50  0000 C CNN
F 2 "" H 3900 2700 50  0001 C CNN
F 3 "" H 3900 2700 50  0001 C CNN
	1    3900 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2700 3900 2900
$Comp
L Device:C_Small C5
U 1 1 5C80B48A
P 4350 1600
F 0 "C5" H 4442 1646 50  0000 L CNN
F 1 "100nF" H 4442 1555 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4350 1600 50  0001 C CNN
F 3 "~" H 4350 1600 50  0001 C CNN
	1    4350 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5C80B492
P 4350 1900
F 0 "#PWR0113" H 4350 1650 50  0001 C CNN
F 1 "GND" H 4355 1727 50  0000 C CNN
F 2 "" H 4350 1900 50  0001 C CNN
F 3 "" H 4350 1900 50  0001 C CNN
	1    4350 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1700 4350 1900
$Comp
L Device:C_Small C4
U 1 1 5C80D7AC
P 3900 1600
F 0 "C4" H 3992 1646 50  0000 L CNN
F 1 "10uF" H 3992 1555 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3900 1600 50  0001 C CNN
F 3 "~" H 3900 1600 50  0001 C CNN
	1    3900 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5C80D7B4
P 3900 1900
F 0 "#PWR0114" H 3900 1650 50  0001 C CNN
F 1 "GND" H 3905 1727 50  0000 C CNN
F 2 "" H 3900 1900 50  0001 C CNN
F 3 "" H 3900 1900 50  0001 C CNN
	1    3900 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1700 3900 1900
Wire Wire Line
	3900 1100 3900 1500
Wire Wire Line
	3900 1100 4350 1100
Wire Wire Line
	4350 1100 4350 1500
Connection ~ 3900 1100
Wire Wire Line
	4350 1100 4350 950 
Connection ~ 4350 1100
Text GLabel 4800 4000 2    50   Input ~ 0
D8
Wire Wire Line
	4500 4000 4800 4000
Text Notes 3800 1750 1    24   ~ 0
Place close to U2
Text Notes 4250 1750 1    24   ~ 0
Place close to U2
Text GLabel 4800 3600 2    50   Input ~ 0
D1
Text GLabel 4800 3500 2    50   Input ~ 0
D2
Wire Wire Line
	4500 3500 4800 3500
Wire Wire Line
	4800 3600 4500 3600
Connection ~ 1200 3500
$Comp
L Sensor_Temperature:DS18S20 U6
U 1 1 5C84126F
P 8100 1450
F 0 "U6" H 7870 1496 50  0000 R CNN
F 1 "DS18S20" H 7870 1405 50  0000 R CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 7100 1200 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS18S20.pdf" H 7950 1700 50  0001 C CNN
	1    8100 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0121
U 1 1 5C8436B5
P 8100 1950
F 0 "#PWR0121" H 8100 1700 50  0001 C CNN
F 1 "GND" H 8105 1777 50  0000 C CNN
F 2 "" H 8100 1950 50  0001 C CNN
F 3 "" H 8100 1950 50  0001 C CNN
	1    8100 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1750 8100 1950
$Comp
L power:+3V3 #PWR0122
U 1 1 5C845A69
P 8100 950
F 0 "#PWR0122" H 8100 800 50  0001 C CNN
F 1 "+3V3" H 8115 1123 50  0000 C CNN
F 2 "" H 8100 950 50  0001 C CNN
F 3 "" H 8100 950 50  0001 C CNN
	1    8100 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 950  8100 1150
Text GLabel 4800 3700 2    50   Input ~ 0
D6
Wire Wire Line
	4500 3700 4800 3700
Text GLabel 8600 1450 2    50   Input ~ 0
D5
Wire Wire Line
	8400 1450 8500 1450
Text GLabel 4800 3800 2    50   Input ~ 0
D7
Text GLabel 4800 3900 2    50   Input ~ 0
D5
Wire Wire Line
	4500 3800 4800 3800
Wire Wire Line
	4800 3900 4500 3900
Text GLabel 2900 3500 0    50   Input ~ 0
ADC
Wire Wire Line
	2900 3500 3300 3500
$Comp
L Device:R R13
U 1 1 5C8EF705
P 8500 1200
F 0 "R13" H 8430 1154 50  0000 R CNN
F 1 "4.7K" H 8430 1245 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8430 1200 50  0001 C CNN
F 3 "~" H 8500 1200 50  0001 C CNN
	1    8500 1200
	-1   0    0    1   
$EndComp
Wire Wire Line
	8500 1350 8500 1450
Connection ~ 8500 1450
Wire Wire Line
	8500 1450 8600 1450
$Comp
L power:+3V3 #PWR0133
U 1 1 5C8F6B3A
P 8500 950
F 0 "#PWR0133" H 8500 800 50  0001 C CNN
F 1 "+3V3" H 8515 1123 50  0000 C CNN
F 2 "" H 8500 950 50  0001 C CNN
F 3 "" H 8500 950 50  0001 C CNN
	1    8500 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 950  8500 1050
Wire Wire Line
	4500 4100 4800 4100
$Comp
L Transistor_BJT:BC817 Q3
U 1 1 5C881378
P 6700 4300
F 0 "Q3" H 6891 4346 50  0000 L CNN
F 1 "BC817" H 6891 4255 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 6900 4225 50  0001 L CIN
F 3 "http://www.unisonic.com.tw/datasheet/S8050.pdf" H 6700 4300 50  0001 L CNN
	1    6700 4300
	1    0    0    -1  
$EndComp
$Comp
L Relay:RM50-xx21 K1
U 1 1 5C881454
P 7000 3500
F 0 "K1" H 7450 3550 50  0000 L CNN
F 1 "RM50-3011-85-1024" H 7450 3450 50  0000 L CNN
F 2 "Relpol:Relay_SPDT_Relpol_RM50-3011-85-1024" H 7450 3450 50  0001 L CNN
F 3 "http://www.omron.com/ecb/products/pdf/en-g5le.pdf" H 7000 3100 50  0001 C CNN
	1    7000 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3800 6800 3900
$Comp
L power:GND #PWR07
U 1 1 5C88319F
P 6800 4700
F 0 "#PWR07" H 6800 4450 50  0001 C CNN
F 1 "GND" H 6805 4527 50  0000 C CNN
F 2 "" H 6800 4700 50  0001 C CNN
F 3 "" H 6800 4700 50  0001 C CNN
	1    6800 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 4500 6800 4700
$Comp
L Device:R R11
U 1 1 5C885124
P 6150 4300
F 0 "R11" V 5943 4300 50  0000 C CNN
F 1 "1K" V 6034 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6080 4300 50  0001 C CNN
F 3 "~" H 6150 4300 50  0001 C CNN
	1    6150 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 4300 6500 4300
$Comp
L power:+3V3 #PWR06
U 1 1 5C886F91
P 6800 3000
F 0 "#PWR06" H 6800 2850 50  0001 C CNN
F 1 "+3V3" H 6815 3173 50  0000 C CNN
F 2 "" H 6800 3000 50  0001 C CNN
F 3 "" H 6800 3000 50  0001 C CNN
	1    6800 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3000 6800 3100
$Comp
L Device:D_Schottky D3
U 1 1 5C888E7B
P 6300 3500
F 0 "D3" V 6254 3579 50  0000 L CNN
F 1 "SS34" V 6345 3579 50  0000 L CNN
F 2 "Diodes_SMD:D_SMA_Handsoldering" H 6300 3500 50  0001 C CNN
F 3 "~" H 6300 3500 50  0001 C CNN
	1    6300 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 3350 6300 3100
Wire Wire Line
	6300 3100 6800 3100
Connection ~ 6800 3100
Wire Wire Line
	6800 3100 6800 3200
Wire Wire Line
	6300 3650 6300 3900
Wire Wire Line
	6300 3900 6800 3900
Connection ~ 6800 3900
Wire Wire Line
	6800 3900 6800 4100
Text GLabel 5800 4300 0    50   Input ~ 0
D7
Wire Wire Line
	5800 4300 6000 4300
$Comp
L Converter_ACDC:IRM-02-3.3 PS1
U 1 1 5C893499
P 3100 1200
F 0 "PS1" H 3100 1525 50  0000 C CNN
F 1 "IRM-02-3.3" H 3100 1434 50  0000 C CNN
F 2 "Converters_DCDC_ACDC:ACDC-Conv_THTMeanWell-IRM-02-XX" H 3100 900 50  0001 C CNN
F 3 "http://www.meanwell.com/productPdf.aspx?i=675" H 3500 850 50  0001 C CNN
	1    3100 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5C89353F
P 3600 1900
F 0 "#PWR01" H 3600 1650 50  0001 C CNN
F 1 "GND" H 3605 1727 50  0000 C CNN
F 2 "" H 3600 1900 50  0001 C CNN
F 3 "" H 3600 1900 50  0001 C CNN
	1    3600 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1300 3600 1300
Wire Wire Line
	3600 1300 3600 1900
$Comp
L Device:C_Small C2
U 1 1 5C89C047
P 6000 3500
F 0 "C2" H 6092 3546 50  0000 L CNN
F 1 "10uF" H 6092 3455 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6000 3500 50  0001 C CNN
F 3 "~" H 6000 3500 50  0001 C CNN
	1    6000 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3400 6000 3100
Wire Wire Line
	6000 3100 6300 3100
Connection ~ 6300 3100
$Comp
L power:GND #PWR04
U 1 1 5C89E5F6
P 6000 3800
F 0 "#PWR04" H 6000 3550 50  0001 C CNN
F 1 "GND" H 6005 3627 50  0000 C CNN
F 2 "" H 6000 3800 50  0001 C CNN
F 3 "" H 6000 3800 50  0001 C CNN
	1    6000 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3800 6000 3600
Wire Wire Line
	7300 3200 7300 3100
Wire Wire Line
	7300 3100 8550 3100
Wire Wire Line
	7200 3800 7200 3900
$Comp
L Device:LED D1
U 1 1 5C8A9037
P 5900 1250
F 0 "D1" V 5938 1133 50  0000 R CNN
F 1 "LED" V 5847 1133 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 5900 1250 50  0001 C CNN
F 3 "~" H 5900 1250 50  0001 C CNN
	1    5900 1250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5C8A914E
P 6200 1250
F 0 "D2" V 6238 1133 50  0000 R CNN
F 1 "LED" V 6147 1133 50  0000 R CNN
F 2 "LEDs:LED_0805_HandSoldering" H 6200 1250 50  0001 C CNN
F 3 "~" H 6200 1250 50  0001 C CNN
	1    6200 1250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 5C8A91A0
P 5900 1650
F 0 "R8" V 5693 1650 50  0000 C CNN
F 1 "10K" V 5784 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5830 1650 50  0001 C CNN
F 3 "~" H 5900 1650 50  0001 C CNN
	1    5900 1650
	-1   0    0    1   
$EndComp
$Comp
L Device:R R12
U 1 1 5C8A925A
P 6200 1650
F 0 "R12" V 5993 1650 50  0000 C CNN
F 1 "10K" V 6084 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6130 1650 50  0001 C CNN
F 3 "~" H 6200 1650 50  0001 C CNN
	1    6200 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 1400 5900 1500
Wire Wire Line
	6200 1400 6200 1500
$Comp
L power:GND #PWR03
U 1 1 5C8AE9E1
P 5900 1900
F 0 "#PWR03" H 5900 1650 50  0001 C CNN
F 1 "GND" H 5905 1727 50  0000 C CNN
F 2 "" H 5900 1900 50  0001 C CNN
F 3 "" H 5900 1900 50  0001 C CNN
	1    5900 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1800 5900 1900
Text GLabel 6200 1950 3    50   Input ~ 0
D1
Wire Wire Line
	6200 1800 6200 1950
$Comp
L power:+3V3 #PWR02
U 1 1 5C8B47FB
P 5900 950
F 0 "#PWR02" H 5900 800 50  0001 C CNN
F 1 "+3V3" H 5915 1123 50  0000 C CNN
F 2 "" H 5900 950 50  0001 C CNN
F 3 "" H 5900 950 50  0001 C CNN
	1    5900 950 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR05
U 1 1 5C8B4844
P 6200 950
F 0 "#PWR05" H 6200 800 50  0001 C CNN
F 1 "+3V3" H 6215 1123 50  0000 C CNN
F 2 "" H 6200 950 50  0001 C CNN
F 3 "" H 6200 950 50  0001 C CNN
	1    6200 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 950  5900 1100
Wire Wire Line
	6200 950  6200 1100
$Comp
L Connector:Screw_Terminal_01x02 J5
U 1 1 5C8D166A
P 1250 1150
F 0 "J5" H 1400 1050 50  0000 C CNN
F 1 "AC IN" H 1450 1150 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 1250 1150 50  0001 C CNN
F 3 "~" H 1250 1150 50  0001 C CNN
	1    1250 1150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2350 1100 2700 1100
Wire Wire Line
	2350 1300 2700 1300
$Comp
L Device:R R3
U 1 1 5C7E0E86
P 1450 3500
F 0 "R3" V 1243 3500 50  0000 C CNN
F 1 "10K" V 1334 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1380 3500 50  0001 C CNN
F 3 "~" H 1450 3500 50  0001 C CNN
	1    1450 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	1200 3500 1200 3700
Text Label 7450 3100 0    50   ~ 0
SW-A
Text Label 7450 3900 0    50   ~ 0
SW-B
Wire Wire Line
	1600 3700 1900 3700
$Comp
L power:+3V3 #PWR08
U 1 1 5C93D78C
P 1500 6100
F 0 "#PWR08" H 1500 5950 50  0001 C CNN
F 1 "+3V3" H 1515 6273 50  0000 C CNN
F 2 "" H 1500 6100 50  0001 C CNN
F 3 "" H 1500 6100 50  0001 C CNN
	1    1500 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 1100 3900 1100
$Comp
L Switch:SW_Push SW1
U 1 1 5C8A78C8
P 5500 5800
F 0 "SW1" H 5500 6085 50  0000 C CNN
F 1 "Setup" H 5500 5994 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_PTS645" H 5500 6000 50  0001 C CNN
F 3 "" H 5500 6000 50  0001 C CNN
	1    5500 5800
	0    1    1    0   
$EndComp
Text GLabel 5350 6100 0    50   Input ~ 0
D6
Wire Wire Line
	5350 6100 5500 6100
$Comp
L power:+3V3 #PWR09
U 1 1 5C8AA9F4
P 5500 5500
F 0 "#PWR09" H 5500 5350 50  0001 C CNN
F 1 "+3V3" H 5515 5673 50  0000 C CNN
F 2 "" H 5500 5500 50  0001 C CNN
F 3 "" H 5500 5500 50  0001 C CNN
	1    5500 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5C8AAA39
P 5500 6350
F 0 "R4" V 5293 6350 50  0000 C CNN
F 1 "10K" V 5384 6350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5430 6350 50  0001 C CNN
F 3 "~" H 5500 6350 50  0001 C CNN
	1    5500 6350
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 5500 5500 5600
Wire Wire Line
	5500 6100 5500 6200
Wire Wire Line
	5500 6600 5500 6500
Connection ~ 5500 6100
Wire Wire Line
	5500 6000 5500 6100
$Comp
L power:GND #PWR010
U 1 1 5C8B0B9E
P 5500 6600
F 0 "#PWR010" H 5500 6350 50  0001 C CNN
F 1 "GND" H 5505 6427 50  0000 C CNN
F 2 "" H 5500 6600 50  0001 C CNN
F 3 "" H 5500 6600 50  0001 C CNN
	1    5500 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 3100 3300 3100
Text GLabel 4800 4100 2    50   Input ~ 0
D0
Text GLabel 2350 1100 0    50   Input ~ 0
AC-L
Text GLabel 2350 1300 0    50   Input ~ 0
AC-N
Text GLabel 1550 1150 2    50   Input ~ 0
AC-L
Text GLabel 1550 1250 2    50   Input ~ 0
AC-N
Wire Wire Line
	1450 1150 1550 1150
Wire Wire Line
	1550 1250 1450 1250
Text Notes 5900 3650 1    24   ~ 0
Place close to K1
Text GLabel 8550 3100 2    50   Input ~ 0
AC-L
Wire Wire Line
	7200 3900 8900 3900
Text GLabel 8800 3800 0    50   Input ~ 0
AC-N
Wire Wire Line
	8800 3800 8900 3800
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5C8A32D2
P 9100 3800
F 0 "J2" H 9180 3792 50  0000 L CNN
F 1 "LOAD" H 9180 3701 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 9100 3800 50  0001 C CNN
F 3 "~" H 9100 3800 50  0001 C CNN
	1    9100 3800
	1    0    0    -1  
$EndComp
$EndSCHEMATC
