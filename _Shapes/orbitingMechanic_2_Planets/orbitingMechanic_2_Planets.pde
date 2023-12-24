float angle = 0;
float angle2 = 0;
PShape p, q, c;

void setup(){
  background(255);
  size(800, 800, P3D);
  p = createShape(SPHERE, 20);
  q = createShape(SPHERE, 50);
  c = createShape(SPHERE, 10);
}

void draw(){
  background(255);
  pushMatrix();
  translate(width/2, height/2);
  rotateX(radians(90));
  rotateZ(radians(angle));
  shape(p, 150, 150);
    pushMatrix(); 
    translate(150, 150);
    rotateZ(radians(angle2));
    shape(c, 50, 50);
    popMatrix();
  popMatrix();
  angle2 += 2;
  angle++;
  shape(q, width/2, height/2);

}
