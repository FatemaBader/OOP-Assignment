class Speaker
{
  float x;
  float y;
  color c;
  
  Speaker(float _x,float _y)
  {
    //400,300
    this.x=_x;
    this.y=_y;
  }
  
  void display()
  {
    fill(255);
    ellipse(x,y,50,50);
  }
}