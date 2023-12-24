//White button names: <Note><Octave No.>
//Black button names (Capital): <The note before><The note after><Octave No.>
//White mp3 names: <Note><Octave No.>
//Black mp3 names: <Note><Octave No.>x
PImage p;

import ddf.minim.*; 
import ddf.minim.ugens.*;
Minim minim;

import controlP5.*;
ControlP5 cp5;

AudioOutput xc3;
AudioOutput xd3;
AudioOutput xe3;
AudioOutput xf3;
AudioOutput xg3;
AudioOutput xa4;
AudioOutput xb4;
AudioOutput xc4;
AudioOutput xd4;
AudioOutput xe4;
AudioOutput xf4;
AudioOutput xg4;
AudioOutput xa5;
AudioOutput xb5;
AudioOutput xc5;
AudioOutput xd5;
AudioOutput xe5;
AudioOutput xf5;
AudioOutput xg5;
AudioOutput xa6;
AudioOutput xb6;
AudioOutput xc6;

AudioOutput xxc3;
AudioOutput xxd3;
AudioOutput xxe3;
AudioOutput xxf3;
AudioOutput xxg3;
AudioOutput xxa4;
AudioOutput xxb4;
AudioOutput xxc4;
AudioOutput xxd4;
AudioOutput xxe4;
AudioOutput xxf4;
AudioOutput xxg4;
AudioOutput xxa5;
AudioOutput xxb5;
AudioOutput xxc5;
AudioOutput xxd5;
AudioOutput xxe5;
AudioOutput xxf5;
AudioOutput xxg5;
AudioOutput xxa6;
AudioOutput xxb6;
AudioOutput xxc6;


