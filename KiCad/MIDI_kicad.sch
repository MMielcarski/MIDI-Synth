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
LIBS:MIDI_kicad-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
NoConn ~ 3800 2660
$Comp
L ATMEGA328-PU U?
U 1 1 599429AA
P 3530 2630
F 0 "U?" H 2780 3880 50  0000 L BNN
F 1 "ATMEGA328-PU" H 3930 1230 50  0000 L BNN
F 2 "DIL28" H 3530 2630 50  0001 C CIN
F 3 "" H 3530 2630 50  0001 C CNN
	1    3530 2630
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 599458F3
P 2630 1530
F 0 "#PWR?" H 2630 1380 50  0001 C CNN
F 1 "+5V" H 2630 1670 50  0000 C CNN
F 2 "" H 2630 1530 50  0001 C CNN
F 3 "" H 2630 1530 50  0001 C CNN
	1    2630 1530
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5994591D
P 2480 1530
F 0 "C?" V 2550 1600 50  0000 L CNN
F 1 "100nF" V 2350 1340 50  0000 L CNN
F 2 "" H 2518 1380 50  0001 C CNN
F 3 "" H 2480 1530 50  0001 C CNN
	1    2480 1530
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 59945982
P 2330 1530
F 0 "#PWR?" H 2330 1280 50  0001 C CNN
F 1 "GND" H 2330 1380 50  0000 C CNN
F 2 "" H 2330 1530 50  0001 C CNN
F 3 "" H 2330 1530 50  0001 C CNN
	1    2330 1530
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 59945A31
P 2630 1830
F 0 "#PWR?" H 2630 1680 50  0001 C CNN
F 1 "+5V" H 2630 1970 50  0000 C CNN
F 2 "" H 2630 1830 50  0001 C CNN
F 3 "" H 2630 1830 50  0001 C CNN
	1    2630 1830
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 59945A9F
P 2480 1830
F 0 "C?" V 2580 1690 50  0000 L CNN
F 1 "100nF" V 2350 1670 50  0000 L CNN
F 2 "" H 2518 1680 50  0001 C CNN
F 3 "" H 2480 1830 50  0001 C CNN
	1    2480 1830
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 59945AA5
P 2330 1830
F 0 "#PWR?" H 2330 1580 50  0001 C CNN
F 1 "GND" H 2330 1680 50  0000 C CNN
F 2 "" H 2330 1830 50  0001 C CNN
F 3 "" H 2330 1830 50  0001 C CNN
	1    2330 1830
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 59945BB5
P 2630 2130
F 0 "#PWR?" H 2630 1980 50  0001 C CNN
F 1 "+5V" H 2630 2270 50  0000 C CNN
F 2 "" H 2630 2130 50  0001 C CNN
F 3 "" H 2630 2130 50  0001 C CNN
	1    2630 2130
	-1   0    0    1   
$EndComp
$Comp
L C C?
U 1 1 59945BBB
P 2480 2130
F 0 "C?" V 2600 2000 50  0000 L CNN
F 1 "100nF" V 2350 1970 50  0000 L CNN
F 2 "" H 2518 1980 50  0001 C CNN
F 3 "" H 2480 2130 50  0001 C CNN
	1    2480 2130
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 59945BC1
P 2330 2130
F 0 "#PWR?" H 2330 1880 50  0001 C CNN
F 1 "GND" H 2330 1980 50  0000 C CNN
F 2 "" H 2330 2130 50  0001 C CNN
F 3 "" H 2330 2130 50  0001 C CNN
	1    2330 2130
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 59945D49
P 2630 3730
F 0 "#PWR?" H 2630 3480 50  0001 C CNN
F 1 "GND" H 2630 3580 50  0000 C CNN
F 2 "" H 2630 3730 50  0001 C CNN
F 3 "" H 2630 3730 50  0001 C CNN
	1    2630 3730
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 59945DA0
P 2630 3830
F 0 "#PWR?" H 2630 3580 50  0001 C CNN
F 1 "GND" H 2630 3680 50  0000 C CNN
F 2 "" H 2630 3830 50  0001 C CNN
F 3 "" H 2630 3830 50  0001 C CNN
	1    2630 3830
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 59945E11
P 3120 940
F 0 "#FLG?" H 3120 1015 50  0001 C CNN
F 1 "PWR_FLAG" H 3120 1090 50  0000 C CNN
F 2 "" H 3120 940 50  0001 C CNN
F 3 "" H 3120 940 50  0001 C CNN
	1    3120 940 
	1    0    0    -1  
