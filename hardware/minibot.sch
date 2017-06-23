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
Date "2017-06-15"
Rev "1"
Comp ""
Comment1 "Ben Mitchell"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 6000 650  750  800 
U 59425D39
F0 "Microcontroller" 60
F1 "microcontroller.sch" 60
F2 "PORTA" I R 6750 1150 60 
F3 "PORTB" I R 6750 1250 60 
F4 "nRST" I R 6750 900 60 
F5 "BOOT" I R 6750 1000 60 
F6 "PORTC" I R 6750 1350 60 
$EndSheet
Text Label 6750 900  0    60   ~ 0
nRST
Text Label 6750 1000 0    60   ~ 0
BOOT
$Comp
L SW_Push SW2
U 1 1 5942B37F
P 9450 1950
F 0 "SW2" V 9400 1750 50  0000 L CNN
F 1 "RESET" V 9550 1800 50  0000 C CNN
F 2 "" H 9450 2150 50  0001 C CNN
F 3 "" H 9450 2150 50  0001 C CNN
	1    9450 1950
	0    1    1    0   
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
L GND #PWR12
U 1 1 5942B74C
P 9650 2250
F 0 "#PWR12" H 9650 2000 50  0001 C CNN
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
F 2 "" H 10450 1750 50  0001 C CNN
F 3 "" H 10450 1750 50  0001 C CNN
	1    10450 1550
	0    1    1    0   
$EndComp
$Comp
L R_Small R2
U 1 1 5942E26F
P 10450 1950
F 0 "R2" H 10480 1970 50  0000 L CNN
F 1 "10k" H 10480 1910 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 10450 1950 50  0001 C CNN
F 3 "" H 10450 1950 50  0001 C CNN
	1    10450 1950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR13
U 1 1 5942E275
P 10650 2250
F 0 "#PWR13" H 10650 2000 50  0001 C CNN
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
L RN41 U6
U 1 1 594318AE
P 8950 5100
F 0 "U6" H 9000 5150 60  0000 C CNN
F 1 "RN41" H 9800 5150 60  0000 C CNN
F 2 "" H 8950 5100 60  0001 C CNN
F 3 "" H 8950 5100 60  0001 C CNN
	1    8950 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR46
U 1 1 59433424
P 10850 5500
F 0 "#PWR46" H 10850 5250 50  0001 C CNN
F 1 "GND" H 10850 5350 50  0000 C CNN
F 2 "" H 10850 5500 50  0001 C CNN
F 3 "" H 10850 5500 50  0001 C CNN
	1    10850 5500
	1    0    0    -1  
$EndComp
$Comp
L R_Small R9
U 1 1 594338B1
P 10450 5700
F 0 "R9" V 10400 5800 50  0000 L CNN
F 1 "10k" V 10500 5800 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 10450 5700 50  0001 C CNN
F 3 "" H 10450 5700 50  0001 C CNN
	1    10450 5700
	0    1    1    0   
$EndComp
$Comp
L GS2 J4
U 1 1 59434530
P 10200 5900
F 0 "J4" H 10300 5950 50  0000 C CNN
F 1 "BAUD" H 10350 5850 50  0000 C CNN
F 2 "Connectors:GS2" V 10274 5900 50  0001 C CNN
F 3 "" H 10200 5900 50  0001 C CNN
	1    10200 5900
	1    0    0    -1  
$EndComp
$Comp
L LED D6
U 1 1 594363D7
P 10500 4750
F 0 "D6" V 10550 4650 50  0000 R CNN
F 1 "LED" V 10450 4650 50  0000 R CNN
F 2 "LEDs:LED_0603" H 10500 4750 50  0001 C CNN
F 3 "" H 10500 4750 50  0001 C CNN
	1    10500 4750
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R8
U 1 1 59436BAF
P 10500 5050
F 0 "R8" H 10550 5000 50  0000 L CNN
F 1 "100" H 10550 5100 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 10500 5050 50  0001 C CNN
F 3 "" H 10500 5050 50  0001 C CNN
	1    10500 5050
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR54
U 1 1 594391E3
P 9450 6100
F 0 "#PWR54" H 9450 5850 50  0001 C CNN
F 1 "GND" H 9450 5950 50  0000 C CNN
F 2 "" H 9450 6100 50  0001 C CNN
F 3 "" H 9450 6100 50  0001 C CNN
	1    9450 6100
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR39
U 1 1 5943A32B
P 9450 4900
F 0 "#PWR39" H 9450 4750 50  0001 C CNN
F 1 "VDD" H 9450 5050 50  0000 C CNN
F 2 "" H 9450 4900 50  0001 C CNN
F 3 "" H 9450 4900 50  0001 C CNN
	1    9450 4900
	1    0    0    -1  
$EndComp
$Comp
L C_Small C17
U 1 1 5943A7D6
P 3800 7150
F 0 "C17" H 3810 7220 50  0000 L CNN
F 1 "100nF" H 3810 7070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3800 7150 50  0001 C CNN
F 3 "" H 3800 7150 50  0001 C CNN
	1    3800 7150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR61
U 1 1 5943AAB5
P 3950 7300
F 0 "#PWR61" H 3950 7050 50  0001 C CNN
F 1 "GND" H 3950 7150 50  0000 C CNN
F 2 "" H 3950 7300 50  0001 C CNN
F 3 "" H 3950 7300 50  0001 C CNN
	1    3950 7300
	1    0    0    -1  
