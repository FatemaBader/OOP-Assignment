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

Radio[] squares=new Radio[20];
Text hello;
//radar
Radar radar;
float speed = 0.01; // How fast we want the radar to spin
int trailLength = 50;  
float theta = 0;
float cx, cy;
float radius = 200;

//radio position
float radposx=730;
float radposy=300;
//float radposx2=730;
//float radposy2=315;
void drawRadar1()
{
  stroke(0, 255, 0);
  noFill();
  // Draw the outside of the radar
  ellipse(cx, cy, radius * 2, radius * 2);

  // Make the line colour fade to 0 for each successive line we draw
  float intensityChange = 255.0f / trailLength; 
  
  for(int i = 0 ; i < trailLength ; i ++) // Draw trailLength lines
  {
    float lineTheta = theta - (i * speed);
    stroke(0, 0, 255 - (i * intensityChange));
    float x = cx + sin(lineTheta) * radius;
    float y = cy - cos(lineTheta) * radius;
    line(cx, cy, x, y);
    
    // An arc might be an even better solution
  }
  theta += speed;
}


PGraphics pg;

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
  //radar
  cx = width / 2;
  cy = height / 2;
  smooth();  
  
  radar=new Radar(450, 280, 60, -0.01f);  
  pg = createGraphics(width, height);
  
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
 for (int i=0;i<20;i++)
 {
   squares[i]=new Radio(radposx,radposy);
   radposx+=5;
 }
}

//continuous happens
void draw()
{  
  //

  
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
  radar.update();
  radar.render();
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
   for (int i=0;i<20;i++)
  {
    squares[i].display();
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
  float lasty = width/2;
  for (float x=6; x<width/5; x+=step)
  {
    float tmpx = map(x, 0, 100, -6, 2);    
    float tmpy = wave(tmpx);
    float y = map(tmpy, -3, 0, height/2, 60);
    fill(255);
    stroke(255);
    line(lastx, lasty, x, y);

    lastx = x;
    lasty = y;
  }
  t += 0.3;  
  B += (Btarget-B)/200;

}



void keyPressed() {
  point.move();
  //if (keyCode == UP)
  
    //println("move up");
}