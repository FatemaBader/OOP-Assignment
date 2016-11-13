class Speaker
{
  float x1;
  float y1;
  color c;
  
  Speaker(float _x,float _y)
  {
    //400,300
    this.x1=_x;
    this.y1=_y;
  }
  
  void display()
  {
    fill(#202726);
    ellipse(x1,y1,120,120);
    
    //black shade
    fill(#0C0D46);
    ellipse(x1,y1,100,100);
    
     fill(#33D9DE);  //light shade
     arc(x1, y1, 100, 100, 0.5, PI*0.85);
     for (float rad=2.826; rad<2*PI; rad+=.4)
     {
       //creating the series of light blue lines
       fill(#0C0D46);
       arc(x1, y1, 100, 100, rad, rad+000.4);
       fill(#33D9DE);
       arc(x1, y1, 100, 100, rad+000.4, rad+.8);
     }
     fill(0);
     ellipse(x1,y1,70,70);
  }
}