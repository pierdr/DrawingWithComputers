ArrayList<PVector> positions = new ArrayList<PVector>();

void setup()
{
  size(512,512);
  noCursor();
}

void draw()
{
  background(103,  199 , 248  );
  stroke(77,  150 , 200);
  
  //DRAW ALL POSITIONS IN ARRAY LIST
  for(int i = 0; i < positions.size(); i++)
  {
    PVector pos = positions.get(i);
    float opacity = map(i,0,positions.size(),255,77);
    float size = map(i,0,positions.size(),100,5);
    fill(175 , 201 , 120 ,  opacity);
    ellipse(pos.x,pos.y,size,size);
  }
  
  //ADD LAST MOUSE POSITION TO POSITIONS at the beginning of the arraylist
   positions.add(0,new PVector(mouseX,mouseY));
   
   //IF
  if(positions.size() > 100)
  {
   positions.remove(positions.size()-1);
  }
  
  
}
