#include <Wire.h>


#define COLS 12
#define ROWS 4
#define prog_napiecia 15


#define NOTE_ON_CMD 0x90
#define NOTE_OFF_CMD 0x80
#define NOTE_VELOCITY 127

#define MIDI_CC_MODULATION 0x01
#define MIDI_CC_VOLUME 0x07

bool klaw [COLS][ROWS];
int kolpins [COLS] = {2,3,4,5,6,7,8,9,10,11,12,13};
uint8_t keyToMidiMap[ROWS][COLS];

void noteOn(int row, int col)
{
  Serial.write(NOTE_ON_CMD);
  Serial.write(keyToMidiMap[row][col]);
  Serial.write(NOTE_VELOCITY);
}

void noteOff(int row, int col)
{
  Serial.write(NOTE_OFF_CMD);
  Serial.write(keyToMidiMap[row][col]);
  Serial.write(NOTE_VELOCITY);
}

      // ANALOG:
int analogueDiff = 0;
boolean analogueInputChanging;

void setup() {

  analogueInputChanging = false;
  int note = 36; //24

  for(int rowCtr = 0; rowCtr < ROWS; rowCtr++)
  {
    for(int colCtr = 0; colCtr < COLS; colCtr++)
    {
      klaw[colCtr][rowCtr]   = false;
      keyToMidiMap[rowCtr][colCtr] = note;
      note++;
    }
  }

  pinMode(0,OUTPUT);
  pinMode(2,OUTPUT);
  pinMode(3,OUTPUT);
  pinMode(4,OUTPUT);
  pinMode(5,OUTPUT);
  pinMode(6,OUTPUT);
  pinMode(7,OUTPUT);
  pinMode(8,OUTPUT);
  pinMode(9,OUTPUT);
  pinMode(10,OUTPUT);
  pinMode(11,OUTPUT);
  pinMode(12,OUTPUT);
  pinMode(13,OUTPUT);
  
  digitalWrite(0,LOW); 
  digitalWrite(2,LOW);
  digitalWrite(3,LOW);
  digitalWrite(4,LOW);
  digitalWrite(5,LOW);
  digitalWrite(6,LOW);
  digitalWrite(7,LOW);
  digitalWrite(8,LOW);
  digitalWrite(9,LOW);
  digitalWrite(10,LOW);
  digitalWrite(11,LOW);
  digitalWrite(12,LOW);
  digitalWrite(13,LOW);
  
  Serial.begin(31250);

}

  int val = 0;  
  
void loop() {

for(int i = 0; i< COLS;i++)
  {
    digitalWrite(kolpins[i],HIGH);

      for(int j = 0;j<ROWS;j++)      // pressed
        {
          val = analogRead(j);
          
          if(val > prog_napiecia && klaw[i][j] == false) 
          {
 
            klaw[i][j] = true;

            noteOn(j,i);   
          }
        }

      for(int j = 0;j<ROWS;j++)      //released
        {
          val = analogRead(j);
          
          if(val < prog_napiecia && klaw[i][j] == true) 
          {

            klaw[i][j] = false;

            noteOff(j,i);     
          }
        }
      
    digitalWrite(kolpins[i],LOW);
    
  }

}


