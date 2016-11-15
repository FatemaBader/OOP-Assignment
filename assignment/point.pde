class Point
{
  float posX;
  float posY;
  color c;
  
  Point(float x, float y)
  {
    this.posX=x;
    this.posY=y;
  }

  void display() {
    
    fill(#C461BA);
    stroke(#E026CE);
    ellipse(this.posX, this.posY, 10, 10);
  }
  
  void move()
  {
   fill(255);

    //ellipse(posX,posY,10,10);
    ////450,330
    ////stays in the range of the cirlce
    //while ( posX<500 && posX>400 && posY>300 && posY<height)
    //{
    
        if(keyCode == UP && posY>220 )
        //&& posX>400 && posY<290 && posY>height )
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
    //ellipse(posX,posY,10,10);
  
  
}