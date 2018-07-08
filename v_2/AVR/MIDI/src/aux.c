#include "aux.h"

extern volatile uint16_t Timer1=0, Timer2=0;	// timers for long button push

void initializeSetup (void)		//initializing registers
{
	//MCUCSR = (1<<JTD);			//disabling JTAG
	//MCUCSR = (1<<JTD);			//

		//note_DDR = note_1 | note_2 | note_3 | note_4;		// note keys as output
		//button_DDR = button_1 | button_2;					// button keys as output

	//note_PORT = note_1 | note_2 | note_3 | note_4;	// note keys with pullup
	DDRD = 0;
	PORTD = (1 << PD0) | (1 << PD2);	// note_1 with pullup
	//button_PORT = button_1 | button_2;				// button keys with pullup	
}

void ADC_init (void)
{
	ADCSRA |= (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0); // Set ADC prescalar to 128 - 125KHz sample rate @ 16MHz

	ADMUX |= (1 << REFS0); 	// Set ADC reference to AVCC
	ADMUX |= (1 << ADLAR); 	// Left adjust ADC result to allow easy 8 bit reading

	ADCSRA |= (1 << ADEN);  // Enable ADC
	ADCSRA |= (1 << ADSC);  // Start A2D Conversions
	ADCSRA |= (1 << ADATE);	// for free running mode

}

//  int isButton(uint16_t mask)				
//  {
//  	if(!(PINA & 0x08))
//  		return 1;
//  	else
//  if(ADCH < 128)

//  }if(ADCH < 128)
