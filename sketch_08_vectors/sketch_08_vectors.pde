PVector mouseVector;

int numRow = 5;
int numCol = 5;

void setup()
{
  size(640,640);
  
  ellipseMode(CENTER);
  noFill();
  mouseVector = new PVector();

}
void draw()
{
  background(187 , 27 , 104  );
  mouseVector.x = mouseX;
  mouseVector.y = mouseY;
  for(int row = 0;row<numRow;row++)
   {
    for(int col = 0;col<numCol;col++)
    {
      drawEyes(50+(width/numCol)*col,50+(height/numRow)*row);
    }
   }
  

}

void drawEyes(float x,float y)
{
  noFill();
  ellipse(x-30,y,20,20);
  ellipse(x+30,y,20,20);
  
  PVector eyeR = new PVector(x+30,y);
  PVector eyeL = new PVector(x-30,y);
  
  PVector deltaR = eyeR.sub(mouseVector);
  PVector deltaL = eyeL.sub(mouseVector);
  
  deltaR.normalize();
  deltaL.normalize();
  
  deltaR.mult(-7);
  deltaL.mult(-7);
  fill(0);
  ellipse(x-30 + deltaL.x ,y + deltaL.y,4,4);
  ellipse(x+30 + deltaR.x ,y + deltaR.y,4,4);
 
}
