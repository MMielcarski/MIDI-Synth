#include <MIDI.h>
#include <MozziGuts.h>
#include <Oscil.h> // oscillator template
#include <Line.h> // for envelope
#include <mozzi_midi.h>
#include <ADSR.h>
#include <mozzi_fixmath.h>
#include <tables/sin2048_int8.h> // sine table for oscillator
#include <tables/saw2048_int8.h> // saw table for oscillator
#include <tables/triangle2048_int8.h> // triangle table for oscillator
#include <tables/square_no_alias_2048_int8.h> // square table for oscillator

// set the arduino digital pins to use (tested on arduino nano atmega328)
#define WAVE_SWITCH 2
#define SINE_WAVE_LED 5
#define TRIANGLE_WAVE_LED 6
#define SAW_WAVE_LED 7
#define SQUARE_WAVE_LED 8
#define LED 13

// set other constants
#define CONTROL_RATE 64 // low to save processor

#define ATTACK 50 // long enough for control rate to catch it
#define DECAY 50
#define SUSTAIN 60000 // Sustain 60 seconds unless a noteOff comes.
#define RELEASE 200
// higher resolution for smoother envelopes
#define ATTACK_LEVEL 255
#define DECAY_LEVEL 255


// declare with or without a wavetable, and use setTable() later
Oscil <2048, AUDIO_RATE> oscil1; 
Oscil <2048, AUDIO_RATE> oscil2; 
Oscil <2048, AUDIO_RATE> oscil3; 
Oscil <2048, AUDIO_RATE> oscil4; 
Oscil <2048, AUDIO_RATE> oscil5; 
Oscil <2048, AUDIO_RATE> oscil6; 

// envelope generators
// requires latest Mozzi (April 2014), enables envelope.next() at control rate, using latest version of Mozzi
// use: ADSR <unsigned int CONTROL_UPDATE_RATE, unsigned int LERP_RATE> envName;
ADSR <CONTROL_RATE, CONTROL_RATE> envelope1;
ADSR <CONTROL_RATE, CONTROL_RATE> envelope2;
ADSR <CONTROL_RATE, CONTROL_RATE> envelope3;
ADSR <CONTROL_RATE, CONTROL_RATE> envelope4;
ADSR <CONTROL_RATE, CONTROL_RATE> envelope5;
ADSR <CONTROL_RATE, CONTROL_RATE> envelope6;

// notes
byte note1=0;
byte note2=0;
byte note3=0;
byte note4=0;
byte note5=0;
byte note6=0;

// gains to carry control rate envelope levels from updateControl() to updateAudio()
byte gain1,gain2,gain3,gain4,gain5,gain6 = 0;

// wave type control
boolean waveLatchOn=false; // acts as a semaphore to handle button push/release actions, to avoid looping
byte waveNumber=1; // defines selected wave type

void HandleNoteOn(byte channel, byte note, byte velocity) { 
  // made for a keyboard where noteoff is expressed as velocity==0
  // finds the calling note, shuts it off and sets it to 0, meaning it's available
  if (velocity == 0)
  {
    if(note==note1){
      envelope1.noteOff();
      note1=0;
    }
    else if(note==note2){
      envelope2.noteOff();
      note2=0;
    }
    else if(note==note3){
      envelope3.noteOff();
      note3=0;
    }
    else if(note==note4){
      envelope4.noteOff();
      note4=0;
    }
    else if(note==note5){
      envelope5.noteOff();
      note5=0;
    }
    else if(note==note6){
      envelope6.noteOff();
      note6=0;
    }
  }
  else // finds the next available note (if any), starts it and assigns the calling note to corresponding oscillators
  {
    if(note1==0){
      note1=note;
      oscil1.setFreq_Q16n16(Q16n16_mtof(Q8n0_to_Q16n16(note)));
      envelope1.noteOn();
    }
    else if(note2==0){
      note2=note;
      oscil2.setFreq_Q16n16(Q16n16_mtof(Q8n0_to_Q16n16(note)));
      envelope2.noteOn();
    }
    else if(note3==0){
      note3=note;
      oscil3.setFreq_Q16n16(Q16n16_mtof(Q8n0_to_Q16n16(note)));
      envelope3.noteOn();
    }
    else if(note4==0){
      note4=note;
      oscil4.setFreq_Q16n16(Q16n16_mtof(Q8n0_to_Q16n16(note)));
      envelope4.noteOn();
    }
    else if(note5==0){
      note5=note;
      oscil5.setFreq_Q16n16(Q16n16_mtof(Q8n0_to_Q16n16(note)));
      envelope5.noteOn();
    }
    else if(note6==0){
      note6=note;
      oscil6.setFreq_Q16n16(Q16n16_mtof(Q8n0_to_Q16n16(note)));
      envelope6.noteOn();
    }
  }
  if(note1+note2+note3+note4+note5+note6==0){
    digitalWrite(LED,LOW); // no notes playing
  }
  else{
    digitalWrite(LED,HIGH); // at least one note is playing
  }

}


