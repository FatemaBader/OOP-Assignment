class Stage
{
  color c;
  int x=0;
  int y=0;
  
  
  
  Stage(int x2,int y2)
  {
    x=x2;
    y=y2;
  }
  
  //cirle
  void display()
  {
    //strokeWeight(5);
    //stroke(0,0,255);
    stroke(#2E1EF5);
    ellipse(x,y,150,150);
  }
}