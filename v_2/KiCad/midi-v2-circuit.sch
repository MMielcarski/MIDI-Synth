EESchema Schematic File Version 4
LIBS:midi-v2-circuit-cache
EELAYER 26 0
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
$Comp
L midi-v2-circuit-rescue:ATMEGA32-16AU-atmel U1
U 1 1 5B2AD854
P 5075 5275
F 0 "U1" H 4225 7155 50  0000 L BNN
F 1 "ATMEGA32-16AU" H 5525 3325 50  0000 L BNN
F 2 "Housings_QFP:LQFP-44_10x10mm_Pitch0.8mm" H 5075 5275 50  0001 C CIN
F 3 "" H 5075 5275 50  0001 C CNN
	1    5075 5275
	1    0    0    -1  
$EndComp
Text GLabel 6075 3575 2    60   Input ~ 0
slide-pot-1
Text GLabel 6075 3675 2    60   Input ~ 0
slide-pot-2
Text GLabel 6075 3775 2    60   Input ~ 0
knob-pot-1
Text GLabel 6075 3875 2    60   Input ~ 0
knob-pot-2
Text GLabel 6075 3975 2    60   Input ~ 0
knob-pot-3
Text GLabel 6075 4075 2    60   Input ~ 0
knob-pot-4
Text GLabel 6075 4175 2    60   Input ~ 0
joystick-pot-1
Text GLabel 6075 4275 2    60   Input ~ 0
joystick-pot-2
Text GLabel 6075 6275 2    60   Input ~ 0
note-1
Text GLabel 6075 6475 2    60   Input ~ 0
note-2
Text GLabel 6075 6575 2    60   Input ~ 0
note-3
Text GLabel 6075 6675 2    60   Input ~ 0
note-4
Text GLabel 6075 6775 2    60   Input ~ 0
note-5
Text GLabel 6075 6875 2    60   Input ~ 0
note-6
Text GLabel 6075 6975 2    60   Input ~ 0
note-7
Text GLabel 6075 5575 2    60   Input ~ 0
note-8
Text GLabel 6075 5675 2    60   Input ~ 0
note-9
Text GLabel 6075 5775 2    60   Input ~ 0
note-10
Text GLabel 6075 5875 2    60   Input ~ 0
note-11
Text GLabel 6075 5975 2    60   Input ~ 0
note-12
Text GLabel 6075 6075 2    60   Input ~ 0
note-13
Text GLabel 6075 6375 2    60   Input ~ 0
midi-data-pin
Text GLabel 7525 4875 2    60   Input ~ 0
octave-1
Text GLabel 7525 4975 2    60   Input ~ 0
octave-2
Text GLabel 7525 5075 2    60   Input ~ 0
octave-3
Text GLabel 7525 5175 2    60   Input ~ 0
octave-4
$Comp
L power:GND #PWR01
U 1 1 5B2ADD36
P 5075 7375
F 0 "#PWR01" H 5075 7125 50  0001 C CNN
F 1 "GND" H 5075 7225 50  0000 C CNN
F 2 "" H 5075 7375 50  0001 C CNN
F 3 "" H 5075 7375 50  0001 C CNN
	1    5075 7375
	1    0    0    -1  
$EndComp
Text GLabel 6575 5275 3    60   Input ~ 0
MOSI
Text GLabel 6675 5275 3    60   Input ~ 0
MISO
Text GLabel 6775 5275 3    60   Input ~ 0
SCK
Text GLabel 6075 5475 2    60   Input ~ 0
SDA
Text GLabel 6075 5375 2    60   Input ~ 0
SCL
Text GLabel 8250 4475 2    60   Input ~ 0
button-1
Text GLabel 8250 4575 2    60   Input ~ 0
button-2
Text GLabel 8250 4675 2    60   Input ~ 0
button-3
Text GLabel 8250 4775 2    60   Input ~ 0
button-4
$Comp
L midi-v2-circuit-rescue:Conn_01x17-conn J4
U 1 1 5B2AEA28
P 10400 3925
F 0 "J4" H 10400 4825 50  0000 C CNN
F 1 "Conn_01x17" H 10400 3025 50  0000 C CNN
F 2 "Connectors_IDC:IDC-Header_2x10_Pitch2.54mm_Angled" H 10400 3925 50  0001 C CNN
F 3 "" H 10400 3925 50  0001 C CNN
	1    10400 3925
	1    0    0    -1  
$EndComp
Text GLabel 10200 4725 0    60   Input ~ 0
octave-1
Text GLabel 10200 4625 0    60   Input ~ 0
octave-2
Text GLabel 10200 4525 0    60   Input ~ 0
octave-3
Text GLabel 10200 4425 0    60   Input ~ 0
octave-4
Text GLabel 10200 4325 0    60   Input ~ 0
note-1
Text GLabel 10200 4225 0    60   Input ~ 0
note-2
Text GLabel 10200 4125 0    60   Input ~ 0
note-3
Text GLabel 10200 4025 0    60   Input ~ 0
note-4
Text GLabel 10200 3925 0    60   Input ~ 0
note-5
Text GLabel 10200 3825 0    60   Input ~ 0
note-6
Text GLabel 10200 3725 0    60   Input ~ 0
note-7
Text GLabel 10200 3625 0    60   Input ~ 0
note-8
Text GLabel 10200 3525 0    60   Input ~ 0
note-9
Text GLabel 10200 3425 0    60   Input ~ 0
note-10
Text GLabel 10200 3325 0    60   Input ~ 0
note-11
Text GLabel 10200 3225 0    60   Input ~ 0
note-12
Text GLabel 10200 3125 0    60   Input ~ 0
note-13
$Comp
L midi-v2-circuit-rescue:AVR-ISP-10-atmel CON2
U 1 1 5B2AEEE8
P 6175 1350
F 0 "CON2" H 6005 1680 50  0000 C CNN
F 1 "AVR-ISP-10" H 5835 1020 50  0000 L BNN
F 2 "Connectors_IDC:IDC-Header_2x05_Pitch2.54mm_Angled" V 5425 1400 50  0001 C CNN
F 3 "" H 6175 1350 50  0001 C CNN
	1    6175 1350
	1    0    0    -1  
$EndComp
Text GLabel 5625 1150 0    60   Input ~ 0
MOSI
Text GLabel 5625 1550 0    60   Input ~ 0
MISO
Text GLabel 5625 1450 0    60   Input ~ 0
SCK
Text GLabel 5625 1350 0    60   Input ~ 0
RST
NoConn ~ 5975 1250
$Comp
L power:GND #PWR02
U 1 1 5B2AF484
P 6575 1400
F 0 "#PWR02" H 6575 1150 50  0001 C CNN
F 1 "GND" H 6575 1250 50  0000 C CNN
F 2 "" H 6575 1400 50  0001 C CNN
F 3 "" H 6575 1400 50  0001 C CNN
	1    6575 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 5B2AF647
