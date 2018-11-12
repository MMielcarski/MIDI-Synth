// device: 	AtMega 32
// author:  Maciej Mielcarski
// Midi v2

#define F_CPU 16000000UL
#include <avr/io.h>
#include <avr/interrupt.h>
#define FOSC 16000000UL
#define BAUD 31250
#define MYUBRR FOSC/16/BAUD-1	// ubrr = 31	normal asynch. mode
#include <util/setbaud.h>
#define TIM1_PSC 1024		// TIMER 1 prescaler value
#define TIM1_PER 100		// TIMER 1 desired period in miliseconds

#define NOTE_ON_CMD 0x90
#define NOTE_OFF_CMD 0x80

#define VEL_DEF_CMD		0x40	// default 64 velocity

#define note1 PD0 
#define note2 PD2 
#define note3 PD3 
#define note4 PD4 
#define note5 PD5 
#define note6 PD6 
#define note7 PD7 
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

int adc_0 = 0, adc_1=0, adc_6=0;

// ------------------------- TIMER ----------------------------------------

void TIM1_Init()	// enable interrupts
{
    OCR1A = (((F_CPU/1000) / TIM1_PSC) * TIM1_PER) - 1;	// counter size
    TCCR1B |= (1 << WGM12);							// Mode 4, CTC on OCR1A
    TIMSK |= (1 << OCIE1A);						// Set interrupt on compare match	
    TCCR1B |= (1 << CS12) | (1 << CS10);			// set prescaler to 1024 and start the timer
    sei();	
}

// ------------------------- USART ----------------------------------------

void USART_Init(unsigned int ubrr)		
{
   UBRRH = (unsigned char)(ubrr>>8);	// set baud rate to 31250
   UBRRL = (unsigned char)ubrr;		//
   UCSRB = (1<<TXEN);		// Enable transmitter 
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

// ------------------------- ADC ----------------------------------------

void ADC_Init()
{
	ADCSRA |= (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0); // Set ADC prescaler to 128 - 125KHz sample rate @ 16MHz
	ADMUX |= (1 << REFS0); 	// Set ADC reference to AVCC
	
	ADCSRA |= (1 << ADEN);  // Enable ADC
	//ADCSRA |= (1 << ADSC);  // Start A2D Conversions
	//ADCSRA |= (1 << ADATE);	// for free running mode
}

uint16_t ADC_read(uint8_t channel)		
{
	channel &= 0x07;					// AND operation with 7 (will keep channel between 0-7) 
	ADMUX = (ADMUX & 0xF8) | channel;	// clears 3 first bits before OR

	ADCSRA |= (1 << ADSC);				// start single convesrion
	while(ADCSRA & (1 << ADSC));		// wait for conversion to complete
	return ADCW;
}

// ------------------------- OTHER ----------------------------------------



void PORT_Init()
{
	MCUCSR = (1<<JTD);			//disabling JTAG
	MCUCSR = (1<<JTD);			//
	DDRD = 0xFF;
	DDRC = 0xFF;
}

void note_on(int key, int oct)
{
	uart_putchar(NOTE_ON_CMD);		// note on
	uart_putchar(key + oct * 12);
	uart_putchar(VEL_DEF_CMD);
}

void note_off(int key, int oct)
{
	uart_putchar(NOTE_OFF_CMD);		// note off
	uart_putchar(key + oct * 12);
	uart_putchar(VEL_DEF_CMD);
}

ISR(TIMER1_COMPA_vect)	// timer1 overflow interrupt
{
	// ------- MIDI test ------

	// ------- ADC test -------
	// adc_0 = ADC_read(0);
	// uart_putstring("\nADC0:");
	// uart_putint(adc_0);
	// //uart_putchar('K');

	//adc_1 = ADC_read(1);
	//uart_putstring("\nADC1:");
	//uart_putint(adc_1);

	// adc_6 = ADC_read(6);
	// uart_putstring("\nADC6:");
	// uart_putint(adc_6);
}

// ------------------------- MAIN ----------------------------------------

int main(void)
{
	USART_Init(MYUBRR);
	PORT_Init();
	ADC_Init();
	TIM1_Init();

	while(1)
	{
		// ------- ADC test -------
		//adc_1 = ADC_read(6);
		//uart_putstring("\nADC1:")
		//uart_putint(adc_1);

		// ----- keyboard handle -> working without last key --------

		for(int i=0; i<13; i++)		// notes loop
		{
			if(i < 7)	// PORTD
			{
				PORTD |= (1<<NOTES_tab[i]);
			}
			else		// PORTC
			{
				PORTC |= (1<<NOTES_tab[i]);
			}

			// if(i == 12)		// last key case
			// {
			// 	if(PINC & (1<<NOTES_tab[12]) && !(PRESSED_BUTTON_tab[12][0]) )
			// 	{
			// 		PRESSED_BUTTON_tab[12][0] = 1;
			// 		note_on(12,0);
			// 	}
			// 	else if( !(PINC & (1<<NOTES_tab[12])) && PRESSED_BUTTON_tab[12][0])
			// 	{
			// 		PRESSED_BUTTON_tab[12][0] = 0;
			// 		note_off(12,0);
			// 	}
			// }

			for(int j=0; j<4; j++)		// octaves loop
			{
				if( PINB & (1<<OCTAVES_tab[j]) && !(PRESSED_BUTTON_tab[i][j]) )
				{
					PRESSED_BUTTON_tab[i][j] = 1;
					note_on(i,j);
				}
				else if( !(PINB & (1<<OCTAVES_tab[j])) && PRESSED_BUTTON_tab[i][j] )
				{
					PRESSED_BUTTON_tab[i][j] = 0;
					note_off(i,j);
				}
			}
			
			if(i < 7)	// PORTD
			{
				PORTD &= ~(1<<NOTES_tab[i]);
			}
			else		// PORT C
			{
				PORTC &= ~(1<<NOTES_tab[i]);
			}
		}
	}
}