$EndComp
$Comp
L GS2 J3
U 1 1 5943C8B9
P 8250 5000
F 0 "J3" H 8350 5050 50  0000 C CNN
F 1 "RESET" H 8400 4950 50  0000 C CNN
F 2 "Connectors:GS2" V 8324 5000 50  0001 C CNN
F 3 "" H 8250 5000 50  0001 C CNN
	1    8250 5000
	-1   0    0    1   
$EndComp
$Comp
L R_Small R7
U 1 1 5943C954
P 8600 5000
F 0 "R7" H 8650 4950 50  0000 L CNN
F 1 "10k" H 8650 5050 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 8600 5000 50  0001 C CNN
F 3 "" H 8600 5000 50  0001 C CNN
	1    8600 5000
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR37
U 1 1 5943D6C7
P 8250 4800
F 0 "#PWR37" H 8250 4550 50  0001 C CNN
F 1 "GND" H 8250 4650 50  0000 C CNN
F 2 "" H 8250 4800 50  0001 C CNN
F 3 "" H 8250 4800 50  0001 C CNN
	1    8250 4800
	-1   0    0    1   
$EndComp
Text Notes 9100 4550 0    60   ~ 0
Bluetooth Radio\nUART1\n
$Comp
L CONN_01X18 J5
U 1 1 59443C3E
P 850 6400
F 0 "J5" H 850 7350 50  0000 C CNN
F 1 "CONN_01X18" V 950 6400 50  0000 C CNN
F 2 "" H 850 6400 50  0001 C CNN
F 3 "" H 850 6400 50  0001 C CNN
	1    850  6400
	-1   0    0    1   
$EndComp
Text Notes 1150 4550 0    60   ~ 0
Servo Connector
$Comp
L GND #PWR62
U 1 1 59445F65
P 1750 7400
F 0 "#PWR62" H 1750 7150 50  0001 C CNN
F 1 "GND" H 1750 7250 50  0000 C CNN
F 2 "" H 1750 7400 50  0001 C CNN
F 3 "" H 1750 7400 50  0001 C CNN
	1    1750 7400
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D1
U 1 1 59446ADF
P 2200 1300
F 0 "D1" H 2250 1200 50  0000 C CNN
F 1 "3A" H 2100 1200 50  0000 C CNN
F 2 "Diodes_SMD:D_SMA" H 2200 1300 50  0001 C CNN
F 3 "" H 2200 1300 50  0001 C CNN
	1    2200 1300
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR40
U 1 1 59447E2E
P 1150 4950
F 0 "#PWR40" H 1150 4700 50  0001 C CNN
F 1 "GND" H 1150 4800 50  0000 C CNN
F 2 "" H 1150 4950 50  0001 C CNN
F 3 "" H 1150 4950 50  0001 C CNN
	1    1150 4950
	0    1    1    0   
$EndComp
Text Label 1050 7050 0    60   ~ 0
CH0
Text Label 1050 6750 0    60   ~ 0
CH1
Text Label 1050 6450 0    60   ~ 0
CH2
Text Label 1050 6150 0    60   ~ 0
CH3
Text Label 1050 5850 0    60   ~ 0
CH4
Text Label 1050 5550 0    60   ~ 0
CH5
$Comp
L +5V #PWR3
U 1 1 5944CF51
P 2500 1300
F 0 "#PWR3" H 2500 1150 50  0001 C CNN
F 1 "+5V" H 2500 1450 50  0000 C CNN
F 2 "" H 2500 1300 50  0001 C CNN
F 3 "" H 2500 1300 50  0001 C CNN
	1    2500 1300
	1    0    0    -1  
$EndComp
$Comp
L USB_OTG J1
U 1 1 5944D95D
P 1500 1500
F 0 "J1" H 1300 1950 50  0000 L CNN
F 1 "USB_OTG" H 1300 1850 50  0000 L CNN
F 2 "Connectors:USB_Micro-B" H 1650 1450 50  0001 C CNN
F 3 "" H 1650 1450 50  0001 C CNN
	1    1500 1500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR9
U 1 1 5944DD7E
P 1500 2000
F 0 "#PWR9" H 1500 1750 50  0001 C CNN
F 1 "GND" H 1500 1850 50  0000 C CNN
F 2 "" H 1500 2000 50  0001 C CNN
F 3 "" H 1500 2000 50  0001 C CNN
	1    1500 2000
	1    0    0    -1  
$EndComp
$Comp
L D_Schottky D7
U 1 1 59450602
P 1750 4950
F 0 "D7" H 1800 4850 50  0000 C CNN
F 1 "3A" H 1650 4850 50  0000 C CNN
F 2 "Diodes_SMD:D_SMA" H 1750 4950 50  0001 C CNN
F 3 "" H 1750 4950 50  0001 C CNN
	1    1750 4950
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR41
U 1 1 59450609
P 2000 4950
F 0 "#PWR41" H 2000 4800 50  0001 C CNN
F 1 "+5V" H 2000 5100 50  0000 C CNN
F 2 "" H 2000 4950 50  0001 C CNN
F 3 "" H 2000 4950 50  0001 C CNN
	1    2000 4950
	1    0    0    -1  
$EndComp
Text Notes 1400 1050 0    60   ~ 0
USB Connector\n
$Comp
L TLV70233DBV U1
U 1 1 594554E6
P 4050 1250
F 0 "U1" H 3800 1450 50  0000 C CNN
F 1 "TLV70233DBV" H 4150 1450 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 4050 1350 50  0001 C CIN
F 3 "" H 4050 1250 50  0001 C CNN
	1    4050 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR8
