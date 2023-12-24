PImage ph;

void setup(){
  //Easy to add framerate
  frameRate(300);
  size(195,195);
  ph = loadImage("unknown.jpg");
}

void draw(){
  ph.loadPixels();
  for(int i = 0; i < ph.pixels.length; i++){
    ph.pixels[i] = ph.pixels[i] & 0xF0FF0000;
//Add "+" here  ^for other combine colors (Before "=")
//Changes the photo color, mess with color
//Remove "ph.pixels[i] &" and add the "+" for overtime change
//Legend: 0xTTRRGGB, 0123456789ABCDEF
}
  ph.updatePixels();
  
image(ph,5,5);
}
