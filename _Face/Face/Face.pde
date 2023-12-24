void face(int x,int y){
 pushMatrix();
 translate(x,y);
//rotate
 rotate(PI/4.5);
 rect(0,0,40,40); //Head
 rect(7,8,10,10); //Left Eye
 rect(25,10,8,8); //Right Eye
 rect(10,26,20,6); //Mouth
 //(x,y,sizeX,sizeY)
 popMatrix();
}

void setup(){
  size(500,150);
  background(120);
  //This color is greyscale
  
  for(int i = 10; i < width; i = i +50){
    face(i,20);
  }
}
