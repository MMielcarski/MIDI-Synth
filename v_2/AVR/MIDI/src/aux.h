#ifndef MORSE_H_
#define MORSE_H_

#define F_CPU 16000000UL
#include <avr/io.h>
#include <util/delay.h>
#include <stdio.h>
#include <stdlib.h> 
#include "HD44780.h"

#define note_DDR DDRD
#define note_PORT PORTD
#define note_PIN PIND
#define note_1 0x01
#define note_2 0x04
#define note_3 0x08
#define note_4 0x10

#define button_DDR DDRB
#define button_PORT PORTB
#define button_PIN PINB
#define button_1 0x20
#define button_2 0x40

	void delay_ms( int ms);
	void initializeSetup (void);

	int isButton(void);

#endif MORSE_H_ 
