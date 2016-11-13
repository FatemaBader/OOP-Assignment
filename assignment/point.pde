class Point
{
  float posX;
  float posY;
  color c;
  
  Point(float x, float y)
  {
    posX=x;
    posY=y;
  }
  
  void move()
  {
    fill(255);
    //ellipse(posX,posY,10,10);
    //450,330
    //stays in the range of the cirlce
    while ( posX<500 && posX>400 && posY>300 && posY<height)
    {
      if(keyPressed)
      {
        if(keyCode == UP)
        {
          posY--;
        }
        if(keyCode== DOWN)
        {
          posY++;
        }
        if(keyCode== LEFT)
        {
          posX--;
        }
        if(keyCode== RIGHT)
        {
          posX++;
        }
      }
    }
    ellipse(posX,posY,10,10);
  }
  
}