

PImage img;

void setup()
{
  size(640,640);

  ellipseMode(CENTER);
}
void draw()
{
  background(187 , 27 , 104  );
  drawMonkeyFace(mouseX,mouseY);

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
