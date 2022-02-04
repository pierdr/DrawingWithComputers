class CircleAnim
{
  PVector originalPos;
  boolean isHighlighted = false;
  float originalRadius = 20;
  float currentRadius = 20;
  //CONSTRUCTOR
  public CircleAnim(float x_, float y_)
  {
    originalPos = new PVector(x_,y_);  
  }
  
  public void display()
  {
    PVector deltaVec = PVector.sub(mouseVec,originalPos);
    float dist = deltaVec.mag();
    if(dist < currentRadius)
    {
      if(isHighlighted == false)
      {
        isHighlighted = true;
        Ani.to(this, 1.5, "currentRadius", originalRadius*1.8);
      }
    }
    else
    {
      if(isHighlighted == true)
      {
        Ani.to(this, 1.5, "currentRadius", originalRadius);
        isHighlighted = false;
      }
    }
    fill(200,200,200);
    stroke(224,224,224);
    ellipse(originalPos.x,originalPos.y,currentRadius*2,currentRadius*2);
  }
  
  
}
