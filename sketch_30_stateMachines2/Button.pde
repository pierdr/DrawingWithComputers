class MetroMachineButton{
  float posX,posY,size;
  String buttonName;
  
  public MetroMachineButton(float posX_,float posY_,float size_, String buttonName_){
    posX = posX_;
    posY = posY_;
    size = size_;
    buttonName = buttonName_;
  }
  public void display()
  {
    fill(33,33,33);
    rect(posX,posY,size,size) ; 
    fill(255);
    text(buttonName,posX+size*0.5,posY+size*0.5);
  }

}
