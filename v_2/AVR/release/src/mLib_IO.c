#include "mLib_IO.h"

unsigned int is_pin(uint8_t pin, volatile uint8_t *pin_pin)
{
	if(*pin_pin & (1<<pin))		return 1;
	else 						return 0;
}

void pin_init(uint8_t pin, volatile uint8_t *pin_ddr, volatile uint8_t *pin_port, unsigned int b_in_or_out, unsigned int b_def_state_or_pullup)
{
	if(b_in_or_out)		*pin_ddr |= (1<<pin);	// output
	else 				*pin_ddr &= ~(1<<pin);	// input

	if(b_def_state_or_pullup)	*pin_port |= (1<<pin);	// default set or pullup
	else						*pin_port &= ~(1<<pin);	// default reset or no pullup
}

void pin_set_state(uint8_t pin, volatile uint8_t *pin_port, volatile uint8_t *pin_pin, unsigned int mode)
{
	switch (mode)
	{
		case 0:		// reset pin
		*pin_port &= ~(1<<pin);
		break;

		case 1:		// set pin
		*pin_port |= (1<<pin);
		break;

		case 2:		// toggle pin
		if(*pin_pin & (1<<pin))	*pin_port &= ~(1<<pin);
		else					*pin_port |= (1<<pin);
		break;

		default:
		*pin_port &= ~(1<<pin);
		break;
	}
}


