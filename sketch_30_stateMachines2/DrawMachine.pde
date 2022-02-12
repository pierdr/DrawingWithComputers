
void drawMachineTop()
{
  fill(32 , 134  ,207  );
  rect(0,0,width,height/2) ; 
}

void drawScreen(String textToDisplay)
{
  fill(66 , 77,  83  );
  rect(width*0.15,height*0.10,width*0.35,height*0.35) ; 
  fill(255);
  text(textToDisplay,width*0.325,height*0.275);
  
}
void drawMachineBottom()
{
  fill(69 , 176,  237    );
  rect(0,height/2,width,height/2) ; 
  
  //button +
  MetroMachineButton plus = new MetroMachineButton(width*0.15,height*0.66,width*0.10,"+");
  plus.display();
  //button -
  MetroMachineButton minus = new MetroMachineButton(width*0.30,height*0.66,width*0.10,"-");
  minus.display();
  
  //button C
  MetroMachineButton c = new MetroMachineButton(width*0.15,height*0.77,width*0.10,"C");
  c.display();
  //button D
  MetroMachineButton d = new MetroMachineButton(width*0.30,height*0.77,width*0.10,"D");
  d.display();
  
   
  //credit card socket
  
  //ticket socket
  
}
