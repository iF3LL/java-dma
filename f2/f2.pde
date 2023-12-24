int rand = 0;
import ddf.minim.*;

Minim minim;
AudioPlayer song;

void setup(){
  size(340,320);
  background(0);
  noStroke();
  fill(255);
  
  minim = new Minim(this);
  song = minim.loadFile("Campfire.mp3");
//LOL.mp3,boing.mp3,Campfire.mp3
  song.play();
}

void draw(){
  fill(0, 0, 0, 10);
  rect(0, 0, width, height);
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(frameCount/2 % 360));
  
  int buffSize = song.bufferSize();
  
  for(int i = 0; i <= buffSize-(buffSize/16); i += (buffSize/16)){
    randomSeed(i+rand);
    fill(random(255), random(255), random(255));
    float size = (song.mix.get(i)+1)*185;
    float start = map(i, 0, buffSize, 0, 2*PI);
    float stop = map(i+(buffSize/16), 0, buffSize, 0, 2*PI);
    
    arc(0, 0, size, size, start, stop);
  }
  
  if(song.mix.level() > 0.3){
    rand++;
    fill(random(255), random(255), random(255));
  }
  popMatrix();
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
