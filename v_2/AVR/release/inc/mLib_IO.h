/*! 
\file mLib_IO.h
\author Maciej Mielcarski
\date 02.12.2018
\brief pin input / output handle

tested on atmega328p
*/

#ifndef MLIB_IO_H
#define MLIB_IO_H

#include <avr/io.h>

#define F_CPU 16000000UL

/*!
\breif pin state check
\param pin - pin number
\param *pin_pin - pointer to PIN pin register, pass with reference
\return boolean - 1 if pin is set, 0 if pin is reset
*/
unsigned int is_pin(uint8_t pin, volatile uint8_t *pin_pin);

/*!
\brief pin registers initialization
\param pin - pin number
\param *pin_ddr - pointer to DDR pin register, pass with reference
\param *pin_port - pointer to PORT pin register, pass with reference
\param b_in_or_out - boolean, set 1 to declare as output, 0 to declare as input
\param b_def_state_or_pullup - boolean, set 1 to set default value as 1 or enable pullup, set 0 to def. value as 0 or disable pullup
\return void 
*/
void pin_init(uint8_t pin, volatile uint8_t *pin_ddr, volatile uint8_t *pin_port, unsigned int b_in_or_out, unsigned int b_def_state_or_pullup);

/*!
\brief change pin state
\param pin - pin number
\param *pin_port - pointer to PORT pin register, pass with reference
\param *pin_pin - pointer to PIN pin register, pass with reference
\param mode - state change mode, 0-reset, 1-set, 2-toggle
\return void
*/
void pin_set_state(uint8_t pin, volatile uint8_t *pin_port, volatile uint8_t *pin_pin, unsigned int mode);

#endif