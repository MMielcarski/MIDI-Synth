#include "MIDI_v2.h"

unsigned int notes_pin_tab[13] = {NOTE1,NOTE2,NOTE3,NOTE4,NOTE5,NOTE6,NOTE7,NOTE8,NOTE9,NOTE10,NOTE11,NOTE12,NOTE13};
unsigned int octaves_pin_tab[4] = {OCTAVE1,OCTAVE2,OCTAVE3,OCTAVE4};
unsigned int key_state_tab[13][4]={0};

unsigned int buttons_pin_tab = {BUTTON1, BUTTON2, BUTTON3, BUTTON4};
unsigned int buttons_state_tab[4] = {};
unsigned int buttons_toggle_tab[4] = {};

unsigned int adc_actual_read[8] = {};
unsigned int adc_prev_read[8] = {};	

const float ema_a = 0.6;
unsigned int ema[8] = {};
unsigned int ema_prev[8] = {};

int octave_change_global = 3;

void midi_reg_init(void)
{
	MCUCSR = (1<<JTD);			//disabling JTAG
	MCUCSR = (1<<JTD);			//
	DDRD = 0xFF;
	DDRC = 0xFF;
	
	PORTB |= (1<<BUTTON1)|(1<<BUTTON2)|(1<<BUTTON3)|(1<<BUTTON4);	// pull-up on buttons
}

void midi_note_on(unsigned int key, unsigned int oct, unsigned int octave_change)
{
	usart_put_8bit(NOTE_ON_CMD);		
	usart_put_8bit(key + (oct+octave_change) * 12);
	usart_put_8bit(VEL_DEF_CMD);
}

void midi_note_off(unsigned int key, unsigned int oct, unsigned int octave_change)
{
	usart_put_8bit(NOTE_OFF_CMD);		
	usart_put_8bit(key + (oct+octave_change) * 12);
	usart_put_8bit(VEL_DEF_CMD);
}

void midi_cc(uint8_t data1, uint8_t data2)
{
	usart_put_8bit(CC_CMD);
	usart_put_8bit(data1);		
	usart_put_8bit(data2);
}

void midi_button_control(uint8_t cc_data1, uint8_t cc_data2, unsigned int button_pin)
{
	if( !(is_pin(button_pin, &BUTTON_PIN_PORT)) && (!(buttons_state_tab[button_pin])) )
	{
		buttons_state_tab[button_pin] = 1;
		
		if(buttons_toggle_tab[button_pin])
		{
			buttons_toggle_tab[button_pin] = 0;
			midi_cc(cc_data1, CC_OFF_VAL);
		}
		else
		{
			buttons_toggle_tab[button_pin] = 1;
			midi_cc(cc_data1, CC_ON_VAL);
		}	
	}
	else if(is_pin(button_pin, &BUTTON_PIN_PORT))
	{
		buttons_state_tab[button_pin] = 0;
	}
}

void midi_pot_control(uint8_t control_cmd,  unsigned int channel)
{
	adc_prev_read[channel] = adc_actual_read[channel];
	unsigned int adc_sum = 0;

	for(unsigned int adc_i=0;adc_i<16;adc_i++)
	{
		adc_sum += adc_read(channel);
	}
	adc_actual_read[channel] = adc_sum/16;

	uint8_t adc_7bit = (adc_actual_read[channel] >> 3);
	uint8_t adc_prev_7bit = (adc_prev_read[channel] >> 3);

	if((unsigned int)adc_7bit != (unsigned int)adc_prev_7bit)
	{
		ema_prev[channel] = ema[channel];
		ema[channel] = (ema_a*adc_7bit) + (1-ema_a)*adc_prev_7bit;

		if(ema[channel] != ema_prev[channel])
		{
			midi_cc(control_cmd, ema[channel]);
		}
	}
}

void midi_keyboard_scan(void)
{
	for(int i=0; i<13; i++)		// notes loop
	{
		if(i < 7)	// PORTD
		{
			PORTD |= (1<<notes_pin_tab[i]);
		}
		else		// PORTC
		{
			PORTC |= (1<<notes_pin_tab[i]);
		}

		for(int j=0; j<4; j++)		// octaves loop
		{
			if( PINB & (1<<octaves_pin_tab[j]) && !(key_state_tab[i][j]) )
			{
				key_state_tab[i][j] = 1;
				midi_note_on(i,j,octave_change_global);
			}
			else if( !(PINB & (1<<octaves_pin_tab[j])) && key_state_tab[i][j] )
			{
				key_state_tab[i][j] = 0;
				midi_note_off(i,j,octave_change_global);
			}
		}
		
		if(i < 7)	// PORTD
		{
			PORTD &= ~(1<<notes_pin_tab[i]);
		}
		else		// PORT C
		{
			PORTC &= ~(1<<notes_pin_tab[i]);
		}
	}
}