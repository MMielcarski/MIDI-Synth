// device: 	AtMega 32
// author:  Maciej Mielcarski

#define F_CPU 16000000UL
#include <avr/io.h>
#define FOSC 16000000UL
#define BAUD 9600
#define MYUBRR FOSC/16/BAUD-1	// ubrr = 103	normal asynch. mode
#include <util/setbaud.h>

#define note1 PD0 
#define note2 PD2 //
#define note3 PD3 //
#define note4 PD4 //
#define note5 PD5 //
#define note6 PD6 //
#define note7 PD7 //
#define note8 PC2 
#define note9 PC3 
#define note10 PC4 
#define note11 PC5 
#define note12 PC6 
#define note13 PC7 

#define octave1 PB4 
#define octave2 PB5 
#define octave3 PB6 
#define octave4 PB7 

int NOTES_tab[13] = {note1,note2,note3,note4,note5,note6,note7,note8,note9,note10,note11,note12,note13};
int OCTAVES_tab[4] = {octave1,octave2,octave3,octave4};
int PRESSED_BUTTON_tab[13][4]={0};

void PORT_Init()
{
	DDRD = 0xFF;
	DDRC = 0xFF;
}

void USART_Init(unsigned int ubrr)		
{
   UBRRH = (unsigned char)(ubrr>>8);	// set baud rate to 9600
   UBRRL = (unsigned char)ubrr;		//
   UCSRB = (1<<RXEN)|(1<<TXEN);		// Enable receiver and transmitter 
   UCSRC = (1<<URSEL)|(1<<USBS)|(3<<UCSZ0);		// Set frame format: 8data, 2stop bit
}

void uart_putchar(char c) 
{
	while ( !(UCSRA & (1<<UDRE)) )	// Wait for empty transmit buffer 
	;
    UDR = c;							// Put data into buffer, sends the data 
}

char uart_getchar(void) {
    loop_until_bit_is_set(UCSRA, RXC); 	// Wait until data exists
    return UDR;
}

void uart_putstring(char tab[])
{
	int i =0;
	while (( UCSRA & (1<<UDRE))  == 0){};
        while (tab[i] != 0x00)
		{ 
            uart_putchar(tab[i]);
			i++; 
        }
}

void uart_putint(int value)
{
	char tab[16];
	itoa(value,tab,10);
	uart_putstring(tab);
}

void note_on(int key, int oct)
{
	uart_putchar('N');
	uart_putchar('-');
	uart_putint(key);
	uart_putchar('O');
	uart_putchar('-');
	uart_putint(oct);
}

void note_off(int key, int oct)
{

}

int main(void)
{
	PORT_Init();
	USART_Init(MYUBRR);
	//int zm = 107;
	//LED_1_DDR |= (1<<LED_1_PIN);					// led pin set as output
	PORTD = 0xFF;
	PORTC = 0xFF;
	while(1)
	{
		/*
		for(int i=0; i<13; i++)		// notes loop
		{
			if(i <= 7)	// PORTD
			{
				PORTD |= (1<<NOTES_tab[i]);
				//if(PIND & (1<<NOTES_tab[j]))
			}
			else		// PORTC
			{
				PORTC |= (1<<NOTES_tab[i]);
			}

			for(int j=0; j<4; j++)		// octaves loop
			{
				if( PINB & (1<<OCTAVES_tab[j]) && !(PRESSED_BUTTON_tab[NOTES_tab[i]][OCTAVES_tab[j]]) )
				{
					PRESSED_BUTTON_tab[NOTES_tab[i]][OCTAVES_tab[j]] = 1;
					note_on(NOTES_tab[i],OCTAVES_tab[j]);
				}
				else if( !(PINB & (1<<OCTAVES_tab[j])) && PRESSED_BUTTON_tab[NOTES_tab[i]][OCTAVES_tab[j]] )
				{
					PRESSED_BUTTON_tab[NOTES_tab[i]][OCTAVES_tab[j]] = 0;
					note_off(NOTES_tab[i],OCTAVES_tab[j]);
				}
			}
			
			if(i <= 7)	// PORTD
			{
				PORTD &= ~(1<<NOTES_tab[i]);
				//if(PIND & (1<<NOTES_tab[j]))
			}
			else		// PORT C
			{
				PORTC &= ~(1<<NOTES_tab[i]);
			}
		}*/

		//uart_putchar('D');
			uart_putchar(PINB);
			//uart_putchar(PINC);
		//uart_putchar('C');
			//uart_putchar(PINC);
		//uart_putchar('B');
			//uart_putchar(PINB);

		//uart_putint(zm);
		//uart_putchar(0x18);
		//uart_putchar(0x21);
		 //Toggle_LED();
		 //delay_ms(1000);
	}
}
