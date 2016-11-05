//declare object
Sign warning;

void setup()
{
  size(850,400);
    
    //initialise object
  warning = new Sign(350,50);
}

void draw()
{
  background(0);
  
  //Call methods
  warning.display();
  //warning.move();
}