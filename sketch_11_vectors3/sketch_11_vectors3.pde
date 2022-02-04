
void setup()
{
  size(512,512);  
}

void draw()
{
  background(85,  41,  255 );
  
  fill(255,255,255);
  noStroke();
  
  PVector centerScreen = new PVector(width/2,height/2);
  PVector radiusVector = new PVector(0,100); 
  
  float numOfSegments = 12;
  
  float rotationUnit = TWO_PI / numOfSegments; //RADIANS -> PI 3.14 = 180 // TWO_PI = 360
  
  float size = 10;
  
  for(int i = 0; i< numOfSegments ; i = i+1 )
  {
    
    PVector newCoordinates = PVector.add(centerScreen,radiusVector);
 
    ellipse(newCoordinates.x,newCoordinates.y,10,10);
    
    radiusVector.rotate(rotationUnit);
    size = size+10;
    
  }

}