void setup() {

  pinMode(LED, OUTPUT); // set led to indicate playing note(s)
  pinMode(WAVE_SWITCH, INPUT); // receives input from pushbutton to select wave type

  // set correspondigng led to indicate selected wave type
  pinMode(SINE_WAVE_LED, OUTPUT);
  pinMode(TRIANGLE_WAVE_LED, OUTPUT);
  pinMode(SAW_WAVE_LED, OUTPUT);
  pinMode(SQUARE_WAVE_LED, OUTPUT);

  // Initiate MIDI communications, listen to all channels
  MIDI.begin(MIDI_CHANNEL_OMNI);    

  // Connect the HandleNoteOn function to the library, so it is called upon reception of a NoteOn.
  MIDI.setHandleNoteOn(HandleNoteOn);  // Put only the name of the function

  envelope1.setADLevels(ATTACK_LEVEL,DECAY_LEVEL);
  envelope1.setTimes(ATTACK,DECAY,SUSTAIN,RELEASE); 
  envelope2.setADLevels(ATTACK_LEVEL,DECAY_LEVEL);
  envelope2.setTimes(ATTACK,DECAY,SUSTAIN,RELEASE); 
  envelope3.setADLevels(ATTACK_LEVEL,DECAY_LEVEL);
  envelope3.setTimes(ATTACK,DECAY,SUSTAIN,RELEASE); 
  envelope4.setADLevels(ATTACK_LEVEL,DECAY_LEVEL);
  envelope4.setTimes(ATTACK,DECAY,SUSTAIN,RELEASE);  
  envelope5.setADLevels(ATTACK_LEVEL,DECAY_LEVEL);
  envelope5.setTimes(ATTACK,DECAY,SUSTAIN,RELEASE); 
  envelope6.setADLevels(ATTACK_LEVEL,DECAY_LEVEL);
  envelope6.setTimes(ATTACK,DECAY,SUSTAIN,RELEASE);  

  setWave(waveNumber);

  startMozzi(CONTROL_RATE); 
}


void setWave(byte wav_num) { // good practice to use local parameters to avoid global confusion
  static byte wave_indicator_led = 1; // static so value persists between calls
  // light the corresponding led, according to selected wave type
  digitalWrite(wave_indicator_led, LOW);
  // switch/case is faster thsan if/else
  switch (wav_num) {
  case 1:
    wave_indicator_led = SINE_WAVE_LED;
    oscil1.setTable(SIN2048_DATA);
    oscil2.setTable(SIN2048_DATA);
    oscil3.setTable(SIN2048_DATA);
    oscil4.setTable(SIN2048_DATA);
    oscil5.setTable(SIN2048_DATA);
    oscil6.setTable(SIN2048_DATA);
    break;
  case 2:
    wave_indicator_led = TRIANGLE_WAVE_LED;
    oscil1.setTable(TRIANGLE2048_DATA);
    oscil2.setTable(TRIANGLE2048_DATA);
    oscil3.setTable(TRIANGLE2048_DATA);
    oscil4.setTable(TRIANGLE2048_DATA);
    oscil5.setTable(TRIANGLE2048_DATA);
    oscil6.setTable(TRIANGLE2048_DATA);
    break;
  case 3:
    wave_indicator_led = SAW_WAVE_LED;
    oscil1.setTable(SAW2048_DATA);
    oscil2.setTable(SAW2048_DATA);
    oscil3.setTable(SAW2048_DATA);
    oscil4.setTable(SAW2048_DATA);
    oscil5.setTable(SAW2048_DATA);
    oscil6.setTable(SAW2048_DATA);
    break;
  case 4:
    wave_indicator_led = SQUARE_WAVE_LED;
    oscil1.setTable(SQUARE_NO_ALIAS_2048_DATA);
    oscil2.setTable(SQUARE_NO_ALIAS_2048_DATA);
    oscil3.setTable(SQUARE_NO_ALIAS_2048_DATA);
    oscil4.setTable(SQUARE_NO_ALIAS_2048_DATA);
    oscil5.setTable(SQUARE_NO_ALIAS_2048_DATA);
    oscil6.setTable(SQUARE_NO_ALIAS_2048_DATA);
    break;
  }
  digitalWrite(wave_indicator_led, HIGH);
}


void updateControl(){
  MIDI.read();
  boolean switch_pos = digitalRead(WAVE_SWITCH);
  // sets the next wave type upon button push action
  if(switch_pos==HIGH && waveLatchOn==false){
    if(++waveNumber>4) waveNumber=1;
    setWave(waveNumber);
    waveLatchOn=true;
  }
  else if(switch_pos==LOW && waveLatchOn==true){
    waveLatchOn=false; // release latch after button release action allowing new push action
  }

  envelope1.update();
  envelope2.update();
  envelope3.update();
  envelope4.update();
  envelope5.update();
  envelope6.update();

  gain1 = envelope1.next();
  gain2 = envelope2.next();
  gain3 = envelope3.next();
  gain4 = envelope4.next();
  gain5 = envelope5.next();
  gain6 = envelope6.next();
}


int updateAudio(){
  return ((long)gain1 * oscil1.next() + 
    (int)gain2 * oscil2.next() + 
    (int)gain3 * oscil3.next() + 
    (int)gain4 * oscil4.next() +
    (int)gain5 * oscil5.next() + 
    (int)gain6 * oscil6.next()) >> 6;
}


void loop() {
  audioHook(); // required here
} 








