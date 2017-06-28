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
LIBS:parts
LIBS:minibot-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "MiniBot"
Date "2017-06-23"
Rev "1"
Comp ""
Comment1 "Ben Mitchell"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1000 5050 750  800 
U 59425D39
F0 "Microcontroller" 60
F1 "microcontroller.sch" 60
F2 "nRST" I R 1750 5300 60 
F3 "BOOT" I R 1750 5400 60 
F4 "PA[0..15]" I R 1750 5550 60 
F5 "PB[0..15]" I R 1750 5650 60 
F6 "PC[13..15]" I R 1750 5750 60 
$EndSheet
Text Label 1750 5300 0    60   ~ 0
nRST
Text Label 1750 5400 0    60   ~ 0
BOOT
$Comp
L SW_Push SW2
U 1 1 5942B37F
P 9450 1950
F 0 "SW2" V 9400 1750 50  0000 L CNN
F 1 "RESET" V 9550 1800 50  0000 C CNN
F 2 "Buttons_Switches_SMD:Panasonic_EVQPUK_EVQPUB" H 9450 2150 50  0001 C CNN
F 3 "" H 9450 2150 50  0001 C CNN
	1    9450 1950
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R1
U 1 1 5942B5DB
P 9450 1500
F 0 "R1" H 9480 1520 50  0000 L CNN
F 1 "10k" H 9480 1460 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 9450 1500 50  0001 C CNN
F 3 "" H 9450 1500 50  0001 C CNN
	1    9450 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5942B74C
P 9650 2250
F 0 "#PWR01" H 9650 2000 50  0001 C CNN
F 1 "GND" H 9650 2100 50  0000 C CNN
F 2 "" H 9650 2250 50  0001 C CNN
F 3 "" H 9650 2250 50  0001 C CNN
	1    9650 2250
	1    0    0    -1  
$EndComp
Text Label 9550 1750 0    60   ~ 0
nRST
$Comp
L C_Small C3
U 1 1 5942CE5E
P 9800 1950
F 0 "C3" H 9810 2020 50  0000 L CNN
F 1 "100nF" H 9810 1870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9800 1950 50  0001 C CNN
F 3 "" H 9800 1950 50  0001 C CNN
	1    9800 1950
	1    0    0    -1  
$EndComp
Text Notes 9300 950  0    60   ~ 0
Reset Switch\n
$Comp
L SW_Push SW1
U 1 1 5942E269
P 10450 1550
F 0 "SW1" V 10400 1350 50  0000 L CNN
F 1 "BOOT" V 10550 1400 50  0000 C CNN
F 2 "Buttons_Switches_SMD:Panasonic_EVQPUK_EVQPUB" H 10450 1750 50  0001 C CNN
F 3 "" H 10450 1750 50  0001 C CNN
	1    10450 1550
	0    1    1    0   
$EndComp
$Comp
L R_Small R4
U 1 1 5942E26F
P 10450 1950
F 0 "R4" H 10480 1970 50  0000 L CNN
F 1 "10k" H 10480 1910 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 10450 1950 50  0001 C CNN
F 3 "" H 10450 1950 50  0001 C CNN
	1    10450 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5942E275
P 10650 2250
F 0 "#PWR02" H 10650 2000 50  0001 C CNN
F 1 "GND" H 10650 2100 50  0000 C CNN
F 2 "" H 10650 2250 50  0001 C CNN
F 3 "" H 10650 2250 50  0001 C CNN
	1    10650 2250
	1    0    0    -1  
$EndComp
$Comp
L C_Small C4
U 1 1 5942E286
P 10800 1950
F 0 "C4" H 10810 2020 50  0000 L CNN
F 1 "100nF" H 10810 1870 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 10800 1950 50  0001 C CNN
F 3 "" H 10800 1950 50  0001 C CNN
	1    10800 1950
	1    0    0    -1  
$EndComp
Text Label 10550 1750 0    60   ~ 0
BOOT
Text Notes 10300 950  0    60   ~ 0
Boot Select\n
$Comp
L RN41 U3
U 1 1 594318AE
P 8900 3500
F 0 "U3" H 8950 3550 60  0000 C CNN
F 1 "RN41" H 9750 3550 60  0000 C CNN
F 2 "modules:RN41" H 8900 3500 60  0001 C CNN
F 3 "" H 8900 3500 60  0001 C CNN
	1    8900 3500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 59433424
P 10800 3900
F 0 "#PWR03" H 10800 3650 50  0001 C CNN
F 1 "GND" H 10800 3750 50  0000 C CNN
F 2 "" H 10800 3900 50  0001 C CNN
F 3 "" H 10800 3900 50  0001 C CNN
	1    10800 3900
	1    0    0    -1  
$EndComp
$Comp
L R_Small R11
U 1 1 594338B1
P 10400 4100
F 0 "R11" V 10350 4200 50  0000 L CNN
F 1 "10k" V 10450 4200 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 10400 4100 50  0001 C CNN
F 3 "" H 10400 4100 50  0001 C CNN
	1    10400 4100
	0    1    1    0   
$EndComp
$Comp
L GS2 J4
U 1 1 59434530
P 10150 4300
F 0 "J4" H 10250 4350 50  0000 C CNN
F 1 "BAUD" H 10300 4250 50  0000 C CNN
F 2 "Connectors:GS2" V 10224 4300 50  0001 C CNN
F 3 "" H 10150 4300 50  0001 C CNN
	1    10150 4300
	1    0    0    -1  
$EndComp
$Comp
L LED D7
U 1 1 594363D7
P 10450 3150
F 0 "D7" V 10500 3050 50  0000 R CNN
F 1 "LED" V 10400 3050 50  0000 R CNN
F 2 "LEDs:LED_0603" H 10450 3150 50  0001 C CNN
F 3 "" H 10450 3150 50  0001 C CNN
	1    10450 3150
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R10
U 1 1 59436BAF
P 10450 3450
F 0 "R10" H 10500 3400 50  0000 L CNN
F 1 "100" H 10500 3500 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 10450 3450 50  0001 C CNN
F 3 "" H 10450 3450 50  0001 C CNN
	1    10450 3450
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR04
U 1 1 594391E3
P 9400 4500
F 0 "#PWR04" H 9400 4250 50  0001 C CNN
F 1 "GND" H 9400 4350 50  0000 C CNN
F 2 "" H 9400 4500 50  0001 C CNN
F 3 "" H 9400 4500 50  0001 C CNN
	1    9400 4500
	1    0    0    -1  
