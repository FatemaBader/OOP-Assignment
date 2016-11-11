//declare object
Sign warning;
Stage stage;
Grid grid;

PImage img;

void setup()
{
  background(0);
  size(850,400);
    
    //initialise object
  warning = new Sign(350,50);
          //skull image
           img = loadImage("skeleton.jpg");
       
 stage= new Stage(450,250);
 grid= new Grid (300,150, 590, height);
  
}

void draw()
{
  //background(0);
  
  //Call methods
  grid.display();
  warning.display();
  //fill(255);
  image(img, 360, 90, 20, 20);
  //fill(255,0,0);
  stage.display();
  
  
  //warning.move();
}