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
Sheet 2 4
Title "MiniBot"
Date "2017-06-23"
Rev "1"
Comp ""
Comment1 "Ben Mitchell"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L STM32F411CEUx U?
U 1 1 59427B10
P 6000 3400
AR Path="/59427B10" Ref="U?"  Part="1" 
AR Path="/59425D39/59427B10" Ref="U4"  Part="1" 
F 0 "U4" H 2400 5225 50  0000 L BNN
F 1 "STM32F411CEUx" H 9600 5225 50  0000 R BNN
F 2 "Housings_QFP:TQFP-48_7x7mm_Pitch0.5mm" H 9600 5175 50  0001 R TNN
F 3 "" H 6000 3400 50  0001 C CNN
	1    6000 3400
	1    0    0    -1  
$EndComp
$Comp
L C_Small C11
U 1 1 59427B23
P 1500 2500
F 0 "C11" V 1550 2350 50  0000 L CNN
F 1 "4.7uF" V 1550 2550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1500 2500 50  0001 C CNN
F 3 "" H 1500 2500 50  0001 C CNN
	1    1500 2500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR025
U 1 1 59427B2A
P 1200 2350
F 0 "#PWR025" H 1200 2100 50  0001 C CNN
F 1 "GND" V 1200 2150 50  0000 C CNN
F 2 "" H 1200 2350 50  0001 C CNN
F 3 "" H 1200 2350 50  0001 C CNN
	1    1200 2350
	0    1    1    0   
$EndComp
$Comp
L GND #PWR026
U 1 1 59427B30
P 6000 5350
F 0 "#PWR026" H 6000 5100 50  0001 C CNN
F 1 "GND" H 6000 5200 50  0000 C CNN
F 2 "" H 6000 5350 50  0001 C CNN
F 3 "" H 6000 5350 50  0001 C CNN
	1    6000 5350
	1    0    0    -1  
$EndComp
$Comp
L C_Small C10
U 1 1 59427B36
P 1500 2350
F 0 "C10" V 1550 2200 50  0000 L CNN
F 1 "1uF" V 1550 2400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 1500 2350 50  0001 C CNN
F 3 "" H 1500 2350 50  0001 C CNN
	1    1500 2350
	0    1    1    0   
$EndComp
$Comp
L C_Small C9
U 1 1 59427B3D
P 1500 2200
F 0 "C9" V 1550 2050 50  0000 L CNN
F 1 "100nF" V 1550 2250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1500 2200 50  0001 C CNN
F 3 "" H 1500 2200 50  0001 C CNN
	1    1500 2200
	0    1    1    0   
$EndComp
$Comp
L C_Small C15
U 1 1 59427B44
P 4850 6650
F 0 "C15" H 4900 6550 50  0000 L CNN
F 1 "100nF" H 4900 6750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4850 6650 50  0001 C CNN
F 3 "" H 4850 6650 50  0001 C CNN
	1    4850 6650
	-1   0    0    1   
$EndComp
$Comp
L C_Small C16
U 1 1 59427B4B
P 5150 6650
F 0 "C16" H 5200 6550 50  0000 L CNN
F 1 "100nF" H 5200 6750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5150 6650 50  0001 C CNN
F 3 "" H 5150 6650 50  0001 C CNN
	1    5150 6650
	-1   0    0    1   
$EndComp
$Comp
L C_Small C17
U 1 1 59427B52
P 5450 6650
F 0 "C17" H 5500 6550 50  0000 L CNN
F 1 "100nF" H 5500 6750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5450 6650 50  0001 C CNN
F 3 "" H 5450 6650 50  0001 C CNN
	1    5450 6650
	-1   0    0    1   
$EndComp
$Comp
L C_Small C18
U 1 1 59427B59
P 5750 6650
F 0 "C18" H 5800 6550 50  0000 L CNN
F 1 "100nF" H 5800 6750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 5750 6650 50  0001 C CNN
F 3 "" H 5750 6650 50  0001 C CNN
	1    5750 6650
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR027
U 1 1 59427B60
P 5150 6850
F 0 "#PWR027" H 5150 6600 50  0001 C CNN
F 1 "GND" H 5150 6700 50  0000 C CNN
F 2 "" H 5150 6850 50  0001 C CNN
F 3 "" H 5150 6850 50  0001 C CNN
	1    5150 6850
	1    0    0    -1  
$EndComp
$Comp
L C_Small C14
U 1 1 59427B6C
P 4550 6650
F 0 "C14" H 4600 6550 50  0000 L CNN
F 1 "4.7uF" H 4600 6750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 4550 6650 50  0001 C CNN
F 3 "" H 4550 6650 50  0001 C CNN
	1    4550 6650
	-1   0    0    1   