$EndComp
$Comp
L C_Small C5
U 1 1 5943A7D6
P 6950 2750
F 0 "C5" H 6960 2820 50  0000 L CNN
F 1 "100nF" H 6960 2670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 6950 2750 50  0001 C CNN
F 3 "" H 6950 2750 50  0001 C CNN
	1    6950 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5943AAB5
P 7100 2900
F 0 "#PWR05" H 7100 2650 50  0001 C CNN
F 1 "GND" H 7100 2750 50  0000 C CNN
F 2 "" H 7100 2900 50  0001 C CNN
F 3 "" H 7100 2900 50  0001 C CNN
	1    7100 2900
	1    0    0    -1  
$EndComp
$Comp
L GS2 J2
U 1 1 5943C8B9
P 8200 3400
F 0 "J2" H 8300 3450 50  0000 C CNN
F 1 "RESET" H 8350 3350 50  0000 C CNN
F 2 "Connectors:GS2" V 8274 3400 50  0001 C CNN
F 3 "" H 8200 3400 50  0001 C CNN
	1    8200 3400
	-1   0    0    1   
$EndComp
$Comp
L R_Small R9
U 1 1 5943C954
P 8550 3400
F 0 "R9" H 8600 3350 50  0000 L CNN
F 1 "10k" H 8600 3450 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 8550 3400 50  0001 C CNN
F 3 "" H 8550 3400 50  0001 C CNN
	1    8550 3400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR06
U 1 1 5943D6C7
P 8200 3200
F 0 "#PWR06" H 8200 2950 50  0001 C CNN
F 1 "GND" H 8200 3050 50  0000 C CNN
F 2 "" H 8200 3200 50  0001 C CNN
F 3 "" H 8200 3200 50  0001 C CNN
	1    8200 3200
	-1   0    0    1   
$EndComp
Text Notes 9050 2950 0    60   ~ 0
Bluetooth Radio\nUART1\n
$Comp
L CONN_01X18 J3
U 1 1 59443C3E
P 3950 4250
F 0 "J3" H 3950 5200 50  0000 C CNN
F 1 "CONN_01X18" V 4050 4250 50  0001 C CNN
F 2 "modules:Pin_Header_Angled_3x06_Pitch2.54mm" H 3950 4250 50  0001 C CNN
F 3 "" H 3950 4250 50  0001 C CNN
	1    3950 4250
	-1   0    0    1   
$EndComp
Text Notes 4250 2500 0    60   ~ 0
Servo Connector
$Comp
L GND #PWR07
U 1 1 59445F65
P 4850 5050
F 0 "#PWR07" H 4850 4800 50  0001 C CNN
F 1 "GND" H 4850 4900 50  0000 C CNN
F 2 "" H 4850 5050 50  0001 C CNN
F 3 "" H 4850 5050 50  0001 C CNN
	1    4850 5050
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D1
U 1 1 59446ADF
P 2300 1400
F 0 "D1" H 2350 1300 50  0000 C CNN
F 1 "3A" H 2200 1300 50  0000 C CNN
F 2 "Diodes_SMD:D_SMA" H 2300 1400 50  0001 C CNN
F 3 "" H 2300 1400 50  0001 C CNN
	1    2300 1400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR08
U 1 1 59447E2E
P 4250 2800
F 0 "#PWR08" H 4250 2550 50  0001 C CNN
F 1 "GND" H 4250 2650 50  0000 C CNN
F 2 "" H 4250 2800 50  0001 C CNN
F 3 "" H 4250 2800 50  0001 C CNN
	1    4250 2800
	0    1    1    0   
$EndComp
Text Label 4150 3600 0    60   ~ 0
CH0
Text Label 4150 3900 0    60   ~ 0
CH1
Text Label 4150 4200 0    60   ~ 0
CH2
Text Label 4150 4500 0    60   ~ 0
CH3
Text Label 4150 4800 0    60   ~ 0
CH4
Text Label 4150 5100 0    60   ~ 0
CH5
$Comp
L +5V #PWR09
U 1 1 5944CF51
P 2600 1400
F 0 "#PWR09" H 2600 1250 50  0001 C CNN
F 1 "+5V" H 2600 1550 50  0000 C CNN
F 2 "" H 2600 1400 50  0001 C CNN
F 3 "" H 2600 1400 50  0001 C CNN
	1    2600 1400
	1    0    0    -1  
$EndComp
$Comp
L USB_OTG J1
U 1 1 5944D95D
P 1600 1600
F 0 "J1" H 1400 2050 50  0000 L CNN
F 1 "USB_OTG" H 1400 1950 50  0000 L CNN
F 2 "Connectors:USB_Micro-B" H 1750 1550 50  0001 C CNN
F 3 "" H 1750 1550 50  0001 C CNN
	1    1600 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5944DD7E
P 1600 2100
F 0 "#PWR010" H 1600 1850 50  0001 C CNN
F 1 "GND" H 1600 1950 50  0000 C CNN
F 2 "" H 1600 2100 50  0001 C CNN
F 3 "" H 1600 2100 50  0001 C CNN
	1    1600 2100
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D2
U 1 1 59450602
P 4850 2800
F 0 "D2" H 4900 2700 50  0000 C CNN
F 1 "3A" H 4750 2700 50  0000 C CNN
F 2 "Diodes_SMD:D_SMA" H 4850 2800 50  0001 C CNN
F 3 "" H 4850 2800 50  0001 C CNN
	1    4850 2800
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR011
U 1 1 59450609
P 5100 2800
F 0 "#PWR011" H 5100 2650 50  0001 C CNN
F 1 "+5V" H 5100 2950 50  0000 C CNN
F 2 "" H 5100 2800 50  0001 C CNN
F 3 "" H 5100 2800 50  0001 C CNN
	1    5100 2800
	1    0    0    -1  
$EndComp
Text Notes 1500 1150 0    60   ~ 0
USB Connector\n
$Comp
L TLV70233DBV U2
U 1 1 594554E6
P 4400 1400
F 0 "U2" H 4150 1600 50  0000 C CNN
F 1 "TLV70233DBV" H 4500 1600 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 4400 1500 50  0001 C CIN
F 3 "" H 4400 1400 50  0001 C CNN
	1    4400 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 59456F5F
