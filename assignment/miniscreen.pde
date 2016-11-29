class Miniscreen
{
  float minix;
  float miniy;
  int num1;
  
  Miniscreen(float x, float y, int num)
  {
    this.minix=x;
    this.miniy=y;
    this.num1=num;
  }
  
  void display()
  {
    stroke(#061A5F);
    fill(#061A5F);
    ellipse(minix,miniy,num1,num1);
  }
  
}