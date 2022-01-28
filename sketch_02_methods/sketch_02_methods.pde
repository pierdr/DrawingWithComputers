void setup()
{
  size(800,320);
}
void draw()
{
  background(164 ,221,169  );
  drawMonkeyFace();
  drawPufferfishFace();
}

void drawMonkeyFace()
{
  noFill();
  ellipse((width/2) - 30,100,10,10);
  
  ellipse((width/2) + 30,100,10,10);
  
  ellipse(width/2 -5,125,2,2);
  ellipse(width/2 +5,125,2,2);
  
  line(width/2 -10,150,width/2+10,150);
}
void drawPufferfishFace()
{
  noFill();
  ellipse((width/4) - 50,200,10,10);
  
  ellipse((width/4) + 50,200,10,10);
  
  arc((width/4), 210, 40, 40, 0, PI);
}
