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
LIBS:minibot-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title "STM32 Microcontroller"
Date "2017-06-15"
Rev "1"
Comp ""
Comment1 "Ben Mitchell"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1450 1750 750  800 
U 59425D39
F0 "Microcontroller" 60
F1 "microcontroller.sch" 60
F2 "PORTA" I R 2200 2250 60 
F3 "PORTB" I R 2200 2350 60 
F4 "nRST" I R 2200 2000 60 
F5 "BOOT" I R 2200 2100 60 
$EndSheet
Text Label 2200 2250 0    60   ~ 0
PORTA
Text Label 2200 2350 0    60   ~ 0
PORTB
Text Label 2200 2000 0    60   ~ 0
nRST
Text Label 2200 2100 0    60   ~ 0
BOOT
$Comp
L SW_Push SW?
U 1 1 5942B37F
P 7950 2050
F 0 "SW?" V 7900 1850 50  0000 L CNN
F 1 "RESET" V 8050 1900 50  0000 C CNN
F 2 "" H 7950 2250 50  0001 C CNN
F 3 "" H 7950 2250 50  0001 C CNN
	1    7950 2050
	0    1    1    0   
$EndComp
$Comp
L R_Small R?
U 1 1 5942B5DB
P 7950 1600
F 0 "R?" H 7980 1620 50  0000 L CNN
F 1 "10k" H 7980 1560 50  0000 L CNN
F 2 "" H 7950 1600 50  0001 C CNN
F 3 "" H 7950 1600 50  0001 C CNN
	1    7950 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5942B74C
P 8150 2350
F 0 "#PWR?" H 8150 2100 50  0001 C CNN
F 1 "GND" H 8150 2200 50  0000 C CNN
F 2 "" H 8150 2350 50  0001 C CNN
F 3 "" H 8150 2350 50  0001 C CNN
	1    8150 2350
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR?
U 1 1 5942BC4F
P 7950 1450
F 0 "#PWR?" H 7950 1300 50  0001 C CNN
F 1 "VDD" H 7950 1600 50  0000 C CNN
F 2 "" H 7950 1450 50  0001 C CNN
F 3 "" H 7950 1450 50  0001 C CNN
	1    7950 1450
	1    0    0    -1  
$EndComp
Text Label 8050 1850 0    60   ~ 0
nRST
Wire Wire Line
	7950 1850 7950 1700
Wire Wire Line
	7950 1500 7950 1450
Wire Wire Line
	7950 2250 7950 2350
Wire Wire Line
	8300 1850 7950 1850
$Comp
L C_Small C?
U 1 1 5942CE5E
P 8300 2050
F 0 "C?" H 8310 2120 50  0000 L CNN
F 1 "100nF" H 8310 1970 50  0000 L CNN
F 2 "" H 8300 2050 50  0001 C CNN
F 3 "" H 8300 2050 50  0001 C CNN
	1    8300 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 2350 8300 2150
Wire Wire Line
	7950 2350 8150 2350
Wire Wire Line
	8150 2350 8300 2350
Connection ~ 8150 2350
Wire Wire Line
	8300 1850 8300 1950
Text Notes 7800 1050 0    60   ~ 0
Reset Switch\n
$Comp
L SW_Push SW?
U 1 1 5942E269
P 9650 1650
F 0 "SW?" V 9600 1450 50  0000 L CNN
F 1 "BOOT" V 9750 1500 50  0000 C CNN
F 2 "" H 9650 1850 50  0001 C CNN
F 3 "" H 9650 1850 50  0001 C CNN
	1    9650 1650
	0    1    1    0   
$EndComp
$Comp
L R_Small R?
U 1 1 5942E26F
P 9650 2050
F 0 "R?" H 9680 2070 50  0000 L CNN
F 1 "10k" H 9680 2010 50  0000 L CNN
F 2 "" H 9650 2050 50  0001 C CNN
F 3 "" H 9650 2050 50  0001 C CNN
	1    9650 2050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5942E275
P 9850 2350
F 0 "#PWR?" H 9850 2100 50  0001 C CNN
F 1 "GND" H 9850 2200 50  0000 C CNN
F 2 "" H 9850 2350 50  0001 C CNN
F 3 "" H 9850 2350 50  0001 C CNN
	1    9850 2350
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR?
U 1 1 5942E27B
P 9650 1450
F 0 "#PWR?" H 9650 1300 50  0001 C CNN
F 1 "VDD" H 9650 1600 50  0000 C CNN
F 2 "" H 9650 1450 50  0001 C CNN
F 3 "" H 9650 1450 50  0001 C CNN
	1    9650 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 1450 9650 1450
Wire Wire Line
	9650 2150 9650 2350
Wire Wire Line
	10000 1850 9650 1850
$Comp
L C_Small C?
U 1 1 5942E286
P 10000 2050
F 0 "C?" H 10010 2120 50  0000 L CNN
F 1 "100nF" H 10010 1970 50  0000 L CNN
F 2 "" H 10000 2050 50  0001 C CNN
F 3 "" H 10000 2050 50  0001 C CNN
	1    10000 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 2350 10000 2150
Wire Wire Line
	9650 2350 9850 2350
Wire Wire Line
	9850 2350 10000 2350
Connection ~ 9850 2350
Wire Wire Line
	10000 1850 10000 1950
Text Label 9750 1850 0    60   ~ 0
BOOT
Wire Wire Line
	9650 1850 9650 1950
Text Notes 9500 1050 0    60   ~ 0
Boot Select\n
$EndSCHEMATC
