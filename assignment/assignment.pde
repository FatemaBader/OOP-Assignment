//declare object
Sign warning;
Stage stage;
Stage circle;
Grid grid;
//test commit

PImage img;

void setup()
{
  background(0);
  size(850,400);
  smooth();
    
    //initialise object
  warning = new Sign(350,50);
          //skull image
           img = loadImage("skeleton.jpg");
       
 stage= new Stage(450,280);
 circle=new Stage(500,300);
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
  circle.move();
  //warning.move();
  
  //< sign
  stroke(#8BDFFF);
  line(340,360,350,370);
  stroke(#8BDFFF);
  line(340,360,350,350);
  
  //> sign
  stroke(#8BDFFF);
  line(560,350,570,360);
  stroke(#8BDFFF);
  line(570,360,560,370);
  
}