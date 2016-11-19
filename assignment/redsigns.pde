class Redsigns
{
  
  float ldx;
  float ldy;
  
  Redsigns(float x, float y)
  {
    this.ldx=x;
    this.ldy=y;
  }
   
  
  void display()
  {
    //red
    fill(#86314A);
    stroke(#86314A);
      ellipse(ldx,ldy,10,10);
      
      //dots under
    fill(#315186);
    stroke(#315186);
      ellipse(ldx,ldy+60,2,2);
      
      //light blue arcs
      fill(#A71426);
      stroke(#A71426);
        arc(ldx,ldy,10,10,0,PI/2);
        
        //inner black circle
         fill(0);
          stroke(0);
           ellipse(ldx,ldy,5,5);
           
      
  }
}