#include <Arduino.h>
#include <MIDI.h>

#define size(X) sizeof(X) / sizeof(*X)

#define KEYS_CHANNEL 1
#define KEYS_OFFSET 48
#define KEYS_ON_VELOCITY 127
#define KEYS_OFF_VELOCITY 0

#define OCTAVE_0A A3
#define OCTAVE_0B A4
#define OCTAVE_1A 7
#define OCTAVE_1B A5
#define OCTAVE_2A 2
#define OCTAVE_2B 3
#define OCTAVE_3A 4
#define OCTAVE_3B 5
#define OCTAVE_4A 6
#define NOTE_0 13
#define NOTE_1 12
#define NOTE_2 11
#define NOTE_3 10
#define NOTE_4 9
#define NOTE_5 8

int notes[] = {
    NOTE_0,
    NOTE_1,
    NOTE_2,
    NOTE_3,
    NOTE_4,
    NOTE_5};

int octaves[] = {
    OCTAVE_0A,
    OCTAVE_0B,
    OCTAVE_1A,
    OCTAVE_1B,
    OCTAVE_2A,
    OCTAVE_2B,
    OCTAVE_3A,
    OCTAVE_3B,
    OCTAVE_4A};

struct MySettings : public midi::DefaultSettings
{
  static const unsigned BaudRate = 115200;
};

MIDI_CREATE_CUSTOM_INSTANCE(HardwareSerial, Serial, MIDI, MySettings);

int pressedKeys[56];

void setup()
{
  for (int i = 0; i < size(notes); i++)
  {
    int note = notes[i];
    pinMode(note, OUTPUT);
    digitalWrite(note, HIGH);
  }

  for (int i = 0; i < size(octaves); i++)
    pinMode(octaves[i], INPUT_PULLUP);

  for (int i = 0; i < size(pressedKeys); i++)
    pressedKeys[i] = LOW;

  MIDI.begin(1);
  Serial.begin(115200);
}

void loop()
{
  readKeys();
  delay(100);
}

void readKeys()
{
  for (int i = 0; i < size(notes); i++)
  {
    int note = notes[i];
    digitalWrite(note, LOW);

    for (int j = 0; j < size(octaves); j++)
    {
      int octave = octaves[j];
      int index = (j * (size(notes) - 1)) + i;

      int prevValue = pressedKeys[index];
      int value = digitalRead(octave);

      if (value != prevValue)
      {
        sendMidiNote(index, value);
        pressedKeys[index] = value;
      }
    }
    digitalWrite(note, HIGH);
  }
}

void sendMidiNote(int note, int value)
{
  if (value == LOW)
    MIDI.sendNoteOn(note + KEYS_OFFSET, KEYS_ON_VELOCITY, KEYS_CHANNEL);
  if (value == HIGH)
    MIDI.sendNoteOff(note + KEYS_OFFSET, KEYS_OFF_VELOCITY, KEYS_CHANNEL);

  delay(10);
}
