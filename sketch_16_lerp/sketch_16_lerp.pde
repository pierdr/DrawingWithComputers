
float lerpValue = 1.0;

boolean isDecreasing = false;

void setup()
{
  size(256,256);  
  rectMode(CENTER);
  textAlign(CENTER);
}

void draw()
{
   background(255,255,255);
   if(lerpValue > 1.0 && !isDecreasing)
   {
     isDecreasing = true;
   }
   else if(lerpValue < 0.0 && isDecreasing )
   {
     isDecreasing = false;
   }
   
   if(isDecreasing)
   {
     lerpValue -= 0.01; //this is the same as writing lerpValue = lerpValue - 0.01;
   }
   else {
     lerpValue += 0.01;
   }
  
   fill(lerp(212,252,lerpValue),lerp(255,219,lerpValue),lerp(207,230,lerpValue));
   
   rect(width/2,height/2,128,128);
   
   
   stroke(0);
   line(10,32,width-10,32);
   
   ellipse(lerp(10,width-10,lerpValue),32,10,10);
}
