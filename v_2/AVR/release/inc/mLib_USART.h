/*!
\file   mLib_USART.h
\author Maciej Mielcarski
\date   01.12.2018
\brief  serial communication via USART

        tested on: Atmega328p, Atmega32
*/

#ifndef MLIB_USART_H
#define MLIB_USART_H

#include <avr/io.h>

#define F_CPU 16000000UL
#define FOSC 16000000UL
#define BAUD 31250
#define MYUBRR FOSC/16/BAUD-1

#include <util/setbaud.h>

/*!
\brief  register initialization for USART
\param  ubrr - UBRR value
preferably calculated using MYUBRR macro
\return void
*/
void usart_init(unsigned int ubrr);

/*!
\brief  sending unsigned 8bit type over USART
\param  data - 8 bit value to send
\return void
*/
void usart_put_8bit(char data);

/*!
\brief  receiving unsigned 8bit type from USART
\return char type 8 bit value 
*/
uint8_t usart_get_8bit(void);

/*!
\brief  sending string over USART
\param  tab[] pointer to array with string to send
\return void
*/
void usart_putstring(char tab[]);

/*!
\brief  sending int type over USART
\param  value - 16 bit value to send
\return void
*/
void usart_put_16bit(int16_t value);

#endif