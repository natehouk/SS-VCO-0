#include <MozziGuts.h>
#include <Oscil.h>

#include <tables/saw8192_int8.h>
#include <tables/smoothsquare8192_int8.h>

#include <mozzi_midi.h>

Oscil<SAW8192_NUM_CELLS, AUDIO_RATE> oscOne(SAW8192_DATA);
Oscil<SMOOTHSQUARE8192_NUM_CELLS, AUDIO_RATE> oscTwo(SMOOTHSQUARE8192_DATA);

const int OSC_ONE_PIN = 0;
const int OSC_TWO_PIN = 1;
float gain = .5;
const float DIV1023 = 1.0 / 1023.0; // division constant for pot value range
const float DIV10 = 1.0 / 10.0;     // division constant for division by 10
int sequence = 0;               // current sequence playing
int note = 0;                   // current note playing
const int numSequences = 21;    // total number of sequences (must match number of sequences in NOTES array)
const int numNotes = 8;         // total number of notes in each sequence (must all be the same and match length of each sequence in NOTES)
// global control params
int OSC_ONE_OFFSET = 12;      // amount to offset the original midi note (12 is one octave)
int OSC_TWO_OFFSET = 2;       // amount to offset the second midi note from the osc one's midi note (5 is a fifth, two is a second, etc)

// sequences of midi notes to play back
// add new sequences or modify existing ones to suit
// just make sure you update the numSequences and numNotes variables above to match what you've done
const int NOTES[numSequences][numNotes] = {
  {36, 48, 36, 48, 36, 48, 36, 48},             // up on two
  {36, 36, 36, 36, 36, 36, 36, 36},             // flat quarters
  {36, 36, 36, 48, 36, 36, 36, 48},             // up on four
  {36, 36, 48, 42, 36, 36, 36, 48},             // dum da dum
  {48, 48, 36, 48, 48, 36, 48, 36},             // two up one down
  {36, 48, 36, 48, 36, 48, 36, 48},             // up down
  {36, 36, 48, 36, 36, 48, 36, 48},             // up on three
  {36, 37, 38, 39, 40, 41, 42, 43},             // chromatic up
  {43, 42, 41, 40, 39, 38, 37, 36},             // chromatic down
  {36, 38, 39, 41, 43, 44, 46, 48},             // major up
  {48, 46, 44, 43, 41, 39, 38, 36},             // major down
  {36, 38, 40, 43, 45, 48, 50, 52},             // natural minor up
  {52, 50, 48, 45, 43, 40, 38, 36},             // natural minor down
  {36, 39, 41, 42, 43, 46, 48, 51},             // major pentatonic up
  {51, 48, 46, 43, 42, 41, 39, 36},             // major pentatonic down
  {36, 39, 41, 42, 43, 46, 48, 51},             // blues up
  {51, 48, 46, 43, 42, 41, 39, 36},             // blues down
  {36, 40, 34, 45, 48, 39, 38, 46},             // random one
  {36, 38, 35, 45, 37, 43, 50, 41},             // random two
  {36, 46, 44, 37, 48, 35, 42, 45},             // random three
  {36, 44, 48, 38, 39, 43, 44, 38}              // random four
};

void setup() {
  startMozzi(CONTROL_RATE);
  oscOne.setFreq(10);
  oscTwo.setFreq(550);
}

void loop() {
  audioHook();
}

int updateAudio() {
  return ((oscOne.next()+oscTwo.next())*gain);
}

void updateControl() {
  int oscOne_val = mozziAnalogRead(OSC_ONE_PIN);
  int oscTwo_val = mozziAnalogRead(OSC_TWO_PIN);
  int oscOne_offset = (OSC_ONE_OFFSET * 2) * ((oscOne_val * DIV1023) - 0.5);              // offset of original midi note number +/- 1 octave
  float oscTwo_offset = ((oscTwo_val * DIV1023) * DIV10) * OSC_TWO_OFFSET;                // frequency offset for second oscillator +/- 0.2 oscOne freq
  float noteOne = mtof(NOTES[sequence][note] + oscOne_offset);      // osc one's freq = note plus any offset from user
  float noteTwo = noteOne + oscTwo_offset;                          // osc two's freq = osc one's freq plus user offset
  oscOne.setFreq(noteOne);
  oscTwo.setFreq(noteTwo);
}
