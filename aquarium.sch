EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Aquarium clock-driven LED dimmer"
Date "2020-10-07"
Rev "v1.0"
Comp "Martin Jakubik"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5F7D8F27
P 3600 5350
F 0 "A1" H 3950 6300 50  0000 C CNN
F 1 "Arduino Nano" H 4000 4400 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 3600 5350 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 3600 5350 50  0001 C CNN
	1    3600 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR017
U 1 1 5F7DC330
P 3500 4250
F 0 "#PWR017" H 3500 4100 50  0001 C CNN
F 1 "+12V" H 3500 4400 50  0000 C CNN
F 2 "" H 3500 4250 50  0001 C CNN
F 3 "" H 3500 4250 50  0001 C CNN
	1    3500 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 4250 3500 4350
$Comp
L Timer_RTC:DS3231M U1
U 1 1 5F7DC97C
P 2650 1550
F 0 "U1" H 3000 1900 50  0000 C CNN
F 1 "DS3231" H 2900 1200 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 2650 950 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS3231.pdf" H 2920 1600 50  0001 C CNN
	1    2650 1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5F7E11E8
P 3600 6450
F 0 "#PWR021" H 3600 6200 50  0001 C CNN
F 1 "GND" H 3600 6300 50  0000 C CNN
F 2 "" H 3600 6450 50  0001 C CNN
F 3 "" H 3600 6450 50  0001 C CNN
	1    3600 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 6450 3600 6400
Wire Wire Line
	3600 6400 3700 6400
Wire Wire Line
	3700 6400 3700 6350
Connection ~ 3600 6400
Wire Wire Line
	3600 6400 3600 6350
$Comp
L Transistor_FET:IRLZ44N Q1
U 1 1 5F7E2568
P 10000 4650
F 0 "Q1" H 10200 4750 50  0000 L CNN
F 1 "IRLZ44N" H 10200 4550 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 10250 4575 50  0001 L CIN
F 3 "http://www.irf.com/product-info/datasheets/data/irlz44n.pdf" H 10000 4650 50  0001 L CNN
	1    10000 4650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Barrel_Jack J1
U 1 1 5F7E5855
P 5450 1200
F 0 "J1" H 5450 1400 50  0000 C CNN
F 1 "DC Input" H 5450 1000 50  0000 C CNN
F 2 "" H 5500 1160 50  0001 C CNN
F 3 "~" H 5500 1160 50  0001 C CNN
	1    5450 1200
	1    0    0    -1  
$EndComp
$Comp
L symbols:TC4426ACPA U2
U 1 1 5F7EA3B9
P 9250 4700
F 0 "U2" H 9500 5200 50  0000 C CNN
F 1 "TC4426ACPA" H 9550 4200 50  0000 C CNN
F 2 "" H 9250 4700 50  0001 C CNN
F 3 "https://www.distrelec.sk/Web/Downloads/_t/ds/TC4426A_24A_28Ax_eng_tds.pdf" H 9250 4700 50  0001 C CNN
	1    9250 4700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPDT SW2
U 1 1 5F7EDB3B
P 5850 2100
F 0 "SW2" H 5850 2300 50  0000 C CNN
F 1 "Power switch" H 5850 1900 50  0000 C CNN
F 2 "" H 5850 2100 50  0001 C CNN
F 3 "~" H 5850 2100 50  0001 C CNN
	1    5850 2100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5F7EE74A
P 8600 1100
F 0 "SW1" H 8600 1300 50  0000 C CNN
F 1 "Interval reset" H 8600 1000 50  0000 C CNN
F 2 "" H 8600 1300 50  0001 C CNN
F 3 "~" H 8600 1300 50  0001 C CNN
	1    8600 1100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5F7EF3C5
