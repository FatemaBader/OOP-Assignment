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

Text hello;

//sine wave
float Btarget = 9.0;
float A = 1.0;
float K = 6.0;
float B = 6.0;
float t = 2.0;
float step = 1;

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
 hello=new Text(10,60,10);
 //float posCX=30;
 //float posCY=50;
 /*for (int i=0;i<10;i++)
 {
   circles[i]= new Speaker(posCX,posCY);
   posCX+=20;
 }*/
 for (int i=0;i<6;i++)
 {
   //1.57 in degrees
   controls[i]=new Control(30,140,1.5708);
 }

}

//continuous happens
void draw()
{  
  //sine wave
  background(0);
  Btarget=random(10, 15);
  
  
  //Call methods
  background(0);
   stroke(#60E8E0);
  fill(#60E8E0);
  waves();
  hello.display();
  
  hello.display2();
  
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
    controls[i].moveArc();
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

//sine wave
float wave(float x) {
    stroke(#60E8E0);
  fill(#60E8E0);
  return A*pow(K/(K+pow(x, 4)), K)*cos(B*x-t);
}

void waves()
{
  background(0);
  stroke(#60E8E0);
  fill(#60E8E0);
  float lastx = 0.0;
  float lasty = width/6;
  for (float x=0; x<width/6; x+=step)
  {
    float tmpx = map(x, 0, 100, -2, 2);    
    float tmpy = wave(tmpx);
    float y = map(tmpy, -10, -1, height/2, 60);
    fill(255);
    stroke(255);
    line(lastx, lasty, x, y);

    lastx = x;
    lasty = y;
  }
  t += 0.3;  
  B += (Btarget-B)/100;

}



void keyPressed() {
  point.move();
  //if (keyCode == UP)
  
    //println("move up");
}