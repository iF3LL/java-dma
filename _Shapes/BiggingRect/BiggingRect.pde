//Always put semicolon after
int w;
int h;
//First function that runs
void setup(){
  w=25;
  h=40;
  rect(0,0,w,h);
  rect(width/2,height/2,w,h);
}

//Runs once a frame, shows cursor
void draw(){
  w=w+3;
  h=h+1;
  rect(0,0,w,h);
  rect(width/2,height/2,w,h);
}