P 4400 1700
F 0 "#PWR012" H 4400 1450 50  0001 C CNN
F 1 "GND" H 4400 1550 50  0000 C CNN
F 2 "" H 4400 1700 50  0001 C CNN
F 3 "" H 4400 1700 50  0001 C CNN
	1    4400 1700
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 5945ADA5
P 5050 1450
F 0 "C2" H 5150 1400 50  0000 L CNN
F 1 "4.7uF" H 5150 1500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5050 1450 50  0001 C CNN
F 3 "" H 5050 1450 50  0001 C CNN
	1    5050 1450
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR013
U 1 1 5945B21A
P 5050 1550
F 0 "#PWR013" H 5050 1300 50  0001 C CNN
F 1 "GND" H 5050 1400 50  0000 C CNN
F 2 "" H 5050 1550 50  0001 C CNN
F 3 "" H 5050 1550 50  0001 C CNN
	1    5050 1550
	1    0    0    -1  
$EndComp
$Comp
L CP_Small C7
U 1 1 5945BC61
P 4400 2800
F 0 "C7" V 4300 2750 50  0000 L CNN
F 1 "100uF" V 4500 2700 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x5.3" H 4400 2800 50  0001 C CNN
F 3 "" H 4400 2800 50  0001 C CNN
	1    4400 2800
	0    1    1    0   
$EndComp
Text Notes 4100 1100 0    60   ~ 0
3V3 Regulation\n
Text Label 2250 5950 0    60   ~ 0
PB0
Text Label 2250 6050 0    60   ~ 0
PB1
Text Label 2250 6150 0    60   ~ 0
PB2
Text Label 2250 6250 0    60   ~ 0
PB3
Text Label 2250 6350 0    60   ~ 0
PB4
Text Label 2250 6450 0    60   ~ 0
PB5
Text Label 2250 6550 0    60   ~ 0
PB6
Text Label 2250 6650 0    60   ~ 0
PB7
Text Label 2250 6750 0    60   ~ 0
PB8
Text Label 2250 6850 0    60   ~ 0
PB9
Text Label 2250 6950 0    60   ~ 0
PB10
Text Label 2250 7050 0    60   ~ 0
PB12
Text Label 2250 7150 0    60   ~ 0
PB13
Text Label 2250 7250 0    60   ~ 0
PB14
Entry Bus Bus
	2150 5850 2250 5950
Entry Bus Bus
	2150 5950 2250 6050
Entry Bus Bus
	2150 6050 2250 6150
Entry Bus Bus
	2150 6150 2250 6250
Entry Bus Bus
	2150 6250 2250 6350
Entry Bus Bus
	2150 6350 2250 6450
Entry Bus Bus
	2150 6450 2250 6550
Entry Bus Bus
	2150 6550 2250 6650
Entry Bus Bus
	2150 6650 2250 6750
Entry Bus Bus
	2150 6750 2250 6850
Entry Bus Bus
	2150 6850 2250 6950
Entry Bus Bus
	2150 6950 2250 7050
Entry Bus Bus
	2150 7050 2250 7150
Entry Bus Bus
	2150 7150 2250 7250
Entry Bus Bus
	2150 7250 2250 7350
Entry Bus Bus
	3000 5850 3100 5950
Entry Bus Bus
	3000 5950 3100 6050
Entry Bus Bus
	3000 6050 3100 6150
Entry Bus Bus
	3000 6150 3100 6250
Entry Bus Bus
	3000 6250 3100 6350
Entry Bus Bus
	3000 6350 3100 6450
Entry Bus Bus
	3000 6450 3100 6550
Entry Bus Bus
	3000 6550 3100 6650
Entry Bus Bus
	3000 6650 3100 6750
Entry Bus Bus
	3000 6750 3100 6850
Entry Bus Bus
	3000 6850 3100 6950
Entry Bus Bus
	3000 6950 3100 7050
Entry Bus Bus
	3000 7050 3100 7150
Entry Bus Bus
	3000 7150 3100 7250
Entry Bus Bus
	3000 7250 3100 7350
Entry Bus Bus
	3000 7350 3100 7450
Text Label 3100 5950 0    60   ~ 0
PA0
Text Label 3100 6050 0    60   ~ 0
PA1
Text Label 3100 6150 0    60   ~ 0
PA2
Text Label 3100 6250 0    60   ~ 0
PA3
Text Label 3100 6350 0    60   ~ 0
PA4
Text Label 3100 6450 0    60   ~ 0
PA5
Text Label 3100 6550 0    60   ~ 0
PA6
Text Label 3100 6650 0    60   ~ 0
PA7
Text Label 3100 6750 0    60   ~ 0
PA8
Text Label 3100 6850 0    60   ~ 0
PA9
Text Label 3100 6950 0    60   ~ 0
PA10
Text Label 3100 7050 0    60   ~ 0
PA11
Text Label 3100 7150 0    60   ~ 0
PA12
Text Label 3100 7250 0    60   ~ 0
PA13
Text Label 3100 7350 0    60   ~ 0
PA14
Text Label 3100 7450 0    60   ~ 0
PA15
$Comp
L LED D3
U 1 1 5947324F
P 1350 3500
F 0 "D3" V 1400 3400 50  0000 R CNN
F 1 "RED" V 1300 3400 50  0000 R CNN
F 2 "LEDs:LED_0603" H 1350 3500 50  0001 C CNN
F 3 "" H 1350 3500 50  0001 C CNN
	1    1350 3500
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R5
U 1 1 59473255
P 1350 3800
F 0 "R5" H 1400 3750 50  0000 L CNN
F 1 "1k3" H 1400 3850 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 1350 3800 50  0001 C CNN
F 3 "" H 1350 3800 50  0001 C CNN
	1    1350 3800
	-1   0    0    1   
$EndComp
$Comp
L LED D4
U 1 1 594734EF
P 1700 3500
F 0 "D4" V 1750 3400 50  0000 R CNN
F 1 "YELLOW" V 1650 3450 50  0000 R CNN
F 2 "LEDs:LED_0603" H 1700 3500 50  0001 C CNN
F 3 "" H 1700 3500 50  0001 C CNN
	1    1700 3500
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R6
U 1 1 594734F5
P 1700 3800
F 0 "R6" H 1750 3750 50  0000 L CNN
F 1 "1k3" H 1750 3850 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 1700 3800 50  0001 C CNN
F 3 "" H 1700 3800 50  0001 C CNN
	1    1700 3800
	-1   0    0    1   
