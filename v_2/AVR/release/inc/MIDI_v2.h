/*
\file MIDI_v2.h
\author Maciej Mielcarski
\date 03.12.2018
\brief MIDI controller/keyboard 

atmega32 (4 octaves, 8x ADC, 4x BUTTON)
*/

#ifndef MIDI_V2_H
#define MIDI_V2_H

#include "mLib_Interrupts.h"
#include "mLib_USART.h"
#include "mLib_ADC.h"
#include "mLib_IO.h"

#define NOTE_ON_CMD 	0x90
#define NOTE_OFF_CMD 	0x80
#define CC_CMD 			0xB0
#define CC_ON_VAL 0x46
#define CC_OFF_VAL 0x3C

#define PITCH_BEND_CMD 			0xE0
#define MODULATION_WHEEL_CMD 	0x01
#define BREATH_CONTROLLER_CMD 	0x02
#define MAIN_VOLUME_CMD 		0x07	
#define GEN_PURP_CTRL_1_CMD 	0x10
#define GEN_PURP_CTRL_2_CMD 	0x11
#define GEN_PURP_CTRL_3_CMD 	0x12
#define GEN_PURP_CTRL_4_CMD 	0x13

#define UNDEF_1 0x14
#define UNDEF_2 0x15
#define UNDEF_3 0x16
#define UNDEF_4 0x17
#define UNDEF_5 0x18
#define UNDEF_6 0x19
#define UNDEF_7 0x1A
#define UNDEF_8 0x1B

#define VEL_DEF_CMD		0x40	// default 64 velocity

#define NOTE1 PD0 
#define NOTE2 PD2 
#define NOTE3 PD3 
#define NOTE4 PD4 
#define NOTE5 PD5 
#define NOTE6 PD6 
#define NOTE7 PD7 
#define NOTE8 PC2 
#define NOTE9 PC3 
#define NOTE10 PC4 
#define NOTE11 PC5 
#define NOTE12 PC6 
#define NOTE13 PC7 

#define OCTAVE1 PB4 
#define OCTAVE2 PB5 
#define OCTAVE3 PB6 
#define OCTAVE4 PB7 

#define BUTTON_PIN_PORT PINB 
#define BUTTON1 PB0
#define BUTTON2 PB1
#define BUTTON3 PB2
#define BUTTON4 PB3

#define ADC0 0
#define ADC1 1
#define ADC2 2
#define ADC3 3
#define ADC4 4
#define ADC5 5
#define ADC6 6
#define ADC7 7




/*!
\brief general register initialization
\return void
*/
void midi_reg_init(void);

/*!
\brief send midi note on command
with specified key
\param key - note number
\param oct - octave number
\octave_change - octave shift option variable added to octave number
\return void
*/
void midi_note_on(unsigned int key, unsigned int oct, unsigned int octave_shift);

/*!
\brief send midi note off command
with specified key
\param key - note number
\param oct - octave number
\octave_change - octave shift option variable added to octave number
\return void
*/
void midi_note_off(unsigned int key, unsigned int oct, unsigned int octave_shift);

/*!
\brief send midi control change command
with specified two data bytes
\param data1 - first data byte
\param data2 - second data byte
\return void
*/
void midi_cc(uint8_t data1, uint8_t data2);

/*!
\brief control change event control on falling edge of button 
\param cc_data1 - first data byte
\param cc_data2 - second data byte
\param button_pin - button pin selection
\return void
*/
void midi_button_control(uint8_t cc_data1, uint8_t cc_data2, unsigned int button_pin);

/*!
\brief noiseless potentiometer read;
sending 7 bit control value as control change 
\param control_cmd - control change command number
\param channel - ADC channel
\return void
*/
void midi_pot_control(uint8_t control_cmd,  unsigned int channel);

void midi_keyboard_scan(void);

#endif