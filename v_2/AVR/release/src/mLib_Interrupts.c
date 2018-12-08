#include "mLib_Interrupts.h"

/*void ext_intrr_init(uint8_t intrr_pin, uint8_t intrr_ddr, uint8_t intrr_port)
{
	intrr_ddr &= ~(1<<intrr_pin);		// Clear the PD2 pin - PCINT0 is now input
	intrr_port |= (1<<intrr_pin);		// turn on the pulllup
	EICRA |= (1<<ISC00);				// set INT0 to trigger on ANY logic change
	EIMSK |= (1<<INT0); 				// turns on INT0
	
	sei();								// turn on interrupts
}*/

void delay_ms(unsigned int period)		
{
	volatile long unsigned int ms_tick;
	for(ms_tick=0;ms_tick<period;ms_tick++)
	_delay_ms(1);
}

void timer_init(uint16_t prescaler, uint16_t period)
{
	OCR1A = (((F_CPU/1000) / prescaler) * period) - 1;	// (dec 15624) counter size
    TCCR1B |= (1 << WGM12);							// Mode 4, CTC on OCR1A
    TIMSK |= (1 << OCIE1A);						// Set interrupt on compare match	
    TCCR1B |= (1 << CS12) | (1 << CS10);			// set prescaler to 1024 and start the timer
    sei();											// enable interrupts
}