$EndComp
$Comp
L LED D5
U 1 1 594735E5
P 2050 3500
F 0 "D5" V 2100 3400 50  0000 R CNN
F 1 "GREEN" V 2000 3400 50  0000 R CNN
F 2 "LEDs:LED_0603" H 2050 3500 50  0001 C CNN
F 3 "" H 2050 3500 50  0001 C CNN
	1    2050 3500
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R7
U 1 1 594735EB
P 2050 3800
F 0 "R7" H 2100 3750 50  0000 L CNN
F 1 "100" H 2100 3850 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2050 3800 50  0001 C CNN
F 3 "" H 2050 3800 50  0001 C CNN
	1    2050 3800
	-1   0    0    1   
$EndComp
$Comp
L LED D6
U 1 1 59473683
P 2550 3500
F 0 "D6" V 2600 3400 50  0000 R CNN
F 1 "POWER" V 2500 3400 50  0000 R CNN
F 2 "LEDs:LED_0603" H 2550 3500 50  0001 C CNN
F 3 "" H 2550 3500 50  0001 C CNN
	1    2550 3500
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R8
U 1 1 59473689
P 2550 3800
F 0 "R8" H 2600 3750 50  0000 L CNN
F 1 "100" H 2600 3850 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2550 3800 50  0001 C CNN
F 3 "" H 2550 3800 50  0001 C CNN
	1    2550 3800
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR014
U 1 1 59474381
P 2550 3950
F 0 "#PWR014" H 2550 3700 50  0001 C CNN
F 1 "GND" H 2550 3800 50  0000 C CNN
F 2 "" H 2550 3950 50  0001 C CNN
F 3 "" H 2550 3950 50  0001 C CNN
	1    2550 3950
	1    0    0    -1  
$EndComp
Text Notes 1700 2950 0    60   ~ 0
Status LEDs\n
$Comp
L GND #PWR015
U 1 1 59438DDC
P 6200 5750
F 0 "#PWR015" H 6200 5500 50  0001 C CNN
F 1 "GND" H 6200 5600 50  0000 C CNN
F 2 "" H 6200 5750 50  0001 C CNN
F 3 "" H 6200 5750 50  0001 C CNN
	1    6200 5750
	0    1    1    0   
$EndComp
Text Label 6450 5650 2    60   ~ 0
SWCLK
Text Label 6450 5850 2    60   ~ 0
SWDIO
Text Label 6450 5950 2    60   ~ 0
nRST
Text Notes 6000 5200 0    60   ~ 0
Programming Connector
Text Label 3700 7250 2    60   ~ 0
SWDIO
Text Label 3700 7350 2    60   ~ 0
SWCLK
Text Label 2050 3900 3    60   ~ 0
GREEN
Text Label 1700 3900 3    60   ~ 0
YELLOW
Text Label 1350 3900 3    60   ~ 0
RED
Text Label 1150 6200 0    60   ~ 0
GREEN
Text Label 1150 6300 0    60   ~ 0
YELLOW
Text Label 1150 6400 0    60   ~ 0
RED
Text Label 8700 3800 2    60   ~ 0
BT_TXD
Text Label 8700 3900 2    60   ~ 0
BT_RXD
Text Label 3700 7450 2    60   ~ 0
BT_TXD
Text Label 2850 6250 2    60   ~ 0
BT_RXD
Text Label 3700 5950 2    60   ~ 0
CH0
Text Label 3700 6050 2    60   ~ 0
CH1
Text Label 3700 6150 2    60   ~ 0
CH2
Text Label 3700 6250 2    60   ~ 0
CH3
Text Label 3700 6550 2    60   ~ 0
CH4
Text Label 3700 6650 2    60   ~ 0
CH5
$Comp
L LSM6DS3US U1
U 1 1 594585EF
P 6700 1300
F 0 "U1" H 6750 1350 60  0000 L CNN
F 1 "LSM6DS3US" H 7500 1350 60  0000 R CNN
F 2 "modules:LSM6DS3US" H 6700 1300 60  0001 C CNN
F 3 "" H 6700 1300 60  0001 C CNN
	1    6700 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 59458A58
P 6400 1800
F 0 "#PWR016" H 6400 1550 50  0001 C CNN
F 1 "GND" H 6400 1650 50  0000 C CNN
F 2 "" H 6400 1800 50  0001 C CNN
F 3 "" H 6400 1800 50  0001 C CNN
	1    6400 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1750 9450 1600
Wire Wire Line
	9450 1400 9450 1350
Wire Wire Line
	9450 2150 9450 2250
Wire Wire Line
	9800 1750 9450 1750
Wire Wire Line
	9800 2250 9800 2050
Wire Wire Line
	9450 2250 9800 2250
Connection ~ 9650 2250
Wire Wire Line
	9800 1750 9800 1850
Wire Wire Line
	10450 1350 10450 1350
Wire Wire Line
	10450 2050 10450 2250
Wire Wire Line
	10800 1750 10450 1750
Wire Wire Line
	10800 2250 10800 2050
Wire Wire Line
	10450 2250 10800 2250
Connection ~ 10650 2250
Wire Wire Line
	10800 1750 10800 1850
Wire Wire Line
	10450 1750 10450 1850
Wire Wire Line
	10650 4100 10500 4100
Wire Wire Line
	10650 3700 10650 4100
Wire Wire Line
	10100 4000 10650 4000
Connection ~ 10650 4000
Wire Wire Line
	10100 3900 10800 3900
Wire Wire Line
	10100 3800 10650 3800
Connection ~ 10650 3900
Wire Wire Line
	10100 4100 10300 4100
Connection ~ 10150 4100
Wire Wire Line
	10100 3700 10650 3700
Connection ~ 10650 3800
Wire Wire Line
	10100 3600 10450 3600
Wire Wire Line
	10450 3600 10450 3550
Wire Wire Line
	10450 3350 10450 3300
Wire Wire Line
	10450 3000 10450 2950
Wire Wire Line
	9550 4500 9550 4400
Wire Wire Line
	9250 4500 9550 4500
Wire Wire Line
	9250 4500 9250 4400
Connection ~ 9400 4500
Wire Wire Line
	9350 4400 9350 4500
Connection ~ 9350 4500
Wire Wire Line
	9450 4400 9450 4500
