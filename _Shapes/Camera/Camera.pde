import ddf.minim.*;

Minim minim;
AudioPlayer space;

PShape p, q;
PImage texture;
void setup(){
  size(500, 500, P3D);
  minim = new Minim(this);
  space = minim.loadFile("space.mp3");
  p = createShape(SPHERE, 50);
  q = createShape(SPHERE, 70);
  
  texture = loadImage("earthmap.jpg");
  p.setTexture(texture);
  q.setTexture(texture);
  lights();
  space.play();
  loop();
}
int g = 254;
int b = 254;
boolean decrease = true;
void draw(){
  if(g == 0 || g == 255){
    decrease = !decrease;
  }
  if(decrease){
    g--;
    b--;
  }
  else{
    g++;
    b++;
  }
  
  background(0);
  
  //Camera Movement
  camera(width/2, mouseX*5, (height/2)/tan(PI/6), width/2, height/2, 0, 0, 1, 0);
  
  
  directionalLight(255, g, b, -5, 5, -5);
  pushMatrix();
  translate(width/2, height/2, 50);
  
  p.rotateY(radians(1));
  q.rotateY(radians(2));
  p.setStroke(0);
  q.setStroke(0);
  
  shape(p, 0, 0);
  shape(q, 150, 50);
  popMatrix();
  
  
}
