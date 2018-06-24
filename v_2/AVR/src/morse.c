#include "morse.h"

extern int encoderCount = 0;		// encoder turns
extern uint8_t val=0;				// encoder gray code reading
extern int asciiNum = 0;			// current character as ascii value
extern int wpmSpeed = 10;			// broadcast speed value in WPM
char lcdIntBuffer[4] = {};			// buffer for displaying integers on lcd

extern char userInput[30] = {};		// message in ascii typed by user				
int morseInput[30] ={};				// message in binary from userInput

int morseDecode[30] = {};			// message in binary typed by user to decode		
char encodedMessage[30] = {};		// message in ascii from morseDecode

extern volatile uint16_t Timer1=0, Timer2=0;	// timers for long button push
int lcdPos = 0;						//l cd cursor position and message length
extern int flag = 0;				//

const uint8_t waitTime = 2;			// timer wait time in sec
int btnFlag = 0;					// encoder button pressed/released flag
int encoderTmp = 0;					// actual encoder reading to compare

const int morseTable[37][7] = {		// morse code array
  {0, 1, 2},		//a
  {1, 0, 0, 0, 2},	//b
  {1, 0, 1, 0, 2},	//c
  {1, 0, 0, 2},		//d
  {0, 2},			//e
  {0, 0, 1, 0, 2},	//f
  {1, 0, 0, 2},		//g
  {0, 0, 0, 0, 2},	//h
  {0, 0, 2},		//i
  {0, 1, 1, 1, 2},	//j
  {1, 0, 1, 2},		//k
  {0, 1, 0, 0, 2},	//l
  {1, 1, 2},		//m
  {1, 0, 2},		//n
  {1, 1, 1, 2},		//o
  {0, 1, 1, 0, 2},	//p
  {1, 1, 0, 1, 2},	//q
  {0, 1, 0, 2},		//r
  {0, 0, 0, 2},		//s
  {1, 2},			//t
  {0, 0, 1, 2},		//u
  {0, 1, 1, 2},		//w
  {0, 0, 0, 1, 2},	//v
  {1, 0, 0, 1, 2},	//x
  {1, 0, 1, 2},		//y
  {1, 1, 0, 0, 2},	//z
  {0, 1, 1, 1, 1, 2},//1
  {0, 0, 1, 1, 1, 2},//2
  {0, 0, 0, 1, 1, 2},//3
  {0, 0, 0, 0, 1, 2},//4
  {0, 0, 0, 0, 0, 2},//5
  {1, 0, 0, 0, 0, 2},//6
  {1, 1, 0, 0, 0, 2},//7
  {1, 1, 1, 0, 0, 2},//8
  {1, 1, 1, 1, 0, 2},//9
  {1, 1, 1, 1, 1, 2}//0
  //0 - dot, 1 - dash, 2 - end
};

void initializeSetup (void)		//initializing registers
{
	 MCUCSR = (1<<JTD);			//disabling JTAG
	 MCUCSR = (1<<JTD);			//

	TCCR2 |= (1<<WGM21);						//work mode CTC
	TCCR2 |= (1<<CS22)|(1<<CS21)|(1<<CS20);		//prescaler = 1024
	OCR2  = 4;				//comparison interrupt every 10ms (100Hz)
	TIMSK = (1<<OCIE2);		//interrupt unlock CompareMatch

		DDRA &=~ (1 << ENC_A);		// encoder pins as input
		DDRA &=~ (1 << ENC_B);		//
		PORTA |= (1 << ENC_B)		// with pull-up enabled
				|(1 << ENC_A);		//

		DDRC |= (1<<LED);			//signal LED as output
		DDRA |= (0<<ENC_BTN);		//encoder button pin as input

		DDRC |= (0<<SW_1);	//switch 1 as input
		DDRC |= (0<<SW_2);	//switch 2 as input

	LCD_Initalize();		//LCD initializaion
	val = readEncoder();	//first encoder value reading
	sei();					//timers enabled
}

