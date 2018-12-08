#include "mLib_ADC.h"

void adc_init(void)
{
	ADCSRA |= (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0); // Set ADC prescalar to 128 - 125KHz sample rate @ 16MHz
	ADMUX |= (1 << REFS0); 	// Set ADC reference to AVCC

	ADCSRA |= (1 << ADEN);  // Enable ADC
	//ADCSRA |= (1 << ADSC);  // Start A2D Conversions
	//ADCSRA |= (1 << ADATE);	// for free running mode
}

uint16_t adc_read(uint8_t adc_channel)		
{
	adc_channel &= 0x07;					// AND operation with 7 (will keep channel between 0-7) 
	ADMUX = (ADMUX & 0xF8) | adc_channel;	// clears 3 first bits before OR

	ADCSRA |= (1 << ADSC);				// start single convesrion
	while(ADCSRA & (1 << ADSC));		// wait for conversion to complete
	return ADCW;
}