P 7250 1650
F 0 "RV1" H 7150 1750 50  0000 R CNN
F 1 "Gradient time" H 7150 1550 50  0000 R CNN
F 2 "" H 7250 1650 50  0001 C CNN
F 3 "~" H 7250 1650 50  0001 C CNN
	1    7250 1650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Barrel_Jack J2
U 1 1 5F7EFA4B
P 10150 1300
F 0 "J2" H 10150 1500 50  0000 C CNN
F 1 "LED 1 Output" H 10150 1100 50  0000 C CNN
F 2 "" H 10200 1260 50  0001 C CNN
F 3 "~" H 10200 1260 50  0001 C CNN
	1    10150 1300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Barrel_Jack J3
U 1 1 5F7F0007
P 10150 2100
F 0 "J3" H 10150 2300 50  0000 C CNN
F 1 "LED 2 Output" H 10150 1900 50  0000 C CNN
F 2 "" H 10200 2060 50  0001 C CNN
F 3 "~" H 10200 2060 50  0001 C CNN
	1    10150 2100
	1    0    0    -1  
$EndComp
NoConn ~ 3700 4350
$Comp
L power:+5V #PWR018
U 1 1 5F7DCC94
P 3800 4250
F 0 "#PWR018" H 3800 4100 50  0001 C CNN
F 1 "+5V" H 3800 4400 50  0000 C CNN
F 2 "" H 3800 4250 50  0001 C CNN
F 3 "" H 3800 4250 50  0001 C CNN
	1    3800 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4250 3800 4350
$Comp
L power:GND #PWR013
U 1 1 5F7DD4DD
P 2650 2050
F 0 "#PWR013" H 2650 1800 50  0001 C CNN
F 1 "GND" H 2650 1900 50  0000 C CNN
F 2 "" H 2650 2050 50  0001 C CNN
F 3 "" H 2650 2050 50  0001 C CNN
	1    2650 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2050 2650 1950
NoConn ~ 2650 1150
$Comp
L power:+5V #PWR01
U 1 1 5F7DDF7F
P 2550 1050
F 0 "#PWR01" H 2550 900 50  0001 C CNN
F 1 "+5V" H 2550 1200 50  0000 C CNN
F 2 "" H 2550 1050 50  0001 C CNN
F 3 "" H 2550 1050 50  0001 C CNN
	1    2550 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1050 2550 1150
$Comp
L power:GND #PWR020
U 1 1 5F7E132C
P 9250 5350
F 0 "#PWR020" H 9250 5100 50  0001 C CNN
F 1 "GND" H 9300 5150 50  0000 C CNN
F 2 "" H 9250 5350 50  0001 C CNN
F 3 "" H 9250 5350 50  0001 C CNN
	1    9250 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 5350 9250 5250
$Comp
L power:+12V #PWR016
U 1 1 5F7E1AF0
P 9250 4050
F 0 "#PWR016" H 9250 3900 50  0001 C CNN
F 1 "+12V" H 9250 4200 50  0000 C CNN
F 2 "" H 9250 4050 50  0001 C CNN
F 3 "" H 9250 4050 50  0001 C CNN
	1    9250 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4050 9250 4150
$Comp
L power:GND #PWR06
U 1 1 5F7E8F3A
P 5800 1350
F 0 "#PWR06" H 5800 1100 50  0001 C CNN
F 1 "GND" H 5800 1200 50  0000 C CNN
F 2 "" H 5800 1350 50  0001 C CNN
F 3 "" H 5800 1350 50  0001 C CNN
	1    5800 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 1350 5800 1300
Wire Wire Line
	5800 1300 5750 1300
$Comp
L Device:C C1
U 1 1 5F7EAC1B
P 1700 3650
F 0 "C1" H 1800 3700 50  0000 L CNN
F 1 "1u-100u" H 1800 3600 50  0000 L CNN
F 2 "" H 1738 3500 50  0001 C CNN
F 3 "~" H 1700 3650 50  0001 C CNN
	1    1700 3650
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR014
U 1 1 5F7EAE10
P 1700 3450
F 0 "#PWR014" H 1700 3300 50  0001 C CNN
F 1 "+12V" H 1700 3600 50  0000 C CNN
F 2 "" H 1700 3450 50  0001 C CNN
F 3 "" H 1700 3450 50  0001 C CNN
	1    1700 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5F7EB215