U 1 1 59456F5F
P 4050 1550
F 0 "#PWR8" H 4050 1300 50  0001 C CNN
F 1 "GND" H 4050 1400 50  0000 C CNN
F 2 "" H 4050 1550 50  0001 C CNN
F 3 "" H 4050 1550 50  0001 C CNN
	1    4050 1550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C2
U 1 1 5945ADA5
P 4700 1300
F 0 "C2" H 4800 1250 50  0000 L CNN
F 1 "4.7uF" H 4800 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4700 1300 50  0001 C CNN
F 3 "" H 4700 1300 50  0001 C CNN
	1    4700 1300
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR7
U 1 1 5945B21A
P 4700 1400
F 0 "#PWR7" H 4700 1150 50  0001 C CNN
F 1 "GND" H 4700 1250 50  0000 C CNN
F 2 "" H 4700 1400 50  0001 C CNN
F 3 "" H 4700 1400 50  0001 C CNN
	1    4700 1400
	1    0    0    -1  
$EndComp
$Comp
L CP_Small C11
U 1 1 5945BC61
P 1300 4950
F 0 "C11" V 1200 4900 50  0000 L CNN
F 1 "100uF" V 1400 4850 50  0000 L CNN
F 2 "Capacitors_SMD:CP_Elec_6.3x5.3" H 1300 4950 50  0001 C CNN
F 3 "" H 1300 4950 50  0001 C CNN
	1    1300 4950
	0    1    1    0   
$EndComp
Text Notes 3750 950  0    60   ~ 0
3V3 Regulation\n
Text Label 7250 1550 0    60   ~ 0
PB0
Text Label 7250 1650 0    60   ~ 0
PB1
Text Label 7250 1750 0    60   ~ 0
PB2
Text Label 7250 1850 0    60   ~ 0
PB3
Text Label 7250 1950 0    60   ~ 0
PB4
Text Label 7250 2050 0    60   ~ 0
PB5
Text Label 7250 2150 0    60   ~ 0
PB6
Text Label 7250 2250 0    60   ~ 0
PB7
Text Label 7250 2350 0    60   ~ 0
PB8
Text Label 7250 2450 0    60   ~ 0
PB9
Text Label 7250 2550 0    60   ~ 0
PB10
Text Label 7250 2650 0    60   ~ 0
PB11
Text Label 7250 2750 0    60   ~ 0
PB12
Text Label 7250 2850 0    60   ~ 0
PB13
Text Label 7250 2950 0    60   ~ 0
PB14
Text Label 7250 3050 0    60   ~ 0
PB15
Entry Bus Bus
	7150 1450 7250 1550
Entry Bus Bus
	7150 1550 7250 1650
Entry Bus Bus
	7150 1650 7250 1750
Entry Bus Bus
	7150 1750 7250 1850
Entry Bus Bus
	7150 1850 7250 1950
Entry Bus Bus
	7150 1950 7250 2050
Entry Bus Bus
	7150 2050 7250 2150
Entry Bus Bus
	7150 2150 7250 2250
Entry Bus Bus
	7150 2250 7250 2350
Entry Bus Bus
	7150 2350 7250 2450
Entry Bus Bus
	7150 2450 7250 2550
Entry Bus Bus
	7150 2550 7250 2650
Entry Bus Bus
	7150 2650 7250 2750
Entry Bus Bus
	7150 2750 7250 2850
Entry Bus Bus
	7150 2850 7250 2950
Entry Bus Bus
	7150 2950 7250 3050
Entry Bus Bus
	8000 1450 8100 1550
Entry Bus Bus
	8000 1550 8100 1650
Entry Bus Bus
	8000 1650 8100 1750
Entry Bus Bus
	8000 1750 8100 1850
Entry Bus Bus
	8000 1850 8100 1950
Entry Bus Bus
	8000 1950 8100 2050
Entry Bus Bus
	8000 2050 8100 2150
Entry Bus Bus
	8000 2150 8100 2250
Entry Bus Bus
	8000 2250 8100 2350
Entry Bus Bus
	8000 2350 8100 2450
Entry Bus Bus
	8000 2450 8100 2550
Entry Bus Bus
	8000 2550 8100 2650
Entry Bus Bus
	8000 2650 8100 2750
Entry Bus Bus
	8000 2750 8100 2850
Entry Bus Bus
	8000 2850 8100 2950
Entry Bus Bus
	8000 2950 8100 3050
Text Label 8100 1550 0    60   ~ 0
PA0
Text Label 8100 1650 0    60   ~ 0
PA1
Text Label 8100 1750 0    60   ~ 0
PA2
Text Label 8100 1850 0    60   ~ 0
PA3
Text Label 8100 1950 0    60   ~ 0
PA4
Text Label 8100 2050 0    60   ~ 0
PA5
Text Label 8100 2150 0    60   ~ 0
PA6
Text Label 8100 2250 0    60   ~ 0
PA7
Text Label 8100 2350 0    60   ~ 0
PA8
Text Label 8100 2450 0    60   ~ 0
PA9
Text Label 8100 2550 0    60   ~ 0
PA10
Text Label 8100 2650 0    60   ~ 0
PA11
Text Label 8100 2750 0    60   ~ 0
PA12
Text Label 8100 2850 0    60   ~ 0
PA13
Text Label 8100 2950 0    60   ~ 0
PA14
Text Label 8100 3050 0    60   ~ 0
PA15
$Comp
L LED D2
U 1 1 5947324F
P 850 3200
F 0 "D2" V 900 3100 50  0000 R CNN
F 1 "RED" V 800 3100 50  0000 R CNN
F 2 "LEDs:LED_0603" H 850 3200 50  0001 C CNN
F 3 "" H 850 3200 50  0001 C CNN
	1    850  3200
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R3
U 1 1 59473255
P 850 3500
F 0 "R3" H 900 3450 50  0000 L CNN
F 1 "1k3" H 900 3550 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 850 3500 50  0001 C CNN
F 3 "" H 850 3500 50  0001 C CNN
	1    850  3500
	-1   0    0    1   
