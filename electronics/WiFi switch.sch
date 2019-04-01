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
Text Label 1550 6300 0    50   ~ 6
VCC
Text GLabel 1950 6500 2    50   Input ~ 6
RX
Text GLabel 1950 6400 2    50   Input ~ 6
TX
Wire Wire Line
	1450 6400 1950 6400
Wire Wire Line
	1450 6500 1950 6500
Text Label 1550 6400 0    50   ~ 6
P_RX
Text Label 1550 6500 0    50   ~ 6
P_TX
Text GLabel 4800 3200 2    50   Input ~ 6
TX
Text GLabel 4800 3400 2    50   Input ~ 6
RX
Wire Wire Line
	4500 3400 4800 3400
Wire Wire Line
	4500 3200 4800 3200
$Comp
L power:+3V3 #PWR0104
U 1 1 5C7DF22D
P 5000 950
F 0 "#PWR0104" H 5000 800 50  0001 C CNN
F 1 "+3V3" H 5015 1123 50  0000 C CNN
F 2 "" H 5000 950 50  0001 C CNN
F 3 "" H 5000 950 50  0001 C CNN
	1    5000 950 
	1    0    0    -1  
$EndComp
Text GLabel 2900 3100 0    50   Input ~ 6
RST
Text GLabel 2900 3300 0    50   Input ~ 6
EN
Wire Wire Line
	2900 3300 3300 3300
Text GLabel 4800 3100 2    50   Input ~ 6
D3
Wire Wire Line
	4500 3100 4800 3100
Text GLabel 4800 3300 2    50   Input ~ 6
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
F 0 "R1" V 1350 3100 50  0000 C CNN
F 1 "10K" V 1450 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1380 3100 50  0001 C CNN
F 3 "~" H 1450 3100 50  0001 C CNN
	1    1450 3100
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5C7E0E5C
P 1450 3300
F 0 "R2" V 1350 3300 50  0000 C CNN
F 1 "10K" V 1450 3300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1380 3300 50  0001 C CNN
F 3 "~" H 1450 3300 50  0001 C CNN
	1    1450 3300
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5C7E0EBC
P 1450 3700
F 0 "R4" V 1350 3700 50  0000 C CNN
F 1 "10K" V 1450 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1380 3700 50  0001 C CNN
F 3 "~" H 1450 3700 50  0001 C CNN
	1    1450 3700
	0    1    1    0   
$EndComp
Text GLabel 1900 3100 2    50   Input ~ 6
EN
Text GLabel 1900 3300 2    50   Input ~ 6
D3
Text GLabel 1900 3500 2    50   Input ~ 6
D4
Text GLabel 1900 3700 2    50   Input ~ 6
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
L power:GND #PWR0113
U 1 1 5C80B492
P 5000 1900
F 0 "#PWR0113" H 5000 1650 50  0001 C CNN
F 1 "GND" H 5005 1727 50  0000 C CNN
F 2 "" H 5000 1900 50  0001 C CNN
F 3 "" H 5000 1900 50  0001 C CNN
	1    5000 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1700 5000 1900
$Comp
L power:GND #PWR0114
U 1 1 5C80D7B4
P 4550 1900
F 0 "#PWR0114" H 4550 1650 50  0001 C CNN
F 1 "GND" H 4555 1727 50  0000 C CNN
F 2 "" H 4550 1900 50  0001 C CNN
F 3 "" H 4550 1900 50  0001 C CNN
	1    4550 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 1700 4550 1900
Wire Wire Line
	4550 1100 4550 1500
Wire Wire Line
	4550 1100 5000 1100
Wire Wire Line
	5000 1100 5000 1500
Connection ~ 4550 1100
Wire Wire Line
	5000 1100 5000 950 
Connection ~ 5000 1100
Text GLabel 4800 4000 2    50   Input ~ 6
D8
Wire Wire Line
	4500 4000 4800 4000
Text Notes 4450 1750 1    24   ~ 4
Place close to U2
Text Notes 4900 1750 1    24   ~ 4
Place close to U2
Text GLabel 4800 3600 2    50   Input ~ 6
D1
Text GLabel 4800 3500 2    50   Input ~ 6
D2
Wire Wire Line
	4500 3500 4800 3500
Wire Wire Line
	4800 3600 4500 3600
Text GLabel 4800 3700 2    50   Input ~ 6
D6
Wire Wire Line
	4500 3700 4800 3700
Text GLabel 4800 3800 2    50   Input ~ 6
D7
Text GLabel 4800 3900 2    50   Input ~ 6
D5
Wire Wire Line
	4500 3800 4800 3800
