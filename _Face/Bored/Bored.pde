import ddf.minim.*;

Minim minim;
AudioPlayer song;

int angle = 0;

void face(int x,int y, int newAngle){
 pushMatrix();
 translate(x,y);
 rotate(radians(newAngle));
//Color!
//% = modulus
 float cValue = map(angle % 360,0,360,0,255);
 fill(cValue);
//_____^Wow so ez!
 rect(3,3,40,40); //Head
 rect(10,11,10,10); //Left Eye
 rect(28,13,8,8); //Right Eye
 rect(13,29,20,6); //Mouth
//(x,y,sizeX,sizeY)
 popMatrix();
}

void setup(){
//setup = page setup
  size(550,120);
  background(165);
//This color is greyscale
minim = new Minim(this);
  song = minim.loadFile("Campfire.mp3");
//LOL.mp3,boing.mp3,Campfire.mp3
  song.play();
  
//for = forward
  for(int i = 10; i < width; i = i +50){
    face(i,20,angle);
  }
}

//draw = repeat/loop
void draw(){
  frameRate(80);
  angle++;
  
  background(165);
//^^^^^^^^^^^^^^^^Remove this for wierd trail
  for(int i = 10; i < width; i = i +50){
    face(i,20,angle); 
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
