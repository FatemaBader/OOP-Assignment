class Lights
{
  float lx;
  float ly;
    boolean overBox = false;
  boolean locked = false;
  int boxSize=5;
  
  Lights(float x, float y)
  {
    this.lx=x;
    this.ly=y;
  }
  
  void display()
  {
    //stroke(0);
    fill(#1B17AF);
    rect(lx,ly,2,2);
    
      // Test if the cursor is over the box 
    if (mouseX > lx-boxSize && mouseX < lx+boxSize && 
        mouseY > ly-boxSize && mouseY < ly+boxSize)
    {
      overBox = true;  
      if(!locked) { 
        stroke(#6FDDEA); 
        fill(#6FDDEA);
      } 
    } 
    else {
      stroke(#3148C4);
      fill(#3148C4);
      overBox = false;
      }
  }
  
}