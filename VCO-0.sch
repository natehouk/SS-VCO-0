EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "VCO-0"
Date "2020-09-21"
Rev "0"
Comp "Seattle Synths"
Comment1 "Designed by Nathaniel Houk"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:LED D1
U 1 1 5F643A95
P 7050 2600
F 0 "D1" H 7043 2345 50  0000 C CNN
F 1 "LED" H 7043 2436 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 7050 2600 50  0001 C CNN
F 3 "~" H 7050 2600 50  0001 C CNN
	1    7050 2600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5F685250
P 7550 2600
F 0 "R3" V 7450 2600 50  0000 C CNN
F 1 "330R" V 7550 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7480 2600 50  0001 C CNN
F 3 "~" H 7550 2600 50  0001 C CNN
	1    7550 2600
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 2600 7200 2600
Wire Wire Line
	7700 2600 7700 4000
$Comp
L arduino:Arduino_Mega2560_Shield XA1
U 1 1 5F639863
P 3600 3550
F 0 "XA1" H 3600 1169 60  0000 C CNN
F 1 "Arduino_Mega2560_Shield" H 3600 1063 60  0000 C CNN
F 2 "Arduino:Arduino_Mega2560_Shield" H 4300 6300 60  0001 C CNN
F 3 "https://store.arduino.cc/arduino-mega-2560-rev3" H 4300 6300 60  0001 C CNN
	1    3600 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 6400 1150 4800
Wire Wire Line
	1150 4800 2300 4800
Wire Wire Line
	4900 2600 6050 2600
Wire Wire Line
	4900 2800 5600 2800
Wire Wire Line
	5600 3250 5600 2800
Connection ~ 5600 2800
Wire Wire Line
	5600 3550 5600 4000
Wire Wire Line
	2300 5700 850  5700
Wire Wire Line
	850  5700 850  6200
Wire Wire Line
	850  6200 6600 6200
Wire Wire Line
	4900 3000 5850 3000
Wire Wire Line
	5850 3000 5850 3250
$Comp
L Device:R R2
U 1 1 5F6B1E79
P 5850 3400
F 0 "R2" V 5750 3350 50  0000 L CNN
F 1 "10K" V 5850 3350 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5780 3400 50  0001 C CNN
F 3 "~" H 5850 3400 50  0001 C CNN
	1    5850 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3550 5850 4000
Wire Wire Line
	5850 4000 5600 4000
Wire Wire Line
	5850 3000 6050 3000
Connection ~ 5850 3000
Wire Wire Line
	5850 4000 5950 4000
Connection ~ 5850 4000
Connection ~ 7700 4000
Wire Wire Line
	7700 4000 7700 6400
Wire Wire Line
	1150 6400 7700 6400
Wire Wire Line
	5600 2800 6200 2800
Connection ~ 6600 3250
$Comp
L Switch:SW_Push SW2
U 1 1 5F6AFC4E
P 6400 3250
F 0 "SW2" H 6400 3535 50  0000 C CNN
F 1 "SW_Push" H 6400 3444 50  0000 C CNN
F 2 "Button_Switch_THT:SW_CW_GPTS203211B" H 6400 3450 50  0001 C CNN
F 3 "~" H 6400 3450 50  0001 C CNN
	1    6400 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 6200 6600 3250
$Comp
L Switch:SW_Push SW1
U 1 1 5F6AAE10
P 6400 2800
F 0 "SW1" H 6400 3085 50  0000 C CNN
F 1 "SW_Push" H 6400 2994 50  0000 C CNN
F 2 "Button_Switch_THT:SW_CW_GPTS203211B" H 6400 3000 50  0001 C CNN
F 3 "~" H 6400 3000 50  0001 C CNN
	1    6400 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3250 6600 2800
$Comp
L Device:R_Potentiometer RV1
U 1 1 5F6C6E6F
P 1150 2700
F 0 "RV1" V 1050 2800 50  0000 R CNN
F 1 "10K" V 1150 2800 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK163_Single_Horizontal" H 1150 2700 50  0001 C CNN
F 3 "~" H 1150 2700 50  0001 C CNN
	1    1150 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Potentiometer RV3