P 1700 3850
F 0 "#PWR015" H 1700 3600 50  0001 C CNN
F 1 "GND" H 1700 3700 50  0000 C CNN
F 2 "" H 1700 3850 50  0001 C CNN
F 3 "" H 1700 3850 50  0001 C CNN
	1    1700 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 3450 1700 3500
Wire Wire Line
	1700 3800 1700 3850
$Comp
L power:+5V #PWR07
U 1 1 5F7F70B7
P 7250 1450
F 0 "#PWR07" H 7250 1300 50  0001 C CNN
F 1 "+5V" H 7250 1600 50  0000 C CNN
F 2 "" H 7250 1450 50  0001 C CNN
F 3 "" H 7250 1450 50  0001 C CNN
	1    7250 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1450 7250 1500
$Comp
L power:GND #PWR010
U 1 1 5F7F7ECA
P 7250 1850
F 0 "#PWR010" H 7250 1600 50  0001 C CNN
F 1 "GND" H 7250 1700 50  0000 C CNN
F 2 "" H 7250 1850 50  0001 C CNN
F 3 "" H 7250 1850 50  0001 C CNN
	1    7250 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1850 7250 1800
Text GLabel 7400 1650 2    50   Input ~ 0
IN_GRAD
Text GLabel 5750 1100 2    50   Input ~ 0
VCC_CON
Text GLabel 5650 2100 0    50   Input ~ 0
VCC_CON
$Comp
L power:+12V #PWR011
U 1 1 5F7FE21B
P 6100 1950
F 0 "#PWR011" H 6100 1800 50  0001 C CNN
F 1 "+12V" H 6150 2150 50  0000 C CNN
F 2 "" H 6100 1950 50  0001 C CNN
F 3 "" H 6100 1950 50  0001 C CNN
	1    6100 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2000 6100 2000
Wire Wire Line
	6100 2000 6100 1950
NoConn ~ 6050 2200
Text GLabel 8800 1100 2    50   Input ~ 0
IN_RESET
$Comp
L power:GND #PWR03
U 1 1 5F7FFC86
P 8250 1200
F 0 "#PWR03" H 8250 950 50  0001 C CNN
F 1 "GND" H 8250 1050 50  0000 C CNN
F 2 "" H 8250 1200 50  0001 C CNN
F 3 "" H 8250 1200 50  0001 C CNN
	1    8250 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 1100 8250 1100
Wire Wire Line
	8250 1100 8250 1200
Text GLabel 8650 2050 3    50   Input ~ 0
IN_RESET
$Comp
L Device:R R1
U 1 1 5F800FD0
P 8650 1850
F 0 "R1" H 8750 1950 50  0000 L CNN
F 1 "100k" H 8750 1750 50  0000 L CNN
F 2 "" V 8580 1850 50  0001 C CNN
F 3 "~" H 8650 1850 50  0001 C CNN
	1    8650 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 2000 8650 2050
$Comp
L power:+5V #PWR09
U 1 1 5F801B7E
P 8650 1650
F 0 "#PWR09" H 8650 1500 50  0001 C CNN
F 1 "+5V" H 8650 1800 50  0000 C CNN
F 2 "" H 8650 1650 50  0001 C CNN
F 3 "" H 8650 1650 50  0001 C CNN
	1    8650 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 1650 8650 1700
$Comp
L power:+12V #PWR02
U 1 1 5F803EBB
P 10500 1150
F 0 "#PWR02" H 10500 1000 50  0001 C CNN
F 1 "+12V" H 10550 1350 50  0000 C CNN
F 2 "" H 10500 1150 50  0001 C CNN
F 3 "" H 10500 1150 50  0001 C CNN
	1    10500 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 1150 10500 1200