$EndComp
Entry Bus Bus
	1800 3500 1900 3400
Entry Bus Bus
	1800 3600 1900 3500
Entry Bus Bus
	1800 3700 1900 3600
Entry Bus Bus
	1800 3800 1900 3700
Entry Bus Bus
	1800 3900 1900 3800
Entry Bus Bus
	1800 4000 1900 3900
Entry Bus Bus
	1800 4100 1900 4000
Entry Bus Bus
	1800 4200 1900 4100
Entry Bus Bus
	1800 4300 1900 4200
Entry Bus Bus
	1800 4400 1900 4300
Entry Bus Bus
	1800 4500 1900 4400
Entry Bus Bus
	1800 4600 1900 4500
Entry Bus Bus
	1800 4700 1900 4600
Entry Bus Bus
	1800 4800 1900 4700
Entry Bus Bus
	1800 4900 1900 4800
Wire Wire Line
	5900 1500 5900 1400
Wire Wire Line
	5900 1400 6100 1400
Wire Wire Line
	6000 1400 6000 1500
Wire Wire Line
	6100 1400 6100 1500
Connection ~ 6000 1400
Wire Wire Line
	1850 2300 2300 2300
Wire Wire Line
	2300 2500 1600 2500
Wire Wire Line
	5800 5350 6200 5350
Wire Wire Line
	6200 5350 6200 5200
Wire Wire Line
	6100 5200 6100 5350
Connection ~ 6100 5350
Wire Wire Line
	6000 5200 6000 5350
Wire Wire Line
	5900 5350 5900 5200
Connection ~ 6000 5350
Wire Wire Line
	5800 5350 5800 5200
Connection ~ 5900 5350
Wire Wire Line
	1200 2500 1400 2500
Wire Wire Line
	1200 2200 1200 2500
Wire Wire Line
	1200 2350 1400 2350
Wire Wire Line
	1200 2200 1400 2200
Connection ~ 1200 2350
Wire Wire Line
	1600 2200 1850 2200
Wire Wire Line
	1850 2200 1850 2400
Wire Wire Line
	1850 2400 2300 2400
Wire Wire Line
	1600 2350 1850 2350
Connection ~ 1850 2350
Wire Wire Line
	4550 6850 5750 6850
Wire Wire Line
	4850 6850 4850 6750
Wire Wire Line
	5150 6750 5150 6850
Connection ~ 5150 6850
Wire Wire Line
	5450 6850 5450 6750
Wire Wire Line
	5750 6850 5750 6750
Connection ~ 5450 6850
Wire Wire Line
	4850 6550 4850 6450
Wire Wire Line
	4550 6450 5750 6450
Wire Wire Line
	5150 6550 5150 6450
Connection ~ 5150 6450
Wire Wire Line
	5450 6450 5450 6550
Wire Wire Line
	5750 6450 5750 6550
Connection ~ 5450 6450
Wire Wire Line
	4550 6550 4550 6450
Connection ~ 4850 6450
Wire Wire Line
	4550 6850 4550 6750
Connection ~ 4850 6850
Connection ~ 1850 2300
Wire Bus Line
	1800 3500 1800 5250
Wire Wire Line
	2300 3600 1900 3600
Wire Wire Line
	1900 3700 2300 3700
Wire Wire Line
	2300 3800 1900 3800
Wire Wire Line
	2300 3900 1900 3900
Wire Wire Line
	1900 4000 2300 4000
Wire Wire Line
	2300 4100 1900 4100
Wire Wire Line
	1900 4200 2300 4200
Wire Wire Line
	2300 4300 1900 4300
Wire Wire Line
	1900 4400 2300 4400
Wire Wire Line
	2300 4500 1900 4500
Wire Wire Line
	1900 4600 2300 4600
Wire Wire Line
	2300 4700 1900 4700
Wire Wire Line
	1900 4800 2300 4800
Wire Wire Line
	2300 3400 1900 3400
Wire Wire Line
	2300 3500 1900 3500
Text Label 2050 3400 0    60   ~ 0
PB0
Text Label 2050 3500 0    60   ~ 0
PB1
Text Label 2050 3600 0    60   ~ 0
PB2
Text Label 2050 3700 0    60   ~ 0
PB3
Text Label 2050 3800 0    60   ~ 0
PB4
Text Label 2050 3900 0    60   ~ 0
PB5
Text Label 2050 4000 0    60   ~ 0
PB6
Text Label 2050 4100 0    60   ~ 0
PB7
Text Label 2050 4200 0    60   ~ 0
PB8
Text Label 2050 4300 0    60   ~ 0
PB9
Text Label 2050 4400 0    60   ~ 0
PB10
Text Label 2050 4500 0    60   ~ 0
PB12
Text Label 2050 4600 0    60   ~ 0
PB13
Text Label 2050 4700 0    60   ~ 0
PB14
Text Label 2050 4800 0    60   ~ 0
PB15
Wire Bus Line
	1800 5250 1650 5250
