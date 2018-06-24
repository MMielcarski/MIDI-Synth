#ifndef MORSE_H_
#define MORSE_H_

#define F_CPU 1000000UL
#include <avr/io.h>
#include "HD44780.h"
#include <util/delay.h>
#include <stdio.h>
#include <stdlib.h> 
#include <avr/interrupt.h>

#define ENC_BTN PA3
#define ENC_A PA1
#define ENC_B PA2
#define LED PC4
#define SW_1 PC1
#define SW_2 PC2

	extern int encoderCount;	//encoder turns
	extern uint8_t val;			//encoder actual gray code reading
	extern int asciiNum;		//ascii value of currently displayed character
	extern char userInput[];
	extern volatile uint16_t Timer1, Timer2;
	extern int flag;

	void delay_ms( int ms);
	uint8_t readEncoder(void);
	void initializeSetup (void);
	void readEncoderCounter (void);
	void broadcast(int period,int length);
	void LCD_clearLine(int nr);
	int dial(void);
	void messageDisplay(void);
	int isButton(void);
	void LCD_move(char dir);
	void LCD_moveMode(void);
	void blinkLed(int on, int off);
	int messageDecrypt(void);
	int setWpmSpeed(void);

	/*typedef struct {
		volatile uint8_t *pin;
		uint8_t keyMask;
		uint8_t waitTime;
		uint8_t flag;
		int isPressed(void);
	}BUTTON;*/

#endif /* MORSE_H_ */