Connection ~ 9450 4500
Wire Wire Line
	8200 3600 8700 3600
Wire Wire Line
	8550 3500 8550 3600
Connection ~ 8550 3600
Wire Wire Line
	8550 3300 8550 3200
Wire Wire Line
	4650 5000 4150 5000
Wire Wire Line
	4650 2800 4650 5000
Wire Wire Line
	4150 4700 4650 4700
Connection ~ 4650 4700
Wire Wire Line
	4150 4400 4650 4400
Connection ~ 4650 4400
Wire Wire Line
	4150 4100 4650 4100
Connection ~ 4650 4100
Wire Wire Line
	4150 3800 4650 3800
Connection ~ 4650 3800
Wire Wire Line
	4150 3500 4650 3500
Connection ~ 4650 3500
Wire Wire Line
	4850 4900 4150 4900
Wire Wire Line
	4850 4600 4150 4600
Connection ~ 4850 4600
Wire Wire Line
	4850 4300 4150 4300
Connection ~ 4850 4300
Wire Wire Line
	4850 4000 4150 4000
Connection ~ 4850 4000
Wire Wire Line
	4850 3700 4150 3700
Connection ~ 4850 3700
Wire Wire Line
	4150 3400 4850 3400
Connection ~ 4850 4900
Connection ~ 4650 2800
Wire Wire Line
	4300 2800 4250 2800
Wire Wire Line
	2450 1400 2600 1400
Wire Wire Line
	4850 3400 4850 5050
Wire Wire Line
	1600 2000 1500 2000
Connection ~ 1600 2000
Wire Wire Line
	1600 2000 1600 2100
Wire Wire Line
	2150 1400 1900 1400
Wire Wire Line
	5000 2800 5100 2800
Wire Wire Line
	4500 2800 4700 2800
Wire Wire Line
	4850 1350 5250 1350
Connection ~ 5050 1350
Wire Bus Line
	1750 5550 3000 5550
Wire Bus Line
	1750 5650 2150 5650
Wire Wire Line
	1350 3700 1350 3650
Wire Wire Line
	1350 3350 1350 3300
Wire Wire Line
	1700 3700 1700 3650
Wire Wire Line
	1700 3350 1700 3300
Wire Wire Line
	2050 3700 2050 3650
Wire Wire Line
	2050 3350 2050 3300
Wire Wire Line
	2550 3700 2550 3650
Wire Wire Line
	2550 3350 2550 3300
Wire Wire Line
	2550 3950 2550 3900
Wire Wire Line
	6200 5750 6450 5750
Wire Bus Line
	3000 5550 3000 7350
Wire Wire Line
	2250 5950 2850 5950
Wire Wire Line
	2250 6050 2850 6050
Wire Wire Line
	2250 6150 2850 6150
Wire Wire Line
	2250 6250 2850 6250
Wire Wire Line
	2250 6350 2850 6350
Wire Wire Line
	2250 6450 2850 6450
Wire Wire Line
	2250 6550 2850 6550
Wire Wire Line
	2250 6650 2850 6650
Wire Wire Line
	2250 6750 2850 6750
Wire Wire Line
	2250 6850 2850 6850
Wire Wire Line
	2250 6950 2850 6950
Wire Wire Line
	2250 7050 2850 7050
Wire Wire Line
	2250 7150 2850 7150
Wire Wire Line
	2250 7250 2850 7250
Wire Wire Line
	2250 7350 2850 7350
Wire Wire Line
	3700 5950 3100 5950
Wire Wire Line
	3700 6050 3100 6050
Wire Wire Line
	3700 6150 3100 6150
Wire Wire Line
	3700 6250 3100 6250
Wire Wire Line
	3700 6350 3100 6350
Wire Wire Line
	3700 6450 3100 6450
Wire Wire Line
	3700 6550 3100 6550
Wire Wire Line
	3700 6650 3100 6650
Wire Wire Line
	3700 6750 3100 6750
Wire Wire Line
	3700 6850 3100 6850
Wire Wire Line
	3700 6950 3100 6950
Wire Wire Line
	3700 7050 3100 7050
Wire Wire Line
	3700 7150 3100 7150
Wire Wire Line
	3700 7250 3100 7250
Wire Wire Line
	3700 7350 3100 7350
Wire Wire Line
	3700 7450 3100 7450
Wire Wire Line
	6400 1800 6500 1800
Wire Wire Line
	6500 1700 6400 1700
Wire Wire Line
	6400 1700 6400 1800
Connection ~ 6400 1800
Wire Wire Line
	6400 1400 6500 1400
Wire Wire Line
	6500 1500 6400 1500
Wire Wire Line
	6400 1500 6400 1400
Connection ~ 6400 1400
$Comp
L C_Small C6
U 1 1 59459CCC
P 7250 2750
F 0 "C6" H 7260 2820 50  0000 L CNN
F 1 "100nF" H 7260 2670 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7250 2750 50  0001 C CNN
F 3 "" H 7250 2750 50  0001 C CNN
	1    7250 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2900 7250 2900
Wire Wire Line
	7250 2900 7250 2850
Wire Wire Line
	6950 2900 6950 2850
Connection ~ 7100 2900
Wire Wire Line
	6950 2650 6950 2600
Wire Wire Line
	6950 2600 7250 2600
Wire Wire Line
	7250 2600 7250 2650
Connection ~ 7100 2600
$Comp
L GND #PWR017
U 1 1 5945B4AC
P 7800 2000
F 0 "#PWR017" H 7800 1750 50  0001 C CNN
F 1 "GND" H 7800 1850 50  0000 C CNN
F 2 "" H 7800 2000 50  0001 C CNN
F 3 "" H 7800 2000 50  0001 C CNN
	1    7800 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 2000 7700 2000
Wire Wire Line
	7700 1900 7800 1900
Wire Wire Line
	7800 1700 7800 2000
Connection ~ 7800 2000
Wire Wire Line
	7700 1700 7800 1700
Connection ~ 7800 1900
Wire Wire Line
	7900 1600 7700 1600
