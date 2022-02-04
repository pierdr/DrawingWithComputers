import de.looksgood.ani.*;
import de.looksgood.ani.easing.*;

ArrayList<CircleAnim> circlesToAnim = new ArrayList<CircleAnim>();

//interactivity
PVector mouseVec = new PVector();


void setup()
{
  size(512,512);
  Ani.init(this);
  PVector position = new PVector(width/2,height/2);
  PVector offset = new PVector(0,100);
  
  for(int i = 0;i<12;i++)
  {
      PVector coord = PVector.add(position,offset);
      CircleAnim circle = new CircleAnim(coord.x,coord.y);
      
      circlesToAnim.add(circle);
      
      offset.rotate(TWO_PI/12);
      
  }
}
void draw()
{
  background(255,255,255);
  
  mouseVec.x = mouseX;
  mouseVec.y = mouseY;
  
  for(CircleAnim circle : circlesToAnim)
  {
    circle.display();
  }
}
