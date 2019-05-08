PImage img;
PImage moon;
PImage sun;

float r = 140-80, g = 189-(80*140/189), b = 255-(80*140/255);
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

  //moves sun/moon
  x+= sin(angle)*20;

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

  fill (r, g, b);
  
  if (r < 13 && g < 18 && b < 32 && time == "day"){
    time = "night";
  }
  else if (r > 140 && g > 189 && b > 255 && time == "night"){
    time = "day";
  }

  if (time == "day") {
    r = r-223/127/3.1;
    g = g-223/171/3.1;
    b = b-1/4.1;
  } else {
    r = r+223/127/3.1;
    g = g+223/171/3.1;
    b = b+1/3.1;
  }
}