$EndComp
$Comp
L LED D3
U 1 1 594734EF
P 1200 3200
F 0 "D3" V 1250 3100 50  0000 R CNN
F 1 "YELLOW" V 1150 3150 50  0000 R CNN
F 2 "LEDs:LED_0603" H 1200 3200 50  0001 C CNN
F 3 "" H 1200 3200 50  0001 C CNN
	1    1200 3200
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R4
U 1 1 594734F5
P 1200 3500
F 0 "R4" H 1250 3450 50  0000 L CNN
F 1 "1k3" H 1250 3550 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 1200 3500 50  0001 C CNN
F 3 "" H 1200 3500 50  0001 C CNN
	1    1200 3500
	-1   0    0    1   
$EndComp
$Comp
L LED D4
U 1 1 594735E5
P 1550 3200
F 0 "D4" V 1600 3100 50  0000 R CNN
F 1 "GREEN" V 1500 3100 50  0000 R CNN
F 2 "LEDs:LED_0603" H 1550 3200 50  0001 C CNN
F 3 "" H 1550 3200 50  0001 C CNN
	1    1550 3200
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R5
U 1 1 594735EB
P 1550 3500
F 0 "R5" H 1600 3450 50  0000 L CNN
F 1 "100" H 1600 3550 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 1550 3500 50  0001 C CNN
F 3 "" H 1550 3500 50  0001 C CNN
	1    1550 3500
	-1   0    0    1   
$EndComp
$Comp
L LED D5
U 1 1 59473683
P 2050 3200
F 0 "D5" V 2100 3100 50  0000 R CNN
F 1 "POWER" V 2000 3100 50  0000 R CNN
F 2 "LEDs:LED_0603" H 2050 3200 50  0001 C CNN
F 3 "" H 2050 3200 50  0001 C CNN
	1    2050 3200
	0    -1   -1   0   
$EndComp
$Comp
L R_Small R6
U 1 1 59473689
P 2050 3500
F 0 "R6" H 2100 3450 50  0000 L CNN
F 1 "100" H 2100 3550 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2050 3500 50  0001 C CNN
F 3 "" H 2050 3500 50  0001 C CNN
	1    2050 3500
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR25
U 1 1 59474381
P 2050 3650
F 0 "#PWR25" H 2050 3400 50  0001 C CNN
F 1 "GND" H 2050 3500 50  0000 C CNN
F 2 "" H 2050 3650 50  0001 C CNN
F 3 "" H 2050 3650 50  0001 C CNN
	1    2050 3650
	1    0    0    -1  
$EndComp
Text Notes 1200 2600 0    60   ~ 0
Status LEDs\n
Text Label 6850 1250 0    60   ~ 0
PORTB
Text Label 6850 1150 0    60   ~ 0
PORTA
$Comp
L CONN_01X06 J2
U 1 1 5943812A
P 10350 3650
F 0 "J2" H 10350 4000 50  0000 C CNN
F 1 "SWD" V 10450 3650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Angled_1x06_Pitch1.27mm" H 10350 3650 50  0001 C CNN
F 3 "" H 10350 3650 50  0001 C CNN
	1    10350 3650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR24
U 1 1 59438DDC
P 9900 3600
F 0 "#PWR24" H 9900 3350 50  0001 C CNN
F 1 "GND" H 9900 3450 50  0000 C CNN
F 2 "" H 9900 3600 50  0001 C CNN
F 3 "" H 9900 3600 50  0001 C CNN
	1    9900 3600
	0    1    1    0   
$EndComp
Text Label 10150 3500 2    60   ~ 0
SWCLK
Text Label 10150 3700 2    60   ~ 0
SWDIO
Text Label 10150 3800 2    60   ~ 0
nRST
Text Label 10150 3900 2    60   ~ 0
SWO
Text Notes 9750 3100 0    60   ~ 0
Programming Connector
Text Label 8700 2850 2    60   ~ 0
SWDIO
Text Label 8700 2950 2    60   ~ 0
SWCLK
Text Label 7850 1850 2    60   ~ 0
SWO
Text Label 1550 3600 3    60   ~ 0
GREEN
Text Label 1200 3600 3    60   ~ 0
YELLOW
Text Label 850  3600 3    60   ~ 0
RED
Text Label 6150 1800 0    60   ~ 0
GREEN
Text Label 6150 1900 0    60   ~ 0
YELLOW
Text Label 6150 2000 0    60   ~ 0
RED
Text Label 8750 5400 2    60   ~ 0
BT_TXD
Text Label 8750 5500 2    60   ~ 0
BT_RXD
Text Label 8700 1750 2    60   ~ 0
BT_TXD
Text Label 8700 1850 2    60   ~ 0
BT_RXD
Text Label 8700 1550 2    60   ~ 0
CH0
Text Label 8700 1650 2    60   ~ 0
CH1
Text Label 8700 2150 2    60   ~ 0
CH2
Text Label 8700 2250 2    60   ~ 0
CH3
Text Label 7850 1550 2    60   ~ 0
CH4
Text Label 7850 1650 2    60   ~ 0
CH5
$Comp
L LSM6DS3US U7
U 1 1 594585EF
P 4950 6550
F 0 "U7" H 5000 6600 60  0000 L CNN
F 1 "LSM6DS3US" H 5750 6600 60  0000 R CNN
F 2 "" H 4950 6550 60  0001 C CNN
F 3 "" H 4950 6550 60  0001 C CNN
	1    4950 6550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR59
