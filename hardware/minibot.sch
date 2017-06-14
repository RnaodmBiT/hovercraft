EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:stm32
LIBS:switches
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "STM32 Microcontroller"
Date "2017-06-15"
Rev "1"
Comp ""
Comment1 "Ben Mitchell"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L STM32F411CEUx U?
U 1 1 59411886
P 6150 3650
F 0 "U?" H 2550 5475 50  0000 L BNN
F 1 "STM32F411CEUx" H 9750 5475 50  0000 R BNN
F 2 "UFQFPN48" H 9750 5425 50  0001 R TNN
F 3 "" H 6150 3650 50  0001 C CNN
	1    6150 3650
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR?
U 1 1 59411BB2
P 6150 1650
F 0 "#PWR?" H 6150 1500 50  0001 C CNN
F 1 "VDD" H 6150 1800 50  0000 C CNN
F 2 "" H 6150 1650 50  0001 C CNN
F 3 "" H 6150 1650 50  0001 C CNN
	1    6150 1650
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR?
U 1 1 59411C32
P 2000 2450
F 0 "#PWR?" H 2000 2300 50  0001 C CNN
F 1 "VDD" H 2000 2600 50  0000 C CNN
F 2 "" H 2000 2450 50  0001 C CNN
F 3 "" H 2000 2450 50  0001 C CNN
	1    2000 2450
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 59411CAB
P 1650 2750
F 0 "C?" V 1700 2600 50  0000 L CNN
F 1 "4.7uF" V 1700 2800 50  0000 L CNN
F 2 "" H 1650 2750 50  0001 C CNN
F 3 "" H 1650 2750 50  0001 C CNN
	1    1650 2750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 59411D3F
P 1350 2600
F 0 "#PWR?" H 1350 2350 50  0001 C CNN
F 1 "GND" V 1350 2400 50  0000 C CNN
F 2 "" H 1350 2600 50  0001 C CNN
F 3 "" H 1350 2600 50  0001 C CNN
	1    1350 2600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 59412098
P 6150 5600
F 0 "#PWR?" H 6150 5350 50  0001 C CNN
F 1 "GND" H 6150 5450 50  0000 C CNN
F 2 "" H 6150 5600 50  0001 C CNN
F 3 "" H 6150 5600 50  0001 C CNN
	1    6150 5600
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 59412228
P 1650 2600
F 0 "C?" V 1700 2450 50  0000 L CNN
F 1 "1uF" V 1700 2650 50  0000 L CNN
F 2 "" H 1650 2600 50  0001 C CNN
F 3 "" H 1650 2600 50  0001 C CNN
	1    1650 2600
	0    1    1    0   
$EndComp
$Comp
L C_Small C?
U 1 1 59412247
P 1650 2450
F 0 "C?" V 1700 2300 50  0000 L CNN
F 1 "100nF" V 1700 2500 50  0000 L CNN
F 2 "" H 1650 2450 50  0001 C CNN
F 3 "" H 1650 2450 50  0001 C CNN
	1    1650 2450
	0    1    1    0   
$EndComp
$Comp
L C_Small C?
U 1 1 5941267A
P 4300 6850
F 0 "C?" H 4200 6750 50  0000 L CNN
F 1 "100nF" H 4050 6950 50  0000 L CNN
F 2 "" H 4300 6850 50  0001 C CNN
F 3 "" H 4300 6850 50  0001 C CNN
	1    4300 6850
	-1   0    0    1   
$EndComp
$Comp
L C_Small C?
U 1 1 5941293E
P 4600 6850
F 0 "C?" H 4500 6750 50  0000 L CNN
F 1 "100nF" H 4350 6950 50  0000 L CNN
F 2 "" H 4600 6850 50  0001 C CNN
F 3 "" H 4600 6850 50  0001 C CNN
	1    4600 6850
	-1   0    0    1   
$EndComp
$Comp
L C_Small C?
U 1 1 5941296E
P 4900 6850
F 0 "C?" H 4800 6750 50  0000 L CNN
F 1 "100nF" H 4650 6950 50  0000 L CNN
F 2 "" H 4900 6850 50  0001 C CNN
F 3 "" H 4900 6850 50  0001 C CNN
	1    4900 6850
	-1   0    0    1   
