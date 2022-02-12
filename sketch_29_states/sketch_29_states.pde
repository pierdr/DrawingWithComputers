
static final int UFO_IN_USA      = 0;
static final int UFO_IN_CANADA   = 9;
static final int UFO_IN_INDIA    = 1;

int state = -1;

int stateCounter = 0;
int[] orderedStates = {UFO_IN_USA, UFO_IN_CANADA, UFO_IN_INDIA};


void setup()
{
  size(512,512);
  state = UFO_IN_USA;

}

void draw()
{
  /*
  this is equivalent but more elegant than:
  if(state == UFO_IN_USA)
  {
    
  }
  else if(state == UFO_IN_INDIA)
  {
    ...
  
  */
  noStroke();
  switch(state)
  {
    case UFO_IN_USA:
      drawUSA();
    break;
    case UFO_IN_INDIA:
      drawIndia();
    break;
    case UFO_IN_CANADA:
      drawCanada();
    break;
  }
}

void drawUSA()
{
  background(0);
  fill(190  ,8 , 47  );
  rect(0,0,width/2,height);
  fill(15 , 49 , 112  );
  rect(width/2,0,width/2,height);
  
}
void drawCanada()
{
  background(0);
  fill(190  ,8 , 47  );
  rect(0,0,width/2,height);
  fill(255 );
  rect(width/2,0,width/2,height);
  
}
void drawIndia()
{
  background(0);
  fill(249 , 117,  1    );
  rect(0,0,width/2,height);
  fill(12  ,136,  4  );
  rect(width/2,0,width/2,height);
  
}

void keyPressed()
{
  if(key == ' ')
  {
      stateCounter = stateCounter +1;
      if(stateCounter >= 3)
      {
        stateCounter = 0;
      }
      //in an arraylist array.get(index) =>  array[index]
      changeState(orderedStates[stateCounter]);
  }
  else if (key == 'a')
  {
    
  }
}
void changeState(int newState)
{
  switch(state)
  {
    case UFO_IN_USA:
      println("new state is USA");
    break;
    case UFO_IN_INDIA:
       println("new state is India");
    break;
    case UFO_IN_CANADA:
       println("new state is Canada");
    break;
  }
  
  state = newState;
}
