PImage img;
PImage moon;
PImage sun;

float r = 0, g = 0, b = 0;
//sun and moon position
float x = 0, y = 150, x1 = x+40, angle = 0.05;
boolean up = true;
char status = 's';
String time = "day";

void setup() {
  size(728, 376);
  background(255);
  img = loadImage("Assignment2.png");
  moon = loadImage("Moon.png");
  sun = loadImage("Sun.png");
  strokeWeight(0);
}

void draw() {
  colors();
  rect(0, 0, 728, 376);
  sun();
  image(img, 0, 0);
}

//draws sun and moon
void sun() {
  //draws sun/moon
  if (status == 's') {
    image(sun, x, y);
  } else if (status == 'm') {
    image(moon, x, y);
  }

  //moves sun/moons
  x+=sin(angle)*20;

  if (y<=50) {
    up = false;
  }
  if (up) {
    y-=0.27;
  } else {
    y+=0.27;
  }

  //changes sun to moon
  if (x >= 728 && status == 's') {
    up = true;
    x = 0;
    y = 150;
    status = 'm';
  }
  //changes moon to sun
  else if (x>=728 && status == 'm') {
    up = true;
    x = 0;
    y = 150;
    status = 's';
  }
}

//draws sky gradient
void colors() {

  if (time == "day"){
    r = (-0.0004793*(x*x))+(0.3489*x)+76.5;
    g = (-0.0006566*(x*x))+(0.4780*x)+102;
    b = (-0.0008566*(x*x))+(0.6236*x)+141.5;
  }
  else{
    r = (0.0004793*(x*x))-(0.3489*x)+76.5;
    g = (0.0006566*(x*x))-(0.478*x)+102;
    b = (0.0008566*(x*x))-(0.6236*x)+141.5;
  }
  
  fill (r, g, b);
  

  
}