class Stage
{
  color c;
  float x=0;
  float y=0;
  float thetaARC = PI+1.2;
  float thetaARC2= PI/6;
  
  
  Stage(float x2,float y2)
  {
    this.x=x2;
    this.y=y2;
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
    arc(x, y, 155, 155, thetaARC , thetaARC + .9);
    fill(#37C1B9); //light blue ring
    arc(x, y, 155, 155, thetaARC2, thetaARC2 + 1.5);
    fill(#2085D6);
    ellipse(x,y,130,130);
    fill(0);
    ellipse(x,y,120,120);
    fill(#2085D6);
    ellipse(x,y,110,110);
    fill(0);
    ellipse(x,y,100,100);
    //black lines
    stroke(0);
    fill(0);
    line(450,345,450,330);
    line(450,215,450,230);
    line(385,273,400,273);
    line(500,273,515,273);
    
    stroke(#03006A);
    fill(#03006A);
    ellipse(x,y,60,60);
    stroke(0);
    fill(0);
    ellipse(x,y,58,58);
    
    stroke(#1B2AC1);
    fill(#1B2AC1);
    line(400,320,410,315);
    thetaARC += 0.1;
    thetaARC2 += 0.1;
  }
}