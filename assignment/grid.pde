class Grid
{
  float x;
  float y;
  float z;
  float k;
  float h;
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
    //x =300
    float cursor = x;
   while(cursor<maxX)
    {
      stroke(#2E1EF5);
      line(cursor,100,cursor,height-150);
      
      line(cursor,height-150,cursor-50,height-80);
      cursor+=20;
    }
    //y=150
    float cursony =y;
    // maxY=height
    float k=0;
    while(cursony<(maxY-100))
    {
      //stroke(255);
      line(300,cursony-45, 580, cursony-45);
      line(300-cursony+150,k-45+300, 580, k-45+300);
      cursony+=20;
      k+=10;
    }
    
    line(h,250,h-150,320);
    line(h+280,250,h+400,320);
    
  }
  
  
}