Text Label 7700 1400 0    60   ~ 0
SDA
Text Label 6600 7500 2    60   ~ 0
SCL
Text Notes 6550 1050 0    60   ~ 0
Accelerometer/Gyroscope\nAddress = 0x6A\n
Text Label 2850 6550 2    60   ~ 0
SCL
Text Label 2850 6650 2    60   ~ 0
SDA
Text Label 6300 7500 2    60   ~ 0
SDA
Text Label 7700 1500 0    60   ~ 0
SCL
$Comp
L R_Small R13
U 1 1 5946DE00
P 6600 7300
F 0 "R13" H 6650 7250 50  0000 L CNN
F 1 "2k2" H 6650 7350 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 6600 7300 50  0001 C CNN
F 3 "" H 6600 7300 50  0001 C CNN
	1    6600 7300
	-1   0    0    1   
$EndComp
$Comp
L R_Small R12
U 1 1 5946DF2C
P 6300 7300
F 0 "R12" H 6350 7250 50  0000 L CNN
F 1 "2k2" H 6350 7350 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 6300 7300 50  0001 C CNN
F 3 "" H 6300 7300 50  0001 C CNN
	1    6300 7300
	-1   0    0    1   
$EndComp
Wire Wire Line
	6300 7100 6300 7200
Wire Wire Line
	6600 7100 6600 7200
Wire Wire Line
	6600 7500 6600 7400
Wire Wire Line
	6300 7500 6300 7400
Text Notes 6150 6750 0    60   ~ 0
I2C Pullups\n
Wire Wire Line
	6300 7100 6600 7100
Connection ~ 6450 7100
$Comp
L C_Small C8
U 1 1 5947649B
P 8250 4550
F 0 "C8" H 8260 4620 50  0000 L CNN
F 1 "100nF" H 8260 4470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8250 4550 50  0001 C CNN
F 3 "" H 8250 4550 50  0001 C CNN
	1    8250 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 59476602
P 8250 4650
F 0 "#PWR018" H 8250 4400 50  0001 C CNN
F 1 "GND" H 8250 4500 50  0000 C CNN
F 2 "" H 8250 4650 50  0001 C CNN
F 3 "" H 8250 4650 50  0001 C CNN
	1    8250 4650
	1    0    0    -1  
$EndComp
Text Label 3700 7050 2    60   ~ 0
USB_DM
Text Label 3700 7150 2    60   ~ 0
USB_DP
Text Label 2450 1700 0    60   ~ 0
USB_DM
Text Label 2450 1600 0    60   ~ 0
USB_DP
Text Label 1900 1400 0    60   ~ 0
VBUS
Text Label 3700 6850 2    60   ~ 0
VBUS
Wire Bus Line
	1750 5750 1900 5750
Wire Bus Line
	1900 5750 1900 6300
Entry Bus Bus
	1800 6400 1900 6300
Entry Bus Bus
	1800 6300 1900 6200
Entry Bus Bus
	1800 6200 1900 6100
Text Label 1800 6200 2    60   ~ 0
PC13
Text Label 1800 6300 2    60   ~ 0
PC14
Text Label 1800 6400 2    60   ~ 0
PC15
Wire Wire Line
	1800 6200 1150 6200
Wire Wire Line
	1800 6300 1150 6300
Wire Wire Line
	1800 6400 1150 6400
Text Label 3700 6950 2    60   ~ 0
USB_ID
$Comp
L +5V #PWR019
U 1 1 5946D233
P 3450 1350
F 0 "#PWR019" H 3450 1200 50  0001 C CNN
F 1 "+5V" H 3450 1500 50  0000 C CNN
F 2 "" H 3450 1350 50  0001 C CNN
F 3 "" H 3450 1350 50  0001 C CNN
	1    3450 1350
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 5946D239
P 3650 1450
F 0 "C1" H 3750 1400 50  0000 L CNN
F 1 "4.7uF" H 3750 1500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3650 1450 50  0001 C CNN
F 3 "" H 3650 1450 50  0001 C CNN
	1    3650 1450
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR020
U 1 1 5946D23F
P 3650 1550
F 0 "#PWR020" H 3650 1300 50  0001 C CNN
F 1 "GND" H 3650 1400 50  0000 C CNN
F 2 "" H 3650 1550 50  0001 C CNN
F 3 "" H 3650 1550 50  0001 C CNN
	1    3650 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 1500 3850 1500
Wire Wire Line
	3850 1500 3850 1350
Connection ~ 3850 1350
Wire Wire Line
	3450 1350 3950 1350
Text Notes 5200 4450 0    60   ~ 0
Channel Pinout\nCH0 - PA0 - TIM2_CH1\nCH1 - PA1 - TIM2_CH2\nCH2 - PA2 - TIM2_CH3\nCH3 - PA3 - TIM2_CH4\nCH4 - PA6 - TIM3_CH1\nCH5 - PA7 - TIM3_CH2
$Comp
L +3V3 #PWR021
U 1 1 5948E482
P 5250 1350
F 0 "#PWR021" H 5250 1200 50  0001 C CNN
F 1 "+3V3" H 5250 1490 50  0000 C CNN
F 2 "" H 5250 1350 50  0001 C CNN
F 3 "" H 5250 1350 50  0001 C CNN
	1    5250 1350
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR022
U 1 1 5948E894
P 9450 1350
F 0 "#PWR022" H 9450 1200 50  0001 C CNN
F 1 "+3V3" H 9450 1490 50  0000 C CNN
F 2 "" H 9450 1350 50  0001 C CNN
F 3 "" H 9450 1350 50  0001 C CNN
	1    9450 1350
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR023
U 1 1 5948E9FE
P 10450 1350
F 0 "#PWR023" H 10450 1200 50  0001 C CNN
F 1 "+3V3" H 10450 1490 50  0000 C CNN
F 2 "" H 10450 1350 50  0001 C CNN
F 3 "" H 10450 1350 50  0001 C CNN
	1    10450 1350
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR024
U 1 1 5948F408
P 6450 5550
F 0 "#PWR024" H 6450 5400 50  0001 C CNN
F 1 "+3V3" H 6450 5690 50  0000 C CNN
F 2 "" H 6450 5550 50  0001 C CNN
F 3 "" H 6450 5550 50  0001 C CNN
	1    6450 5550
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR025
U 1 1 5948F4F8
P 10450 2950
F 0 "#PWR025" H 10450 2800 50  0001 C CNN
F 1 "+3V3" H 10450 3090 50  0000 C CNN
F 2 "" H 10450 2950 50  0001 C CNN
F 3 "" H 10450 2950 50  0001 C CNN
	1    10450 2950
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR026
U 1 1 5948F5AB
P 8550 3200
F 0 "#PWR026" H 8550 3050 50  0001 C CNN
F 1 "+3V3" H 8550 3340 50  0000 C CNN
F 2 "" H 8550 3200 50  0001 C CNN
F 3 "" H 8550 3200 50  0001 C CNN
	1    8550 3200
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR027
U 1 1 5948F65E
P 10150 4500
F 0 "#PWR027" H 10150 4350 50  0001 C CNN
F 1 "+3V3" H 10150 4640 50  0000 C CNN
F 2 "" H 10150 4500 50  0001 C CNN
F 3 "" H 10150 4500 50  0001 C CNN
	1    10150 4500
	-1   0    0    1   
