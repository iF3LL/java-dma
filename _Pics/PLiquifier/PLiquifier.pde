PImage ph;

void setup(){
  size(195,195);
  ph = loadImage("unknown.jpg");
}

void draw(){
  ph.loadPixels();
  //For if only pressed
  if(mousePressed){
  //____^
  scramble(ph.pixels);
  //and the curly bracket below
  }
  
//_Original parts-for static:
  //for(int i = 0; i < ph.pixels.length; i++){
  //float randomNum = random(255);
  //color c = color(randomNum);
  //ph.pixels[i] = c;
  //}
  
  ph.updatePixels();
  
  image(ph,5,5);
}

void scramble(int[] a){
  int temp;
  int j;
  
  for(int i = 2; i < a.length-3; i++)
    if(random(1) > 0.95){
      j = (int)random(i - 2, i + 2);
      temp = a[i];
      a[i] = a[j];
      a[j] = a[i];
   }
}
