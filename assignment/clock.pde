class Clock
{
  float cposx;
  float cposy;
  
  Clock(float x,float y)
  {
    this.cposx=x;
    this.cposy=y;
  }
  
  void time()
  {
    textSize(20);
    fill(#144E7E);
    text("0",cposx,cposy);
        textSize(20);
    fill(#144E7E);
    text("0",cposx+12,cposy);
    
        textSize(20);
    fill(#144E7E);
    text("0",cposx+24,cposy);
    
        textSize(20);
    fill(#144E7E);
    text("0",cposx+36,cposy);
    
        textSize(20);
    fill(#144E7E);
    text("0",cposx+48,cposy);
    
        textSize(20);
    fill(#144E7E);
    text("0",cposx+60,cposy);
    

    
  }
  
}