Wire Wire Line
	10500 1200 10450 1200
$Comp
L power:+12V #PWR012
U 1 1 5F804A68
P 10500 1950
F 0 "#PWR012" H 10500 1800 50  0001 C CNN
F 1 "+12V" H 10550 2150 50  0000 C CNN
F 2 "" H 10500 1950 50  0001 C CNN
F 3 "" H 10500 1950 50  0001 C CNN
	1    10500 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 1950 10500 2000
Wire Wire Line
	10500 2000 10450 2000
Text GLabel 10450 1400 2    50   Input ~ 0
OUT_LED
Text GLabel 10450 2200 2    50   Input ~ 0
OUT_LED
Text GLabel 10100 4450 1    50   Input ~ 0
OUT_LED
$Comp
L power:GND #PWR019
U 1 1 5F806664
P 10100 4900
F 0 "#PWR019" H 10100 4650 50  0001 C CNN
F 1 "GND" H 10150 4700 50  0000 C CNN
F 2 "" H 10100 4900 50  0001 C CNN
F 3 "" H 10100 4900 50  0001 C CNN
	1    10100 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 4900 10100 4850
Wire Wire Line
	9800 4650 9650 4650
Text GLabel 8850 4550 0    50   Input ~ 0
MOSFET
NoConn ~ 8850 4750
NoConn ~ 9650 4850
Wire Notes Line
	4900 470  4900 2700
Text Notes 4950 650  0    79   Italic 0
Connectors and inputs
Wire Notes Line
	6970 6540 6970 2700
Text Notes 7050 2900 0    79   Italic 0
MOSFET
NoConn ~ 3150 1350
$Comp
L Device:C C2
U 1 1 5F8210FD
P 1250 1450
F 0 "C2" H 1350 1500 50  0000 L CNN
F 1 "0.1u-1u" H 1350 1400 50  0000 L CNN
F 2 "" H 1288 1300 50  0001 C CNN
F 3 "~" H 1250 1450 50  0001 C CNN
	1    1250 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5F821109
P 1250 1650
F 0 "#PWR08" H 1250 1400 50  0001 C CNN
F 1 "GND" H 1250 1500 50  0000 C CNN
F 2 "" H 1250 1650 50  0001 C CNN
F 3 "" H 1250 1650 50  0001 C CNN
	1    1250 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1250 1250 1300
Wire Wire Line
	1250 1600 1250 1650
$Comp
L power:+5V #PWR04
U 1 1 5F823949
P 1250 1250
F 0 "#PWR04" H 1250 1100 50  0001 C CNN
F 1 "+5V" H 1250 1400 50  0000 C CNN
F 2 "" H 1250 1250 50  0001 C CNN
F 3 "" H 1250 1250 50  0001 C CNN
	1    1250 1250
	1    0    0    -1  
$EndComp
NoConn ~ 2150 1750
Text GLabel 2150 1350 0    50   Input ~ 0
SCL
Text GLabel 2150 1450 0    50   Input ~ 0
SDA
Text GLabel 3900 1650 3    50   Input ~ 0
INT
$Comp
L Device:R R2
U 1 1 5F826462
P 3900 1450
F 0 "R2" H 4000 1550 50  0000 L CNN
F 1 "100k" H 4000 1350 50  0000 L CNN
F 2 "" V 3830 1450 50  0001 C CNN
F 3 "~" H 3900 1450 50  0001 C CNN
	1    3900 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1600 3900 1650
$Comp
L power:+5V #PWR05
U 1 1 5F826E2F
P 3900 1250
F 0 "#PWR05" H 3900 1100 50  0001 C CNN
F 1 "+5V" H 3900 1400 50  0000 C CNN
F 2 "" H 3900 1250 50  0001 C CNN
F 3 "" H 3900 1250 50  0001 C CNN
	1    3900 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1250 3900 1300