void setup(){
  size(1382,280);
  background(0);

  minim = new Minim(this);

//Piano Keys
//White Keys_______________________________
  cp5 = new ControlP5(this);
  
  cp5.addButton("c3")
    .setBroadcast(false)
    .setColorBackground(color(255))
    .setValue(0)
    .setPosition(0, 0)
    .setSize(60, 280)
    .setBroadcast(true);
    
  cp5.addButton("d3")
    .setBroadcast(false)
    .setColorBackground(color(255))
    .setValue(0)
    .setPosition(62, 0)
    .setSize(60, 280)
    .setBroadcast(true);
    
  cp5.addButton("e3")
    .setBroadcast(false)
    .setColorBackground(color(255))
    .setValue(0)
    .setPosition(124, 0)
    .setSize(60, 280)
    .setBroadcast(true);
    
  cp5.addButton("f3")
    .setBroadcast(false)
    .setColorBackground(color(255))
    .setValue(0)
    .setPosition(186, 0)
    .setSize(60, 280)
    .setBroadcast(true);
    
  cp5.addButton("g3")
    .setBroadcast(false)
    .setColorBackground(color(255))
    .setValue(0)
    .setPosition(248, 0)
    .setSize(60, 280)
    .setBroadcast(true);
    
  cp5.addButton("a4")
    .setBroadcast(false)
    .setColorBackground(color(255))
    .setValue(0)
    .setPosition(310, 0)
    .setSize(60, 280)
    .setBroadcast(true);
    
  cp5.addButton("b4")
    .setBroadcast(false)
    .setColorBackground(color(255))
    .setValue(0)
    .setPosition(372, 0)
    .setSize(60, 280)
    .setBroadcast(true);
    
  cp5.addButton("c4")
    .setBroadcast(false)
    .setColorBackground(color(255))
    .setValue(0)
    .setPosition(434, 0)
    .setSize(60, 280)
    .setBroadcast(true);
    
  cp5.addButton("d4")
    .setBroadcast(false)
    .setColorBackground(color(255))
    .setValue(0)
    .setPosition(496, 0)
    .setSize(60, 280)
    .setBroadcast(true);
    
  cp5.addButton("e4")
    .setBroadcast(false)
    .setColorBackground(color(255))
    .setValue(0)
    .setPosition(558, 0)
    .setSize(60, 280)
    .setBroadcast(true);
    
  cp5.addButton("f4")
    .setBroadcast(false)
    .setColorBackground(color(255))
    .setValue(0)
    .setPosition(620, 0)
    .setSize(60, 280)
    .setBroadcast(true);
    
  cp5.addButton("g4")
    .setBroadcast(false)
    .setColorBackground(color(255))
    .setValue(0)
    .setPosition(682, 0)
    .setSize(60, 280)
    .setBroadcast(true);
    
  cp5.addButton("a5")
    .setBroadcast(false)
    .setColorBackground(color(255))
    .setValue(0)
    .setPosition(744, 0)
    .setSize(60, 280)
    .setBroadcast(true);
    
  cp5.addButton("b5")
    .setBroadcast(false)
    .setColorBackground(color(255))
    .setValue(0)
    .setPosition(806, 0)
    .setSize(60, 280)
    .setBroadcast(true);
    
  cp5.addButton("c5")
    .setBroadcast(false)
    .setColorBackground(color(255))
    .setValue(0)
    .setPosition(868, 0)
    .setSize(60, 280)
    .setBroadcast(true);
    
  cp5.addButton("d5")
    .setBroadcast(false)
    .setColorBackground(color(255))
    .setValue(0)
    .setPosition(930, 0)
    .setSize(60, 280)
    .setBroadcast(true);
    
  cp5.addButton("e5")
    .setBroadcast(false)
    .setColorBackground(color(255))
    .setValue(0)
    .setPosition(992, 0)
    .setSize(60, 280)
    .setBroadcast(true);
    
  cp5.addButton("f5")
    .setBroadcast(false)
    .setColorBackground(color(255))
    .setValue(0)
    .setPosition(1054, 0)
    .setSize(60, 280)
    .setBroadcast(true);
    
  cp5.addButton("g5")
    .setBroadcast(false)
    .setColorBackground(color(255))
    .setValue(0)
    .setPosition(1116, 0)
    .setSize(60, 280)
    .setBroadcast(true);
    
  cp5.addButton("a6")
    .setBroadcast(false)
    .setColorBackground(color(255))
    .setValue(0)
    .setPosition(1178, 0)
    .setSize(60, 280)
    .setBroadcast(true);
    
  cp5.addButton("b6")
    .setBroadcast(false)
    .setColorBackground(color(255))
    .setValue(0)
    .setPosition(1240, 0)
    .setSize(60, 280)
    .setBroadcast(true);
    
  cp5.addButton("c6")
    .setBroadcast(false)
    .setColorBackground(color(255))
    .setValue(0)
    .setPosition(1302, 0)
    .setSize(60, 280)
    .setBroadcast(true);
    
//Black Keys_______________________________
  cp5.addButton("CD3")
    .setBroadcast(false)
  //.setFont(createFont("calibri",12))
    .setColorBackground(color(0))
    .setValue(0)
    .setPosition(40, 0)
    .setSize(40, 170)
    .setBroadcast(true);
    
  cp5.addButton("DE3")
    .setBroadcast(false)
    .setColorBackground(color(0))
    .setValue(0)
    .setPosition(102, 0)
    .setSize(40, 170)
    .setBroadcast(true);
  
  cp5.addButton("FG3")
    .setBroadcast(false)
    .setColorBackground(color(0))
    .setValue(0)
    .setPosition(226, 0)
    .setSize(40, 170)
    .setBroadcast(true);
  
  cp5.addButton("GA3")
    .setBroadcast(false)
    .setColorBackground(color(0))
    .setValue(0)
    .setPosition(288, 0)
    .setSize(40, 170)
    .setBroadcast(true);
  
  cp5.addButton("AB4")
    .setBroadcast(false)
    .setColorBackground(color(0))
    .setValue(0)
    .setPosition(350, 0)
    .setSize(40, 170)
    .setBroadcast(true);
    
    cp5.addButton("CD4")
    .setBroadcast(false)
    .setColorBackground(color(0))
    .setValue(0)
    .setPosition(475, 0)
    .setSize(40, 170)
    .setBroadcast(true);
    
  cp5.addButton("DE4")
    .setBroadcast(false)
    .setColorBackground(color(0))
    .setValue(0)
    .setPosition(537, 0)
    .setSize(40, 170)
    .setBroadcast(true);
    
  cp5.addButton("FG4")
    .setBroadcast(false)
    .setColorBackground(color(0))
    .setValue(0)
    .setPosition(661, 0)
    .setSize(40, 170)
    .setBroadcast(true);
    
  cp5.addButton("GA4")
    .setBroadcast(false)
    .setColorBackground(color(0))
    .setValue(0)
    .setPosition(723, 0)
    .setSize(40, 170)
    .setBroadcast(true);
    
  cp5.addButton("AB5")
    .setBroadcast(false)
    .setColorBackground(color(0))
    .setValue(0)
    .setPosition(785, 0)
    .setSize(40, 170)
    .setBroadcast(true);
    
  cp5.addButton("CD5")
    .setBroadcast(false)
    .setColorBackground(color(0))
    .setValue(0)
    .setPosition(909, 0)
    .setSize(40, 170)
    .setBroadcast(true);
    
  cp5.addButton("DE5")
    .setBroadcast(false)
    .setColorBackground(color(0))
    .setValue(0)
    .setPosition(971, 0)
    .setSize(40, 170)
    .setBroadcast(true);
    
  cp5.addButton("FG5")
    .setBroadcast(false)
    .setColorBackground(color(0))
    .setValue(0)
    .setPosition(1093, 0)
    .setSize(40, 170)
    .setBroadcast(true);
    
  cp5.addButton("GA5")
    .setBroadcast(false)
    .setColorBackground(color(0))
    .setValue(0)
    .setPosition(1155, 0)
    .setSize(40, 170)
    .setBroadcast(true);
    
  cp5.addButton("AB6")
    .setBroadcast(false)
    .setColorBackground(color(0))
    .setValue(0)
    .setPosition(1217, 0)
    .setSize(40, 170)
    .setBroadcast(true);
    
  cp5.addButton("CD6")
    .setBroadcast(false)
    .setColorBackground(color(0))
    .setValue(0)
    .setPosition(1341, 0)
    .setSize(40, 170)
    .setBroadcast(true);  
}

