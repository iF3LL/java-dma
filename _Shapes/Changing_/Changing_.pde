class Square{
  int x;
  int y;
  int w;
  int h;
  int c;
  
  public Square (int newX, int newY, int newW, int newH, int newC){
    x = newX;
    y = newY;
    w = newW;
    h = newH;
    c = newC;
  }
  
  public void display(){
    fill(c);
    rect(x,y,w,h);
  }
  
  public void changetoBlack(){c = 0;}
  public int getX(){return x;}
  public int getY(){return y;}
  public int getWidth(){return w;}
  public int getHeight(){return h;}
}

Square s;

  void setup(){
    size(500,500); //This is now the screen size
    background(255,0,0);
    s = new Square(310,360,175,60, 255);
        //Centre is width/2,height/2
    s.display();
}
//Making it change after hover \/

void draw(){
  if(mouseX >= s.getX() && mouseX <= s.getX() + s.getWidth()
    && mouseY >= s.getY() && mouseY <= s.getY() + s.getHeight()){
      s.changetoBlack();
  }

s.display();
}
