void setup()
{
  size(800,320);
}
void draw()
{
  background(215 , 239 , 247     );
  for(int i=0;i<5;i++)
  {
     drawMonkeyFace(50+(i*(width/5)),50);
  }
  for(int i=0;i<5;i++)
  {
     drawPufferfishFace(80+(i*(width/5)),250);
  }
}

void drawMonkeyFace(float x, float y)
{
  noFill();
  ellipse(x - 30,y,10,10);
  
  ellipse(x + 30,y,10,10);
  
  ellipse(x -5,y+25,2,2);
  ellipse(x +5,y+25,2,2);
  
  line(x -10,y+50,x+10,y+50);
}
void drawPufferfishFace(float x,float y)
{
  noFill();
  ellipse(x - 50,y,10,10);
  
  ellipse(x + 50,y,10,10);
  
  arc(x, y+10, 40, 40, 0, PI);
}
