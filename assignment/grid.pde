class Grid
{
  float x;
  float y;
  float z;
  float k;
  float h=300;
  float maxX;
  float maxY;
  
  // (300,150, 590, height);
  Grid(float _x, float _y,float _z, float maxX, float maxY,float _h)
  {
    this.x=_x;
    this.y=_y;
    this.z=_z;
    this.h=_h;
    this.maxX = maxX;
    this.maxY = maxY;
    //this.maxZ = maxZ;
    
  }
  
  void display()
  {
    //fill(255);
    stroke(#2E1EF5); //blue shade
    strokeWeight(0);
    
   while(x<maxX)
    {
      line(x,100,x,height-150);
      
      line(x,height-150,x-50,height-80);
      x+=20;
    }
    //y=150
    while(y<maxY-100)
    {
      line(300,y-45, 580, y-45);
      line(300-y+150,k-45+300, 580, k-45+300);
      y+=20;
      k+=10;
    }
    
    line(h,250,h-150,320);
    line(h+280,250,h+400,320);
    
  }
  
  
}