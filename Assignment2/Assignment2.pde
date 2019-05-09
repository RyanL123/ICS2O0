PImage img;
PImage moon;
PImage sun;

//float r = 140-80, g = 189-(80*140/189), b = 255-(80*140/255);
float r, g, b;
//sun and moon position
float x = 0, y = 150, x1 = x+40, angle = 0.05;
boolean up = true;
char status = 's';
String time = "night";

void setup() {
  size(728, 376);
  background(255);
  img = loadImage("Assignment2.png");
  moon = loadImage("Moon.png");
  sun = loadImage("Sun.png");
  strokeWeight(0);
}

void draw() {
  System.out.printf("%f  ",-0.001*(x*x)+(64/91)*x+12);
  colors();
  rect(0, 0, 728, 376);
  sun();
  image(img, 0, 0);
}

//draws sun and moon
void sun() {
  //changes color
  if (status == 's') {
    image(sun, x, y);
  } else if (status == 'm') {
    image(moon, x, y);
  }

  //draws sun/moon

  //rect(x, y, x1, x1);

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

  //r = 64*sin((1/116)*x-26.7)+76;
  //g = 87*sin((1/116)*x-26.7)+102;
  //b = 98*sin((1/116)*x-26.7)+127;
  
  r = -0.001*x*x+(64/91)*x+12;
  fill (r, g, b);
  

  
}