P 6575 1150
F 0 "#PWR03" H 6575 1000 50  0001 C CNN
F 1 "+5V" H 6575 1290 50  0000 C CNN
F 2 "" H 6575 1150 50  0001 C CNN
F 3 "" H 6575 1150 50  0001 C CNN
	1    6575 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR04
U 1 1 5B2B743F
P 9500 6075
F 0 "#PWR04" H 9500 5925 50  0001 C CNN
F 1 "+5V" H 9500 6215 50  0000 C CNN
F 2 "" H 9500 6075 50  0001 C CNN
F 3 "" H 9500 6075 50  0001 C CNN
	1    9500 6075
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5B2B745D
P 10300 5975
F 0 "#PWR05" H 10300 5725 50  0001 C CNN
F 1 "GND" H 10300 5825 50  0000 C CNN
F 2 "" H 10300 5975 50  0001 C CNN
F 3 "" H 10300 5975 50  0001 C CNN
	1    10300 5975
	1    0    0    -1  
$EndComp
$Comp
L midi-v2-circuit-rescue:C-device C5
U 1 1 5B2B8A3A
P 5075 2875
F 0 "C5" H 5100 2975 50  0000 L CNN
F 1 "100n" H 4875 2775 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5113 2725 50  0001 C CNN
F 3 "" H 5075 2875 50  0001 C CNN
	1    5075 2875
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 5B2B8A42
P 5225 2775
F 0 "#PWR06" H 5225 2625 50  0001 C CNN
F 1 "+5V" H 5225 2915 50  0000 C CNN
F 2 "" H 5225 2775 50  0001 C CNN
F 3 "" H 5225 2775 50  0001 C CNN
	1    5225 2775
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5B2B8A49
P 4925 2975
F 0 "#PWR07" H 4925 2725 50  0001 C CNN
F 1 "GND" H 4925 2825 50  0000 C CNN
F 2 "" H 4925 2975 50  0001 C CNN
F 3 "" H 4925 2975 50  0001 C CNN
	1    4925 2975
	1    0    0    -1  
$EndComp
$Comp
L midi-v2-circuit-rescue:C-device C6
U 1 1 5B2B8C4B
P 5525 2875
F 0 "C6" H 5550 2975 50  0000 L CNN
F 1 "100n" H 5325 2775 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5563 2725 50  0001 C CNN
F 3 "" H 5525 2875 50  0001 C CNN
	1    5525 2875
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 5B2B8C53
P 5675 2775
F 0 "#PWR08" H 5675 2625 50  0001 C CNN
F 1 "+5V" H 5675 2915 50  0000 C CNN
F 2 "" H 5675 2775 50  0001 C CNN
F 3 "" H 5675 2775 50  0001 C CNN
	1    5675 2775
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5B2B8C5A
P 5375 2975
F 0 "#PWR09" H 5375 2725 50  0001 C CNN
F 1 "GND" H 5375 2825 50  0000 C CNN
F 2 "" H 5375 2975 50  0001 C CNN
F 3 "" H 5375 2975 50  0001 C CNN
	1    5375 2975
	1    0    0    -1  
$EndComp
$Comp
L midi-v2-circuit-rescue:C-device C7
U 1 1 5B2B8C9C
P 5975 2875
F 0 "C7" H 6000 2975 50  0000 L CNN
F 1 "100n" H 5775 2775 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 6013 2725 50  0001 C CNN
F 3 "" H 5975 2875 50  0001 C CNN
	1    5975 2875
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 5B2B8CA4
P 6425 2875
F 0 "#PWR010" H 6425 2725 50  0001 C CNN
F 1 "+5V" H 6425 3015 50  0000 C CNN
F 2 "" H 6425 2875 50  0001 C CNN
F 3 "" H 6425 2875 50  0001 C CNN
	1    6425 2875
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5B2B8CAB
P 5825 2975
F 0 "#PWR011" H 5825 2725 50  0001 C CNN
F 1 "GND" H 5825 2825 50  0000 C CNN
F 2 "" H 5825 2975 50  0001 C CNN
F 3 "" H 5825 2975 50  0001 C CNN
	1    5825 2975
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5B2B7B5A
P 4475 2975
F 0 "#PWR012" H 4475 2725 50  0001 C CNN
F 1 "GND" H 4475 2825 50  0000 C CNN
F 2 "" H 4475 2975 50  0001 C CNN
F 3 "" H 4475 2975 50  0001 C CNN
	1    4475 2975
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 5B2B7B09
P 4775 2775
F 0 "#PWR013" H 4775 2625 50  0001 C CNN
F 1 "+5V" H 4775 2915 50  0000 C CNN
F 2 "" H 4775 2775 50  0001 C CNN
F 3 "" H 4775 2775 50  0001 C CNN
	1    4775 2775
	1    0    0    -1  
$EndComp
$Comp
L midi-v2-circuit-rescue:C-device C4
U 1 1 5B2B7A4D
P 4625 2875
F 0 "C4" H 4650 2975 50  0000 L CNN
F 1 "100n" H 4425 2775 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4663 2725 50  0001 C CNN
F 3 "" H 4625 2875 50  0001 C CNN
	1    4625 2875
	0    1    1    0   
$EndComp
Text GLabel 4075 3575 1    60   Input ~ 0
RST
$Comp
L midi-v2-circuit-rescue:SW_Push-switches SW2
U 1 1 5B2B95B3
P 3575 3575
F 0 "SW2" H 3625 3675 50  0000 L CNN
F 1 "SW_Push" H 3575 3515 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_Tactile_Straight_KSA0Axx1LFTR" H 3575 3775 50  0001 C CNN
F 3 "" H 3575 3775 50  0001 C CNN
	1    3575 3575
	1    0    0    -1  
$EndComp
$Comp
L midi-v2-circuit-rescue:R-device R1
U 1 1 5B2B99E0
P 3825 3425
F 0 "R1" V 3905 3425 50  0000 C CNN
F 1 "10k" V 3825 3425 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3755 3425 50  0001 C CNN
F 3 "" H 3825 3425 50  0001 C CNN
	1    3825 3425
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR014
U 1 1 5B2B9A73
P 3825 3275
F 0 "#PWR014" H 3825 3125 50  0001 C CNN
F 1 "+5V" H 3825 3415 50  0000 C CNN
F 2 "" H 3825 3275 50  0001 C CNN
F 3 "" H 3825 3275 50  0001 C CNN
	1    3825 3275
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5B2B9D10
P 3275 3575
F 0 "#PWR015" H 3275 3325 50  0001 C CNN
F 1 "GND" H 3275 3425 50  0000 C CNN
F 2 "" H 3275 3575 50  0001 C CNN
F 3 "" H 3275 3575 50  0001 C CNN
	1    3275 3575
	1    0    0    -1  
