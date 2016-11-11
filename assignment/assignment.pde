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
       
 stage= new Stage(450,280);
 grid= new Grid (300,150,300, 590, height,300);
  
}

//continuous happens
void draw()
{ 
  //Call methods
  grid.display();
  warning.display();
  image(img, 360, 90, 20, 20);
  //fill(0);
  stage.display();
  
  
  //warning.move();
}