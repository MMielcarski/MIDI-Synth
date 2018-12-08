#include "mLib_USART.h"

void usart_init(unsigned int ubrr)		
{
   UBRRH = (unsigned char)(ubrr>>8);	// set baud rate to 31250
   UBRRL = (unsigned char)ubrr;		//
   UCSRB = (1<<TXEN);		            // Enable transmitter 
   UCSRC = (1<<URSEL)|(1<<USBS)|(3<<UCSZ0);		// Set frame format: 8data, 2stop bit
}

void usart_put_8bit(char data) 
{
	while ( !(UCSRA & (1<<UDRE)) )	 
	;
    UDR = data;							
}

uint8_t usart_get_8bit(void) 
{
    loop_until_bit_is_set(UCSRA, RXC); 	
    return UDR;
}

void usart_putstring(char tab[])
{
	int character_number = 0;
	while (( UCSRA & (1<<UDRE))  == 0) {};
        while (tab[character_number] != 0x00)
		{ 
            usart_put_8bit(tab[character_number]);
			character_number++; 
        }
}

void usart_put_16bit(int16_t value)
{
	char tab[16];
	itoa(value,tab,10);
	usart_putstring(tab);
}