$EndComp
$Comp
L midi-v2-circuit-rescue:Crystal-device Y1
U 1 1 5B2BA77D
P 3875 4175
F 0 "Y1" H 3875 4325 50  0000 C CNN
F 1 "Crystal" H 3875 4025 50  0000 C CNN
F 2 "Crystals:Crystal_HC18-U_Vertical" H 3875 4175 50  0001 C CNN
F 3 "" H 3875 4175 50  0001 C CNN
	1    3875 4175
	0    1    1    0   
$EndComp
$Comp
L midi-v2-circuit-rescue:C-device C1
U 1 1 5B2BAED4
P 3525 3975
F 0 "C1" H 3550 4075 50  0000 L CNN
F 1 "22p" H 3550 3875 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3563 3825 50  0001 C CNN
F 3 "" H 3525 3975 50  0001 C CNN
	1    3525 3975
	0    1    1    0   
$EndComp
$Comp
L midi-v2-circuit-rescue:C-device C2
U 1 1 5B2BAF8F
P 3525 4375
F 0 "C2" H 3550 4475 50  0000 L CNN
F 1 "22p" H 3550 4275 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3563 4225 50  0001 C CNN
F 3 "" H 3525 4375 50  0001 C CNN
	1    3525 4375
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5B2BB2EB
P 3275 4525
F 0 "#PWR016" H 3275 4275 50  0001 C CNN
F 1 "GND" H 3275 4375 50  0000 C CNN
F 2 "" H 3275 4525 50  0001 C CNN
F 3 "" H 3275 4525 50  0001 C CNN
	1    3275 4525
	1    0    0    -1  
$EndComp
$Comp
L midi-v2-circuit-rescue:C-device C3
U 1 1 5B2BBEE0
P 3925 4775
F 0 "C3" H 3950 4875 50  0000 L CNN
F 1 "100n" H 3725 4675 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3963 4625 50  0001 C CNN
F 3 "" H 3925 4775 50  0001 C CNN
	1    3925 4775
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5B2BBFEC
P 3675 4825
F 0 "#PWR017" H 3675 4575 50  0001 C CNN
F 1 "GND" H 3675 4675 50  0000 C CNN
F 2 "" H 3675 4825 50  0001 C CNN
F 3 "" H 3675 4825 50  0001 C CNN
	1    3675 4825
	1    0    0    -1  
$EndComp
$Comp
L midi-v2-circuit-rescue:L-device L1
U 1 1 5B2BC3A2
P 6275 2875
F 0 "L1" V 6225 2875 50  0000 C CNN
F 1 "10uH" V 6350 2875 50  0000 C CNN
F 2 "Inductors_SMD:L_0805_HandSoldering" H 6275 2875 50  0001 C CNN
F 3 "" H 6275 2875 50  0001 C CNN
	1    6275 2875
	0    -1   -1   0   
$EndComp
Text GLabel 7325 3100 0    60   Input ~ 0
SDA
Text GLabel 7325 3200 0    60   Input ~ 0
SCL
$Comp
L midi-v2-circuit-rescue:Conn_01x04-conn J2
U 1 1 5B2C07E4
P 7925 3200
F 0 "J2" H 7925 3400 50  0000 C CNN
F 1 "Conn_01x04" H 7925 2900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 7925 3200 50  0001 C CNN
F 3 "" H 7925 3200 50  0001 C CNN
	1    7925 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR018
U 1 1 5B2C08C7
P 7625 3300
F 0 "#PWR018" H 7625 3150 50  0001 C CNN
F 1 "+5V" H 7525 3300 50  0000 C CNN
F 2 "" H 7625 3300 50  0001 C CNN
F 3 "" H 7625 3300 50  0001 C CNN
	1    7625 3300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5B2C0A2F
P 7625 3450
F 0 "#PWR019" H 7625 3200 50  0001 C CNN
F 1 "GND" H 7625 3300 50  0000 C CNN
F 2 "" H 7625 3450 50  0001 C CNN
F 3 "" H 7625 3450 50  0001 C CNN
	1    7625 3450
	1    0    0    -1  
$EndComp
$Comp
L midi-v2-circuit-rescue:R-device R2
U 1 1 5B2C1345
P 7375 2750
F 0 "R2" V 7455 2750 50  0000 C CNN
F 1 "4.7k" V 7375 2750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7305 2750 50  0001 C CNN
F 3 "" H 7375 2750 50  0001 C CNN
	1    7375 2750
	1    0    0    -1  
$EndComp
$Comp
L midi-v2-circuit-rescue:R-device R3
U 1 1 5B2C1C9B
P 7575 2750
F 0 "R3" V 7655 2750 50  0000 C CNN
F 1 "4.7k" V 7575 2750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7505 2750 50  0001 C CNN
F 3 "" H 7575 2750 50  0001 C CNN
	1    7575 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 5B2C252C
P 7375 2600
F 0 "#PWR020" H 7375 2450 50  0001 C CNN
F 1 "+5V" H 7275 2600 50  0000 C CNN
F 2 "" H 7375 2600 50  0001 C CNN
F 3 "" H 7375 2600 50  0001 C CNN
	1    7375 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR021
U 1 1 5B2C2596
P 7575 2600
F 0 "#PWR021" H 7575 2450 50  0001 C CNN
F 1 "+5V" H 7475 2600 50  0000 C CNN
F 2 "" H 7575 2600 50  0001 C CNN
F 3 "" H 7575 2600 50  0001 C CNN
	1    7575 2600
	1    0    0    -1  
$EndComp
$Comp
L midi-v2-circuit-rescue:R-device R4
U 1 1 5B2D2B8E
P 3575 1225
F 0 "R4" V 3655 1225 50  0000 C CNN
F 1 "220" V 3575 1225 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3505 1225 50  0001 C CNN
F 3 "" H 3575 1225 50  0001 C CNN
	1    3575 1225
	0    1    1    0   
