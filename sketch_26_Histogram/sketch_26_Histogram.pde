import java.util.Map;

//HASHMAP
HashMap<Integer,Integer> hm = new HashMap<Integer,Integer>();

PImage img;
int maxVal = 0;

void setup()
{
  size(512,512);
  img = loadImage("lake.jpg");
  img.filter(GRAY);
  img.loadPixels();
  
  for(int row = 0; row< img.height;row++)
    {
      for(int col = 0; col < img.width;col++)
      {
        color c = img.get(col,row);
        int bri = (int) brightness(c);
        int val = 0;
        if(hm.containsKey(bri) == true)
        {
          val = hm.get(bri);
        }
        
        val = val+1;
        hm.put(bri,val);
        if(maxVal < val)
        {
          maxVal = val;
        }
      }
    }
   
}
void draw()
{
  background(0);
  image(img,0,0);
  noStroke();
  for(int i =0; i< 255; i++)
  {
    int valTmp  = hm.get(i);
    float posY = map(valTmp,0,maxVal,0,height);
    rect(i*2,height-posY,2,posY);
  }
}
