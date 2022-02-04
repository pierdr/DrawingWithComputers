

class DataCircle{
  
  float value;
  String name;
  PVector pos = new PVector();
  
  public DataCircle(String name_,float value_, float x_, float y_){ //CONSTRUCTOR
  
    value = value_;
    name = name_;

    pos.x = x_;
    pos.y = y_;
  
  }
  
  public void display()
  {
    //caluclate mouseDistance
    PVector deltaVec = PVector.sub(mouseVec,pos);
    float dist = deltaVec.mag();
     float size = map(value,minValue,maxValue,10,(height-margin)/numCircles);
    if(dist < size)
    {
      stroke(18 , 55  , 58,128  );
       fill(77,77,77);
       strokeWeight(4);
       textSize(14);
       text(name +" : "+value,pos.x+100,pos.y);
    }
    else
    {
      noStroke();
    }
    
    
    //calculate size 
    
    fill(lerpColor(colorMin,colorMax,value/maxValue));
    
    ellipse(pos.x,pos.y,size,size);
  }

}
