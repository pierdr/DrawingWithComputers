

ArrayList<MyDot> dots = new ArrayList<MyDot>();
PVector mouseVec = new PVector();
void setup()
{
  size(600,600);
  
  for(int i = 0;i<10;i++)
  {
    MyDot newDot = new MyDot(new PVector(random(0,600),random(0,600)),random(10,100),color(random(0,255),random(0,255),255));
    dots.add(newDot);
  }
}
void draw()
{
  mouseVec.x = mouseX;
  mouseVec.y = mouseY;
  background(100,100,100);
  
  for(MyDot dot1 : dots)
  {
    dot1.updateInteraction();
    dot1.display();
  }
}
