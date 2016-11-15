//declare object
Sign warning;
Stage stage;
//Stage circle;
Clock clock;
Grid grid;
Point point;
Speaker speaker;
Speaker speaker2;
//Speaker[] speaker= new Speaker
//Speaker[] circles=new Speaker[10];
Control[] controls=new Control[6];


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
 //circle=new Stage(500,300);
 grid= new Grid (300,150,300, 590, height,300);
 point= new Point(450,330);
 speaker=new Speaker(250,300);
 speaker2=new Speaker(630,300);
 clock=new Clock(30,100);
 
 //float posCX=30;
 //float posCY=50;
 /*for (int i=0;i<10;i++)
 {
   circles[i]= new Speaker(posCX,posCY);
   posCX+=20;
 }*/
 for (int i=0;i<6;i++)
 {
   controls[i]=new Control(30,140);
 }
}

//continuous happens
void draw()
{  
  //Call methods
  background(0);
  
  clock.time();
  grid.display();
  warning.display();
  image(img, 360, 90, 20, 20);
  //fill(0);
  stage.display();
  point.display();
  speaker.display();
  speaker2.display();
  /*for (int i=0;i<10;i++)
  {
    circles[i].circles();
  }*/
   for (int i=0;i<6;i++)
  {
    controls[i].display();
  }
  
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
  
  //lines above and below the time
  stroke(#3C837D);
  line(20,75,80,75);
    stroke(#3C837D);
  line(20,110,80,110);
}




void keyPressed() {
  point.move();
  //if (keyCode == UP)
  
    //println("move up");
}