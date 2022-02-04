Table table;

ArrayList<DataCircle> dataCircles = new ArrayList<DataCircle>();

float maxValue = 0.0;
float minValue = 3.40282347E+38;
float numCircles = 0.0;
float margin = 100;

//color
color colorMin = color(208 , 223,  216  );
color colorMax = color(218,  83 , 84  );

//interactivity
PVector mouseVec = new PVector();

void setup()
{
  size(384,768);
  table = loadTable("MOCK_DATA.csv", "header");
  
  //fill num circles
  numCircles = table.getRowCount();
  
  //Cycle just to get max and min value
  for (int i = 0; i<table.getRowCount();i++) {
    TableRow row = table.getRow(i);
    float value = row.getFloat("value");
    if(value > maxValue)
    {
      maxValue = value;
    }
    if(value < minValue)
    {
      minValue = value;
    }
  }
  
  //Create all the new datacircles
  
  PVector posVector = new PVector(margin,margin);
  PVector offsetVector = new PVector(0,(height-margin)/numCircles);
  
  for (int i = 0; i<table.getRowCount();i++) {
    TableRow row = table.getRow(i);
    String name = row.getString("id");
    float value = row.getFloat("value");
    
    DataCircle newDataCircle = new DataCircle(name,value,posVector.x,posVector.y);
    dataCircles.add(newDataCircle);
    posVector.add(offsetVector);
  }
}
void draw()
{
  background(204 , 193,  210  );
  
  //update mouse
  mouseVec.x = mouseX;
  mouseVec.y = mouseY;
  
  //this is the same as writing for(int i = 0; i< dataCircles.size();i++)
  for(DataCircle c : dataCircles)
  {
    c.display();
  }
  
  //for(int i = 0; i<dataCircles.size();i++)
  //{
  //  DataCircle c = dataCircles.get(i);
  //}
  
}
