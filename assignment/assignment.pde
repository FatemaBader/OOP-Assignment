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

//radio lights up
Radio[] squares=new Radio[25];
Radio[] squares2=new Radio[5];
Radio[] squares3=new Radio[5];
Radiotwo[] squarestwo=new Radiotwo[25];
Radiothree[] squaresthree=new Radiothree[18];
Radiothree[] squarestwo2=new Radiothree[15];
Radiothree[] squarestwo3=new Radiothree[15];

//mini screen
Miniscreen[][] circles=new Miniscreen[18][60];

//lights
Lights[][] lights=new Lights[2][12];

//loading sign
Loadingsign[] load=new Loadingsign[4];
Loadingsign[] load2=new Loadingsign[8];
Loadingsign[] load3=new Loadingsign[7];

//red sign
Redsigns[] red=new Redsigns[3];

Text hello;
//radar
Radar radar;
Radar radar2;
float speed = 0.01; // How fast we want the radar to spin
int trailLength = 10;  
float theta = 0;
float cx, cy;
float cx2,cy2;
float radius = 50;

//radio position
float radposx=710;
float radposy=300;
////
float radiox=35;
float radioy=232;
float radx=35;
float rady=225;
float radposx2=710;
float radposy2=310;
//////////////////////////////
float radposx22=50;
float radposy22=330;
/////////////////////////////
float radposx23=60;
float radposy23=280;

float radposx3=710;
float radposy3=325;

//mini screen x and y starting points
float minix=735;
float miniy=50;

//lights x and y starting points
float lx=710;
float ly=230;

//loading signs starting points
float ldx=714;
float ldy=170;
int ld2x=105;
int ld2y=90;
float ld3x=120;
int ld3y=110;

//redsigns
float xcor=714;
float ycor=60;

