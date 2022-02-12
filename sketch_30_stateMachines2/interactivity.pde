
void keyPressed()
{
  switch(currentState){
    case WAIT_FOR_PERSON:
      if(key == 'i') //inserting CC
      {
        changeState(CC_SUCCESS);
      }
    break;
    case SELECT_AMOUNT:
        if(key == '+')
        {
          //change amount
        }
        else if(key == '-')
        {
          //change amount
        }
        else if(key == 'd')
        {
          changeState(TAKE_TICKET);
        }
        if(key == 'c')
        {
          changeState(WAIT_FOR_PERSON);
        }
    break;
    case TAKE_TICKET:
      if(key == 't')
      {
        changeState(GREETINGS);
      }
    break;
  }
}
