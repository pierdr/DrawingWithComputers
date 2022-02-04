import controlP5.*;
ControlP5 cp5;

float value = 12;

void setup()
{
   size(512,512);
  
   cp5 = new ControlP5(this);
   cp5.addSlider("value")
   .setPosition(192,50)
   .setSize(128,25)
   .setRange(0,100)
   ;
   rectMode(CENTER);
   noStroke();
}

void draw()
{
  background(198  ,220,  249   );
  
  float mappedX = map(value,0,100,100,width-100);
  float mappedSize = map(value,0,100,20,200);
  ellipse(mappedX,256,mappedSize,mappedSize); 
  
  
}
