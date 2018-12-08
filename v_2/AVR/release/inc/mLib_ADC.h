/*!
\file   mLib_ADC.h
\author Maciej Mielcarski
\date   01.12.2018
\brief  ADC single and free running conversion single and multi-channel

        tested on: Atmega328p
*/

#ifndef MLIB_ADC_H
#define MLIB_ADC_H
#include <avr/io.h>

#define F_CPU 16000000UL
//#define SUPPLY_VOLT 5000	// [mV]
//#define ADC_RES 1024

/*!
\brief  register initialization for ADC
\return void
*/
void adc_init(void);

/*!
\brief  read adc value from given channel
\param  channel - ADC channel (0-5 for atmega328p)
\return 16 bit value containing ADC reading (0-1023 for atmega328p)
*/
uint16_t adc_read(uint8_t adc_channel);

#endif