U 1 1 59458A58
P 4650 7050
F 0 "#PWR59" H 4650 6800 50  0001 C CNN
F 1 "GND" H 4650 6900 50  0000 C CNN
F 2 "" H 4650 7050 50  0001 C CNN
F 3 "" H 4650 7050 50  0001 C CNN
	1    4650 7050
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
	9450 2250 9650 2250
Wire Wire Line
	9650 2250 9800 2250
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
	10450 2250 10650 2250
Wire Wire Line
	10650 2250 10800 2250
Connection ~ 10650 2250
Wire Wire Line
	10800 1750 10800 1850
Wire Wire Line
	10450 1750 10450 1850
Wire Wire Line
	10700 5700 10550 5700
Wire Wire Line
	10700 5300 10700 5400
Wire Wire Line
	10700 5400 10700 5500
Wire Wire Line
	10700 5500 10700 5600
Wire Wire Line
	10700 5600 10700 5700
Wire Wire Line
	10150 5600 10700 5600
Connection ~ 10700 5600
Wire Wire Line
	10150 5500 10700 5500
Wire Wire Line
	10700 5500 10850 5500
Wire Wire Line
	10150 5400 10700 5400
Connection ~ 10700 5500
Wire Wire Line
	10150 5700 10200 5700
Wire Wire Line
	10200 5700 10350 5700
Connection ~ 10200 5700
Wire Wire Line
	10150 5300 10700 5300
Connection ~ 10700 5400
Wire Wire Line
	10150 5200 10500 5200
Wire Wire Line
	10500 5200 10500 5150
Wire Wire Line
	10500 4950 10500 4900
Wire Wire Line
	10500 4600 10500 4550
Wire Wire Line
	9600 6100 9600 6000
Wire Wire Line
	9300 6100 9400 6100
Wire Wire Line
	9400 6100 9450 6100
Wire Wire Line
	9450 6100 9500 6100
Wire Wire Line
	9500 6100 9600 6100
Wire Wire Line
	9300 6100 9300 6000
Connection ~ 9450 6100
Wire Wire Line
	9400 6000 9400 6100
Connection ~ 9400 6100
Wire Wire Line
	9500 6000 9500 6100
Connection ~ 9500 6100
Wire Wire Line
	8250 5200 8600 5200
Wire Wire Line
	8600 5200 8750 5200
Wire Wire Line
	8600 5100 8600 5200
Connection ~ 8600 5200
Wire Wire Line
	8600 4900 8600 4800
Wire Wire Line
	1550 7150 1050 7150
Wire Wire Line
	1550 4950 1550 5650
Wire Wire Line
	1550 5650 1550 5950
Wire Wire Line
	1550 5950 1550 6250
Wire Wire Line
	1550 6250 1550 6550
Wire Wire Line
	1550 6550 1550 6850
Wire Wire Line
	1550 6850 1550 7150
Wire Wire Line
	1050 6850 1550 6850
Connection ~ 1550 6850
Wire Wire Line
	1050 6550 1550 6550
Connection ~ 1550 6550
Wire Wire Line
	1050 6250 1550 6250
Connection ~ 1550 6250
Wire Wire Line
	1050 5950 1550 5950
Connection ~ 1550 5950
Wire Wire Line
	1050 5650 1550 5650
Connection ~ 1550 5650
Wire Wire Line
	1750 7250 1050 7250
Wire Wire Line
	1750 6950 1050 6950
Connection ~ 1750 6950
Wire Wire Line
	1750 6650 1050 6650
Connection ~ 1750 6650
Wire Wire Line
	1750 6350 1050 6350
Connection ~ 1750 6350
Wire Wire Line
	1750 6050 1050 6050
Connection ~ 1750 6050
Wire Wire Line
	1050 5750 1750 5750
Connection ~ 1750 7250
Connection ~ 1550 4950
Wire Wire Line
	1200 4950 1150 4950
Wire Wire Line
	2350 1300 2500 1300
Wire Wire Line
	1750 5750 1750 6050
Wire Wire Line
	1750 6050 1750 6350
Wire Wire Line
	1750 6350 1750 6650
Wire Wire Line
	1750 6650 1750 6950
Wire Wire Line
	1750 6950 1750 7250
Wire Wire Line
	1750 7250 1750 7400
Wire Wire Line
	1500 1900 1400 1900
Connection ~ 1500 1900
Wire Wire Line
	1500 1900 1500 2000
Wire Wire Line
	2050 1300 1800 1300
Wire Wire Line
	1900 4950 2000 4950
Wire Wire Line
	1400 4950 1550 4950
Wire Wire Line
	1550 4950 1600 4950
Wire Wire Line
	4500 1200 4700 1200
Wire Wire Line
	4700 1200 4900 1200
Connection ~ 4700 1200
Wire Bus Line
	6750 1150 8000 1150
Wire Bus Line
	6750 1250 7150 1250
Wire Bus Line
	7150 1250 7150 1450
Wire Bus Line
	7150 1450 7150 1550
Wire Bus Line
	7150 1550 7150 1650
Wire Bus Line
	7150 1650 7150 1750
Wire Bus Line
	7150 1750 7150 1850
Wire Bus Line
	7150 1850 7150 1950
Wire Bus Line
	7150 1950 7150 2050
Wire Bus Line
	7150 2050 7150 2150
