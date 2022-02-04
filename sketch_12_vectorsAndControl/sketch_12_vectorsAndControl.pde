import controlP5.*;
ControlP5 cp5;

float numOfSegments = 12;

void setup()
{
  size(512,512);
  
   cp5 = new ControlP5(this);
   cp5.addSlider("numOfSegments")
   .setPosition(100,50)
   .setRange(0,24)
   ;
}

void draw()
{
  background(85,  41,  255 );
  
  fill(255,255,255);
  noStroke();
  
  PVector centerScreen = new PVector(width/2,height/2);
  PVector radiusVector = new PVector(0,100); 
  
  float rotationUnit = TWO_PI / numOfSegments;
  
  for(int i = 0; i< numOfSegments ; i = i+1 )
  {
    
    PVector newCoordinates = PVector.add(centerScreen,radiusVector);
   
    ellipse(newCoordinates.x,newCoordinates.y,10,10);
    
    radiusVector.rotate(rotationUnit);
    
  }

}