$EndComp
$Comp
L C_Small C?
U 1 1 5941299B
P 5200 6850
F 0 "C?" H 5100 6750 50  0000 L CNN
F 1 "100nF" H 4950 6950 50  0000 L CNN
F 2 "" H 5200 6850 50  0001 C CNN
F 3 "" H 5200 6850 50  0001 C CNN
	1    5200 6850
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR?
U 1 1 594129D1
P 4600 7050
F 0 "#PWR?" H 4600 6800 50  0001 C CNN
F 1 "GND" H 4600 6900 50  0000 C CNN
F 2 "" H 4600 7050 50  0001 C CNN
F 3 "" H 4600 7050 50  0001 C CNN
	1    4600 7050
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR?
U 1 1 59412BAB
P 4600 6650
F 0 "#PWR?" H 4600 6500 50  0001 C CNN
F 1 "VDD" H 4600 6800 50  0000 C CNN
F 2 "" H 4600 6650 50  0001 C CNN
F 3 "" H 4600 6650 50  0001 C CNN
	1    4600 6650
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 59413569
P 4000 6850
F 0 "C?" H 3900 6750 50  0000 L CNN
F 1 "4.7uF" H 3750 6950 50  0000 L CNN
F 2 "" H 4000 6850 50  0001 C CNN
F 3 "" H 4000 6850 50  0001 C CNN
	1    4000 6850
	-1   0    0    1   
$EndComp
Text GLabel 2450 2150 0    60   Input ~ 0
nRST
Text GLabel 2450 2350 0    60   Input ~ 0
BOOT
Entry Bus Bus
	1950 3750 2050 3650
Entry Bus Bus
	1950 3850 2050 3750
Entry Bus Bus
	1950 3950 2050 3850
Entry Bus Bus
	1950 4050 2050 3950
Entry Bus Bus
	1950 4150 2050 4050
Entry Bus Bus
	1950 4250 2050 4150
Entry Bus Bus
	1950 4350 2050 4250
Entry Bus Bus
	1950 4450 2050 4350
Entry Bus Bus
	1950 4550 2050 4450
Entry Bus Bus
	1950 4650 2050 4550
Entry Bus Bus
	1950 4750 2050 4650
Entry Bus Bus
	1950 4850 2050 4750
Entry Bus Bus
	1950 4950 2050 4850
Entry Bus Bus
	1950 5050 2050 4950
Entry Bus Bus
	1950 5150 2050 5050
Wire Wire Line
	6050 1750 6050 1650
Wire Wire Line
	6050 1650 6150 1650
Wire Wire Line
	6150 1650 6250 1650
Wire Wire Line
	6150 1650 6150 1750
Wire Wire Line
	6250 1650 6250 1750
Connection ~ 6150 1650
Wire Wire Line
	2000 2550 2450 2550
Wire Wire Line
	2450 2750 1750 2750
Wire Wire Line
	5950 5600 6050 5600
Wire Wire Line
	6050 5600 6150 5600
Wire Wire Line
	6150 5600 6250 5600
Wire Wire Line
	6250 5600 6350 5600
Wire Wire Line
	6350 5600 6350 5450
Wire Wire Line
	6250 5450 6250 5600
Connection ~ 6250 5600
Wire Wire Line
	6150 5450 6150 5600
Wire Wire Line
	6050 5600 6050 5450
Connection ~ 6150 5600
Wire Wire Line
	5950 5600 5950 5450
Connection ~ 6050 5600
Wire Wire Line
	1350 2750 1550 2750
Wire Wire Line
	1350 2450 1350 2600
Wire Wire Line
	1350 2600 1350 2750
Wire Wire Line
	1350 2600 1550 2600
Wire Wire Line
	1350 2450 1550 2450
Connection ~ 1350 2600
Wire Wire Line
	1750 2450 2000 2450
Wire Wire Line
	2000 2450 2000 2550
Wire Wire Line
	2000 2550 2000 2600
Wire Wire Line
	2000 2600 2000 2650
Wire Wire Line
	2000 2650 2450 2650
Wire Wire Line
	1750 2600 2000 2600
Connection ~ 2000 2600
Wire Wire Line
	4000 7050 4300 7050
Wire Wire Line
	4300 7050 4600 7050
Wire Wire Line
	4600 7050 4900 7050
Wire Wire Line
	4900 7050 5200 7050
Wire Wire Line
	4300 7050 4300 6950
Wire Wire Line
	4600 6950 4600 7050
Connection ~ 4600 7050
Wire Wire Line
	4900 7050 4900 6950
Wire Wire Line
	5200 7050 5200 6950
Connection ~ 4900 7050
Wire Wire Line
	4300 6750 4300 6650
Wire Wire Line
	4000 6650 4300 6650
Wire Wire Line
	4300 6650 4600 6650
Wire Wire Line
	4600 6650 4900 6650
Wire Wire Line
	4900 6650 5200 6650
Wire Wire Line
	4600 6750 4600 6650
Connection ~ 4600 6650
Wire Wire Line
	4900 6650 4900 6750
Wire Wire Line
	5200 6650 5200 6750
Connection ~ 4900 6650
Wire Wire Line
	4000 6750 4000 6650