Wire Bus Line
	7150 2150 7150 2250
Wire Bus Line
	7150 2250 7150 2350
Wire Bus Line
	7150 2350 7150 2450
Wire Bus Line
	7150 2450 7150 2550
Wire Bus Line
	7150 2550 7150 2650
Wire Bus Line
	7150 2650 7150 2750
Wire Bus Line
	7150 2750 7150 2850
Wire Bus Line
	7150 2850 7150 2950
Wire Wire Line
	850  3400 850  3350
Wire Wire Line
	850  3050 850  3000
Wire Wire Line
	1200 3400 1200 3350
Wire Wire Line
	1200 3050 1200 3000
Wire Wire Line
	1550 3400 1550 3350
Wire Wire Line
	1550 3050 1550 3000
Wire Wire Line
	2050 3400 2050 3350
Wire Wire Line
	2050 3050 2050 3000
Wire Wire Line
	2050 3650 2050 3600
Wire Wire Line
	9900 3600 10150 3600
Wire Bus Line
	8000 1150 8000 1450
Wire Bus Line
	8000 1450 8000 1550
Wire Bus Line
	8000 1550 8000 1650
Wire Bus Line
	8000 1650 8000 1750
Wire Bus Line
	8000 1750 8000 1850
Wire Bus Line
	8000 1850 8000 1950
Wire Bus Line
	8000 1950 8000 2050
Wire Bus Line
	8000 2050 8000 2150
Wire Bus Line
	8000 2150 8000 2250
Wire Bus Line
	8000 2250 8000 2350
Wire Bus Line
	8000 2350 8000 2450
Wire Bus Line
	8000 2450 8000 2550
Wire Bus Line
	8000 2550 8000 2650
Wire Bus Line
	8000 2650 8000 2750
Wire Bus Line
	8000 2750 8000 2850
Wire Bus Line
	8000 2850 8000 2950
Wire Wire Line
	7250 1550 7850 1550
Wire Wire Line
	7250 1650 7850 1650
Wire Wire Line
	7250 1750 7850 1750
Wire Wire Line
	7250 1850 7850 1850
Wire Wire Line
	7250 1950 7850 1950
Wire Wire Line
	7250 2050 7850 2050
Wire Wire Line
	7250 2150 7850 2150
Wire Wire Line
	7250 2250 7850 2250
Wire Wire Line
	7250 2350 7850 2350
Wire Wire Line
	7250 2450 7850 2450
Wire Wire Line
	7250 2550 7850 2550
Wire Wire Line
	7250 2650 7850 2650
Wire Wire Line
	7250 2750 7850 2750
Wire Wire Line
	7250 2850 7850 2850
Wire Wire Line
	7250 2950 7850 2950
Wire Wire Line
	7250 3050 7850 3050
Wire Wire Line
	8700 1550 8100 1550
Wire Wire Line
	8700 1650 8100 1650
Wire Wire Line
	8700 1750 8100 1750
Wire Wire Line
	8700 1850 8100 1850
Wire Wire Line
	8700 1950 8100 1950
Wire Wire Line
	8700 2050 8100 2050
Wire Wire Line
	8700 2150 8100 2150
Wire Wire Line
	8700 2250 8100 2250
Wire Wire Line
	8700 2350 8100 2350
Wire Wire Line
	8700 2450 8100 2450
Wire Wire Line
	8700 2550 8100 2550
Wire Wire Line
	8700 2650 8100 2650
Wire Wire Line
	8700 2750 8100 2750
Wire Wire Line
	8700 2850 8100 2850
Wire Wire Line
	8700 2950 8100 2950
Wire Wire Line
	8700 3050 8100 3050
Wire Wire Line
	4650 7050 4750 7050
Wire Wire Line
	4750 6950 4650 6950
Wire Wire Line
	4650 6950 4650 7050
Connection ~ 4650 7050
Wire Wire Line
	4650 6650 4750 6650
Wire Wire Line
	4750 6750 4650 6750
Wire Wire Line
	4650 6750 4650 6650
Connection ~ 4650 6650
$Comp
L C_Small C18
U 1 1 59459CCC
P 4100 7150
F 0 "C18" H 4110 7220 50  0000 L CNN
F 1 "100nF" H 4110 7070 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4100 7150 50  0001 C CNN
F 3 "" H 4100 7150 50  0001 C CNN
	1    4100 7150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 7300 3950 7300
Wire Wire Line
	3950 7300 4100 7300
Wire Wire Line
	4100 7300 4100 7250
Wire Wire Line
	3800 7300 3800 7250
Connection ~ 3950 7300
Wire Wire Line
	3800 7050 3800 7000
Wire Wire Line
	3800 7000 3950 7000
Wire Wire Line
	3950 7000 4100 7000
Wire Wire Line
	4100 7000 4100 7050
Connection ~ 3950 7000
$Comp
L GND #PWR60
U 1 1 5945B4AC
P 6050 7250
F 0 "#PWR60" H 6050 7000 50  0001 C CNN
F 1 "GND" H 6050 7100 50  0000 C CNN
F 2 "" H 6050 7250 50  0001 C CNN
F 3 "" H 6050 7250 50  0001 C CNN
	1    6050 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 7250 5950 7250
Wire Wire Line
	5950 7150 6050 7150
Wire Wire Line
	6050 6950 6050 7150
Wire Wire Line
	6050 7150 6050 7250
Connection ~ 6050 7250
Wire Wire Line
	5950 6950 6050 6950
Connection ~ 6050 7150
Wire Wire Line
	6150 6850 5950 6850