$EndComp
Text GLabel 3425 1225 0    60   Input ~ 0
midi-data-pin
$Comp
L power:GND #PWR022
U 1 1 5B2D44CF
P 3950 975
F 0 "#PWR022" H 3950 725 50  0001 C CNN
F 1 "GND" H 3850 975 50  0000 C CNN
F 2 "" H 3950 975 50  0001 C CNN
F 3 "" H 3950 975 50  0001 C CNN
	1    3950 975 
	1    0    0    -1  
$EndComp
$Comp
L midi-v2-circuit-rescue:R-device R5
U 1 1 5B2D55DF
P 4975 1225
F 0 "R5" V 5055 1225 50  0000 C CNN
F 1 "220" V 4975 1225 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4905 1225 50  0001 C CNN
F 3 "" H 4975 1225 50  0001 C CNN
	1    4975 1225
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR023
U 1 1 5B2D5647
P 5175 1125
F 0 "#PWR023" H 5175 975 50  0001 C CNN
F 1 "+5V" H 5175 1265 50  0000 C CNN
F 2 "" H 5175 1125 50  0001 C CNN
F 3 "" H 5175 1125 50  0001 C CNN
	1    5175 1125
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 5B2D7DE4
P 2225 3875
F 0 "#PWR024" H 2225 3625 50  0001 C CNN
F 1 "GND" H 2225 3725 50  0000 C CNN
F 2 "" H 2225 3875 50  0001 C CNN
F 3 "" H 2225 3875 50  0001 C CNN
	1    2225 3875
	1    0    0    -1  
$EndComp
Text GLabel 1475 3475 0    60   Input ~ 0
joystick-pot-1
Text GLabel 1775 4125 0    60   Input ~ 0
joystick-pot-2
$Comp
L power:+5V #PWR025
U 1 1 5B2DB560
P 1150 4625
F 0 "#PWR025" H 1150 4475 50  0001 C CNN
F 1 "+5V" H 1150 4765 50  0000 C CNN
F 2 "" H 1150 4625 50  0001 C CNN
F 3 "" H 1150 4625 50  0001 C CNN
	1    1150 4625
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5B2DB672
P 900 4450
F 0 "#PWR026" H 900 4200 50  0001 C CNN
F 1 "GND" H 900 4300 50  0000 C CNN
F 2 "" H 900 4450 50  0001 C CNN
F 3 "" H 900 4450 50  0001 C CNN
	1    900  4450
	1    0    0    -1  
$EndComp
Text GLabel 1625 5125 0    60   Input ~ 0
knob-pot-1
Text GLabel 1625 5025 0    60   Input ~ 0
knob-pot-2
Text GLabel 1625 4925 0    60   Input ~ 0
knob-pot-3
Text GLabel 1625 4825 0    60   Input ~ 0
knob-pot-4
Text GLabel 1625 5325 0    60   Input ~ 0
slide-pot-1
Text GLabel 1625 5225 0    60   Input ~ 0
slide-pot-2
$Comp
L midi-v2-circuit-rescue:Joystick-switch-POT_Dual RV1
U 1 1 5B2E8139
P 1975 3475
F 0 "RV1" H 2325 4100 50  0000 C CNN
F 1 "Joystick-switch-POT_Dual" H 2125 2725 50  0000 C CNN
F 2 "SparkFun-Electromechanical:JOYSTICK" H 2025 3150 50  0001 C CNN
F 3 "" H 2025 3150 50  0001 C CNN
	1    1975 3475
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5B2E845D
P 1575 3675
F 0 "#PWR027" H 1575 3425 50  0001 C CNN
F 1 "GND" H 1575 3525 50  0000 C CNN
F 2 "" H 1575 3675 50  0001 C CNN
F 3 "" H 1575 3675 50  0001 C CNN
	1    1575 3675
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR028
U 1 1 5B2E8DA7
P 1725 3975
F 0 "#PWR028" H 1725 3825 50  0001 C CNN
F 1 "+5V" H 1725 4115 50  0000 C CNN
F 2 "" H 1725 3975 50  0001 C CNN
F 3 "" H 1725 3975 50  0001 C CNN
	1    1725 3975
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR029
U 1 1 5B2E9308
P 1475 3325
F 0 "#PWR029" H 1475 3175 50  0001 C CNN
F 1 "+5V" H 1475 3465 50  0000 C CNN
F 2 "" H 1475 3325 50  0001 C CNN
F 3 "" H 1475 3325 50  0001 C CNN
	1    1475 3325
	1    0    0    -1  
$EndComp
NoConn ~ 1675 3175
NoConn ~ 1675 3025
NoConn ~ 2275 3025
NoConn ~ 2275 3175
$Comp
L midi-v2-circuit-rescue:DIN-8-conn J3
U 1 1 5B2EB01F
P 4200 1325
F 0 "J3" H 4325 1550 50  0000 C CNN
F 1 "DIN-8" H 4280 1095 50  0000 L CNN
F 2 "misc-1-midi-din-8:MIDI-DIN-8" H 4200 1325 50  0001 C CNN
F 3 "" H 4200 1325 50  0001 C CNN
	1    4200 1325
	1    0    0    -1  
$EndComp
NoConn ~ 3900 1425
NoConn ~ 3900 1325
NoConn ~ 4500 1325
NoConn ~ 4500 1425
NoConn ~ 4200 1625
$Comp
L midi-v2-circuit-rescue:USB_B-conn J6
U 1 1 5B302844
P 1325 1350
F 0 "J6" H 1125 1800 50  0000 L CNN
F 1 "USB_B" H 1125 1700 50  0000 L CNN
F 2 "Connectors:USB_B" H 1475 1300 50  0001 C CNN
F 3 "" H 1475 1300 50  0001 C CNN
	1    1325 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR030
U 1 1 5B303234
P 1225 1750
F 0 "#PWR030" H 1225 1500 50  0001 C CNN
F 1 "GND" H 1225 1600 50  0000 C CNN
F 2 "" H 1225 1750 50  0001 C CNN
F 3 "" H 1225 1750 50  0001 C CNN
	1    1225 1750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR031
U 1 1 5B303DB4
P 1625 1150
F 0 "#PWR031" H 1625 1000 50  0001 C CNN
F 1 "VCC" H 1625 1300 50  0000 C CNN
F 2 "" H 1625 1150 50  0001 C CNN
F 3 "" H 1625 1150 50  0001 C CNN
	1    1625 1150
	1    0    0    -1  
$EndComp
$Comp
L midi-v2-circuit-rescue:Conn_01x04-conn J7
U 1 1 5B3041BE
P 2375 1250
F 0 "J7" H 2375 1450 50  0000 C CNN
F 1 "to_midi_adapter_USB" H 2375 950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 2375 1250 50  0001 C CNN
F 3 "" H 2375 1250 50  0001 C CNN
	1    2375 1250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR032
