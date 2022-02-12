
void changeState(int newState)
{
  switch(newState){
    case BOOT:
    //never going to happen during my program
    break;
    case WAIT_FOR_PERSON:
      textOnScreen = "INSERT YOUR CREDIT CARD";
    break;
    case CC_SUCCESS:
       textOnScreen = "SUCCESSFULLY INSERTED";
       timeOfChangeState = millis();
    break;
    case SELECT_AMOUNT:
        textOnScreen = "SELECT AMOUNT";
    break;
    case TAKE_TICKET:
      textOnScreen = "TAKE TICKET";
    break;
    case GREETINGS:
      timeOfChangeState = millis();
      textOnScreen = "THANK YOU FOR USING THE METRO";
    break;
  }
  currentState = newState;
}
