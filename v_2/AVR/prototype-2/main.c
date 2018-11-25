// device: 	AtMega 32
// author:  Maciej Mielcarski
// Midi v2

#define F_CPU 16000000UL
#include <avr/io.h>
#include <avr/interrupt.h>
//#define BAUD 9600 
#define BAUD 31250
#define MYUBRR F_CPU/16/BAUD-1	// ubrr = 31(MIDI) 113(9600) normal asynch. mode
#include <util/setbaud.h>
#define TIM1_PSC 1024		// TIMER 1 prescaler value
#define TIM1_PER 10		// TIMER 1 desired period in miliseconds

#define NOTE_ON_CMD 0x90
#define NOTE_OFF_CMD 0x80
#define CC_CMD 0xB0

#define PITCH_BEND_CMD 0xE0
#define MODULATION_WHEEL_CMD 0x01
#define BREATH_CONTROLLER_CMD 0x02
#define MAIN_VOLUME_CMD 0x07	
#define GEN_PURP_CTRL_1_CMD 0x10
#define GEN_PURP_CTRL_2_CMD 0x11
#define GEN_PURP_CTRL_3_CMD 0x12
#define GEN_PURP_CTRL_4_CMD 0x13

#define SOUND_CTRL_6_DECAY_CMD 0x4B

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

#define button_pin_port PINB 
#define button1 PB0
#define button2 PB1
#define button3 PB2
#define button4 PB3

int NOTES_tab[13] = {note1,note2,note3,note4,note5,note6,note7,note8,note9,note10,note11,note12,note13};
int OCTAVES_tab[4] = {octave1,octave2,octave3,octave4};
int PRESSED_KEY_tab[13][4]={0};

int BUTTON_tab = {button1, button2, button3, button4};
int PRESSED_BUTTON_tab[4] = {};

int adc_read[8] = {};
int adc_prev_read[8] = {};	

const float EMA_a = 0.6;
int EMA[8] = {};
int EMA_prev[8] = {};

int octave_change = 3;

// ------------------------- TIMER ----------------------------------------
void TIM1_Init(void)	// enable interrupts
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
void ADC_Init(void)
{
	ADCSRA |= (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0); // Set ADC prescaler to 128 - 125KHz sample rate @ 16MHz
	ADMUX |= (1 << REFS0); 	// Set ADC reference to AVCC
	ADCSRA |= (1 << ADEN);  // Enable ADC
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

void PORT_Init(void)
{
	MCUCSR = (1<<JTD);			//disabling JTAG
	MCUCSR = (1<<JTD);			//
	DDRD = 0xFF;
	DDRC = 0xFF;
	
	PORTB |= (1<<button1)|(1<<button2)|(1<<button3)|(1<<button4);	// pull-up on buttons
}

void note_on(int key, int oct)
{
	uart_putchar(NOTE_ON_CMD);		// note on
	uart_putchar(key + (oct+octave_change) * 12);
	uart_putchar(VEL_DEF_CMD);
}

void note_off(int key, int oct)
{
	uart_putchar(NOTE_OFF_CMD);		// note off
	uart_putchar(key + (oct+octave_change) * 12);
	uart_putchar(VEL_DEF_CMD);
}

int button_pressed(int pin_port, int pin)
{
	if(!(pin_port & (1<<pin)) )
		return 1;
	else 
		return 0;
}

void CC_send_BUTTON(uint8_t data1, uint8_t data2, int button_pin)
{
	if(button_pressed(button_pin_port,button_pin) && !(PRESSED_BUTTON_tab[button_pin]))
	{
		PRESSED_BUTTON_tab[button_pin] = 1;
		uart_putchar(CC_CMD);
		uart_putchar(data1);		
		uart_putchar(data2);
	}
	else if(!(button_pressed(button_pin_port,button_pin)))
	{
		PRESSED_BUTTON_tab[button_pin] = 0;
	}
}

void CC_send_ADC(uint8_t control_num,  unsigned int channel)
{
	adc_prev_read[channel] = adc_read[channel];
	int adc_sum = 0;
	for(int i=0;i<16;i++)
	{
		adc_sum += ADC_read(channel);
	}
	adc_read[channel] = adc_sum/16;

	uint8_t adc_7bit = (adc_read[channel] >> 3);
	uint8_t adc_prev_7bit = (adc_prev_read[channel] >> 3);

	if((int)adc_7bit != (int)adc_prev_7bit)
	{
		EMA_prev[channel] = EMA[channel];
		EMA[channel] = (EMA_a*adc_7bit) + (1-EMA_a)*adc_prev_7bit;
		if(EMA[channel] != EMA_prev[channel])
		{
			uart_putchar(CC_CMD);
			uart_putchar(control_num);
			uart_putchar(EMA[channel]);
		}
	}
}

ISR(TIMER1_COMPA_vect)	// timer1 overflow interrupt
{
		CC_send_BUTTON(5,6,button1);	// todo: tab with pin numbers
		CC_send_BUTTON(7,6,button2);
		CC_send_BUTTON(8,6,button3);
		CC_send_BUTTON(9,6,button4);

	// octave change:
	/*if(button_pressed(button_pin_port,button3) && !(PRESSED_BUTTON_tab[button3]))
	{
		octave_change++;
	}
	else if(!(button_pressed(button_pin_port,button3)))
	{
		PRESSED_BUTTON_tab[button3] = 0;
	}

	if(button_pressed(button_pin_port,button4) && !(PRESSED_BUTTON_tab[button4]))
	{
		if(octave_change > 0)
		octave_change--;
	}
	else if(!(button_pressed(button_pin_port,button4)))
	{
		PRESSED_BUTTON_tab[button4] = 0;
	}*/

		CC_send_ADC(MAIN_VOLUME_CMD, 0);	// slide 1
		CC_send_ADC(SOUND_CTRL_6_DECAY_CMD, 1);	// slide 2
		CC_send_ADC(GEN_PURP_CTRL_1_CMD, 2);	// knob 1 
		CC_send_ADC(GEN_PURP_CTRL_2_CMD, 3);	// knob 2
		CC_send_ADC(GEN_PURP_CTRL_3_CMD, 4);	// knob 3
		CC_send_ADC(GEN_PURP_CTRL_4_CMD, 5);	// knob 4		
		CC_send_ADC(MODULATION_WHEEL_CMD, 6);	// joystick 1	
		CC_send_ADC(BREATH_CONTROLLER_CMD, 7);	// joystick 2	

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
			// 	if(PINC & (1<<NOTES_tab[12]) && !(PRESSED_KEY_tab[12][0]) )
			// 	{
			// 		PRESSED_KEY_tab[12][0] = 1;
			// 		note_on(12,0);
			// 	}
			// 	else if( !(PINC & (1<<NOTES_tab[12])) && PRESSED_KEY_tab[12][0])
			// 	{
			// 		PRESSED_KEY_tab[12][0] = 0;
			// 		note_off(12,0);
			// 	}
			// }

			for(int j=0; j<4; j++)		// octaves loop
			{
				if( PINB & (1<<OCTAVES_tab[j]) && !(PRESSED_KEY_tab[i][j]) )
				{
					PRESSED_KEY_tab[i][j] = 1;
					note_on(i,j);
				}
				else if( !(PINB & (1<<OCTAVES_tab[j])) && PRESSED_KEY_tab[i][j] )
				{
					PRESSED_KEY_tab[i][j] = 0;
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

// ------------------------- MAIN ----------------------------------------

int main(void)
{
	USART_Init(MYUBRR);
	PORT_Init();
	ADC_Init();
	TIM1_Init();

	while(1)
	{

	}
}
