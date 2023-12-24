import processing.video.*;

Capture video;

void setup(){
  size(500,500);
  video = new Capture(this,320,240);
  //video = new Capture(this,Capture.list()[cameranumber]);
  video.start();
//This lists cameras below
  printArray(Capture.list());
}

void draw(){
  if(video.available()){
    video.read();
  }
  
  image(video,10,15);
}