Connection ~ 4300 6650
Wire Wire Line
	4000 7050 4000 6950
Connection ~ 4300 7050
Connection ~ 2000 2550
Wire Bus Line
	1950 5500 1950 5150
Wire Bus Line
	1950 5150 1950 5050
Wire Bus Line
	1950 5050 1950 4950
Wire Bus Line
	1950 4950 1950 4850
Wire Bus Line
	1950 4850 1950 4750
Wire Bus Line
	1950 4750 1950 4650
Wire Bus Line
	1950 4650 1950 4550
Wire Bus Line
	1950 4550 1950 4450
Wire Bus Line
	1950 4450 1950 4350
Wire Bus Line
	1950 4350 1950 4250
Wire Bus Line
	1950 4250 1950 4150
Wire Bus Line
	1950 4150 1950 4050
Wire Bus Line
	1950 4050 1950 3950
Wire Bus Line
	1950 3950 1950 3850
Wire Bus Line
	1950 3850 1950 3750
Wire Wire Line
	2450 3850 2050 3850
Wire Wire Line
	2050 3950 2450 3950
Wire Wire Line
	2450 4050 2050 4050
Wire Wire Line
	2450 4150 2050 4150
Wire Wire Line
	2050 4250 2450 4250
Wire Wire Line
	2450 4350 2050 4350
Wire Wire Line
	2050 4450 2450 4450
Wire Wire Line
	2450 4550 2050 4550
Wire Wire Line
	2050 4650 2450 4650
Wire Wire Line
	2450 4750 2050 4750
Wire Wire Line
	2050 4850 2450 4850
Wire Wire Line
	2450 4950 2050 4950
Wire Wire Line
	2050 5050 2450 5050
Wire Wire Line
	2450 3650 2050 3650
Wire Wire Line
	2450 3750 2050 3750
Text Label 2200 3650 0    60   ~ 0
PB0
Text Label 2200 3750 0    60   ~ 0
PB1
Text Label 2200 3850 0    60   ~ 0
PB2
Text Label 2200 3950 0    60   ~ 0
PB3
Text Label 2200 4050 0    60   ~ 0
PB4
Text Label 2200 4150 0    60   ~ 0
PB5
Text Label 2200 4250 0    60   ~ 0
PB6
Text Label 2200 4350 0    60   ~ 0
PB7
Text Label 2200 4450 0    60   ~ 0
PB8
Text Label 2200 4550 0    60   ~ 0
PB9
Text Label 2200 4650 0    60   ~ 0
PB10
Text Label 2200 4750 0    60   ~ 0
PB11
Text Label 2200 4850 0    60   ~ 0
PB12
Text Label 2200 4950 0    60   ~ 0
PB13
Text Label 2200 5050 0    60   ~ 0
PB14
Wire Bus Line
	1950 5500 1800 5500
Text GLabel 1800 5500 0    60   Input ~ 0
PORTB
Text Label 9950 3550 0    60   ~ 0
PA1
Text Label 9950 3650 0    60   ~ 0
PA2
Text Label 9950 3750 0    60   ~ 0
PA3
Text Label 9950 3850 0    60   ~ 0
PA4
Text Label 9950 3950 0    60   ~ 0
PA5
Text Label 9950 4050 0    60   ~ 0
PA6
Text Label 9950 4150 0    60   ~ 0
PA7
Text Label 9950 4250 0    60   ~ 0
PA8
Text Label 9950 4350 0    60   ~ 0
PA9
Text Label 9950 4450 0    60   ~ 0
PA10
Text Label 9950 4550 0    60   ~ 0
PA11
Text Label 9950 4650 0    60   ~ 0
PA12
Text Label 9950 4750 0    60   ~ 0
PA13
Text Label 9950 4850 0    60   ~ 0
PA14
Text Label 9950 4950 0    60   ~ 0
PA15
Text Label 9950 5050 0    60   ~ 0
PA16
Wire Wire Line
	9850 3550 10250 3550
Wire Wire Line
	9850 3650 10250 3650
Wire Wire Line
	9850 3750 10250 3750
Wire Wire Line
	9850 3850 10250 3850
Wire Wire Line
	9850 3950 10250 3950
Wire Wire Line
	9850 4050 10250 4050
Wire Wire Line
	9850 4150 10250 4150
Wire Wire Line
	9850 4250 10250 4250
Wire Wire Line
	9850 4350 10250 4350
Wire Wire Line
	9850 4450 10250 4450
Wire Wire Line
	9850 4550 10250 4550
Wire Wire Line
	9850 4650 10250 4650
Wire Wire Line
	9850 4750 10250 4750
Wire Wire Line
	9850 4850 10250 4850
Wire Wire Line
	9850 4950 10250 4950
Wire Wire Line
	9850 5050 10250 5050
