class Loadingsign
{
  float ldx;
  float ldy;
  
  Loadingsign(float x, float y)
  {
    this.ldx=x;
    this.ldy=y;
  }
  
  void display()
  {
    //grey
    fill(#14497C);
    stroke(#14497C);
      ellipse(ldx,ldy,10,10);
      
      //light blue arcs
      fill(#89B3DB);
      stroke(#89B3DB);
        arc(ldx,ldy,10,10,0,PI/2);
        
        //inner black circle
         fill(0);
          stroke(0);
           ellipse(ldx,ldy,5,5);
      
  }
}