// Lerp
int X_AXIS = 2;
int Y_AXIS = 1;
color c1, c2;
color t1, t2;
color w1,w2;
color ll1,ll2;
color b1,b2;
void drawRadar1()
{
  stroke(0, 255, 0);
  noFill();
  // Draw the outside of the radar
  ellipse(cx, cy, radius * 2, radius * 2);
  ellipse(cx2, cy2, radius *2, radius *2);

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
  //lerp colors
  c1 = color(#21DBC1);
  c2 = color(#ED2BD7);
  t1 = color(#E8079D);
  t2 = color(#E8079D);
  w1 = color(#21DBC1);
  w2 = color(#ED2BD7);
  ll1 = color(0);
  ll2 = color(#E0122A);
  b1 = color(0);
  b2 = color(#0B2439);
  
  //radar
  cx = width / 2;
  cy = height / 2;
  smooth();  
  
  radar=new Radar(250, 300, 30, -0.2f); 
  radar2=new Radar(630,300,30, -0.2f);
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
 point= new Point(450,320);
 speaker=new Speaker(250,300);
 speaker2=new Speaker(630,300);
 clock=new Clock(30,100);
 hello=new Text(10,55,10);
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
 for (int i=0;i<25;i++)
 {
   squares[i]=new Radio(radposx,radposy);
   radposx+=5;
 }
 for (int i=0;i<5;i++)
 {
   squares2[i]=new Radio(radiox,radioy);
   radiox+=5;
 }
 for (int i=0;i<5;i++)
 {
   squares3[i]=new Radio(radx,rady);
   radx+=5;
 }
  for (int i=0;i<25;i++)
 {
   squarestwo[i]=new Radiotwo(radposx2,radposy2);
   radposx2+=5;
 }
  for (int i=0;i<15;i++)
 {
   squarestwo2[i]=new Radiothree(radposx22,radposy22);
   radposx22+=8;
 }
   for (int i=0;i<18;i++)
 {
   squaresthree[i]=new Radiothree(radposx3,radposy3);
   radposx3+=7;
 }
    for (int i=0;i<15;i++)
 {
   squarestwo3[i]=new Radiothree(radposx23,radposy23);
   radposx23+=7;
 }
 for(int j=0;j<60;j++)
 {
    for (int i=0;i<18;i++)
   {
     circles[i][j]=new Miniscreen(minix,miniy);
     minix+=5;
   }
   minix=735;
   miniy+=4;
 }
 for(int j=0;j<12;j++)
 {
    for (int i=0;i<2;i++)
   {
     lights[i][j]=new Lights(lx,ly);
     lx+=5;
   }
   lx=710;
   ly+=5;
 }
  for (int i=0;i<4;i++)
 {
   load[i]=new Loadingsign(ldx,ldy);
   ldy+=15;
 }
    for (int i=0;i<8;i++)
   {
     load2[i]=new Loadingsign(ld2x,ld2y);
     ld2x+=15;
   }
   for (int i=0;i<7;i++)
   {
     load3[i]=new Loadingsign(ld3x,ld3y);
     ld3x+=15;
   }
     
    for (int i=0;i<3;i++)
   {
     red[i]=new Redsigns(xcor,ycor);
     ycor+=15;
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
   //lerp warning
   lerpwarning(315,45, 250 ,80, ll2, ll1, Y_AXIS);
  warning.display();
  
  image(img, 360, 90, 20, 20);
  //fill(0);
  stage.display();
  
  point.display();
  
  speaker.display();
  
  speaker2.display();
  radar.update();
  radar.render();
  
  radar2.update();
  radar2.render();
  /*for (int i=0;i<10;i++)
  {
    circles[i].circles();
  }*/
   for (int i=0;i<6;i++)
  {
    controls[i].display();
  }
   for (int i=0;i<25;i++)
  {
    squares[i].display();
  }
  for (int i=0;i<5;i++)
  {
    squares2[i].display();
  }
  for (int i=0;i<5;i++)
  {
    squares3[i].display();
  }
   for (int i=0;i<25;i++)
  {
    squarestwo[i].display();
  }
     for (int i=0;i<15;i++)
  {
    squarestwo2[i].display();
  }
     for (int i=0;i<18;i++)
  {
    squaresthree[i].display();
  }
     for (int i=0;i<15;i++)
  {
    squarestwo3[i].display();
  }
  
  
   //lerp lerpmini
   lerpmini(735,50, 85 ,230, b2, b1, Y_AXIS);
  //mini screen
  for (int j=0;j<60;j++)
  {
        for (int i=0;i<18;i++)
    {
      circles[i][j].display();
      
    }
  }
    //lights
  for (int j=0;j<12;j++)
  {
        for (int i=0;i<2;i++)
    {
      lights[i][j].display();
      
    }
  }
  //loading signs
   for (int i=0;i<4;i++)
  {
    load[i].display();
  }
  
      for (int i=0;i<8;i++)
     {
       load2[i].display2();
     }
     for (int i=0;i<7;i++)
     {
       load3[i].display3();
     }
    //redsigns
      for (int i=0;i<3;i++)
     {
       red[i].display();
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
  
  //line on right side of mini screen
     stroke(#4882A5);
    line(825,285,825,200);
    
      //line on left side of mini screen
     stroke(#4882A5);
    line(728,285,728,200);
    
       //line on bottom of mini screen
     stroke(#4882A5);
    line(715,295,830,295);
    
    //left side radio lines
    stroke(#20305F);
    fill(#20305F);
    line(80,265,40,265);
    
    //text
    stroke(#766D6D);
    fill(#766D6D);
    text("BIO UNIT CAPACITY",85,270);
    
    //
    strokeWeight(3);
    stroke(#20305F);
    fill(#20305F);
    line(38,265,35,270);
    strokeWeight(5);
    fill(#20305F);
    line(35,270,35,295);
    
    strokeWeight(3);
    fill(#20305F);
    line(35,295,40,300);
    
    stroke(#20305F);
    line(40,300,80,300);
    
    //
  stroke(#20305F);
    fill(#20305F);
    line(80,310,40,310);
    //text
    stroke(#766D6D);
    fill(#766D6D);
    text("BIO UNIT",75,325);
    
    strokeWeight(3);
      stroke(#20305F);
    fill(#20305F);
    line(38,310,35,315);
    strokeWeight(5);
    fill(#20305F);
    line(35,315,35,350);
    
    strokeWeight(3);
    fill(#20305F);
    line(35,350,40,355);
    
    stroke(#20305F);
    line(40,355,80,355);
    
    stroke(0);
    fill(0);
    rect(0,50,10,800);
    
    stroke(#281981);
    fill(#281981);
    rect(70,220,100,18);
    
    //lerp
    setGradient(70, 220, 70, 6, c2, c1, X_AXIS);
    setGradientt(70, 226, 85, 3, t2, t1, X_AXIS);
    setGradienttt(70, 234, 30 ,3, w2, w1, X_AXIS);
    
    //black line
    stroke(0);
    strokeWeight(0.5);
    line(70,230,180,230);
    line(70,225,180,225);
    line(70,232,180,232);
    
stroke(0);
   fill(0);
   strokeWeight(25);
   line(307,90,340,20);
stroke(0);
   fill(0);
   strokeWeight(25);
   line(580,90,550,20);
   strokeWeight(2);
   stroke(0);
   line(30,230,60,230);
   strokeWeight(3);
   
}
//lerp lerpmini
void lerpmini(int x, int y, float w, float h, color c1, color c2, int axis ) {

  noFill();

  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }  
  
}
//lerp warning sign
void lerpwarning(int x, int y, float w, float h, color c1, color c2, int axis ) {

  noFill();

  if (axis == Y_AXIS) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }  
  
}
//lerp1
void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {

  noFill();

  
  if (axis == X_AXIS) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
}
//lerp2
void setGradientt(int x, int y, float w, float h, color t1, color t2, int axis ) {

  noFill();

  
  if (axis == X_AXIS) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(t1,t2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
}
//lerp3
void setGradienttt(int x, int y, float w, float h, color w1, color w2, int axis ) {

  noFill();

  
  if (axis == X_AXIS) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(w1,w2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
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
  //point.drawSquare();
  point.move();
  
  //if (keyCode == UP)
  
    //println("move up");
}