int dial(void)
{
	if(btnFlag == 0)
	{
		asciiNum = encoderCount+97;					//encoder counter into characters
		if(asciiNum < 97) 	encoderCount = 25;		//only letters available
		if(asciiNum > 122)	encoderCount = 0;		//

		LCD_GoTo(lcdPos,0);
		LCD_WriteData(asciiNum);	//letter selection
		LCD_GoTo(lcdPos,1);
		LCD_WriteData(94);			//cursor pointer
	}

	/*if(!(PINC & 0x02) && !(PINC & 0x04))	//dial mode exit when 
	{										//both switches pressed
		LCD_Clear();
		return 1;
	}*/

	if (!(PINA & 0x08) && btnFlag == 0)		//encoder button push
	{
		Timer1 = (waitTime*1000)/10;		//timer set
		btnFlag = 1;						//button pressed flag
	}
	else if((PINA & 0x08) && btnFlag == 1)	//encoder button release
	{
		userInput[lcdPos] = asciiNum;	//writing selected character 
		lcdPos++;						// to the memory
		delay_ms(100);
		encoderCount = 0;		//encoder counter back to 'a'
		LCD_clearLine(1);
		btnFlag = 0;			//button released flag
		Timer1 = 0;				//timer reset
	}
	else if(!(PINA & 0x08) && btnFlag == 1 && !Timer1)	//encoder button long press
	{
		LCD_Clear();
		userInput[lcdPos] = 'E';	//indicating the end of message
		for(int i=0;i<lcdPos;i++)	//message display on scnd line
		{
			LCD_GoTo(i,1);
			LCD_WriteData(userInput[i]);
		}

		//LCD_WriteData(lcdPos+48);	//message length display
		btnFlag = 0;			//button released flag
		delay_ms(1000);
		broadcast((2400/wpmSpeed),lcdPos);	//broadcatsing message at arg1 speed - pause between elements - dot length
											// and of arg2 length
		delay_ms(700);
		btnFlag = 2;			//end of transmission
	}
	else if(btnFlag == 2)
	{
		LCD_Home();
		LCD_WriteText("powtorz?");
		LCD_GoTo(0,1);
		LCD_WriteText("T   N   ");
		if(!(PINC & 0x02))		//SW 1
		{
			LCD_Clear();
			delay_ms(500);
			broadcast((2400/wpmSpeed),lcdPos);
		}
		else if(!(PINC & 0x04))	//SW 2
		{
			lcdPos = 0;
			btnFlag = 0;
			return 1;
		}


	}
return 0;
}

void broadcast(int period,int length)
{
	int symbolSpace = period;
	int dashSpace = period*3;
	int charSpace = period*3;
	int wordSpace = period*7;

	int pos=0;
	
	for(int i=0;i<length;i++)
	{
		int j=0;
		while(morseTable[userInput[i]-97][j] != 2)
		{
			LCD_GoTo(pos,0);
			if(morseTable[userInput[i]-97][j] == 0)	//1-dot (in table 0-dot)
			{										//dot
				LCD_WriteData('1');
				morseInput[pos] = 1;
				blinkLed(period,symbolSpace);
			}
			else if(morseTable[userInput[i]-97][j] == 1)	
			{										//dash
				LCD_WriteData('0');
				morseInput[pos] = 0;
				blinkLed(dashSpace,symbolSpace);
			}
			j++;
			pos++;
		}
		delay_ms(charSpace - period);	//one period is left after last blink operation
	}
	morseInput[pos] = 2;		//end of message transcripted to morse
}

int setWpmSpeed()		//change of the wpm speed
{
	wpmSpeed = encoderCount;
	itoa(wpmSpeed,lcdIntBuffer,10);		//conversion from int to array od chars for display		
												//	^--- zapisac w przewodniku
	LCD_Home();
	LCD_WriteText("WPM:    ");
	LCD_GoTo(0,1);
	LCD_WriteText(lcdIntBuffer);
	
	if(isButton())
	{
		encoderCount = 0;
		delay_ms(600);
		return 1;
	}
	return 0;
}