U 1 1 5B3048DE
P 2025 1100
F 0 "#PWR032" H 2025 850 50  0001 C CNN
F 1 "GND" H 2025 950 50  0000 C CNN
F 2 "" H 2025 1100 50  0001 C CNN
F 3 "" H 2025 1100 50  0001 C CNN
	1    2025 1100
	1    0    0    -1  
$EndComp
$Comp
L midi-v2-circuit-rescue:Conn_01x03-conn J8
U 1 1 5B306C6E
P 4675 2050
F 0 "J8" H 4675 2250 50  0000 C CNN
F 1 "to_midi_adapter_MIDI" H 4825 1850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 4675 2050 50  0001 C CNN
F 3 "" H 4675 2050 50  0001 C CNN
	1    4675 2050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR033
U 1 1 5B306E26
P 3200 2050
F 0 "#PWR033" H 3200 1800 50  0001 C CNN
F 1 "GND" H 3100 2050 50  0000 C CNN
F 2 "" H 3200 2050 50  0001 C CNN
F 3 "" H 3200 2050 50  0001 C CNN
	1    3200 2050
	1    0    0    -1  
$EndComp
$Comp
L midi-v2-circuit-rescue:Conn_01x02-conn J9
U 1 1 5B30BFB9
P 7700 1300
F 0 "J9" H 7700 1400 50  0000 C CNN
F 1 "to_power_switch" H 7850 1100 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7700 1300 50  0001 C CNN
F 3 "" H 7700 1300 50  0001 C CNN
	1    7700 1300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR034
U 1 1 5B30C0D9
P 7500 1300
F 0 "#PWR034" H 7500 1150 50  0001 C CNN
F 1 "VCC" H 7500 1450 50  0000 C CNN
F 2 "" H 7500 1300 50  0001 C CNN
F 3 "" H 7500 1300 50  0001 C CNN
	1    7500 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR035
U 1 1 5B30C143
P 7325 1225
F 0 "#PWR035" H 7325 1075 50  0001 C CNN
F 1 "+5V" H 7325 1365 50  0000 C CNN
F 2 "" H 7325 1225 50  0001 C CNN
F 3 "" H 7325 1225 50  0001 C CNN
	1    7325 1225
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR036
U 1 1 5B30C2AF
P 2175 1150
F 0 "#PWR036" H 2175 1000 50  0001 C CNN
F 1 "+5V" H 2175 1290 50  0000 C CNN
F 2 "" H 2175 1150 50  0001 C CNN
F 3 "" H 2175 1150 50  0001 C CNN
	1    2175 1150
	1    0    0    -1  
$EndComp
$Comp
L midi-v2-circuit-rescue:LED-device D1
U 1 1 5B3116B9
P 7375 1850
F 0 "D1" H 7375 1950 50  0000 C CNN
F 1 "power_LED" H 7375 1700 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 7375 1850 50  0001 C CNN
F 3 "" H 7375 1850 50  0001 C CNN
	1    7375 1850
	0    -1   -1   0   
$EndComp
$Comp
L midi-v2-circuit-rescue:R-device R8
U 1 1 5B312423
P 7375 1550
F 0 "R8" V 7455 1550 50  0000 C CNN
F 1 "1k" V 7375 1550 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7305 1550 50  0001 C CNN
F 3 "" H 7375 1550 50  0001 C CNN
	1    7375 1550
	1    0    0    -1  
$EndComp
$Comp
L midi-v2-circuit-rescue:LED-device D2
U 1 1 5B313961
P 8450 1650
F 0 "D2" H 8450 1750 50  0000 C CNN
F 1 "data_LED" H 8450 1500 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 8450 1650 50  0001 C CNN
F 3 "" H 8450 1650 50  0001 C CNN
	1    8450 1650
	0    -1   -1   0   
$EndComp
$Comp
L midi-v2-circuit-rescue:R-device R9
U 1 1 5B313D52
P 8450 1350
F 0 "R9" V 8530 1350 50  0000 C CNN
F 1 "1k" V 8450 1350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8380 1350 50  0001 C CNN
F 3 "" H 8450 1350 50  0001 C CNN
	1    8450 1350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR037
U 1 1 5B31406C
P 7375 2000
F 0 "#PWR037" H 7375 1750 50  0001 C CNN
F 1 "GND" H 7375 1850 50  0000 C CNN
F 2 "" H 7375 2000 50  0001 C CNN
F 3 "" H 7375 2000 50  0001 C CNN
	1    7375 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR038
U 1 1 5B315096
P 8450 2000
F 0 "#PWR038" H 8450 1750 50  0001 C CNN
F 1 "GND" H 8450 1850 50  0000 C CNN
F 2 "" H 8450 2000 50  0001 C CNN
F 3 "" H 8450 2000 50  0001 C CNN
	1    8450 2000
	1    0    0    -1  
$EndComp
Text GLabel 3775 1425 0    60   Input ~ 0
midi-raw-signal-data
Text GLabel 4625 800  0    60   Input ~ 0
midi-raw-signal-power
Wire Wire Line
	4925 7275 5025 7275
Connection ~ 5125 7275
Connection ~ 5025 7275
Wire Wire Line
	5075 7275 5075 7375
Connection ~ 5075 7275
Wire Wire Line
	6075 4575 8100 4575
Wire Wire Line
	6075 4675 8075 4675
Wire Wire Line
	6075 4775 8050 4775
Wire Wire Line
	6575 5275 6575 4975
Connection ~ 6575 4975
Wire Wire Line
	6675 5275 6675 5075
Connection ~ 6675 5075
Wire Wire Line
	6775 5275 6775 5175
Connection ~ 6775 5175
Wire Wire Line
	6075 4475 8125 4475
Wire Wire Line
	5625 1150 5975 1150
Wire Wire Line
	5625 1550 5975 1550
Wire Wire Line
	5625 1450 5975 1450
Wire Wire Line
	5625 1350 5975 1350
Wire Wire Line
	6225 1250 6225 1350
Connection ~ 6225 1350
Connection ~ 6225 1450
Wire Wire Line
	6225 1350 6575 1350
Wire Wire Line
	6575 1350 6575 1400
Wire Wire Line
	6575 1150 6225 1150
Wire Wire Line
	9500 5275 9900 5275
Wire Wire Line
	9500 5375 9900 5375
Wire Wire Line
	9500 5475 9900 5475
Wire Wire Line
	9500 5575 9900 5575
Wire Wire Line
	10450 5275 10150 5275
Wire Wire Line
	10450 5375 10150 5375
Wire Wire Line
	10450 5475 10150 5475