Text Label 5950 6650 0    60   ~ 0
SDA
Text Label 7500 6300 2    60   ~ 0
SCL
Text Notes 4800 6300 0    60   ~ 0
Accelerometer/Gyroscope\nAddress = 0x6A\n
Text Label 7850 2150 2    60   ~ 0
SCL
Text Label 7850 2250 2    60   ~ 0
SDA
Text Label 7200 6300 2    60   ~ 0
SDA
Text Label 5950 6750 0    60   ~ 0
SCL
$Comp
L R_Small R11
U 1 1 5946DE00
P 7500 6100
F 0 "R11" H 7550 6050 50  0000 L CNN
F 1 "2k2" H 7550 6150 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 7500 6100 50  0001 C CNN
F 3 "" H 7500 6100 50  0001 C CNN
	1    7500 6100
	-1   0    0    1   
$EndComp
$Comp
L R_Small R10
U 1 1 5946DF2C
P 7200 6100
F 0 "R10" H 7250 6050 50  0000 L CNN
F 1 "2k2" H 7250 6150 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 7200 6100 50  0001 C CNN
F 3 "" H 7200 6100 50  0001 C CNN
	1    7200 6100
	-1   0    0    1   
$EndComp
Wire Wire Line
	7200 5900 7200 6000
Wire Wire Line
	7500 5900 7500 6000
Wire Wire Line
	7500 6300 7500 6200
Wire Wire Line
	7200 6300 7200 6200
Text Notes 7050 5550 0    60   ~ 0
I2C Pullups\n
Wire Wire Line
	7200 5900 7350 5900
Wire Wire Line
	7350 5900 7500 5900
Connection ~ 7350 5900
$Comp
L C_Small C16
U 1 1 5947649B
P 8050 6000
F 0 "C16" H 8060 6070 50  0000 L CNN
F 1 "100nF" H 8060 5920 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8050 6000 50  0001 C CNN
F 3 "" H 8050 6000 50  0001 C CNN
	1    8050 6000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR53
U 1 1 59476602
P 8050 6100
F 0 "#PWR53" H 8050 5850 50  0001 C CNN
F 1 "GND" H 8050 5950 50  0000 C CNN
F 2 "" H 8050 6100 50  0001 C CNN
F 3 "" H 8050 6100 50  0001 C CNN
	1    8050 6100
	1    0    0    -1  
$EndComp
Text Label 8700 2650 2    60   ~ 0
USB_DM
Text Label 8700 2750 2    60   ~ 0
USB_DP
Text Label 1800 1600 0    60   ~ 0
USB_DM
Text Label 1800 1500 0    60   ~ 0
USB_DP
Text Label 1800 1300 0    60   ~ 0
VBUS
Text Label 8700 2450 2    60   ~ 0
VBUS
Wire Bus Line
	6750 1350 6900 1350
Wire Bus Line
	6900 1350 6900 1700
Wire Bus Line
	6900 1700 6900 1800
Wire Bus Line
	6900 1800 6900 1900
Entry Bus Bus
	6800 2000 6900 1900
Entry Bus Bus
	6800 1900 6900 1800
Entry Bus Bus
	6800 1800 6900 1700
Text Label 6800 1800 2    60   ~ 0
PC13
Text Label 6800 1900 2    60   ~ 0
PC14
Text Label 6800 2000 2    60   ~ 0
PC15
Wire Wire Line
	6800 1800 6150 1800
Wire Wire Line
	6800 1900 6150 1900
Wire Wire Line
	6800 2000 6150 2000
Text Label 8700 2550 2    60   ~ 0
USB_ID
$Comp
L +5V #PWR1
U 1 1 5946D233
P 3100 1200
F 0 "#PWR1" H 3100 1050 50  0001 C CNN
F 1 "+5V" H 3100 1350 50  0000 C CNN
F 2 "" H 3100 1200 50  0001 C CNN
F 3 "" H 3100 1200 50  0001 C CNN
	1    3100 1200
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 5946D239
P 3300 1300
F 0 "C1" H 3400 1250 50  0000 L CNN
F 1 "4.7uF" H 3400 1350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 3300 1300 50  0001 C CNN
F 3 "" H 3300 1300 50  0001 C CNN
	1    3300 1300
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR6
U 1 1 5946D23F
P 3300 1400
F 0 "#PWR6" H 3300 1150 50  0001 C CNN
F 1 "GND" H 3300 1250 50  0000 C CNN
F 2 "" H 3300 1400 50  0001 C CNN
F 3 "" H 3300 1400 50  0001 C CNN
	1    3300 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 1350 3500 1350
Wire Wire Line
	3500 1350 3500 1200
Connection ~ 3500 1200
Wire Wire Line
	3100 1200 3500 1200
Wire Wire Line
	3500 1200 3600 1200
