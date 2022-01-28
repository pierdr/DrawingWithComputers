void setup()
{
  size(800,320);
}
void draw()
{
  background(164 ,221,169  );
  drawMonkeyFace(50,50);
  drawMonkeyFace(150,100);
  drawMonkeyFace(250,150);
  drawMonkeyFace(350,200);
  
  drawPufferfishFace(550,100);
  drawPufferfishFace(550,200);
  drawPufferfishFace(700,100);
  drawPufferfishFace(700,200);
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
