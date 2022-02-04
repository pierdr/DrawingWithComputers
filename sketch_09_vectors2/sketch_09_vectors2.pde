
PVector p1 = new PVector(100,100);
PVector p2 = new PVector(100,300);

PVector p3 = new PVector(450,100);
PVector p4 = new PVector(500,600);


PVector p5 = new PVector(50,200);
PVector p6 = new PVector(500,50);

PVector p7 = new PVector(75,400);
PVector p8 = new PVector(600,175);

void setup()
{
  size(640,640);
  
  ellipseMode(CENTER);
  noFill();

}
void draw()
{
  background(252  , 229 , 214   );
  stroke(101 , 74  , 154  );
  pattern(p1,p2,p3,p4,20);
  
  stroke(203,  216 , 254 );
  pattern(p5,p6,p7,p8,50);
  noLoop();
}

void pattern(PVector p1l1,PVector p2l1,PVector p1l2,PVector p2l2,float numLines)
{
  //LINE 1
  PVector deltaL1  = PVector.sub(p2l1,p1l1); //<>//
  float   distL1   = p2l1.dist(p1l1);
  
  //LINE 2
  PVector deltaL2  = PVector.sub(p2l2,p1l2);
  float distL2     = p2l2.dist(p1l2);
  
  //NORMALIZE
  deltaL1.normalize();
  deltaL2.normalize();
  
  float unitL1    = distL1/numLines;
  float unitL2    = distL2/numLines; //<>//
  
  for(float i = 0; i <= numLines; i++)
  {
    
    float multL1 = unitL1 * i;
    float multL2 = unitL2 * i;
    PVector tmp1  = PVector.mult(deltaL1,multL1);
    PVector tmp2  = PVector.mult(deltaL2,multL2);
    
    line(p1l1.x+tmp1.x,p1l1.y+tmp1.y,p1l2.x+tmp2.x,p1l2.y+tmp2.y);

  }
  line(p1l1.x,p1l1.y,p2l1.x,p2l1.y);
  line(p1l2.x,p1l2.y,p2l2.x,p2l2.y);
  
}