Wire Wire Line
	9700 3300 10100 3300
Wire Wire Line
	9700 3400 10100 3400
Wire Wire Line
	9700 3500 10100 3500
Wire Wire Line
	9700 3600 10100 3600
Wire Wire Line
	9700 3700 10100 3700
Wire Wire Line
	9700 3800 10100 3800
Wire Wire Line
	9700 3900 10100 3900
Wire Wire Line
	9700 4000 10100 4000
Wire Wire Line
	9700 4100 10100 4100
Wire Wire Line
	9700 4200 10100 4200
Wire Wire Line
	9700 4300 10100 4300
Wire Wire Line
	9700 4400 10100 4400
Wire Wire Line
	9700 4500 10100 4500
Wire Wire Line
	9700 4600 10100 4600
Wire Wire Line
	9700 4700 10100 4700
Wire Wire Line
	9700 4800 10100 4800
Entry Bus Bus
	10100 3300 10200 3400
Entry Bus Bus
	10100 3400 10200 3500
Entry Bus Bus
	10100 3500 10200 3600
Entry Bus Bus
	10100 3600 10200 3700
Entry Bus Bus
	10100 3700 10200 3800
Entry Bus Bus
	10100 3800 10200 3900
Entry Bus Bus
	10100 3900 10200 4000
Entry Bus Bus
	10100 4000 10200 4100
Entry Bus Bus
	10100 4100 10200 4200
Entry Bus Bus
	10100 4200 10200 4300
Entry Bus Bus
	10100 4300 10200 4400
Entry Bus Bus
	10100 4400 10200 4500
Entry Bus Bus
	10100 4500 10200 4600
Entry Bus Bus
	10100 4600 10200 4700
Entry Bus Bus
	10100 4700 10200 4800
Entry Bus Bus
	10100 4800 10200 4900
Wire Bus Line
	10200 3400 10200 5250
Wire Bus Line
	10200 5250 10350 5250
$Comp
L Crystal_GND24 Y1
U 1 1 59427C05
P 1350 2900
F 0 "Y1" V 1200 2750 50  0000 L CNN
F 1 "12MHz" V 1200 2950 50  0000 L CNN
F 2 "Crystals:Crystal_SMD_3225-4pin_3.2x2.5mm" H 1350 2900 50  0001 C CNN
F 3 "" H 1350 2900 50  0001 C CNN
	1    1350 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	2300 2800 1750 2800
Wire Wire Line
	1750 2800 1750 3100
Wire Wire Line
	800  3100 800  2700
Wire Wire Line
	1350 2750 1350 2700
Connection ~ 1350 2700
Wire Wire Line
	1350 3050 1350 3100
Connection ~ 1350 3100
$Comp
L GND #PWR028
U 1 1 59427C13
P 1150 2900
F 0 "#PWR028" H 1150 2650 50  0001 C CNN
F 1 "GND" V 1250 2850 50  0000 C CNN
F 2 "" H 1150 2900 50  0001 C CNN
F 3 "" H 1150 2900 50  0001 C CNN
	1    1150 2900
	0    1    1    0   
$EndComp
$Comp
L GND #PWR029
U 1 1 59427C19
P 1550 2900
F 0 "#PWR029" H 1550 2650 50  0001 C CNN
F 1 "GND" V 1450 2850 50  0000 C CNN
F 2 "" H 1550 2900 50  0001 C CNN
F 3 "" H 1550 2900 50  0001 C CNN
	1    1550 2900
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C13
U 1 1 59427C1F
P 950 3100
F 0 "C13" V 1000 2950 50  0000 L CNN
F 1 "30pF" V 1000 3150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 950 3100 50  0001 C CNN
F 3 "" H 950 3100 50  0001 C CNN
	1    950  3100
	0    1    1    0   
$EndComp
Wire Wire Line
	800  3100 850  3100
Wire Wire Line
	1750 3100 1050 3100
$Comp
L C_Small C12
U 1 1 59427C28
P 950 2700
F 0 "C12" V 900 2550 50  0000 L CNN
F 1 "30pF" V 900 2750 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 950 2700 50  0001 C CNN
F 3 "" H 950 2700 50  0001 C CNN
	1    950  2700
	0    1    1    0   
$EndComp
Wire Wire Line
	800  2700 850  2700
Wire Wire Line
	1050 2700 2300 2700