$EndComp
$Comp
L PWR_FLAG #FLG?
U 1 1 59945ED7
P 3550 940
F 0 "#FLG?" H 3550 1015 50  0001 C CNN
F 1 "PWR_FLAG" H 3550 1090 50  0000 C CNN
F 2 "" H 3550 940 50  0001 C CNN
F 3 "" H 3550 940 50  0001 C CNN
	1    3550 940 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59945EEE
P 3120 940
F 0 "#PWR?" H 3120 690 50  0001 C CNN
F 1 "GND" H 3120 790 50  0000 C CNN
F 2 "" H 3120 940 50  0001 C CNN
F 3 "" H 3120 940 50  0001 C CNN
	1    3120 940 
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 59945F05
P 3550 940
F 0 "#PWR?" H 3550 790 50  0001 C CNN
F 1 "+5V" H 3550 1080 50  0000 C CNN
F 2 "" H 3550 940 50  0001 C CNN
F 3 "" H 3550 940 50  0001 C CNN
	1    3550 940 
	-1   0    0    1   
$EndComp
$Comp
L Crystal Y?
U 1 1 59946026
P 5660 2960
F 0 "Y?" H 5660 3110 50  0000 C CNN
F 1 "Crystal" V 5650 2700 50  0000 C CNN
F 2 "" H 5660 2960 50  0001 C CNN
F 3 "" H 5660 2960 50  0001 C CNN
	1    5660 2960
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 59946470
P 5810 2810
F 0 "C?" V 5890 2890 50  0000 L CNN
F 1 "20pF" V 5700 2870 50  0000 L CNN
F 2 "" H 5848 2660 50  0001 C CNN
F 3 "" H 5810 2810 50  0001 C CNN
	1    5810 2810
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 599466D6
P 5810 3110
F 0 "C?" V 5890 3190 50  0000 L CNN
F 1 "20pF" V 5700 3170 50  0000 L CNN
F 2 "" H 5848 2960 50  0001 C CNN
F 3 "" H 5810 3110 50  0001 C CNN
	1    5810 3110
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 59946831
P 5960 2810
F 0 "#PWR?" H 5960 2560 50  0001 C CNN
F 1 "GND" H 5960 2660 50  0000 C CNN
F 2 "" H 5960 2810 50  0001 C CNN
F 3 "" H 5960 2810 50  0001 C CNN
	1    5960 2810
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 59946915
P 5960 3110
F 0 "#PWR?" H 5960 2860 50  0001 C CNN
F 1 "GND" H 5960 2960 50  0000 C CNN
F 2 "" H 5960 3110 50  0001 C CNN
F 3 "" H 5960 3110 50  0001 C CNN
	1    5960 3110
	0    -1   -1   0   
$EndComp
$Comp
L AVR-ISP-10 CON?
U 1 1 59946AF4
P 7500 1460
F 0 "CON?" H 7330 1790 50  0000 C CNN
F 1 "AVR-ISP-10" H 7160 1130 50  0000 L BNN
F 2 "AVR-ISP-10" V 6750 1510 50  0001 C CNN
F 3 "" H 7500 1460 50  0001 C CNN
	1    7500 1460
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59946E25
P 7860 1560
F 0 "#PWR?" H 7860 1310 50  0001 C CNN
F 1 "GND" H 7860 1410 50  0000 C CNN
F 2 "" H 7860 1560 50  0001 C CNN
F 3 "" H 7860 1560 50  0001 C CNN
	1    7860 1560
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5994703E
P 7860 1260
F 0 "#PWR?" H 7860 1110 50  0001 C CNN
F 1 "+5V" H 7860 1400 50  0000 C CNN
F 2 "" H 7860 1260 50  0001 C CNN
F 3 "" H 7860 1260 50  0001 C CNN
	1    7860 1260
	0    1    1    0   
