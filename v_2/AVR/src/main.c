// midi-synth
// using MCP4726A0T-E/CH - Przetwornik C/A 12-bit SOT23-6 

#define F_CPU 1000000UL
#include <avr/io.h>

int main(void)
{
	uint8_t 

	I2C_start();
	I2C_write( );

	while(1)
	{

	}
}

void I2C_start(void){
     TWCR = (1<<TWINT) | (1<<TWEN) |( 1<<TWSTA);
     while (! (TWCR & (1<<TWINT)));
}

void I2C_stop(void){
    TWCR = (1<<TWINT) | (1<<TWEN) | (1<<TWSTO);
    while (! (TWCR & (1<<TWSTO)));
}

void I2C_write(uint8_t dane){
     TWDR = dane;
     TWCR = (1<<TWINT) | (1<<TWEN);
     while (! (TWCR & (1<<TWINT)));
}

uint8_t I2C_read(uint8_t ACK){
    TWCR = (1<<TWINT) | (ACK<<TWEA) | (1<<TWEN);
    while (! (TWCR & (1<<TWINT)));
    return TWDR;
}