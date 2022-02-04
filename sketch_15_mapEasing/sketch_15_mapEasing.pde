import controlP5.*;
ControlP5 cp5;

float value = 12;

void setup()
{
   size(512,768);
  
   cp5 = new ControlP5(this);
   cp5.addSlider("value")
   .setPosition(192,64)
   .setSize(128,25)
   .setRange(0,100)
   ;
   rectMode(CENTER);
   noStroke();
}

void draw()
{
  background(198  ,220,  249   );
  
  stroke(224);
  for(int i =0; i<6;i++)
  {
    line(100,128*i,width-100,128*i);
  }
  
  stroke(0);
  fill(0);
  text("LINEAR",90,118);
  text("QUADRATIC",90,246);
  text("CUBIC",90,374);
  text("SINUSOIDAL",90,502);
  text("EXPONENTIAL",90,630);
  
  noStroke();
  fill(255,255,255,128);
  
  //LINEAR
  float mappedX = map2(value,0,100,100,width-100, LINEAR,EASE_IN_OUT);
  float mappedSize = map2(value,0,100,20,100,LINEAR,EASE_IN_OUT);
  ellipse(mappedX,128,mappedSize,mappedSize); 
  
  //QUADRATIC
   mappedX = map2(value,0,100,100,width-100, QUADRATIC,EASE_IN_OUT);
   mappedSize = map2(value,0,100,20,100,QUADRATIC,EASE_IN_OUT);
  ellipse(mappedX,256,mappedSize,mappedSize); 
  
  //CUBIC
   mappedX = map2(value,0,100,100,width-100, CUBIC,EASE_IN_OUT);
   mappedSize = map2(value,0,100,20,100,CUBIC,EASE_IN_OUT);
  ellipse(mappedX,384,mappedSize,mappedSize); 
  
  //SINUSOIDAL
   mappedX = map2(value,0,100,100,width-100, SINUSOIDAL,EASE_IN_OUT);
   mappedSize = map2(value,0,100,20,100,SINUSOIDAL,EASE_IN_OUT);
  ellipse(mappedX,512,mappedSize,mappedSize); 
  
  //EXPONENTIAL
   mappedX = map2(value,0,100,100,width-100, EXPONENTIAL,EASE_IN_OUT);
   mappedSize = map2(value,0,100,20,100,EXPONENTIAL,EASE_IN_OUT);
  ellipse(mappedX,640,mappedSize,mappedSize); 
}
