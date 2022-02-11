float sinValue = 0;

void setup()
{
   size(256,512); 
}

void draw()
{
  background(255);
  stroke(188);
  strokeWeight(6);
  
  sinValue += 0.01;
  
  line(width/2,50,width/2,height-50);
  noStroke();
  fill(87  ,184 , 197);
   
  float val = sin(sinValue);
  float posY = map(val , -1.0, 1.0,50,height-50);
  ellipse(width/2,posY,20,20);
}
