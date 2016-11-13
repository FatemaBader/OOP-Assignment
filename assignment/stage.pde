class Stage
{
  color c;
  float x=0;
  float y=0;
  
  
  
  Stage(float x2,float y2)
  {
    x=x2;
    y=y2;
  }
  
  //cirle
  void display()
  {
    //strokeWeight(1);
    //stroke(0,0,255);
    
    //outter circle
    //fill(0);
    //ellipse(x,y,220,220);
    
    stroke(#2E1EF5);
    //lines of outter circle
    
    for(float k=PI*0.05; k<2*PI ; k+=PI*0.05+PI*0.05)
    {
      //stroke(#2E1EF5);
      fill(#1D1634);  //light shade
      arc(450, 280, 200, 200, k-PI*0.05,k);
    }
    fill(0);
    stroke(#2E1EF5);
    ellipse(x,y,155,155);
    
    
    fill(#FF3EBC); //pink ring
    arc(x, y, 155, 155, PI, PI+QUARTER_PI);
    fill(#37C1B9); //light blue ring
    arc(x, y, 155, 155, 0, PI*.6);
    fill(0);
    ellipse(x,y,130,130);
    
  }
}