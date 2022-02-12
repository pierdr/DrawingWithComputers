final static int BOOT              = -1;
final static int WAIT_FOR_PERSON   = 1;
final static int CC_SUCCESS        = 2;
final static int SELECT_AMOUNT     = 3;
final static int TAKE_TICKET       = 4;
final static int GREETINGS         = 5;

int currentState = BOOT;
String textOnScreen = "BOOT";

float timeOfChangeState = 0;

void setup()
{
  size(512,512);
  textAlign(CENTER);
}

void draw()
{
  background(0);
  drawMachineTop();
  drawScreen(textOnScreen);
  drawMachineBottom();
  
  updateTime();
}

void updateTime()
{
  switch(currentState){
    case BOOT:
      if(millis() - timeOfChangeState > 3000)
      {
        changeState(WAIT_FOR_PERSON);
      }
    break;
    case CC_SUCCESS:
       if(millis() - timeOfChangeState > 1000)
      {
        changeState(SELECT_AMOUNT);
      }
    break;
    
    case GREETINGS:
        if(millis() - timeOfChangeState > 2000)
      {
        changeState(WAIT_FOR_PERSON);
      }
    break;
  }
}
