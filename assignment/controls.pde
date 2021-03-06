class Control
{
  float x2;
  float y2;
  float k;
  float xk;
  float stop;
  
  Control(float x,float y, float sa)
  {
    this.x2=x;
    this.y2=y;
    this.k=0;
    this.stop=sa;
    xk=k;
   
  }
  
  void display()
  { 
    //grey
    fill(#454D4D);
    stroke(#454D4D);
      ellipse(x2,y2,30,30);
      ellipse(x2+35,y2,30,30);
      ellipse(x2+70,y2,30,30);
      ellipse(x2+105,y2,30,30);
      ellipse(x2+140,y2,30,30);
      ellipse(x2+175,y2,30,30);
      
      fill(#2DE0D0);
      stroke(#2DE0D0);
      
      arc(x2,y2,30,30,xk,stop);
      
            fill(#2DE0D0);
      stroke(#2DE0D0);
      arc(x2+35,y2,30,30,0,2*PI);
      xk++;
      
            fill(#2DE0D0);
      stroke(#2DE0D0);
      arc(x2+35+35,y2,30,30,0,PI/2);
      //xk++;
      
            fill(#2DE0D0);
      stroke(#2DE0D0);
      arc(x2+35+35+35,y2,30,30,PI/2,PI);
      xk++;
      
            fill(#2DE0D0);
      stroke(#2DE0D0);
      arc(x2+35+35+35+35,y2,30,30,0,6.10865);
      xk++;
      
      //black circles in the middle
      fill(0);
      stroke(0);
      ellipse(x2,y2,20,20);
      fill(#50EACA);
      text("01",x2-5,y2+5);
      
            fill(0);
      stroke(0);
      ellipse(x2+35,y2,20,20);
      fill(#50EACA);
      text("A5",x2+30,y2+5);
      
            fill(0);
      stroke(0);
      ellipse(x2+35+35,y2,20,20);
      fill(#50EACA);
      text("BB",x2+30+35,y2+5);
      
            fill(0);
      stroke(0);
      ellipse(x2+35+35+35,y2,20,20);
      fill(#50EACA);
      text("A5",x2+30+70,y2+5);
      
            fill(0);
      stroke(0);
      ellipse(x2+35+35+35+35,y2,20,20);
      fill(#50EACA);
      text("77",x2+30+35+35+35,y2+5);
      
            fill(0);
      stroke(0);
      ellipse(x2+35+35+35+35+35,y2,20,20);
      fill(#50EACA);
      text("...",x2+30+35+35+35+35,y2+5);
      
  }
  
}