$EndComp
$Comp
L +3V3 #PWR028
U 1 1 5948F973
P 8250 4450
F 0 "#PWR028" H 8250 4300 50  0001 C CNN
F 1 "+3V3" H 8250 4590 50  0000 C CNN
F 2 "" H 8250 4450 50  0001 C CNN
F 3 "" H 8250 4450 50  0001 C CNN
	1    8250 4450
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR029
U 1 1 5948FF64
P 6450 7100
F 0 "#PWR029" H 6450 6950 50  0001 C CNN
F 1 "+3V3" H 6450 7240 50  0000 C CNN
F 2 "" H 6450 7100 50  0001 C CNN
F 3 "" H 6450 7100 50  0001 C CNN
	1    6450 7100
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR030
U 1 1 594903AC
P 7900 1600
F 0 "#PWR030" H 7900 1450 50  0001 C CNN
F 1 "+3V3" H 7900 1740 50  0000 C CNN
F 2 "" H 7900 1600 50  0001 C CNN
F 3 "" H 7900 1600 50  0001 C CNN
	1    7900 1600
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR031
U 1 1 5949045F
P 6400 1400
F 0 "#PWR031" H 6400 1250 50  0001 C CNN
F 1 "+3V3" H 6400 1540 50  0000 C CNN
F 2 "" H 6400 1400 50  0001 C CNN
F 3 "" H 6400 1400 50  0001 C CNN
	1    6400 1400
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR032
U 1 1 59490550
P 7100 2600
F 0 "#PWR032" H 7100 2450 50  0001 C CNN
F 1 "+3V3" H 7100 2740 50  0000 C CNN
F 2 "" H 7100 2600 50  0001 C CNN
F 3 "" H 7100 2600 50  0001 C CNN
	1    7100 2600
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR033
U 1 1 594913D9
P 2550 3300
F 0 "#PWR033" H 2550 3150 50  0001 C CNN
F 1 "+3V3" H 2550 3440 50  0000 C CNN
F 2 "" H 2550 3300 50  0001 C CNN
F 3 "" H 2550 3300 50  0001 C CNN
	1    2550 3300
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR034
U 1 1 5949148C
P 2050 3300
F 0 "#PWR034" H 2050 3150 50  0001 C CNN
F 1 "+3V3" H 2050 3440 50  0000 C CNN
F 2 "" H 2050 3300 50  0001 C CNN
F 3 "" H 2050 3300 50  0001 C CNN
	1    2050 3300
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR035
U 1 1 5949153F
P 1700 3300
F 0 "#PWR035" H 1700 3150 50  0001 C CNN
F 1 "+3V3" H 1700 3440 50  0000 C CNN
F 2 "" H 1700 3300 50  0001 C CNN
F 3 "" H 1700 3300 50  0001 C CNN
	1    1700 3300
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR036
U 1 1 594915F2
P 1350 3300
F 0 "#PWR036" H 1350 3150 50  0001 C CNN
F 1 "+3V3" H 1350 3440 50  0000 C CNN
F 2 "" H 1350 3300 50  0001 C CNN
F 3 "" H 1350 3300 50  0001 C CNN
	1    1350 3300
	1    0    0    -1  
$EndComp
Text Label 1750 5550 0    60   ~ 0
PA[0..15]
Text Label 1750 5650 0    60   ~ 0
PB[0..15]
Text Label 1750 5750 0    60   ~ 0
PC[13..15]
$Comp
L R_Small R2
U 1 1 594FD80A
P 2150 1600
F 0 "R2" V 2100 1450 50  0000 L CNN
F 1 "27" V 2100 1700 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2150 1600 50  0001 C CNN
F 3 "" H 2150 1600 50  0001 C CNN
	1    2150 1600
	0    1    1    0   
$EndComp
$Comp
L R_Small R3
U 1 1 594FDC72
P 2150 1700
F 0 "R3" V 2100 1550 50  0000 L CNN
F 1 "27" V 2100 1800 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2150 1700 50  0001 C CNN
F 3 "" H 2150 1700 50  0001 C CNN
	1    2150 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 1600 2250 1600
Wire Wire Line
	2050 1600 1900 1600
Wire Wire Line
	1900 1700 2050 1700
Wire Wire Line
	2250 1700 2450 1700
Wire Bus Line
	2150 5650 2150 7250
Text Label 2250 7350 0    60   ~ 0
PB15
$Comp
L CONN_01X05 J5
U 1 1 5951AE21
P 6650 5750
F 0 "J5" H 6650 6050 50  0000 C CNN
F 1 "CONN_01X05" V 6750 5750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x05_Pitch2.54mm" H 6650 5750 50  0001 C CNN
F 3 "" H 6650 5750 50  0001 C CNN
	1    6650 5750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 5951BF73
P 8700 4100
F 0 "#PWR037" H 8700 3850 50  0001 C CNN
F 1 "GND" H 8700 3950 50  0000 C CNN
F 2 "" H 8700 4100 50  0001 C CNN
F 3 "" H 8700 4100 50  0001 C CNN
	1    8700 4100
	1    0    0    -1  
$EndComp
Connection ~ 3650 1350
$Comp
L CONN_01X10 J7
U 1 1 5952347D
P 4700 7000
F 0 "J7" H 4700 7550 50  0000 C CNN
F 1 "CONN_01X10" V 4800 7000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x10_Pitch2.54mm" H 4700 7000 50  0001 C CNN
F 3 "" H 4700 7000 50  0001 C CNN
	1    4700 7000
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR038
U 1 1 5952375D
P 4900 7450
F 0 "#PWR038" H 4900 7200 50  0001 C CNN
F 1 "GND" H 4900 7300 50  0000 C CNN
F 2 "" H 4900 7450 50  0001 C CNN
F 3 "" H 4900 7450 50  0001 C CNN
	1    4900 7450
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR039
U 1 1 595237FB
P 4900 6550
F 0 "#PWR039" H 4900 6300 50  0001 C CNN
F 1 "GND" H 4900 6400 50  0000 C CNN
F 2 "" H 4900 6550 50  0001 C CNN
F 3 "" H 4900 6550 50  0001 C CNN
	1    4900 6550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4900 6650 5350 6650
