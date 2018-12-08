#include "MIDI_v2.h"

int main(void)
{
	midi_reg_init();
	timer_init(TIMER_1_PSC,TIMER_1_PERIOD_MS);
	usart_init(MYUBRR);
	adc_init();

	while(1)
	{
		
	}
}

ISR(TIMER1_COMPA_vect)	// timer1 overflow interrupt
{
	midi_keyboard_scan();

	midi_button_control(UNDEF_1, 1, BUTTON1);
	midi_button_control(UNDEF_2, 1, BUTTON2);
	midi_button_control(UNDEF_3, 1, BUTTON3);
	midi_button_control(UNDEF_4, 1, BUTTON4);

	midi_pot_control(GEN_PURP_CTRL_1_CMD, ADC0);	// slide pot 1
	midi_pot_control(GEN_PURP_CTRL_2_CMD, ADC1);	// slide pot 2
	midi_pot_control(GEN_PURP_CTRL_3_CMD, ADC2);	// knob pot 1	
	midi_pot_control(GEN_PURP_CTRL_4_CMD, ADC3);	// knob pot 2
	midi_pot_control(UNDEF_5, ADC4);				// knob pot 3
	midi_pot_control(UNDEF_6, ADC5);				// knob pot 4
	midi_pot_control(UNDEF_7, ADC6);				// joystick pot 1
	midi_pot_control(UNDEF_8, ADC7);				// joystick pot 2
}