U 1 1 5F6CEB32
P 1450 3400
F 0 "RV3" V 1350 3500 50  0000 R CNN
F 1 "10K" V 1450 3500 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK163_Single_Horizontal" H 1450 3400 50  0001 C CNN
F 3 "~" H 1450 3400 50  0001 C CNN
	1    1450 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Potentiometer RV4
U 1 1 5F6CF453
P 1600 3750
F 0 "RV4" V 1500 3850 50  0000 R CNN
F 1 "10K" V 1600 3850 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK163_Single_Horizontal" H 1600 3750 50  0001 C CNN
F 3 "~" H 1600 3750 50  0001 C CNN
	1    1600 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Potentiometer RV5
U 1 1 5F6CFA6C
P 1750 4150
F 0 "RV5" V 1650 4250 50  0000 R CNN
F 1 "10K" V 1750 4250 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK163_Single_Horizontal" H 1750 4150 50  0001 C CNN
F 3 "~" H 1750 4150 50  0001 C CNN
	1    1750 4150
	1    0    0    -1  
$EndComp
Connection ~ 1150 4800
Wire Wire Line
	1150 2850 1150 3200
$Comp
L Device:R_Potentiometer RV2
U 1 1 5F6C7B0E
P 1300 3050
F 0 "RV2" V 1200 3150 50  0000 R CNN
F 1 "10K" V 1300 3150 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Alps_RK163_Single_Horizontal" H 1300 3050 50  0001 C CNN
F 3 "~" H 1300 3050 50  0001 C CNN
	1    1300 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 3200 1150 3200
Connection ~ 1150 3200
Wire Wire Line
	1150 3200 1150 3550
Wire Wire Line
	1450 3550 1150 3550
Connection ~ 1150 3550
Wire Wire Line
	1150 3550 1150 3900
Wire Wire Line
	1600 3900 1150 3900
Connection ~ 1150 3900
Wire Wire Line
	1750 4300 1150 4300
Connection ~ 1150 4300
Wire Wire Line
	1150 4300 1150 4800
Wire Wire Line
	1300 2700 2300 2700
Wire Wire Line
	1450 3050 1650 3050
Wire Wire Line
	1650 3050 1650 2800
Wire Wire Line
	1650 2800 2300 2800
Wire Wire Line
	1600 3400 1800 3400
Wire Wire Line
	1800 3400 1800 2900
Wire Wire Line
	1800 2900 2300 2900
Wire Wire Line
	1750 3750 1950 3750
Wire Wire Line
	1950 3750 1950 3000
Wire Wire Line
	1950 3000 2300 3000
Wire Wire Line
	1900 4150 2100 4150
Wire Wire Line
	2100 4150 2100 3100
Wire Wire Line
	2100 3100 2300 3100
Wire Wire Line
	1750 4000 850  4000
Wire Wire Line
	850  4000 850  5700
Connection ~ 850  5700
Wire Wire Line
	850  4000 850  3600
Wire Wire Line
	850  3600 1600 3600
Wire Wire Line
	1150 3900 1150 4300
Connection ~ 850  4000
Wire Wire Line
	850  3600 850  3250
Wire Wire Line
	850  3250 1450 3250
Connection ~ 850  3600
Wire Wire Line
	850  3250 850  2900
Wire Wire Line
	850  2900 1300 2900
Connection ~ 850  3250
Wire Wire Line
	850  2900 850  2550
Wire Wire Line
	850  2550 1150 2550
Connection ~ 850  2900
$Comp
L Device:R R1
U 1 1 5F6ABA9C
P 5600 3400
F 0 "R1" V 5500 3350 50  0000 L CNN
F 1 "10K" V 5600 3350 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5530 3400 50  0001 C CNN
F 3 "~" H 5600 3400 50  0001 C CNN
	1    5600 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2600 6050 2300
Wire Wire Line
	6050 2300 6750 2300
Wire Wire Line
	6750 2300 6750 2600
Wire Wire Line
	6750 2600 6900 2600
Wire Wire Line
	6050 3000 6050 3250
Wire Wire Line
	6050 3250 6200 3250
