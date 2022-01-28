import controlP5.*;

ControlP5 cp5;

int sizeSquare = 100;
boolean invert = false;
void setup()
{
  size(512,512);
   cp5 = new ControlP5(this);
  
  // create a new button with name 'buttonA'
  cp5.addToggle("invert")
     .setValue(false)
     .setPosition(100,100)
     ;
   cp5.addSlider("sizeSquare")
   .setPosition(100,50)
   .setRange(0,500)
   ;
   rectMode(CENTER);
}
void draw()
{
  if(invert)
  {
    background(172 , 188  ,205  );
    fill(244 , 142 , 60);
    rect(width/2,height/2,sizeSquare,sizeSquare);
  }
  else
  {
    background(244 , 142 , 60  );
    fill(172 , 188  ,205  );
    rect(width/2,height/2,sizeSquare,sizeSquare);
  }
}
