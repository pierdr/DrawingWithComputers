import controlP5.*;
import processing.sound.*;


ControlP5 cp5;



TriOsc triOsc;
Env env;

// Times and levels for the ASR envelope
float attackTime = 0.1;//0.001;
float sustainTime = 0.004;
float sustainLevel = 0.3;
float releaseTime = 0.2;

// This is an octave in MIDI notes.
int[] midiSequence = { 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72 };

// Play a new note every 200ms
int duration = 200;

// This variable stores the point in time when the next note should be triggered
int trigger = millis();

// An index to count up the notes
int note = 0;

void setup() {
  size(640, 360);
  background(255);
  
  cp5 = new ControlP5(this);
  cp5.addSlider("attackTime")
   .setPosition(10,10)
   .setRange(0.001,2.0)
   ;
   cp5.addSlider("sustainTime")
   .setPosition(10,20)
   .setRange(0.001,0.5)
   ;
   cp5.addSlider("sustainLevel")
   .setPosition(10,30)
   .setRange(0.001,2.0)
   ;
   cp5.addSlider("releaseTime")
   .setPosition(10,40)
   .setRange(0.001,2.0)
   ;
   cp5.addSlider("duration")
   .setPosition(10,50)
   .setRange(200,2000)
   ;
  // Create triangle wave and start it
  triOsc = new TriOsc(this);

  // Create the envelope
  env = new Env(this);
}

void draw() {
  background(0);
  // If the determined trigger moment in time matches up with the computer clock and
  // the sequence of notes hasn't been finished yet, the next note gets played.
  if ((millis() > trigger) && (note<midiSequence.length)) {

    // midiToFreq transforms the MIDI value into a frequency in Hz which we use to
    // control the triangle oscillator with an amplitute of 0.5
    triOsc.play(midiToFreq(midiSequence[note]), 0.5);

    // The envelope gets triggered with the oscillator as input and the times and
    // levels we defined earlier
    env.play(triOsc, attackTime, sustainTime, sustainLevel, releaseTime);

    // Create the new trigger according to predefined duration
    trigger = millis() + duration;

    // Advance by one note in the midiSequence;
    note++;

    // Loop the sequence, notice the jitter
    if (note == 12) {
      note = 0;
    }
  }
}

// This helper function calculates the respective frequency of a MIDI note
float midiToFreq(int note) {
  return (pow(2, ((note-69)/12.0))) * 440;
}
