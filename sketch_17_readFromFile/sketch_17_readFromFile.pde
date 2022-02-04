Table table;
float maxCo2 = 0;

color bad = color(245 , 91,  83  );
color good = color(177  ,254  ,210  );

PFont sansserif;


void setup()
{
  size(512,512);
  
  table = loadTable("food_co2.csv", "header");

  println(table.getRowCount() + " total rows in table");
  for (int i = 0; i<table.getRowCount();i++) {
    TableRow row = table.getRow(i);
    float co2 = row.getFloat("co2");
    if(co2 > maxCo2)
    {
      maxCo2 = co2;
    }
  }
   rectMode(CORNER);
   
   
   sansserif = createFont("sansserif.ttf", 18);
   textFont(sansserif);

}

void draw()
{
   background(255);
   textAlign(RIGHT);
   
   text("Not All Foods Are Equal",width-25,height-28);
   textAlign(LEFT);
   for (int i = 0; i<table.getRowCount();i++) {
    TableRow row = table.getRow(i);
    float co2 = row.getFloat("co2");
    String name = row.getString("food");
    
     float size = map(co2,0,maxCo2,10,width*0.8);
     float y = map(i,0,table.getRowCount(),32,480);
     
     fill(lerpColor(good,bad,map(co2,0,maxCo2,0,1.0)));
     
     rect(32,y,size,10);
    fill(0);
    
    text(name+" "+co2,32,y-5);
    
  }
  
}
