//class names are capitalised to distinguish between variable names
class Sign
{
   color c;
   //float xpos;
   //float ypos;
   //float yspeed=1;
   float x=0,y=0;
   //PImage img;
   
   //constructor
   Sign( float x1, float y1)
   { 
     c= color(255,0,0);   //red
     //xpos= width/2;
     //ypos= 0;
     x=x1;
     y=y1;
   }
   
   //functionality
   void display()
   {
        
       //shape
       stroke(c);
       line(x,y,540,50);
       stroke(c);
       line(x,y,320,110);
       stroke(c);
       line(320,110,325,125);
       stroke(c);
       line(325,125,560,125);
       stroke(c);
       line(560,125,565,110);
       stroke(c);
       line(565,110,540,50);
       stroke(c);
       triangle(345, 112, 390, 112, 368, 80);
         //random colors loop
          fill(random(0,255),random(0,255),random(0,255) );
           textSize(25);
           text("WARNING",x+40,y+30);
           

        
         
       //line under sign
       stroke(c);
       line(x+40,y+35,x+160,y+35);
       
       //squares
      for( int z=0; z< 75;z+=15)
      {
         fill(c);
         rect( (x+50)+z,y+50, 10, 10);
      }
         
   }
   
   //move down the screen and stop at position (width/2, height/4)
   /*void move()
   {
     ypos=ypos+yspeed;
     if (ypos == (height/4) )
     {
       ypos=height/4;
     }
   }*/

}