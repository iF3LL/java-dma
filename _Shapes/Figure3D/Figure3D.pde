PShape p;
PImage tex;
PShape q;
PImage sun;

void setup(){
  background(155);
  size(450, 400, P3D);
  
  p = createShape(SPHERE, 50);
  tex = loadImage("nuk.jpg");
  p.setTexture(tex);
  
  q = createShape(SPHERE,25);
  sun = loadImage("sun.jpg");
  q.setTexture(sun);
}

void draw(){
  lights();
  ambientLight(20, 30, 140);
  
  pushMatrix();
  translate(width/2, height/2);
  p.setStroke(0);
  //p.rotateX(radians(2));
  p.rotateY(radians(2));
  shape(p, 0, 0);
  popMatrix();
  
  pushMatrix();
  translate(50, 50);
  q.setStroke(0);
  q.rotateX(radians(2));
  shape(q, 0, 0);
  popMatrix();
}