Wire Wire Line
	4800 3900 4500 3900
Text GLabel 2900 3500 0    50   Input ~ 6
ADC
Wire Wire Line
	2900 3500 3300 3500
Wire Wire Line
	4500 4100 4800 4100
$Comp
L Transistor_BJT:BC817 Q1
U 1 1 5C881378
P 6700 4300
F 0 "Q1" H 6891 4346 50  0000 L CNN
F 1 "BC817" H 6891 4255 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6900 4225 50  0001 L CIN
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
L Device:R R9
U 1 1 5C885124
P 6150 4300
F 0 "R9" V 6050 4300 50  0000 C CNN
F 1 "1K" V 6150 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6080 4300 50  0001 C CNN
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
F 2 "Diodes_SMD:D_SMA" H 6300 3500 50  0001 C CNN
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
Text GLabel 5800 4300 0    50   Input ~ 6
D7
Wire Wire Line
	5800 4300 6000 4300
$Comp
L Converter_ACDC:IRM-02-3.3 PS1
U 1 1 5C893499
P 3750 1200
F 0 "PS1" H 3750 1525 50  0000 C CNN
F 1 "IRM-02-3.3" H 3750 1434 50  0000 C CNN
F 2 "Converters_DCDC_ACDC:ACDC-Conv_THTMeanWell-IRM-02-XX" H 3750 900 50  0001 C CNN
F 3 "http://www.meanwell.com/productPdf.aspx?i=675" H 4150 850 50  0001 C CNN
	1    3750 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5C89353F
P 4250 1900
F 0 "#PWR01" H 4250 1650 50  0001 C CNN
F 1 "GND" H 4255 1727 50  0000 C CNN
F 2 "" H 4250 1900 50  0001 C CNN
F 3 "" H 4250 1900 50  0001 C CNN
	1    4250 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1300 4250 1300
Wire Wire Line
	4250 1300 4250 1900
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
P 6100 1250
F 0 "D1" V 6138 1133 50  0000 R CNN
F 1 "LED" V 6047 1133 50  0000 R CNN
F 2 "LEDs:LED_0805" H 6100 1250 50  0001 C CNN
F 3 "~" H 6100 1250 50  0001 C CNN
	1    6100 1250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5C8A91A0
P 6100 1650
F 0 "R6" V 6200 1650 50  0000 C CNN
F 1 "10K" V 6100 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6030 1650 50  0001 C CNN
F 3 "~" H 6100 1650 50  0001 C CNN
	1    6100 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	6100 1400 6100 1500
$Comp
L power:GND #PWR03
U 1 1 5C8AE9E1
P 6100 1900
F 0 "#PWR03" H 6100 1650 50  0001 C CNN
F 1 "GND" H 6105 1727 50  0000 C CNN
F 2 "" H 6100 1900 50  0001 C CNN
F 3 "" H 6100 1900 50  0001 C CNN
	1    6100 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1800 6100 1900
$Comp
L power:+3V3 #PWR02
U 1 1 5C8B47FB
P 6100 950
F 0 "#PWR02" H 6100 800 50  0001 C CNN
F 1 "+3V3" H 6115 1123 50  0000 C CNN
F 2 "" H 6100 950 50  0001 C CNN
F 3 "" H 6100 950 50  0001 C CNN
	1    6100 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 950  6100 1100
Wire Wire Line
	2650 1300 3350 1300
$Comp
L Device:R R3
U 1 1 5C7E0E86
P 1450 3500
F 0 "R3" V 1350 3500 50  0000 C CNN
F 1 "10K" V 1450 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1380 3500 50  0001 C CNN
F 3 "~" H 1450 3500 50  0001 C CNN
	1    1450 3500
	0    1    1    0   
$EndComp
Text Label 7450 3100 0    50   ~ 6
SW-A
Text Label 7450 3900 0    50   ~ 6
SW-B
Wire Wire Line
	1600 3700 1900 3700
$Comp
L power:+3V3 #PWR08
U 1 1 5C93D78C
P 1750 6100
F 0 "#PWR08" H 1750 5950 50  0001 C CNN
F 1 "+3V3" H 1765 6273 50  0000 C CNN
F 2 "" H 1750 6100 50  0001 C CNN
F 3 "" H 1750 6100 50  0001 C CNN
	1    1750 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1100 4550 1100
Wire Wire Line
	2900 3100 3300 3100
