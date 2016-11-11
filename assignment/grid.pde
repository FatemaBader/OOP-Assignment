class Grid
{
  float x;
  float y;
  float maxX;
  float maxY;
  
  // x=350 y=150 590 200
  Grid(float _x, float _y, float maxX, float maxY)
  {
    this.x=_x;
    this.y=_y;
    this.maxX = maxX;
    this.maxY = maxY;
    
  }
  
  void display()
  {
    //fill(255);
    stroke(#2E1EF5); //blue shade
    strokeWeight(0);
    
   while(x<maxX)
    {
      line(x,100,x,height-150);
      x+=20;
    }
    while(y<maxY-100)
    {
      line(300,y-50, 580, y-50);
      y+=20;
    }
  }
  
  
}