Wire Wire Line
	10450 5575 10150 5575
Wire Wire Line
	9750 5875 9750 6125
Wire Wire Line
	9750 6125 9500 6125
Wire Wire Line
	9500 6125 9500 6075
Wire Wire Line
	5225 2775 5225 2875
Connection ~ 5225 2875
Wire Wire Line
	4925 2875 4925 2975
Wire Wire Line
	5675 2775 5675 2875
Connection ~ 5675 2875
Wire Wire Line
	5375 2875 5375 2975
Wire Wire Line
	5825 2875 5825 2975
Wire Wire Line
	4875 3275 4875 3175
Wire Wire Line
	4875 3175 5225 3175
Wire Wire Line
	4975 3275 4975 3225
Wire Wire Line
	4975 3225 5675 3225
Wire Wire Line
	6125 3275 5175 3275
Wire Wire Line
	4475 2875 4475 2975
Connection ~ 4775 2875
Wire Wire Line
	4775 2775 4775 2875
Wire Wire Line
	3775 3575 3825 3575
Connection ~ 3825 3575
Wire Wire Line
	3375 3575 3275 3575
Wire Wire Line
	3675 3975 3875 3975
Wire Wire Line
	3875 3975 3875 4025
Wire Wire Line
	3675 4375 3875 4375
Wire Wire Line
	3875 4375 3875 4325
Connection ~ 3875 3975
Connection ~ 3875 4375
Wire Wire Line
	3375 3975 3275 3975
Wire Wire Line
	3275 3975 3275 4375
Wire Wire Line
	3275 4375 3375 4375
Connection ~ 3275 4375
Wire Wire Line
	3775 4775 3675 4775
Wire Wire Line
	3675 4775 3675 4825
Wire Wire Line
	6125 2875 6125 3275
Connection ~ 6125 2875
Wire Wire Line
	7625 3300 7725 3300
Wire Wire Line
	7725 3400 7625 3400
Wire Wire Line
	7625 3400 7625 3450
Wire Wire Line
	7325 3200 7575 3200
Wire Wire Line
	7325 3100 7375 3100
Wire Wire Line
	7375 2900 7375 3100
Connection ~ 7375 3100
Wire Wire Line
	7575 2900 7575 3200
Connection ~ 7575 3200
Wire Wire Line
	4200 1025 4200 925 
Wire Wire Line
	4200 925  3950 925 
Wire Wire Line
	3950 925  3950 975 
Wire Wire Line
	5175 1125 5175 1225
Wire Wire Line
	5175 1225 5125 1225
Wire Wire Line
	1150 4625 2050 4625
Wire Wire Line
	1025 4725 2050 4725
Wire Notes Line
	575  2525 575  7675
Wire Notes Line
	575  7675 3125 7675
Wire Notes Line
	3125 7675 3125 2525
Wire Notes Line
	3125 2525 575  2525
Wire Wire Line
	2025 3975 2025 4125
Wire Wire Line
	2025 4125 1775 4125
Wire Wire Line
	1725 3975 1875 3975
Wire Wire Line
	1875 3975 1875 3875
Wire Wire Line
	1475 3325 1575 3325
Wire Wire Line
	1225 1750 1325 1750
Connection ~ 1225 1750
Wire Wire Line
	2175 1250 2125 1250
Wire Wire Line
	2125 1250 2125 1100
Wire Wire Line
	2125 1100 2025 1100
Wire Wire Line
	2175 1350 1625 1350
Wire Wire Line
	1625 1450 2175 1450
Wire Wire Line
	3200 2050 4475 2050
Wire Wire Line
	7325 1225 7325 1400
Wire Wire Line
	7325 1400 7375 1400
Connection ~ 7375 1400
Wire Wire Line
	8450 1800 8450 2000
Wire Wire Line
	8575 1200 8450 1200
Wire Wire Line
	3725 1225 3825 1225
Wire Wire Line
	3775 1425 3825 1425
Wire Wire Line
	3825 1425 3825 1225
Connection ~ 3825 1225
Wire Wire Line
	4500 1225 4700 1225
Wire Wire Line
	4625 800  4700 800 
Wire Wire Line
	4700 800  4700 1225
Connection ~ 4700 1225
Text GLabel 4475 2150 0    60   Input ~ 0
midi-raw-signal-data
Text GLabel 4475 1950 0    60   Input ~ 0
midi-raw-signal-power
Text GLabel 8575 1200 2    60   Input ~ 0
midi-raw-signal-data
$Comp
L midi-v2-circuit-rescue:C-device C8
U 1 1 5B31F54F
P 8275 5050
F 0 "C8" H 8300 5150 50  0000 L CNN
F 1 "100n" H 8075 4950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8313 4900 50  0001 C CNN
F 3 "" H 8275 5050 50  0001 C CNN
	1    8275 5050
	0    1    1    0   
$EndComp
$Comp
L midi-v2-circuit-rescue:C-device C9
U 1 1 5B31F7B1
P 8275 5275
F 0 "C9" H 8300 5375 50  0000 L CNN
F 1 "100n" H 8075 5175 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8313 5125 50  0001 C CNN
F 3 "" H 8275 5275 50  0001 C CNN
	1    8275 5275
	0    1    1    0   
$EndComp
$Comp
L midi-v2-circuit-rescue:C-device C10
U 1 1 5B31F842
P 8275 5500
F 0 "C10" H 8300 5600 50  0000 L CNN
F 1 "100n" H 8075 5400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8313 5350 50  0001 C CNN
F 3 "" H 8275 5500 50  0001 C CNN
	1    8275 5500
	0    1    1    0   
$EndComp
$Comp
L midi-v2-circuit-rescue:C-device C11
U 1 1 5B31F8CC
P 8275 5725
F 0 "C11" H 8300 5825 50  0000 L CNN
F 1 "100n" H 8075 5625 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8313 5575 50  0001 C CNN
F 3 "" H 8275 5725 50  0001 C CNN
	1    8275 5725
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 4575 8100 5275
Wire Wire Line
	8075 5500 8125 5500
Wire Wire Line
	8075 4675 8075 5500
Wire Wire Line
	8050 5725 8125 5725
Wire Wire Line
	8050 4775 8050 5725
Wire Wire Line
	8425 5050 8425 5275
Connection ~ 8425 5275
Connection ~ 8425 5500
Wire Wire Line
	8425 5725 8550 5725
$Comp
L power:GND #PWR039
U 1 1 5B320203
P 8550 5725
F 0 "#PWR039" H 8550 5475 50  0001 C CNN
F 1 "GND" H 8550 5575 50  0000 C CNN
F 2 "" H 8550 5725 50  0001 C CNN
F 3 "" H 8550 5725 50  0001 C CNN
	1    8550 5725
	1    0    0    -1  