$EndComp
NoConn ~ 7300 1360
Text GLabel 7060 1460 0    60   Input ~ 0
reset
Text GLabel 4530 2980 2    60   Input ~ 0
reset
$Comp
L CONN_01X16 J?
U 1 1 59947D32
P 7280 3160
F 0 "J?" H 7280 4010 50  0000 C CNN
F 1 "CONN_01X16" V 7380 3160 50  0000 C CNN
F 2 "" H 7280 3160 50  0001 C CNN
F 3 "" H 7280 3160 50  0001 C CNN
	1    7280 3160
	1    0    0    -1  
$EndComp
Text GLabel 4530 3330 2    60   Input ~ 0
kolumna_1
Text GLabel 7080 2410 0    60   Input ~ 0
kolumna_1
Text GLabel 4530 3430 2    60   Input ~ 0
kolumna_2
Text GLabel 7080 2510 0    60   Input ~ 0
kolumna_2
Text GLabel 4530 3530 2    60   Input ~ 0
kolumna_3
Text GLabel 7080 2610 0    60   Input ~ 0
kolumna_3
Text GLabel 4530 3630 2    60   Input ~ 0
kolumna_4
Text GLabel 7080 2710 0    60   Input ~ 0
kolumna_4
Text GLabel 4530 3730 2    60   Input ~ 0
kolumna_5
Text GLabel 7080 2810 0    60   Input ~ 0
kolumna_5
Text GLabel 4530 3830 2    60   Input ~ 0
kolumna_6
Text GLabel 7080 2910 0    60   Input ~ 0
kolumna_6
Text GLabel 4530 1530 2    60   Input ~ 0
kolumna_7
Text GLabel 7080 3010 0    60   Input ~ 0
kolumna_7
Text GLabel 6100 1830 2    60   Input ~ 0
MOSI
Text GLabel 7020 1260 0    60   Input ~ 0
MOSI
Text GLabel 5480 1930 2    60   Input ~ 0
MISO
Text GLabel 7020 1660 0    60   Input ~ 0
MISO
Text GLabel 5030 2030 2    60   Input ~ 0
SCK
Text GLabel 7020 1560 0    60   Input ~ 0
SCK
Text GLabel 5660 2810 0    60   Input ~ 0
XTAL1
Text GLabel 5660 3110 0    60   Input ~ 0
XTAL2
Text GLabel 4530 2130 2    60   Input ~ 0
XTAL1
Text GLabel 4530 2230 2    60   Input ~ 0
XTAL2
Text GLabel 4530 1630 2    60   Input ~ 0
kolumna_8
Text GLabel 7080 3110 0    60   Input ~ 0
kolumna_8
Text GLabel 4530 1730 2    60   Input ~ 0
kolumna_9
Text GLabel 7080 3210 0    60   Input ~ 0
kolumna_9
Text GLabel 6040 1950 2    60   Input ~ 0
kolumna_10
Text GLabel 7080 3310 0    60   Input ~ 0
kolumna_10
Text GLabel 5520 2080 2    60   Input ~ 0
kolumna_11
Text GLabel 7080 3410 0    60   Input ~ 0
kolumna_11
Text GLabel 5010 2210 2    60   Input ~ 0
kolumna_12
Text GLabel 7080 3510 0    60   Input ~ 0
kolumna_12
Text GLabel 4530 2380 2    60   Input ~ 0
oktawa_1
Text GLabel 6780 3610 0    60   Input ~ 0
oktawa_1
Text GLabel 4530 2480 2    60   Input ~ 0
oktawa_2
Text GLabel 6780 3710 0    60   Input ~ 0
oktawa_2
Text GLabel 4530 2580 2    60   Input ~ 0
oktawa_3
Text GLabel 6780 3810 0    60   Input ~ 0
oktawa_3
Text GLabel 4530 2680 2    60   Input ~ 0
oktawa_4
Text GLabel 6780 3910 0    60   Input ~ 0
oktawa_4
$Comp
L R R?
U 1 1 5994C08D
P 7080 4180
F 0 "R?" H 7130 4330 50  0000 C CNN
F 1 "10k" V 7080 4180 50  0000 C CNN
F 2 "" V 7010 4180 50  0001 C CNN
F 3 "" H 7080 4180 50  0001 C CNN
	1    7080 4180
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5994C1C2
P 6980 4180
F 0 "R?" H 7020 4330 50  0000 C CNN
F 1 "10k" V 6980 4180 50  0000 C CNN
F 2 "" V 6910 4180 50  0001 C CNN
F 3 "" H 6980 4180 50  0001 C CNN
	1    6980 4180
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5994C223
P 6880 4180
F 0 "R?" H 6920 4330 50  0000 C CNN
F 1 "10k" V 6880 4180 50  0000 C CNN
F 2 "" V 6810 4180 50  0001 C CNN
F 3 "" H 6880 4180 50  0001 C CNN
	1    6880 4180
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5994C26B
P 6780 4180
F 0 "R?" H 6820 4330 50  0000 C CNN
F 1 "10k" V 6780 4180 50  0000 C CNN
F 2 "" V 6710 4180 50  0001 C CNN
F 3 "" H 6780 4180 50  0001 C CNN
	1    6780 4180
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 1360 7550 1660
Connection ~ 7550 1560
Connection ~ 7550 1460
Wire Wire Line
	7550 1560 7860 1560