$Comp
L Display_Character:RC1602A U1
U 1 1 5F6A5DD5
P 5800 1500
F 0 "U1" H 5800 2381 50  0000 C CNN
F 1 "RC1602A" H 5800 2290 50  0000 C CNN
F 2 "Display:WC1602A" H 5900 700 50  0001 C CNN
F 3 "http://www.raystar-optronics.com/down.php?ProID=18" H 5900 1400 50  0001 C CNN
	1    5800 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 800  6600 2800
Connection ~ 6600 2800
Wire Wire Line
	5800 2300 5950 2300
Wire Wire Line
	5950 2300 5950 4000
Wire Wire Line
	5800 2200 5800 2300
Connection ~ 5950 4000
Wire Wire Line
	5950 4000 7700 4000
Wire Wire Line
	6800 1150 6800 800 
Wire Wire Line
	6800 800  6600 800 
Connection ~ 6600 800 
Wire Wire Line
	6800 1450 6800 2200
Wire Wire Line
	6800 2200 6300 2200
Connection ~ 5800 2200
$Comp
L Device:R_Potentiometer_Trim RV6
U 1 1 5F6BE4FC
P 6800 1300
F 0 "RV6" H 6731 1346 50  0000 R CNN
F 1 "R_Potentiometer_Trim" H 6731 1255 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 6800 1300 50  0001 C CNN
F 3 "~" H 6800 1300 50  0001 C CNN
	1    6800 1300
	-1   0    0    1   
$EndComp
Wire Wire Line
	6650 1300 6500 1300
Wire Wire Line
	4900 1600 4950 1600
Wire Wire Line
	4950 1600 4950 1000
Wire Wire Line
	4950 1000 5400 1000
Wire Wire Line
	5400 1100 5350 1100
Wire Wire Line
	5350 1100 5350 2200
Wire Wire Line
	4900 1800 5050 1800
Wire Wire Line
	5050 1800 5050 1200
Wire Wire Line
	5050 1200 5400 1200
Wire Wire Line
	5350 2200 5800 2200
Wire Wire Line
	5100 1700 5400 1700
Wire Wire Line
	5150 1800 5400 1800
Wire Wire Line
	5200 1900 5400 1900
Wire Wire Line
	5250 2000 5400 2000
Wire Wire Line
	2300 5300 2200 5300
Wire Wire Line
	2200 5300 2200 850 
Wire Wire Line
	2200 850  6400 850 
Wire Wire Line
	6400 850  6400 1800
Wire Wire Line
	6400 1800 6350 1800
Wire Wire Line
	6200 1700 6300 1700
Wire Wire Line
	6300 1700 6300 2200
Connection ~ 6300 2200
Wire Wire Line
	6300 2200 5800 2200
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5F7240F2
P 6500 1250
F 0 "#FLG02" H 6500 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 6500 1423 50  0000 C CNN
F 2 "" H 6500 1250 50  0001 C CNN
F 3 "~" H 6500 1250 50  0001 C CNN
	1    6500 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 1250 6500 1300
Connection ~ 6500 1300
Wire Wire Line
	6500 1300 6200 1300
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5F72826B
P 6350 1550
F 0 "#FLG01" H 6350 1625 50  0001 C CNN
F 1 "PWR_FLAG" H 6350 1723 50  0000 C CNN
F 2 "" H 6350 1550 50  0001 C CNN
F 3 "~" H 6350 1550 50  0001 C CNN
	1    6350 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 800  6600 800 
Wire Wire Line
	6350 1550 6350 1800
Connection ~ 6350 1800
Wire Wire Line
	6350 1800 6200 1800
Wire Wire Line
	5100 1700 5100 1900
Wire Wire Line
	5100 1900 4900 1900
Wire Wire Line
	5150 1800 5150 2000
Wire Wire Line
	5150 2000 4900 2000
Wire Wire Line
	5200 1900 5200 2100
Wire Wire Line
	5200 2100 4900 2100
Wire Wire Line
	5250 2000 5250 2200
Wire Wire Line
	5250 2200 4900 2200
$Sheet
S 8800 1050 900  550 
U 5F75BB76
F0 "AS3320 VCF" 50
F1 "AS3320.sch" 50
$EndSheet
NoConn ~ -3300 -950
$EndSCHEMATC
