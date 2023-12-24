//       DOTTED
//The Battle Cats Edition
//     2+ Players

//Everyone look at the images in "data" folder
//1 player gets to set the image
//Start
//Other player(s) guess the thing (popcorn it)
//The thing can be guessed using any evolution name
//Whoever quesses it correctly first wins

PImage ph;

void setup(){
  frameRate(275);
  size(325,300);
//Just change to name of the cat here (first stage)
  ph = loadImage("saloncat.jpeg");
//                ^^^^^^^^^^^
//No capitals, spaces, or punctuation

}

void draw(){
  int x = (int)random(ph.width);
  int y = (int)random(ph.height);
  int loc = x + y*ph.width;
  
  float r = red(ph.pixels[loc]);
  float g = green(ph.pixels[loc]);
  float b = blue(ph.pixels[loc]);
  noStroke();
  
  fill(r,g,b,100);
  ellipse(x,y,4,3);
}