Wire Wire Line
	7550 1260 7860 1260
Wire Wire Line
	7060 1460 7300 1460
Wire Wire Line
	7020 1260 7300 1260
Wire Wire Line
	7300 1560 7020 1560
Wire Wire Line
	7300 1660 7020 1660
Wire Wire Line
	4530 1830 6100 1830
Wire Wire Line
	4530 1930 5480 1930
Wire Wire Line
	4530 2030 5030 2030
Wire Wire Line
	6040 1950 5960 1950
Wire Wire Line
	5960 1950 5960 1830
Connection ~ 5960 1830
Wire Wire Line
	5520 2080 5440 2080
Wire Wire Line
	5440 2080 5440 1930
Connection ~ 5440 1930
Wire Wire Line
	5010 2210 4960 2210
Wire Wire Line
	4960 2210 4960 2030
Connection ~ 4960 2030
Wire Wire Line
	6780 3610 7080 3610
Wire Wire Line
	6780 3710 7080 3710
Wire Wire Line
	6780 3810 7080 3810
Wire Wire Line
	6780 3910 7080 3910
Wire Wire Line
	6780 3910 6780 4030
Wire Wire Line
	6880 3810 6880 4030
Connection ~ 6880 3810
Wire Wire Line
	6980 3710 6980 4030
Connection ~ 6980 3710
Wire Wire Line
	7080 3610 7080 4030
Connection ~ 7080 3610
Wire Wire Line
	6780 4330 7080 4330
Connection ~ 6880 4330
Connection ~ 6980 4330
$Comp
L GND #PWR?
U 1 1 5994DD23
P 6780 4330
F 0 "#PWR?" H 6780 4080 50  0001 C CNN
F 1 "GND" H 6780 4180 50  0000 C CNN
F 2 "" H 6780 4330 50  0001 C CNN
F 3 "" H 6780 4330 50  0001 C CNN
	1    6780 4330
	1    0    0    -1  
$EndComp
$Comp
L XLR5 J?
U 1 1 5994E0EC
P 8130 2670
F 0 "J?" H 8230 2920 50  0000 C CNN
F 1 "XLR5(patrząc na gniazdo)" H 8230 3040 50  0000 C CNN
F 2 "" H 8130 2670 50  0001 C CNN
F 3 "" H 8130 2670 50  0001 C CNN
	1    8130 2670
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5994E87A
P 8130 3020
F 0 "#PWR?" H 8130 2770 50  0001 C CNN
F 1 "GND" H 8130 2870 50  0000 C CNN
F 2 "" H 8130 3020 50  0001 C CNN
F 3 "" H 8130 3020 50  0001 C CNN
	1    8130 3020
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5994E9FA
P 8480 2870
F 0 "R?" V 8560 2870 50  0000 C CNN
F 1 "220" V 8480 2870 50  0000 C CNN
F 2 "" V 8410 2870 50  0001 C CNN
F 3 "" H 8480 2870 50  0001 C CNN
	1    8480 2870
	-1   0    0    1   
