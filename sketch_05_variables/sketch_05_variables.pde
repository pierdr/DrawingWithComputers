float var1 = 0.0;
String var2 = "I wrote on screen this amount of times:";
int var3 = 0;

PImage img;

void setup()
{
  size(640,640);
  img = loadImage("img.jpg");
  var1 = 2.0;
  imageMode(CENTER);
}
void draw()
{
  background(238 , 202,  97);
  
  var1 = var1+0.5;
  var3 = var3+1;
  image(img,width/2,height/2,var1,var1);
  text(var2+var3,20,20);
  
}
