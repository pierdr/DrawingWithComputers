class MyDot{
  PVector pos;
  float size;
  color c;
  
  //constructor
  public MyDot(PVector newPos,float newSize, color newColor)
  {
    size = newSize;
    pos = newPos;
    c = newColor;
  }
  void updateInteraction()
  {
    PVector distVec = PVector.sub(pos,mouseVec);
    float dist = distVec.mag();
    if(dist < size/2)
    {
      size = 300;
    }
    else
    {
      size = 50;
    }
  }
  void display()
  {
    fill(this.c);
    ellipse(this.pos.x,this.pos.y,this.size,this.size);
  }

}
