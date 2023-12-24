import controlP5.*;

PImage p;

ControlP5 cp5;

void setup(){
  noStroke();
  size(600,550);
  background(40);
  p = loadImage("ototo.jpeg");
  cp5 = new ControlP5(this);
  
  cp5.addButton("bu2")
    .setBroadcast(false)
    .setValue(0)
    .setPosition(30, 40)
    .setSize(308, 235)
    .setImage(p)
    .setBroadcast(true);
    
  cp5.addButton("wutrudoin")
    .setBroadcast(false)
    .setValue(0)
    .setPosition(width/2, height/2)
    .setSize(200, 200)
    .setBroadcast(true);
    

}

void draw(){
  
}

void bu2(){
 print("Dont"); 
}

void wutrudoin(){
 print("PlayFortnite "); 
}