$EndComp
Wire Wire Line
	6075 5175 6775 5175
Wire Wire Line
	6075 5075 6675 5075
Wire Wire Line
	6075 4975 6575 4975
Wire Wire Line
	6075 4875 6950 4875
Wire Wire Line
	8100 5275 8125 5275
Connection ~ 8050 4775
Connection ~ 8075 4675
Connection ~ 8100 4575
Wire Wire Line
	8125 5050 8125 4475
Connection ~ 8125 4475
$Comp
L midi-v2-circuit-rescue:IDC-14 CON3
U 1 1 5B32800D
P 10100 5475
F 0 "CON3" H 9930 5805 50  0000 C CNN
F 1 "IDC-14" H 9825 4875 50  0000 L BNN
F 2 "Connectors_IDC:IDC-Header_2x07_Pitch2.54mm_Straight" V 9350 5525 50  0001 C CNN
F 3 "" H 10100 5475 50  0001 C CNN
	1    10100 5475
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 5975 10300 5875
Wire Wire Line
	10300 5875 10150 5875
Wire Wire Line
	9750 5875 9900 5875
Wire Wire Line
	9500 5675 9900 5675
Wire Wire Line
	9500 5775 9900 5775
Wire Wire Line
	10450 5675 10150 5675
Wire Wire Line
	10150 5775 10450 5775
Text GLabel 2300 6650 2    60   Input ~ 0
slide-pot-1
Text GLabel 1350 6650 0    60   Input ~ 0
slide-pot-2
Text GLabel 2300 6550 2    60   Input ~ 0
knob-pot-1
Text GLabel 1350 6550 0    60   Input ~ 0
knob-pot-2
Text GLabel 2300 6450 2    60   Input ~ 0
knob-pot-3
Text GLabel 1350 6450 0    60   Input ~ 0
knob-pot-4
Text GLabel 2300 6350 2    60   Input ~ 0
joystick-pot-1
Text GLabel 1350 6350 0    60   Input ~ 0
joystick-pot-2
$Comp
L power:+5V #PWR040
U 1 1 5B32A4F6
P 1350 7150
F 0 "#PWR040" H 1350 7000 50  0001 C CNN
F 1 "+5V" H 1350 7290 50  0000 C CNN
F 2 "" H 1350 7150 50  0001 C CNN
F 3 "" H 1350 7150 50  0001 C CNN
	1    1350 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 5B32A4FC
P 2150 7050
F 0 "#PWR041" H 2150 6800 50  0001 C CNN
F 1 "GND" H 2150 6900 50  0000 C CNN
F 2 "" H 2150 7050 50  0001 C CNN
F 3 "" H 2150 7050 50  0001 C CNN
	1    2150 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 6350 1750 6350
Wire Wire Line
	1350 6450 1750 6450
Wire Wire Line
	1350 6550 1750 6550
Wire Wire Line
	1350 6650 1750 6650
Wire Wire Line
	2300 6350 2000 6350
Wire Wire Line
	2300 6450 2000 6450
Wire Wire Line
	2300 6550 2000 6550
Wire Wire Line
	2300 6650 2000 6650
Wire Wire Line
	1600 6950 1600 7200
Wire Wire Line
	1600 7200 1350 7200
Wire Wire Line
	1350 7200 1350 7150
$Comp
L midi-v2-circuit-rescue:IDC-14 CON1
U 1 1 5B32A50D
P 1950 6550
F 0 "CON1" H 1780 6880 50  0000 C CNN
F 1 "IDC-14" H 1675 5950 50  0000 L BNN
F 2 "Connectors_IDC:IDC-Header_2x07_Pitch2.54mm_Angled" V 1200 6600 50  0001 C CNN
F 3 "" H 1950 6550 50  0001 C CNN
	1    1950 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 7050 2150 6950
Wire Wire Line
	2150 6950 2000 6950
Wire Wire Line
	1600 6950 1750 6950
Text GLabel 1350 6850 0    60   Input ~ 0
button-1
Text GLabel 2300 6850 2    60   Input ~ 0
button-2
Text GLabel 1350 6750 0    60   Input ~ 0
button-3
Text GLabel 2300 6750 2    60   Input ~ 0
button-4
Wire Wire Line
	1350 6750 1750 6750
Wire Wire Line
	1350 6850 1750 6850
Wire Wire Line
	2300 6750 2000 6750
Wire Wire Line
	2000 6850 2300 6850
Text GLabel 2050 5625 0    60   Input ~ 0
button-1
Text GLabel 2050 5725 0    60   Input ~ 0
button-2
Text GLabel 2050 5425 0    60   Input ~ 0
button-3
Text GLabel 2050 5525 0    60   Input ~ 0
button-4
$Comp
L midi-v2-circuit-rescue:Screw_Terminal_01x12-conn J1
U 1 1 5B315AAE
P 2250 5125
F 0 "J1" H 2250 5725 50  0000 C CNN
F 1 "Screw_Terminal_01x12" H 2250 4425 50  0000 C CNN
F 2 "TerminalBlocks_Phoenix:TerminalBlock_Phoenix_MPT-2.54mm_12pol" H 2250 5125 50  0001 C CNN
F 3 "" H 2250 5125 50  0001 C CNN
	1    2250 5125
	1    0    0    -1  
$EndComp
Text GLabel 9500 5575 0    60   Input ~ 0
slide-pot-2
Text GLabel 9500 5475 0    60   Input ~ 0
knob-pot-2
Text GLabel 9500 5375 0    60   Input ~ 0
knob-pot-4
Text GLabel 9500 5275 0    60   Input ~ 0
joystick-pot-2
Text GLabel 9500 5775 0    60   Input ~ 0
button-1
Text GLabel 10450 5775 2    60   Input ~ 0
button-2
Text GLabel 10450 5575 2    60   Input ~ 0
slide-pot-1
Text GLabel 10450 5475 2    60   Input ~ 0
knob-pot-1
Text GLabel 10450 5375 2    60   Input ~ 0
knob-pot-3
Text GLabel 10450 5275 2    60   Input ~ 0
joystick-pot-1
Text GLabel 9500 5675 0    60   Input ~ 0
button-3
Text GLabel 10450 5675 2    60   Input ~ 0
button-4
$Comp
L midi-v2-circuit-rescue:R-device R6
U 1 1 5B34137C
P 1900 5325
F 0 "R6" V 1850 5150 50  0000 C CNN
F 1 "330" V 1900 5325 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1830 5325 50  0001 C CNN
F 3 "" H 1900 5325 50  0001 C CNN
	1    1900 5325
	0    1    1    0   