Wire Wire Line
	4900 6750 5350 6750
Wire Wire Line
	5350 6850 4900 6850
Wire Wire Line
	4900 6950 5350 6950
Wire Wire Line
	5350 7050 4900 7050
Wire Wire Line
	4900 7150 5350 7150
Wire Wire Line
	5350 7250 4900 7250
Wire Wire Line
	4900 7350 5350 7350
Text Label 5350 6650 2    60   ~ 0
PB0
Text Label 5350 6750 2    60   ~ 0
PB1
Text Label 5350 6850 2    60   ~ 0
PB2
Text Label 5350 6950 2    60   ~ 0
PB10
Text Label 5350 7050 2    60   ~ 0
PB12
Text Label 5350 7150 2    60   ~ 0
PB13
Text Label 5350 7250 2    60   ~ 0
PB14
Text Label 5350 7350 2    60   ~ 0
PB15
$Comp
L CONN_01X02 J6
U 1 1 59524F61
P 4700 6150
F 0 "J6" H 4700 6300 50  0000 C CNN
F 1 "CONN_01X02" V 4800 6150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 4700 6150 50  0001 C CNN
F 3 "" H 4700 6150 50  0001 C CNN
	1    4700 6150
	-1   0    0    1   
$EndComp
Wire Wire Line
	4900 6100 5200 6100
Wire Wire Line
	4900 6200 5200 6200
Text Label 5200 6100 2    60   ~ 0
SDA
Text Label 5200 6200 2    60   ~ 0
SCL
Text Notes 4550 5850 0    60   ~ 0
GPIO Expansion
$Comp
L +3V3 #PWR040
U 1 1 59527FD5
P 9400 3300
F 0 "#PWR040" H 9400 3150 50  0001 C CNN
F 1 "+3V3" H 9400 3440 50  0000 C CNN
F 2 "" H 9400 3300 50  0001 C CNN
F 3 "" H 9400 3300 50  0001 C CNN
	1    9400 3300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 J8
U 1 1 59530BC4
P 8750 5600
F 0 "J8" H 8750 5700 50  0000 C CNN
F 1 "CONN_01X01" V 8850 5600 50  0000 C CNN
F 2 "parts:Pad" H 8750 5600 50  0001 C CNN
F 3 "" H 8750 5600 50  0001 C CNN
	1    8750 5600
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 J9
U 1 1 59530F76
P 9100 5600
F 0 "J9" H 9100 5700 50  0000 C CNN
F 1 "CONN_01X01" V 9200 5600 50  0000 C CNN
F 2 "parts:Pad" H 9100 5600 50  0001 C CNN
F 3 "" H 9100 5600 50  0001 C CNN
	1    9100 5600
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 J10
U 1 1 59531030
P 9450 5600
F 0 "J10" H 9450 5700 50  0000 C CNN
F 1 "CONN_01X01" V 9550 5600 50  0000 C CNN
F 2 "parts:Pad" H 9450 5600 50  0001 C CNN
F 3 "" H 9450 5600 50  0001 C CNN
	1    9450 5600
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 J11
U 1 1 595310ED
P 9800 5600
F 0 "J11" H 9800 5700 50  0000 C CNN
F 1 "CONN_01X01" V 9900 5600 50  0000 C CNN
F 2 "parts:Pad" H 9800 5600 50  0001 C CNN
F 3 "" H 9800 5600 50  0001 C CNN
	1    9800 5600
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 J12
U 1 1 595311AD
P 10150 5600
F 0 "J12" H 10150 5700 50  0000 C CNN
F 1 "CONN_01X01" V 10250 5600 50  0000 C CNN
F 2 "parts:Pad" H 10150 5600 50  0001 C CNN
F 3 "" H 10150 5600 50  0001 C CNN
	1    10150 5600
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 J13
U 1 1 5953139D
P 8750 6200
F 0 "J13" H 8750 6300 50  0000 C CNN
F 1 "CONN_01X01" V 8850 6200 50  0000 C CNN
F 2 "parts:Pad" H 8750 6200 50  0001 C CNN
F 3 "" H 8750 6200 50  0001 C CNN
	1    8750 6200
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 J14
U 1 1 595313A3
P 9100 6200
F 0 "J14" H 9100 6300 50  0000 C CNN
F 1 "CONN_01X01" V 9200 6200 50  0000 C CNN
F 2 "parts:Pad" H 9100 6200 50  0001 C CNN
F 3 "" H 9100 6200 50  0001 C CNN
	1    9100 6200
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 J15
U 1 1 595313A9
P 9450 6200
F 0 "J15" H 9450 6300 50  0000 C CNN
F 1 "CONN_01X01" V 9550 6200 50  0000 C CNN
F 2 "parts:Pad" H 9450 6200 50  0001 C CNN
F 3 "" H 9450 6200 50  0001 C CNN
	1    9450 6200
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 J16
U 1 1 595313AF
P 9800 6200
F 0 "J16" H 9800 6300 50  0000 C CNN
F 1 "CONN_01X01" V 9900 6200 50  0000 C CNN
F 2 "parts:Pad" H 9800 6200 50  0001 C CNN
F 3 "" H 9800 6200 50  0001 C CNN
	1    9800 6200
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 J17
U 1 1 595313B5
P 10150 6200
F 0 "J17" H 10150 6300 50  0000 C CNN
F 1 "CONN_01X01" V 10250 6200 50  0000 C CNN
F 2 "parts:Pad" H 10150 6200 50  0001 C CNN
F 3 "" H 10150 6200 50  0001 C CNN
	1    10150 6200
	0    1    1    0   
$EndComp
Wire Wire Line
	8750 6000 10150 6000
Wire Wire Line
	8750 5400 10150 5400
Connection ~ 9100 5400
Connection ~ 9450 5400
Connection ~ 9800 5400
Connection ~ 9800 6000
Connection ~ 9450 6000
Connection ~ 9100 6000
Text Notes 9150 5200 0    60   ~ 0
Power Pads
$EndSCHEMATC