Text GLabel 4800 4100 2    50   Input ~ 6
D0
Text GLabel 2650 1100 0    50   Input ~ 6
AC-L
Text GLabel 2650 1300 0    50   Input ~ 6
AC-N
Text GLabel 1700 1100 2    50   Input ~ 6
AC-L
Text GLabel 1700 1200 2    50   Input ~ 6
AC-N
Wire Wire Line
	1700 1200 1200 1200
Text Notes 5900 3650 1    24   ~ 4
Place close to K1
Text GLabel 8550 3100 2    50   Input ~ 6
AC-L
Wire Wire Line
	7200 3900 8900 3900
Text GLabel 8800 3800 0    50   Input ~ 6
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
$Comp
L Device:Fuse F2
U 1 1 5CA3133B
P 3000 1100
F 0 "F2" V 2803 1100 50  0000 C CNN
F 1 "0.08A LVR008NK" V 2894 1100 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_TE5_Littlefuse-395Series" V 2930 1100 50  0001 C CNN
F 3 "https://docs-emea.rs-online.com/webdocs/0512/0900766b80512d3e.pdf" H 3000 1100 50  0001 C CNN
	1    3000 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 1100 2850 1100
Wire Wire Line
	3150 1100 3350 1100
Wire Wire Line
	1200 1100 1300 1100
Wire Wire Line
	1600 1100 1700 1100
$Comp
L Device:Fuse F1
U 1 1 5CA3EDC3
P 1450 1100
F 0 "F1" V 1253 1100 50  0000 C CNN
F 1 "5A" V 1344 1100 50  0000 C CNN
F 2 "Fuses:RS Pro Non-resettable fuse" V 1380 1100 50  0001 C CNN
F 3 "https://docs-emea.rs-online.com/webdocs/1587/0900766b815878e4.pdf" H 1450 1100 50  0001 C CNN
	1    1450 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 3500 1200 3500
Wire Wire Line
	8500 950  8500 1050
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
	8500 1450 8600 1450
Wire Wire Line
	8500 1350 8500 1450
$Comp
L Device:R R8
U 1 1 5C8EF705
P 8500 1200
F 0 "R8" V 8600 1250 50  0000 R CNN
F 1 "4.7K" V 8500 1300 50  0000 R CNN
F 2 "Resistors_SMD:R_0805" V 8430 1200 50  0001 C CNN
F 3 "~" H 8500 1200 50  0001 C CNN
	1    8500 1200
	-1   0    0    1   
$EndComp
Connection ~ 8500 1450
Wire Wire Line
	8400 1450 8500 1450
Text GLabel 8600 1450 2    50   Input ~ 6
D5
Wire Wire Line
	8100 950  8100 1150
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
	8100 1750 8100 1950
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
Wire Wire Line
	3650 5900 3650 6150
Wire Wire Line
	3650 6550 3650 6750
$Comp
L Switch:SW_Push SW2
U 1 1 5CA9CCE2
P 3650 6350
F 0 "SW2" H 3650 6635 50  0000 C CNN
F 1 "Flash/Setup" H 3650 6544 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_PTS645" H 3650 6550 50  0001 C CNN
F 3 "" H 3650 6550 50  0001 C CNN
	1    3650 6350
	0    1    1    0   
$EndComp
Text GLabel 3650 5900 1    50   Input ~ 6
D3
$Comp
L power:GND #PWR010
U 1 1 5CA9CCE9
P 3650 6750
F 0 "#PWR010" H 3650 6500 50  0001 C CNN
F 1 "GND" H 3655 6577 50  0000 C CNN
F 2 "" H 3650 6750 50  0001 C CNN
F 3 "" H 3650 6750 50  0001 C CNN
	1    3650 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 5950 3000 6050
Wire Wire Line
	3000 6550 3000 6650
$Comp
L Switch:SW_Push SW1
U 1 1 5CAA2471
P 3000 6350
F 0 "SW1" H 3000 6635 50  0000 C CNN
F 1 "Reset" H 3000 6544 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_PTS645" H 3000 6550 50  0001 C CNN
F 3 "" H 3000 6550 50  0001 C CNN
	1    3000 6350
	0    1    1    0   
$EndComp
Text GLabel 3000 5950 1    50   Input ~ 6
RST
$Comp
L power:GND #PWR09
U 1 1 5CAA2478
P 3000 6750
F 0 "#PWR09" H 3000 6500 50  0001 C CNN
F 1 "GND" H 3005 6577 50  0000 C CNN
F 2 "" H 3000 6750 50  0001 C CNN
F 3 "" H 3000 6750 50  0001 C CNN
	1    3000 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 6300 1750 6300
Wire Wire Line
	1750 6300 1750 6100