$Comp
L GND #PWR030
U 1 1 59427C31
P 800 2900
F 0 "#PWR030" H 800 2650 50  0001 C CNN
F 1 "GND" V 800 2700 50  0000 C CNN
F 2 "" H 800 2900 50  0001 C CNN
F 3 "" H 800 2900 50  0001 C CNN
	1    800  2900
	0    1    1    0   
$EndComp
Text HLabel 10350 5250 2    60   Input ~ 0
PA[0..15]
Text HLabel 1650 5250 0    60   Input ~ 0
PB[0..15]
Text HLabel 2300 1900 0    60   Input ~ 0
nRST
Text HLabel 2300 2100 0    60   Input ~ 0
BOOT
Text Label 2100 6550 2    60   ~ 0
PB2
$Comp
L R_Small R14
U 1 1 594293DA
P 2100 6750
F 0 "R14" H 2130 6770 50  0000 L CNN
F 1 "10k" H 2130 6710 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2100 6750 50  0001 C CNN
F 3 "" H 2100 6750 50  0001 C CNN
	1    2100 6750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR031
U 1 1 5942944C
P 2100 6950
F 0 "#PWR031" H 2100 6700 50  0001 C CNN
F 1 "GND" H 2100 6800 50  0000 C CNN
F 2 "" H 2100 6950 50  0001 C CNN
F 3 "" H 2100 6950 50  0001 C CNN
	1    2100 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 6950 2100 6850
Wire Wire Line
	2100 6650 2100 6550
Text Notes 1500 6350 0    60   ~ 0
Boot Mode Select BOOT1
Text Label 9800 3300 0    60   ~ 0
PA0
Text Label 9800 3400 0    60   ~ 0
PA1
Text Label 9800 3500 0    60   ~ 0
PA2
Text Label 9800 3600 0    60   ~ 0
PA3
Text Label 9800 3700 0    60   ~ 0
PA4
Text Label 9800 3800 0    60   ~ 0
PA5
Text Label 9800 3900 0    60   ~ 0
PA6
Text Label 9800 4000 0    60   ~ 0
PA7
Text Label 9800 4100 0    60   ~ 0
PA8
Text Label 9800 4200 0    60   ~ 0
PA9
Text Label 9800 4300 0    60   ~ 0
PA10
Text Label 9800 4400 0    60   ~ 0
PA11
Text Label 9800 4500 0    60   ~ 0
PA12
Text Label 9800 4600 0    60   ~ 0
PA13
Text Label 9800 4700 0    60   ~ 0
PA14
Text Label 9800 4800 0    60   ~ 0
PA15
Text Label 2050 3000 0    60   ~ 0
PC13
Text Label 2050 3100 0    60   ~ 0
PC14
Text Label 2050 3200 0    60   ~ 0
PC15
Wire Wire Line
	2300 3000 2050 3000
Wire Wire Line
	2300 3100 2050 3100
Wire Wire Line
	2300 3200 2050 3200
Entry Bus Bus
	1950 3100 2050 3000
Entry Bus Bus
	1950 3200 2050 3100
Entry Bus Bus
	1950 3300 2050 3200
Wire Bus Line
	1950 3100 1950 3300
Wire Bus Line
	1950 3300 1500 3300
Wire Bus Line
	1500 3300 1500 3700
Text HLabel 1500 3700 0    60   Input ~ 0
PC[13..15]
$Comp
L +3V3 #PWR032
U 1 1 59492047
P 6000 1400
F 0 "#PWR032" H 6000 1250 50  0001 C CNN
F 1 "+3V3" H 6000 1540 50  0000 C CNN
F 2 "" H 6000 1400 50  0001 C CNN
F 3 "" H 6000 1400 50  0001 C CNN
	1    6000 1400
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR033
U 1 1 59492080
P 5150 6450
F 0 "#PWR033" H 5150 6300 50  0001 C CNN
F 1 "+3V3" H 5150 6590 50  0000 C CNN
F 2 "" H 5150 6450 50  0001 C CNN
F 3 "" H 5150 6450 50  0001 C CNN
	1    5150 6450
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR034
U 1 1 594920B2
P 1850 2200
F 0 "#PWR034" H 1850 2050 50  0001 C CNN
F 1 "+3V3" H 1850 2340 50  0000 C CNN
F 2 "" H 1850 2200 50  0001 C CNN
F 3 "" H 1850 2200 50  0001 C CNN
	1    1850 2200
	1    0    0    -1  
$EndComp
Connection ~ 800  2900
Text Label 1900 3300 2    60   ~ 0
PC[13..15]
Text Label 1800 5250 0    60   ~ 0
PB[0..15]
Text Label 10200 5250 2    60   ~ 0
PA[0..15]
$EndSCHEMATC