Wire Notes Line
	470  2700 11220 2700
Text Notes 550  650  0    79   Italic 0
RTC
Text Notes 550  2900 0    79   Italic 0
Arduino
Text GLabel 4100 5850 2    50   Input ~ 0
SCL
Text GLabel 4100 5750 2    50   Input ~ 0
SDA
Text GLabel 4100 5550 2    50   Input ~ 0
IN_GRAD
Text GLabel 3100 5050 0    50   Input ~ 0
IN_RESET
Text GLabel 3100 5850 0    50   Input ~ 0
MOSFET
$Comp
L Device:C C3
U 1 1 5F83748D
P 7600 4600
F 0 "C3" H 7700 4650 50  0000 L CNN
F 1 "1u-100u" H 7700 4550 50  0000 L CNN
F 2 "" H 7638 4450 50  0001 C CNN
F 3 "~" H 7600 4600 50  0001 C CNN
	1    7600 4600
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR022
U 1 1 5F837493
P 7600 4400
F 0 "#PWR022" H 7600 4250 50  0001 C CNN
F 1 "+12V" H 7600 4550 50  0000 C CNN
F 2 "" H 7600 4400 50  0001 C CNN
F 3 "" H 7600 4400 50  0001 C CNN
	1    7600 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5F837499
P 7600 4800
F 0 "#PWR023" H 7600 4550 50  0001 C CNN
F 1 "GND" H 7600 4650 50  0000 C CNN
F 2 "" H 7600 4800 50  0001 C CNN
F 3 "" H 7600 4800 50  0001 C CNN
	1    7600 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4400 7600 4450
Wire Wire Line
	7600 4750 7600 4800
NoConn ~ 4100 4750
NoConn ~ 4100 4850
NoConn ~ 4100 5150
NoConn ~ 4100 5350
NoConn ~ 4100 5450
NoConn ~ 4100 5650
NoConn ~ 4100 5950
NoConn ~ 4100 6050
NoConn ~ 3100 6050
NoConn ~ 3100 5950
NoConn ~ 3100 5750
NoConn ~ 3100 5650
NoConn ~ 3100 5550
NoConn ~ 3100 5450
NoConn ~ 3100 5350
NoConn ~ 3100 5250
NoConn ~ 3100 4850
NoConn ~ 3100 4750
Text GLabel 3100 5150 0    50   Input ~ 0
LED_ERROR
Text GLabel 3100 4950 0    50   Input ~ 0
INT
Text GLabel 3150 1650 2    50   Input ~ 0
INT
$Comp
L Device:R R?
U 1 1 5F8DB3E4
P 5500 3750
F 0 "R?" H 5600 3850 50  0000 L CNN
F 1 "1k" H 5600 3650 50  0000 L CNN
F 2 "" V 5430 3750 50  0001 C CNN
F 3 "~" H 5500 3750 50  0001 C CNN
	1    5500 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5F8DC9F3
P 5500 4150
F 0 "D?" V 5600 4050 50  0000 R CNN
F 1 "RED" V 5350 4050 50  0000 R CNN
F 2 "" H 5500 4150 50  0001 C CNN
F 3 "~" H 5500 4150 50  0001 C CNN
	1    5500 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5500 4000 5500 3900
$Comp
L power:GND #PWR?
U 1 1 5F8DDDCC
P 5500 4400
F 0 "#PWR?" H 5500 4150 50  0001 C CNN
F 1 "GND" H 5500 4250 50  0000 C CNN
F 2 "" H 5500 4400 50  0001 C CNN
F 3 "" H 5500 4400 50  0001 C CNN
	1    5500 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 4400 5500 4300
Text GLabel 5500 3550 1    50   Input ~ 0
LED_ERROR
Wire Wire Line
	5500 3550 5500 3600
$EndSCHEMATC