void c3(){xc3 = minim.getLineOut(); xc3.playNote("C3"); xc3.resumeNotes();}
void d3(){xd3 = minim.getLineOut(); xd3.playNote("D3"); xd3.resumeNotes();}
void e3(){xe3 = minim.getLineOut(); xe3.playNote("E3"); xe3.resumeNotes();}
void f3(){xf3 = minim.getLineOut(); xf3.playNote("F3"); xf3.resumeNotes();}
void g3(){xg3 = minim.getLineOut(); xg3.playNote("G3"); xg3.resumeNotes();}
void a4(){xa4 = minim.getLineOut(); xa4.playNote("A3"); xa4.resumeNotes();}
void b4(){xb4 = minim.getLineOut(); xb4.playNote("B3"); xb4.resumeNotes();}
void c4(){xc4 = minim.getLineOut(); xc4.playNote("C4"); xc4.resumeNotes();}
void d4(){xd4 = minim.getLineOut(); xd4.playNote("D4"); xd4.resumeNotes();}
void e4(){xe4 = minim.getLineOut(); xe4.playNote("E4"); xe4.resumeNotes();}
void f4(){xf4 = minim.getLineOut(); xf4.playNote("F4"); xf4.resumeNotes();}
void g4(){xg4 = minim.getLineOut(); xg4.playNote("G4"); xg4.resumeNotes();}
void a5(){xa5 = minim.getLineOut(); xa5.playNote("A4"); xa5.resumeNotes();}
void b5(){xb5 = minim.getLineOut(); xb5.playNote("B4"); xb5.resumeNotes();}
void c5(){xc5 = minim.getLineOut(); xc5.playNote("C5"); xc5.resumeNotes();}
void d5(){xd5 = minim.getLineOut(); xd5.playNote("D5"); xd5.resumeNotes();}
void e5(){xe5 = minim.getLineOut(); xe5.playNote("E5"); xe5.resumeNotes();}
void f5(){xf5 = minim.getLineOut(); xf5.playNote("F5"); xf5.resumeNotes();}
void g5(){xg5 = minim.getLineOut(); xg5.playNote("G5"); xg5.resumeNotes();}
void a6(){xa6 = minim.getLineOut(); xa6.playNote("A5"); xa6.resumeNotes();}
void b6(){xb6 = minim.getLineOut(); xb6.playNote("B5"); xb6.resumeNotes();}
void c6(){xc6 = minim.getLineOut(); xc6.playNote("C6"); xc6.resumeNotes();}

void CD3(){xxc3 = minim.getLineOut(); xxc3.playNote("C#3"); xxc3.resumeNotes();}
void DE3(){xxd3 = minim.getLineOut(); xxd3.playNote("D#3"); xxd3.resumeNotes();}
void FG3(){xxf3 = minim.getLineOut(); xxf3.playNote("F#3"); xxf3.resumeNotes();}
void GA3(){xxg3 = minim.getLineOut(); xxg3.playNote("G#3"); xxg3.resumeNotes();}
void AB4(){xxa4 = minim.getLineOut(); xxa4.playNote("A#3"); xxa4.resumeNotes();}
void CD4(){xxc4 = minim.getLineOut(); xxc4.playNote("C#4"); xxc4.resumeNotes();}
void DE4(){xxd4 = minim.getLineOut(); xxd4.playNote("D#4"); xxd4.resumeNotes();}
void FG4(){xxf4 = minim.getLineOut(); xxf4.playNote("F#4"); xxf4.resumeNotes();}
void GA4(){xxg4 = minim.getLineOut(); xxg4.playNote("G#4"); xxg4.resumeNotes();}
void AB5(){xxa5 = minim.getLineOut(); xxa5.playNote("A#4"); xxa5.resumeNotes();}
void CD5(){xxc5 = minim.getLineOut(); xxc5.playNote("C#5"); xxc5.resumeNotes();}
void DE5(){xxd5 = minim.getLineOut(); xxd5.playNote("D#5"); xxd5.resumeNotes();}
void FG5(){xxf5 = minim.getLineOut(); xxf5.playNote("F#5"); xxf5.resumeNotes();}
void GA5(){xxg5 = minim.getLineOut(); xxg5.playNote("G#5"); xxg5.resumeNotes();}
void AB6(){xxa6 = minim.getLineOut(); xxa6.playNote("A#5"); xxa6.resumeNotes();}
void CD6(){xxc6 = minim.getLineOut(); xxc6.playNote("C#6"); xxc6.resumeNotes();}

void draw(){}
