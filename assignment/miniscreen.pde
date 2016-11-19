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
    stroke(#324279);
    fill(#324279);
    ellipse(minix,miniy,1,1);
  }
}