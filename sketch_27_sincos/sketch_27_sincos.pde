color cStart = color(150 , 103 , 225  );
color cEnd = color(87  ,184 , 197  );
float radius = 100;
void setup()
{
  size(512,512);
}
void draw()
{
  background(255);
  
  noStroke();
  
  
  for(float i=0; i< TWO_PI; i+=0.5)
  {
    
    fill(lerpColor(cStart,cEnd,map(i,0,TWO_PI,0,1.0)));
    ellipse(width/2 + (sin(i) * radius ) ,height/2 + (cos(i) * radius), map(i,0,TWO_PI,10,50),map(i,0,TWO_PI,10,50));
  }
}