Text Label 1550 6600 0    50   ~ 6
GND
Wire Wire Line
	1750 6600 1750 6750
Wire Wire Line
	1450 6600 1750 6600
$Comp
L power:GND #PWR0101
U 1 1 5C7DBE18
P 1750 6750
F 0 "#PWR0101" H 1750 6500 50  0001 C CNN
F 1 "GND" H 1755 6577 50  0000 C CNN
F 2 "" H 1750 6750 50  0001 C CNN
F 3 "" H 1750 6750 50  0001 C CNN
	1    1750 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 3500 1200 3700
Wire Wire Line
	1200 3700 1300 3700
Connection ~ 1200 3500
Wire Wire Line
	1200 3900 1200 4000
Wire Wire Line
	1300 3900 1200 3900
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
	1600 3900 1900 3900
Text GLabel 1900 3900 2    50   Input ~ 6
D8
$Comp
L Device:R R5
U 1 1 5C7E463D
P 1450 3900
F 0 "R5" V 1350 3900 50  0000 C CNN
F 1 "10K" V 1450 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 1380 3900 50  0001 C CNN
F 3 "~" H 1450 3900 50  0001 C CNN
	1    1450 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 6250 2650 6050
Wire Wire Line
	2650 6050 3000 6050
Connection ~ 3000 6050
Wire Wire Line
	3000 6050 3000 6150
Wire Wire Line
	2650 6450 2650 6650
Wire Wire Line
	2650 6650 3000 6650
Connection ~ 3000 6650
Wire Wire Line
	3000 6650 3000 6750
$Comp
L Device:C_Small C1
U 1 1 5C80D7AC
P 4550 1600
F 0 "C1" H 4642 1646 50  0000 L CNN
F 1 "10uF" H 4642 1555 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4550 1600 50  0001 C CNN
F 3 "~" H 4550 1600 50  0001 C CNN
	1    4550 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5C80B48A
P 5000 1600
F 0 "C2" H 5092 1646 50  0000 L CNN
F 1 "100nF" H 5092 1555 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5000 1600 50  0001 C CNN
F 3 "~" H 5000 1600 50  0001 C CNN
	1    5000 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5C89C047
P 6000 3500
F 0 "C3" H 6092 3546 50  0000 L CNN
F 1 "10uF" H 6092 3455 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 6000 3500 50  0001 C CNN
F 3 "~" H 6000 3500 50  0001 C CNN
	1    6000 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C4
U 1 1 5CACC850
P 2650 6350
F 0 "C4" H 2742 6396 50  0000 L CNN
F 1 "100nF" H 2742 6305 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 2650 6350 50  0001 C CNN
F 3 "~" H 2650 6350 50  0001 C CNN
	1    2650 6350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J3
U 1 1 5C7DBCE5
P 1250 6400
F 0 "J3" H 1200 6400 50  0000 C CNN
F 1 "Programmer" H 1000 6300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 1250 6400 50  0001 C CNN
F 3 "~" H 1250 6400 50  0001 C CNN
	1    1250 6400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5C8A914E
P 6500 1250
F 0 "D2" V 6538 1133 50  0000 R CNN
F 1 "LED" V 6447 1133 50  0000 R CNN
F 2 "LEDs:LED_0805" H 6500 1250 50  0001 C CNN
F 3 "~" H 6500 1250 50  0001 C CNN
	1    6500 1250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5C8A925A
P 6500 1650
F 0 "R7" V 6600 1650 50  0000 C CNN
F 1 "10K" V 6500 1650 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6430 1650 50  0001 C CNN
F 3 "~" H 6500 1650 50  0001 C CNN
	1    6500 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	6500 1400 6500 1500
Text GLabel 6500 1950 3    50   Input ~ 6
D1
Wire Wire Line
	6500 1800 6500 1950
$Comp
L power:+3V3 #PWR05
U 1 1 5C8B4844
P 6500 950
F 0 "#PWR05" H 6500 800 50  0001 C CNN
F 1 "+3V3" H 6515 1123 50  0000 C CNN
F 2 "" H 6500 950 50  0001 C CNN
F 3 "" H 6500 950 50  0001 C CNN
	1    6500 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 950  6500 1100
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5C8D166A
P 1000 1200
F 0 "J1" H 1150 1100 50  0000 C CNN
F 1 "AC IN" H 1200 1200 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 1000 1200 50  0001 C CNN
F 3 "~" H 1000 1200 50  0001 C CNN
	1    1000 1200
	-1   0    0    1   
$EndComp
$EndSCHEMATC
