float imageSize = 0.0;
String debugText = "the image size is ";

boolean isDecreasing = false;

PImage img;

void setup()
{
  size(640,640);
  img = loadImage("img.jpg");
  imageSize = 2.0;
  imageMode(CENTER);
}
void draw()
{
  background(238 , 202,  97);
  if(isDecreasing)
  {
    imageSize = imageSize-9.5;
  }
  else
  {
    imageSize = imageSize+9.5;
  }
  
  image(img,width/2,height/2,imageSize,imageSize);
  text(debugText+imageSize,20,20);
  
  if(imageSize > width)
  {
    isDecreasing = true;
  }
  else if(imageSize < 0)
  {
    isDecreasing = false;
  }
}
