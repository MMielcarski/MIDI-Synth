#define note_1 2
#define note_2 3
#define note_3 4
#define note_4 5
#define note_5 6
#define note_6 7

#define octave_1 12
#define octave_2 13

#define note_number 6
#define octave_number 2

  int note_tab[7] = {note_1,note_2,note_3,note_4,note_5,note_6};
  int octave_tab[3] = {octave_1, octave_2};

void setup() {
  
  pinMode(note_1,OUTPUT);
  pinMode(note_2,OUTPUT);
  pinMode(note_3,OUTPUT);
  pinMode(note_4,OUTPUT);
  pinMode(note_5,OUTPUT);
  pinMode(note_6,OUTPUT);
  
  pinMode(octave_1,INPUT);
  pinMode(octave_2,INPUT);
  
 for(int k=0;k<note_number;k++)
   digitalWrite(note_tab[k],LOW);
  
  Serial.begin(9600);

}

void loop() {
  
  for(int i=0; i<octave_number; i++)    // octaves iterator
  {
    //digitalWrite(octave_tab[i], HIGH);
    for(int j=0; j<note_number; j++)    // notes iterator
    {
      //delay(500);
      digitalWrite(note_tab[j], HIGH);
      if(digitalRead(octave_tab[i]))
      {
        Serial.println(j);
        Serial.println(" note ");
        Serial.println(i);
        Serial.println(" octave \n");
      }
      digitalWrite(note_tab[j], LOW);
    } 
    //digitalWrite(octave_tab[i], LOW);
  }
  
}
