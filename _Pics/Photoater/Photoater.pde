PImage ph;

void setup(){
  frameRate(180);
  size(195,195);
  ph = loadImage("unknown.jpg");
}

void draw(){
//Pick a randon pixel
  int x = (int)random(ph.width);
  int y = (int)random(ph.height);
  int loc = x + y*ph.width;
  
//"loc" means location
  float r = red(ph.pixels[loc]);
  float g = green(ph.pixels[loc]);
  float b = blue(ph.pixels[loc]);
  noStroke();
  
//Make ellipse/ pixels
  fill(r,g,b,100);
  ellipse(x,y,9,9);
  
  //image(ph,5,5);
}