void messageDisplay()	// display message in morse at first line
{						// and in ascii at second line
	LCD_clearLine(0);
	LCD_clearLine(1);
	
	if(userInput[0] < 97 || userInput[0] > 122)
	{								// if input beyond ascii alphabet range
		LCD_Home();					// - error
		LCD_WriteText("brak");
		LCD_GoTo(0,1);
		LCD_WriteText("danych");
		return;
	}

	int j = 0;
	while(morseInput[j] != 2)	// read and display message in morse 
	{							// tab content until '2'
		LCD_GoTo(j,0);
		LCD_WriteData(morseInput[j]+48);
		j++;
	}
	int k = 0;
	while(userInput[k] != 'E')	// read and display message in ascii
	{							// tab content until 'E'
		LCD_GoTo(k,1);
		LCD_WriteData(userInput[k]);
		k++;
	}
}

void LCD_move(char dir)			// move contents of the screen in the direction of dir
{
	if(dir =='L')				// move content to right
	{
		LCD_WriteCommand(HD44780_DISPLAY_CURSOR_SHIFT|HD44780_SHIFT_DISPLAY|HD44780_SHIFT_RIGHT);
		LCD_WriteCommand(HD44780_DISPLAY_ONOFF | HD44780_DISPLAY_ON | HD44780_CURSOR_OFF | HD44780_CURSOR_NOBLINK);
		delay_ms(20);
	}
	else if(dir =='R')			// move content to left
	{
		LCD_WriteCommand(HD44780_DISPLAY_CURSOR_SHIFT|HD44780_SHIFT_DISPLAY|HD44780_SHIFT_LEFT);
		LCD_WriteCommand(HD44780_DISPLAY_ONOFF | HD44780_DISPLAY_ON | HD44780_CURSOR_OFF | HD44780_CURSOR_NOBLINK);
		delay_ms(20);
	}
}

void LCD_moveMode()			// move contents of the screen using sw 1 and 2
{
	if (!(PINC & 0x02))			//1 button push (SW 1) - text to the left
	{
		delay_ms(100);
		LCD_move('R');
	}

	if (!(PINC & 0x04))		//2 button push (SW 2) - text to the right
	{
		delay_ms(100);
		LCD_move('L');
	}
}

void blinkLed(int on, int off)	// turn on the led for 
{								//'on' and off for 'off' milisecondds
	PORTC |= (1<<LED);
	delay_ms(on);
	PORTC &= ~(1<<LED);
	delay_ms(off);
}

void delay_ms( int ms)			// delay error workaround for linux
{
	volatile long unsigned int i;
	for(i=0;i<ms;i++)
		_delay_ms(1);
}

void LCD_clearLine(int nr)		// clear line 'nr' 
{
		LCD_GoTo(0,nr);
		LCD_WriteText("        ");
}

int isButton()				//checks if encoder button is pressed
{
	if(!(PINA & 0x08))
		return 1;
	else
		return 0;
}

uint8_t readEncoder(void)	//reads the gray code from encoder
{
 uint8_t val=0;

  if(!bit_is_clear(PINA, ENC_B))
	val |= (1<<1);

  if(!bit_is_clear(PINA, ENC_A))
	val |= (1<<0);

  return val;
}

void readEncoderCounter ()		//monitoring encoder counter 
{								//increase or decrease 
	uint8_t val_tmp = 0;						
	val_tmp = readEncoder();			

	if(val != val_tmp)
	{
		if((val==3 && val_tmp==1))
			{
			encoderCount ++;	//clockwise turn
			}
		else if((val==2 && val_tmp==0))
			{
			encoderCount --;	//counter-clockwise turn
			}
		val = val_tmp;
		}
	delay_ms(1);
}

ISR(TIMER2_COMP_vect)	//interrupt handle 
{
	uint16_t n;

	n = Timer1;		//100Hz Timer1
	if (n) Timer1 = --n;
	n = Timer2;		//100Hz Timer2
	if (n) Timer2 = --n;
}
