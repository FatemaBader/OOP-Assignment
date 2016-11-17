class Text
{
  float sz;
  float tz;
  float nz;
  
  Text(float x,float y,float n)
  {
    this.sz=x;
    this.tz=y;
    this.nz=n;
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
      rect(250,20,820,820);
    }
    
    if (sz > 250)
    {
      sz = 10;
    }
  
  }
  
  void display2()
  {     
        //How are you today appear after "hello human" text reaches 600 mark
    if(sz==250)
    {
        nz=10;
        textSize(15);
        stroke(255);
        fill(255);
          text("How Are You Today?", nz,tz);
          
    }
    nz++;
  }
}