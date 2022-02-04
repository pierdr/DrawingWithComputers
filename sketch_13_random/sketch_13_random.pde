float x1 = 100;
float y1 = 100;

float x2 = random(0,512);
float y2 = random(0,512);


void setup()
{
  size(512,512);  
  noStroke();
}


void draw()
{
    fill(173 , 206 , 191,50  );  
    rect(0,0,width,height);
    
    //IF A KEY IS PRESSED A NEW RANDOM POSITION IS COMPUTED
    fill(251 , 201  ,164  );
    ellipse(x1,y1,20,20);
    
    //A RANDOM POSITION IS SET JUST AT THE BEGINNING
    fill(251 , 255 , 197  );
    ellipse(x2,y2,20,20);
    
    //A NEW POSITION IS COMPUTED EVERY FRAME
    fill(60,  214  , 228  );
    ellipse(random(0,512),random(0,512),5,5);
}
void keyPressed()
{
  x1 = random(0,512);
  y1 = random(0,512);
}
