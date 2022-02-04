Table airports;
MercatorMap merMap = new MercatorMap();

void setup()
{
  //size(768,512);
  fullScreen();
  //52 -135  · 22 -56
  airports = loadTable("us-airports.csv", "header");
  merMap.init(768,512,-135,22,-56,52);
  
}
void draw()
{
  background(222 , 255 , 7  );
  fill(242 , 60 , 236  );
  noStroke();
  for (int i = 0; i<airports.getRowCount();i++) {
    TableRow row = airports.getRow(i);
    float lat = row.getFloat("latitude_deg");
    float lon = row.getFloat("longitude_deg");
    String type = row.getString("type");
    PVector coord = merMap.getScreenLocationFromLatLon(lat,lon);
    float size = 1;
    if(type.equals( "large_airport"))
    {
      size = 3;
    }
    else if(type.equals("medium_airport"))
    {
      size = 2;
    }
    else if(type.equals("small_airport"))
    {
      size = 1;
    }
    ellipse(coord.x,coord.y,size,size);
    
  }
}
