/*! 
\file mLib_Interrupts.h
\author Maciej Mielcarski
\date 02.12.2018
\brief external and timer interrupts handle

tested on atmega328p
*/

#ifndef MLIB_INTERRUPTS_H
#define MLIB_INTERRUPTS_H

#include <avr/interrupt.h>
#include <util/delay.h>

#define F_CPU 16000000UL
#define TIMER_1_PERIOD_MS 10
#define TIMER_1_PSC 1024

/*!
\brief external interrupt initialization on specified pin
\param intrr_pin - interrupt pin
\param intrr_ddr - interrupt pin DDR register
\param intrr_port - interrupt pin PORT register
\return void
*/
void ext_intrr_init(uint8_t intrr_pin, uint8_t intrr_ddr, uint8_t intrr_port);

/*!
\brief  delay workaround for high period values
\param  period - inaccurate delay period [ms]
\return void
*/
void delay_ms(unsigned int period);		

/*!
\brief  register initialization for Timer
\param prescaler - prescaler value defined in register initialization
\param period - desired period between interrupts [ms]
\return void
*/
void timer_init(uint16_t prescaler, uint16_t period);

#endif