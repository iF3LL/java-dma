import controlP5.*;
ControlP5 cp5;

Textarea myTextarea;

void setup(){
  noStroke();
  size(500, 500);
  cp5 = new ControlP5(this);
  myTextarea = cp5.addTextarea("txt")
                  .setPosition(100,100)
                  .setSize(200,200)
                  .setFont(createFont("comicsansms",12))
                  .setLineHeight(14)
                  .setColor(color(128))
                  .setColorBackground(color(255,100))
                  .setColorForeground(color(255,100));
                  
   myTextarea.setText("WHY");
     
   cp5.addSlider("changeWidth")
         .setRange(100,400)
         .setValue(200)
         .setPosition(100,20)
         .setSize(100,19);
         
   cp5.addSlider("changeHeight")
         .setRange(100,400)
         .setValue(200)
         .setPosition(100,40)
         .setSize(100,19);
         
   cp5.addButton("test")
     .setBroadcast(false)
     .setValue(50)
     .setPosition(400, 400)
     .setSize(30,30)
     .setBroadcast(true);
}

void test(int theValue){print(theValue);}

void changeWidth(int theValue) {
  myTextarea.setWidth(theValue);
}

void changeHeight(int theValue) {
  myTextarea.setHeight(theValue);
}

void draw(){
  background(0);
}

void test(){
 print("Wait "); 
}
