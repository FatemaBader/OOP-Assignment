class Text
{
  float sz;
  float tz;
  
  Text(float x,float y)
  {
    this.sz=x;
    this.tz=y;
  }
  void display()
  {
    //Hello Human How are you today?
  textSize(15);
  stroke(255);
  fill(255);
    text("Hello Human", sz,tz);
    sz++;
    
    //when the hello reaches 150 point it is covered by a black square
    if (sz>150)
    {
      fill(0);
      stroke(0);
      rect(250,20,520,620);
    }
  
  }
}