class Loadingsign
{
  float ldx;
  float ldy;
  int ld2x;
  int ld2y;
  float ld3x;
  int ld3y;
  
  Loadingsign(float x, float y)
  {
    this.ldx=x;
    this.ldy=y;
  }
   Loadingsign(int x2, int y2)
  {
    this.ld2x=x2;
    this.ld2y=y2;
  }
     Loadingsign(float x3, int y3)
  {
    this.ld3x=x3;
    this.ld3y=y3;
  }
  
  void display()
  {
    //grey
    fill(#14497C);
    stroke(#14497C);
      ellipse(ldx,ldy,10,10);
      //ellipse(ld2x,ld2y,10,10);
      
      //light blue arcs
      fill(#89B3DB);
      stroke(#89B3DB);
        arc(ldx,ldy,10,10,0,PI/2);
        //arc(ld2x,ld2y,10,10,0,PI/2);
        
        //inner black circle
         fill(0);
          stroke(0);
           ellipse(ldx,ldy,5,5);
           //ellipse(ld2x,ld2y,5,5);
           
      
  }
  void display2()
  {
    //grey
    fill(#14497C);
    stroke(#14497C);
      ellipse(ld2x,ld2y,10,10);
      
      //light blue arcs
      fill(#89B3DB);
      stroke(#89B3DB);
        arc(ld2x,ld2y,10,10,0,PI/2);
        
        //inner black circle
         fill(0);
          stroke(0);
           ellipse(ld2x,ld2y,5,5);
         
  }
    void display3()
  {
    //grey
    fill(#14497C);
    stroke(#14497C);
      ellipse(ld3x,ld3y,10,10);
      
      //light blue arcs
      fill(#89B3DB);
      stroke(#89B3DB);
        arc(ld3x,ld3y,10,10,0,PI/2);
        
        //inner black circle
         fill(0);
          stroke(0);
           ellipse(ld3x,ld3y,5,5);
         
  }
}