Text Notes 2050 6700 0    60   ~ 0
CH0 - PA0 - TIM2_CH1\nCH1 - PA1 - TIM2_CH2\nCH2 - PA6 - TIM3_CH1\nCH3 - PA7 - TIM3_CH2\nCH4 - PB0 - TIM3_CH3\nCH5 - PB1 - TIM3_CH4
$Comp
L GND #PWR48
U 1 1 5949392F
P 8750 5700
F 0 "#PWR48" H 8750 5450 50  0001 C CNN
F 1 "GND" H 8750 5550 50  0000 C CNN
F 2 "" H 8750 5700 50  0001 C CNN
F 3 "" H 8750 5700 50  0001 C CNN
	1    8750 5700
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR2
U 1 1 5948E482
P 4900 1200
F 0 "#PWR2" H 4900 1050 50  0001 C CNN
F 1 "+3V3" H 4900 1340 50  0000 C CNN
F 2 "" H 4900 1200 50  0001 C CNN
F 3 "" H 4900 1200 50  0001 C CNN
	1    4900 1200
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR4
U 1 1 5948E894
P 9450 1350
F 0 "#PWR4" H 9450 1200 50  0001 C CNN
F 1 "+3V3" H 9450 1490 50  0000 C CNN
F 2 "" H 9450 1350 50  0001 C CNN
F 3 "" H 9450 1350 50  0001 C CNN
	1    9450 1350
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR5
U 1 1 5948E9FE
P 10450 1350
F 0 "#PWR5" H 10450 1200 50  0001 C CNN
F 1 "+3V3" H 10450 1490 50  0000 C CNN
F 2 "" H 10450 1350 50  0001 C CNN
F 3 "" H 10450 1350 50  0001 C CNN
	1    10450 1350
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR23
U 1 1 5948F408
P 10150 3400
F 0 "#PWR23" H 10150 3250 50  0001 C CNN
F 1 "+3V3" H 10150 3540 50  0000 C CNN
F 2 "" H 10150 3400 50  0001 C CNN
F 3 "" H 10150 3400 50  0001 C CNN
	1    10150 3400
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR36
U 1 1 5948F4F8
P 10500 4550
F 0 "#PWR36" H 10500 4400 50  0001 C CNN
F 1 "+3V3" H 10500 4690 50  0000 C CNN
F 2 "" H 10500 4550 50  0001 C CNN
F 3 "" H 10500 4550 50  0001 C CNN
	1    10500 4550
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR38
U 1 1 5948F5AB
P 8600 4800
F 0 "#PWR38" H 8600 4650 50  0001 C CNN
F 1 "+3V3" H 8600 4940 50  0000 C CNN
F 2 "" H 8600 4800 50  0001 C CNN
F 3 "" H 8600 4800 50  0001 C CNN
	1    8600 4800
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR55
U 1 1 5948F65E
P 10200 6100
F 0 "#PWR55" H 10200 5950 50  0001 C CNN
F 1 "+3V3" H 10200 6240 50  0000 C CNN
F 2 "" H 10200 6100 50  0001 C CNN
F 3 "" H 10200 6100 50  0001 C CNN
	1    10200 6100
	-1   0    0    1   
$EndComp
$Comp
L +3V3 #PWR52
U 1 1 5948F973
P 8050 5900
F 0 "#PWR52" H 8050 5750 50  0001 C CNN
F 1 "+3V3" H 8050 6040 50  0000 C CNN
F 2 "" H 8050 5900 50  0001 C CNN
F 3 "" H 8050 5900 50  0001 C CNN
	1    8050 5900
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR51
U 1 1 5948FF64
P 7350 5900
F 0 "#PWR51" H 7350 5750 50  0001 C CNN
F 1 "+3V3" H 7350 6040 50  0000 C CNN
F 2 "" H 7350 5900 50  0001 C CNN
F 3 "" H 7350 5900 50  0001 C CNN
	1    7350 5900
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR57
U 1 1 594903AC
P 6150 6850
F 0 "#PWR57" H 6150 6700 50  0001 C CNN
F 1 "+3V3" H 6150 6990 50  0000 C CNN
F 2 "" H 6150 6850 50  0001 C CNN
F 3 "" H 6150 6850 50  0001 C CNN
	1    6150 6850
	0    1    1    0   
$EndComp
$Comp
L +3V3 #PWR56
U 1 1 5949045F
P 4650 6650
F 0 "#PWR56" H 4650 6500 50  0001 C CNN
F 1 "+3V3" H 4650 6790 50  0000 C CNN
F 2 "" H 4650 6650 50  0001 C CNN
F 3 "" H 4650 6650 50  0001 C CNN
	1    4650 6650
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR58
U 1 1 59490550
P 3950 7000
F 0 "#PWR58" H 3950 6850 50  0001 C CNN
F 1 "+3V3" H 3950 7140 50  0000 C CNN
F 2 "" H 3950 7000 50  0001 C CNN
F 3 "" H 3950 7000 50  0001 C CNN
	1    3950 7000
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR22
U 1 1 594913D9
P 2050 3000
F 0 "#PWR22" H 2050 2850 50  0001 C CNN
F 1 "+3V3" H 2050 3140 50  0000 C CNN
F 2 "" H 2050 3000 50  0001 C CNN
F 3 "" H 2050 3000 50  0001 C CNN
	1    2050 3000
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR21
U 1 1 5949148C
P 1550 3000
F 0 "#PWR21" H 1550 2850 50  0001 C CNN
F 1 "+3V3" H 1550 3140 50  0000 C CNN
F 2 "" H 1550 3000 50  0001 C CNN
F 3 "" H 1550 3000 50  0001 C CNN
	1    1550 3000
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR20
U 1 1 5949153F
P 1200 3000
F 0 "#PWR20" H 1200 2850 50  0001 C CNN
F 1 "+3V3" H 1200 3140 50  0000 C CNN
F 2 "" H 1200 3000 50  0001 C CNN
F 3 "" H 1200 3000 50  0001 C CNN
	1    1200 3000
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR19
U 1 1 594915F2
P 850 3000
F 0 "#PWR19" H 850 2850 50  0001 C CNN
F 1 "+3V3" H 850 3140 50  0000 C CNN
F 2 "" H 850 3000 50  0001 C CNN
F 3 "" H 850 3000 50  0001 C CNN
	1    850  3000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
