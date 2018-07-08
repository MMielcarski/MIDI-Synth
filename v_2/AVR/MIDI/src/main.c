// midi v2
// ATmega 328p

#include "aux.h"

int main(void)
{
    LCD_Initalize();
    ADC_init();

    int adc_read = 0;
    char adc_display[3];

	while(1)
	{
        adc_read = ADCW/100;    // oddly big value

        itoa(adc_read,adc_display,10);  // conversion from int to char array with number

        LCD_GoTo(0,0);
        LCD_WriteText(adc_display);
        //_delay_ms(10);

        //if(ADCW > 128)
        //LCD_WriteText("jadymy!");


        if(!(note_PIN & note_1))
        {
            LCD_GoTo(0,1);
            LCD_WriteText("button 1");
        }

        if(!(note_PIN & note_2))
        {
            LCD_GoTo(0,1);
            LCD_WriteText("button 2");
        }

	}
}
