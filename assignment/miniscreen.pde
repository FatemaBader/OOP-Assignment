class Miniscreen
{
  float minix;
  float miniy;
  
  Miniscreen(float x, float y)
  {
    this.minix=x;
    this.miniy=y;
  }
  
  void display()
  {
    stroke(#061A5F);
    fill(#061A5F);
    ellipse(minix,miniy,1,1);
  }
  
}