$EndComp
Wire Wire Line
	1025 4725 1025 4450
Wire Wire Line
	1025 4450 900  4450
$Comp
L midi-v2-circuit-rescue:R-device R7
U 1 1 5B342758
P 1900 5225
F 0 "R7" V 1850 5050 50  0000 C CNN
F 1 "330" V 1900 5225 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1830 5225 50  0001 C CNN
F 3 "" H 1900 5225 50  0001 C CNN
	1    1900 5225
	0    1    1    0   
$EndComp
$Comp
L midi-v2-circuit-rescue:R-device R10
U 1 1 5B342C8C
P 1900 5125
F 0 "R10" V 1850 4950 50  0000 C CNN
F 1 "330" V 1900 5125 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1830 5125 50  0001 C CNN
F 3 "" H 1900 5125 50  0001 C CNN
	1    1900 5125
	0    1    1    0   
$EndComp
$Comp
L midi-v2-circuit-rescue:R-device R11
U 1 1 5B342C92
P 1900 5025
F 0 "R11" V 1850 4850 50  0000 C CNN
F 1 "330" V 1900 5025 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1830 5025 50  0001 C CNN
F 3 "" H 1900 5025 50  0001 C CNN
	1    1900 5025
	0    1    1    0   
$EndComp
$Comp
L midi-v2-circuit-rescue:R-device R12
U 1 1 5B342D6E
P 1900 4925
F 0 "R12" V 1850 4750 50  0000 C CNN
F 1 "330" V 1900 4925 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1830 4925 50  0001 C CNN
F 3 "" H 1900 4925 50  0001 C CNN
	1    1900 4925
	0    1    1    0   
$EndComp
$Comp
L midi-v2-circuit-rescue:R-device R13
U 1 1 5B342D74
P 1900 4825
F 0 "R13" V 1850 4650 50  0000 C CNN
F 1 "330" V 1900 4825 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1830 4825 50  0001 C CNN
F 3 "" H 1900 4825 50  0001 C CNN
	1    1900 4825
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 5325 1625 5325
Wire Wire Line
	1625 5225 1750 5225
Wire Wire Line
	1750 5125 1625 5125
Wire Wire Line
	1625 5025 1750 5025
Wire Wire Line
	1750 4925 1625 4925
Wire Wire Line
	1625 4825 1750 4825
$Comp
L midi-v2-circuit-rescue:R-device R14
U 1 1 5B40F987
P 6950 5425
F 0 "R14" V 7030 5425 50  0000 C CNN
F 1 "10k" V 6950 5425 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 6880 5425 50  0001 C CNN
F 3 "" H 6950 5425 50  0001 C CNN
	1    6950 5425
	1    0    0    -1  
$EndComp
$Comp
L midi-v2-circuit-rescue:R-device R15
U 1 1 5B40FFB0
P 7125 5425
F 0 "R15" V 7205 5425 50  0000 C CNN
F 1 "10k" V 7125 5425 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7055 5425 50  0001 C CNN
F 3 "" H 7125 5425 50  0001 C CNN
	1    7125 5425
	1    0    0    -1  
$EndComp
$Comp
L midi-v2-circuit-rescue:R-device R16
U 1 1 5B41005E
P 7300 5425
F 0 "R16" V 7380 5425 50  0000 C CNN
F 1 "10k" V 7300 5425 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7230 5425 50  0001 C CNN
F 3 "" H 7300 5425 50  0001 C CNN
	1    7300 5425
	1    0    0    -1  
$EndComp
$Comp
L midi-v2-circuit-rescue:R-device R17
U 1 1 5B410148
P 7475 5425
F 0 "R17" V 7555 5425 50  0000 C CNN
F 1 "10k" V 7475 5425 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7405 5425 50  0001 C CNN
F 3 "" H 7475 5425 50  0001 C CNN
	1    7475 5425
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 5275 6950 4875
Connection ~ 6950 4875
Wire Wire Line
	7125 5275 7125 4975
Connection ~ 7125 4975
Wire Wire Line
	7300 5275 7300 5075
Connection ~ 7300 5075
Wire Wire Line
	7475 5275 7475 5175
Connection ~ 7475 5175
$Comp
L power:GND #PWR042
U 1 1 5B4108D2
P 7225 5575
F 0 "#PWR042" H 7225 5325 50  0001 C CNN
F 1 "GND" H 7225 5425 50  0000 C CNN
F 2 "" H 7225 5575 50  0001 C CNN
F 3 "" H 7225 5575 50  0001 C CNN
	1    7225 5575
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 5575 7125 5575
Connection ~ 7125 5575
Connection ~ 7225 5575
Connection ~ 7300 5575
Wire Wire Line
	5125 7275 5225 7275
Wire Wire Line
	5025 7275 5075 7275
Wire Wire Line
	5075 7275 5125 7275
Wire Wire Line
	6575 4975 7125 4975
Wire Wire Line
	6675 5075 7300 5075
Wire Wire Line
	6775 5175 7475 5175
Wire Wire Line
	6225 1350 6225 1450
Wire Wire Line
	6225 1450 6225 1550
Wire Wire Line
	5225 2875 5225 3175
Wire Wire Line
	5675 2875 5675 3225
Wire Wire Line
	4775 2875 4775 3275
Wire Wire Line
	3825 3575 4075 3575
Wire Wire Line
	3875 3975 4075 3975
Wire Wire Line
	3875 4375 4075 4375
Wire Wire Line
	3275 4375 3275 4525
Wire Wire Line
	7375 3100 7725 3100
Wire Wire Line
	7575 3200 7725 3200
Wire Wire Line
	7375 1400 7500 1400
Wire Wire Line
	3825 1225 3900 1225
Wire Wire Line
	4700 1225 4825 1225
Wire Wire Line
	8425 5275 8425 5500
Wire Wire Line
	8425 5500 8425 5725
Wire Wire Line
	8050 4775 8250 4775
Wire Wire Line
	8075 4675 8250 4675
Wire Wire Line
	8100 4575 8250 4575
Wire Wire Line
	8125 4475 8250 4475
Wire Wire Line
	6950 4875 7525 4875
Wire Wire Line
	7125 4975 7525 4975
Wire Wire Line
	7300 5075 7525 5075
Wire Wire Line
	7475 5175 7525 5175
Wire Wire Line
	7125 5575 7225 5575
Wire Wire Line
	7225 5575 7300 5575
Wire Wire Line
	7300 5575 7475 5575
$EndSCHEMATC