Entry Bus Bus
	10250 3550 10350 3650
Entry Bus Bus
	10250 3650 10350 3750
Entry Bus Bus
	10250 3750 10350 3850
Entry Bus Bus
	10250 3850 10350 3950
Entry Bus Bus
	10250 3950 10350 4050
Entry Bus Bus
	10250 4050 10350 4150
Entry Bus Bus
	10250 4150 10350 4250
Entry Bus Bus
	10250 4250 10350 4350
Entry Bus Bus
	10250 4350 10350 4450
Entry Bus Bus
	10250 4450 10350 4550
Entry Bus Bus
	10250 4550 10350 4650
Entry Bus Bus
	10250 4650 10350 4750
Entry Bus Bus
	10250 4750 10350 4850
Entry Bus Bus
	10250 4850 10350 4950
Entry Bus Bus
	10250 4950 10350 5050
Entry Bus Bus
	10250 5050 10350 5150
Wire Bus Line
	10350 3650 10350 3750
Wire Bus Line
	10350 3750 10350 3850
Wire Bus Line
	10350 3850 10350 3950
Wire Bus Line
	10350 3950 10350 4050
Wire Bus Line
	10350 4050 10350 4150
Wire Bus Line
	10350 4150 10350 4250
Wire Bus Line
	10350 4250 10350 4350
Wire Bus Line
	10350 4350 10350 4450
Wire Bus Line
	10350 4450 10350 4550
Wire Bus Line
	10350 4550 10350 4650
Wire Bus Line
	10350 4650 10350 4750
Wire Bus Line
	10350 4750 10350 4850
Wire Bus Line
	10350 4850 10350 4950
Wire Bus Line
	10350 4950 10350 5050
Wire Bus Line
	10350 5050 10350 5150
Wire Bus Line
	10350 5150 10350 5500
Wire Bus Line
	10350 5500 10500 5500
Text GLabel 10500 5500 2    60   Input ~ 0
PORTA
$Comp
L Crystal_GND24 Y?
U 1 1 5941A9F5
P 1800 3150
F 0 "Y?" V 1650 3000 50  0000 L CNN
F 1 "12MHz" V 1650 3200 50  0000 L CNN
F 2 "" H 1800 3150 50  0001 C CNN
F 3 "" H 1800 3150 50  0001 C CNN
	1    1800 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 3050 2200 3050
Wire Wire Line
	2200 3050 2200 3350
Wire Wire Line
	1250 3350 1250 2950
Wire Wire Line
	1800 3000 1800 2950
Connection ~ 1800 2950
Wire Wire Line
	1800 3300 1800 3350
Connection ~ 1800 3350
$Comp
L GND #PWR?
U 1 1 5941AD5B
P 1600 3150
F 0 "#PWR?" H 1600 2900 50  0001 C CNN
F 1 "GND" V 1700 3100 50  0000 C CNN
F 2 "" H 1600 3150 50  0001 C CNN
F 3 "" H 1600 3150 50  0001 C CNN
	1    1600 3150
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5941AD84
P 2050 3150
F 0 "#PWR?" H 2050 2900 50  0001 C CNN
F 1 "GND" V 1950 3150 50  0000 C CNN
F 2 "" H 2050 3150 50  0001 C CNN
F 3 "" H 2050 3150 50  0001 C CNN
	1    2050 3150
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C?
U 1 1 5941AE93
P 1400 3350
F 0 "C?" V 1450 3200 50  0000 L CNN
F 1 "30pF" V 1450 3400 50  0000 L CNN
F 2 "" H 1400 3350 50  0001 C CNN
F 3 "" H 1400 3350 50  0001 C CNN
	1    1400 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 3350 1300 3350
Wire Wire Line
	2200 3350 1800 3350
Wire Wire Line
	1800 3350 1500 3350
$Comp
L C_Small C?
U 1 1 5941B173
P 1400 2950
F 0 "C?" V 1350 2800 50  0000 L CNN
F 1 "30pF" V 1350 3000 50  0000 L CNN
F 2 "" H 1400 2950 50  0001 C CNN
F 3 "" H 1400 2950 50  0001 C CNN
	1    1400 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	1250 2950 1300 2950
Wire Wire Line
	1500 2950 1800 2950
Wire Wire Line
	1800 2950 2450 2950
$Comp
L GND #PWR?
U 1 1 5941B589
P 1250 3150
F 0 "#PWR?" H 1250 2900 50  0001 C CNN
F 1 "GND" V 1250 2950 50  0000 C CNN
F 2 "" H 1250 3150 50  0001 C CNN
F 3 "" H 1250 3150 50  0001 C CNN
	1    1250 3150
	0    1    1    0   
$EndComp
$EndSCHEMATC
