//class names are capitalised to distinguish between variable names
class Sign
{
   color c;
   color c2;
   //float xpos;
   //float ypos;
   //float yspeed=1;
   float x=0,y=0;
   //PImage img;
   
   //constructor
   Sign( float x1, float y1)
   { 
     c= color(#4D1A1D);   //red
     c2=color(#980017); //darker shade
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
       //outer line of warning sign
       //x 350 y 50
       stroke(c2);
       strokeWeight(2);
       line(x-5,y-5,542,50-5);
       stroke(c2);
       line(x-5,y-5,320-8,110);
       stroke(c2);
       line(320-8,110,325-5,125+5);
       stroke(c2);
       line(325-5,125+5,560+5,125+5);
       stroke(c2);
       line(560+5,125+5,565+5,110-2);
       stroke(c2);
       line(565+5,110-2,542,50-5);
       stroke(c2);
       //Lines from the side
       stroke(#83040C);
       line(x-8,y-8,320-8,100);
       stroke(#83040C);
       line(x-5,y-8,545,y-8);
       stroke(#83040C);
       line(545,y-8,565+5,100);
       
         //random colors loop
         {
          //fill(random(0,255),random(0,255),random(0,255) );
          fill(#FF3644);
           textSize(25);
           text("WARNING",x+40,y+30);
         }
           

        
         
       //line under sign
       stroke(c);
       line(x+40,y+35,x+160,y+35);
       
       //extra small text
       fill(#FF3644);
         textSize(9);
         text("INCOMING",x+40,y+45);
   
       //squares
      for( int z=0; z< 75;z+=15)
      {
         stroke(#2E1EF5);
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