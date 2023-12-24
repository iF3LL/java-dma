//CAMPFIRE by RetroVision [NCS]

import ddf.minim.*;

Minim minim;
AudioPlayer song;

void setup(){
  size(300,250);
  background(90);
  
  minim = new Minim(this);
  song = minim.loadFile("Campfire.mp3");
//LOL.mp3,boing.mp3,Campfire.mp3
  song.play();
}

void draw(){
  background(180);
//^^^^This so it wipes everytime
  for(int i = 0; i < song.bufferSize() - 1; i++){
    float x1 = map(i, 0, song.bufferSize(), 0, width);
    float x2 = map(i + 1, 0, song.bufferSize(), 0, width);
    
    stroke(255);
//There are sound differences in the left and right earbuds
//Multipling by 50 magnifies so you can see the differences
    line(x1, 50 + song.left.get(i)*50, x2, 50 + song.left.get(i + 1)*50);
    line(x1, 150 + song.right.get(i)*50, x2, 150 + song.right.get(i + 1)*50);
    
    noStroke();
    fill(255, 255, 255, 2);
    rect(0, 0, song.left.level()*width, 100);
    rect(0, 100, song.right.level()*width, 100);
  }
}

void mousePressed(){
 if(song.isPlaying()){
   song.pause();
   noLoop();
  }
 else{
   song.play();
   loop();
  }
}
