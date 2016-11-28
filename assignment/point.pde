class Point
{
  float posX;
  float posY;
  color c;
  float startW;
  float startH;
  float speed;
  
  Point(float x, float y)
  {
    this.posX=x;
    this.posY=y;
    startW=40;
    startH=40;
    speed=1;
  }

  void display() {
    
    fill(#C461BA);
    stroke(#E026CE);
    ellipse(this.posX, this.posY, 10, 10);
  }
  
  void move()
  {
   fill(255);
   
      //450,320
        if(keyCode == UP && posY>235 )
        //&& posX>400 && posY<290 && posY>height )
        {
          posY=posY-speed;
         }
        if(keyCode== DOWN && posY<319 )
        {
          posY++;
        }
        if(keyCode== LEFT && posX>410)
        {
          posX--;
        }
        if(keyCode== RIGHT && posX<490)
        {
          posX++;
        }
      
   }
   
   void drawSquare()
   {
     rectMode(CENTER);
     rect(posX,posY,startW,startH);
     
   }
  
}