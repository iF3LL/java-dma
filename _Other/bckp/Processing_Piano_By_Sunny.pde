//White button names: <Note><Octave No.>
//Black button names (Capital): <The note before><The note after><Octave No.>
//White mp3 names: <Note><Octave No.>
//Black mp3 names: <Note><Octave No.>x
PImage p;

import ddf.minim.*; 
import ddf.minim.ugens.*;
Minim minim;
AudioOutput out;
AudioPlayer songc3;
AudioPlayer songd3;
AudioPlayer songe3;
AudioPlayer songf3;
AudioPlayer songg3;
AudioPlayer songa4;
AudioPlayer songb4;
AudioPlayer songc4;
AudioPlayer songd4;
AudioPlayer songe4;
AudioPlayer songf4;
AudioPlayer songg4;
AudioPlayer songa5;
AudioPlayer songb5;
AudioPlayer songc5;
AudioPlayer songd5;
AudioPlayer songe5;
AudioPlayer songf5;
AudioPlayer songg5;
AudioPlayer songa6;
AudioPlayer songb6;
AudioPlayer songc6;

AudioPlayer songc3x;
AudioPlayer songd3x;
AudioPlayer songe3x;
AudioPlayer songf3x;
AudioPlayer songg3x;
AudioPlayer songa4x;
AudioPlayer songb4x;
AudioPlayer songc4x;
AudioPlayer songd4x;
AudioPlayer songe4x;
AudioPlayer songf4x;
AudioPlayer songg4x;
AudioPlayer songa5x;
AudioPlayer songb5x;
AudioPlayer songc5x;
AudioPlayer songd5x;
AudioPlayer songe5x;
AudioPlayer songf5x;
AudioPlayer songg5x;
AudioPlayer songa6x;
AudioPlayer songb6x;
AudioPlayer songc6x;

import controlP5.*;
ControlP5 cp5;

void c3(){songc3.play();}
void d3(){songd3.play();}
void e3(){songe3.play();}
void f3(){songf3.play();}
void g3(){songg3.play();}
void a4(){songa4.play();}
void b4(){songb4.play();}
void c4(){songc4.play();}
void d4(){songd4.play();}
void e4(){songe4.play();}
void f4(){songf4.play();}
void g4(){songg4.play();}
void a5(){songa5.play();}
void b5(){songb5.play();}
void c5(){songc5.play();}
void d5(){songd5.play();}
void e5(){songe5.play();}
void f5(){songf5.play();}
void g5(){songg5.play();}
void a6(){songa6.play();}
void b6(){songb6.play();}
void c6(){songc6.play();}

void c3x(){songc3x.play();}
void d3x(){songd3x.play();}
void e3x(){songe3x.play();}
void f3x(){songf3x.play();}
void g3x(){songg3x.play();}
void a4x(){songa4x.play();}
void b4x(){songb4x.play();}
void c4x(){songc4x.play();}
void d4x(){songd4x.play();}
void e4x(){songe4x.play();}
void f4x(){songf4x.play();}
void g4x(){songg4x.play();}
void a5x(){songa5x.play();}
void b5x(){songb5x.play();}
void c5x(){songc5x.play();}
void d5x(){songd5x.play();}
void e5x(){songe5x.play();}
void f5x(){songf5x.play();}
void g5x(){songg5x.play();}
void a6x(){songa6x.play();}
void b6x(){songb6x.play();}
void c6x(){songc6x.play();}

void setup(){
  size(1382,280);
  background(0);

  minim = new Minim(this);

  songc3 = minim.loadFile("c3.mp3");
  songd3 = minim.loadFile("d3.mp3");
  songe3 = minim.loadFile("e3.mp3");
  songf3 = minim.loadFile("f3.mp3");
  songg3 = minim.loadFile("g3.mp3");
  songa4 = minim.loadFile("a4.mp3");
  songb4 = minim.loadFile("b4.mp3");
  songc4 = minim.loadFile("c4.mp3");
  songd4 = minim.loadFile("d4.mp3");
  songe4 = minim.loadFile("e4.mp3");
  songf4 = minim.loadFile("f4.mp3");
  songg4 = minim.loadFile("g4.mp3");
  songa5 = minim.loadFile("a5.mp3");
  songb5 = minim.loadFile("b5.mp3");
  songc5 = minim.loadFile("c5.mp3");
  songd5 = minim.loadFile("d5.mp3");
  songe5 = minim.loadFile("e5.mp3");
  songf5 = minim.loadFile("f5.mp3");
  songg5 = minim.loadFile("g5.mp3");
  songa6 = minim.loadFile("a6.mp3");
  songb6 = minim.loadFile("b6.mp3");
  songc6 = minim.loadFile("c6.mp3");
  
  songc3x = minim.loadFile("c3x.mp3");
  songd3x = minim.loadFile("d3x.mp3");
  songe3x = minim.loadFile("e3x.mp3");
  songf3x = minim.loadFile("f3x.mp3");
  songg3x = minim.loadFile("g3x.mp3");
  songa4x = minim.loadFile("a4x.mp3");
  songb4x = minim.loadFile("b4x.mp3");
  songc4x = minim.loadFile("c4x.mp3");
  songd4x = minim.loadFile("d4x.mp3");
  songe4x = minim.loadFile("e4x.mp3");
  songf4x = minim.loadFile("f4x.mp3");
  songg4x = minim.loadFile("g4x.mp3");
  songa5x = minim.loadFile("a5x.mp3");
  songb5x = minim.loadFile("b5x.mp3");
  songc5x = minim.loadFile("c5x.mp3");
  songd5x = minim.loadFile("d5x.mp3");
  songe5x = minim.loadFile("e5x.mp3");
  songf5x = minim.loadFile("f5x.mp3");
  songg5x = minim.loadFile("g5x.mp3");
  songa6x = minim.loadFile("a6x.mp3");
  songb6x = minim.loadFile("b6x.mp3");
  songc6x = minim.loadFile("c6x.mp3");
  
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
    
    out = minim.getLineOut();
    out.playNote("G5");
    out.resumeNotes();
}

void draw(){
  
}