$EndComp
$Comp
L +5V #PWR?
U 1 1 5994ED30
P 8480 3020
F 0 "#PWR?" H 8480 2870 50  0001 C CNN
F 1 "+5V" H 8480 3160 50  0000 C CNN
F 2 "" H 8480 3020 50  0001 C CNN
F 3 "" H 8480 3020 50  0001 C CNN
	1    8480 3020
	-1   0    0    1   
$EndComp
Text GLabel 7780 2720 3    60   Input ~ 0
TXArduino
Text GLabel 4530 3230 2    60   Input ~ 0
TXArduino
NoConn ~ 8480 2570
NoConn ~ 7780 2570
Text GLabel 4530 2780 2    60   Input ~ 0
SDA
Text GLabel 4530 2880 2    60   Input ~ 0
SCL
$Comp
L CONN_01X04 J?
U 1 1 5995069F
P 9550 1760
F 0 "J?" H 9550 2010 50  0000 C CNN
F 1 "CONN_01X04(multiplekser cyfrowy)" H 9610 1510 50  0000 C CNN
F 2 "" H 9550 1760 50  0001 C CNN
F 3 "" H 9550 1760 50  0001 C CNN
	1    9550 1760
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 59950E66
P 9350 1610
F 0 "#PWR?" H 9350 1460 50  0001 C CNN
F 1 "+5V" H 9350 1750 50  0000 C CNN
F 2 "" H 9350 1610 50  0001 C CNN
F 3 "" H 9350 1610 50  0001 C CNN
	1    9350 1610
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59950F5A
P 9350 1710
F 0 "#PWR?" H 9350 1460 50  0001 C CNN
F 1 "GND" V 9270 1570 50  0000 C CNN
F 2 "" H 9350 1710 50  0001 C CNN
F 3 "" H 9350 1710 50  0001 C CNN
	1    9350 1710
	0    1    1    0   
$EndComp
Text GLabel 9350 1810 0    60   Input ~ 0
SDA
Text GLabel 9350 1910 0    60   Input ~ 0
SCL
$Comp
L CONN_01X04 J?
U 1 1 59951A9A
P 9490 2450
F 0 "J?" H 9490 2700 50  0000 C CNN
F 1 "CONN_01X04(multiplekser analogowy)" H 9520 2200 50  0000 C CNN
F 2 "" H 9490 2450 50  0001 C CNN
F 3 "" H 9490 2450 50  0001 C CNN
	1    9490 2450
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 59951AA0
P 9290 2300
F 0 "#PWR?" H 9290 2150 50  0001 C CNN
F 1 "+5V" H 9290 2440 50  0000 C CNN
F 2 "" H 9290 2300 50  0001 C CNN
F 3 "" H 9290 2300 50  0001 C CNN
	1    9290 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 59951AA6
P 9290 2400
F 0 "#PWR?" H 9290 2150 50  0001 C CNN
F 1 "GND" V 9210 2260 50  0000 C CNN
F 2 "" H 9290 2400 50  0001 C CNN
F 3 "" H 9290 2400 50  0001 C CNN
	1    9290 2400
	0    1    1    0   
$EndComp
Text GLabel 9290 2500 0    60   Input ~ 0
SDA
Text GLabel 9290 2600 0    60   Input ~ 0
SCL
Text GLabel 5760 1250 0    60   Input ~ 0
reset
$Comp
L R R?
U 1 1 599B191D
P 5910 1250
F 0 "R?" V 5990 1250 50  0000 C CNN
F 1 "1k" V 5910 1250 50  0000 C CNN
F 2 "" V 5840 1250 50  0001 C CNN
F 3 "" H 5910 1250 50  0001 C CNN
	1    5910 1250
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 599B1A37
P 6060 1250
F 0 "#PWR?" H 6060 1100 50  0001 C CNN
F 1 "+5V" H 6060 1390 50  0000 C CNN
F 2 "" H 6060 1250 50  0001 C CNN
F 3 "" H 6060 1250 50  0001 C CNN
	1    6060 1250
	0    1    1    0   
$EndComp
$EndSCHEMATC
