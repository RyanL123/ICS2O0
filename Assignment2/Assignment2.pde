PImage img;
PImage moon;
PImage sun;
PImage clouds;

//sky color
float r = 0, g = 0, b = 0;

//sun and moon position
float x = 0, y = 150, x1 = x+40, angle = 0.05;

//time of day
char status = 's';

void setup() {
  size(728, 376);
  background(255);
  img = loadImage("Assignment2.png");
  moon = loadImage("Moon.png");
  sun = loadImage("Sun.png");
  clouds = loadImage("Clouds.png");
  strokeWeight(0);
}

void draw() {
  tint(255);
  colors();
  rect(0, 0, 728, 376);
  sun();
  tint(255,150);
  image(clouds, 0, -100);
  tint(255);
  image(img, 0, 0);
}

//draws sun and moon
void sun() {

  //toggles between sun and moon
  if (status == 's') {
    image(sun, x, y);
  } else if (status == 'm') {
    image(moon, x, y);
  }

  //moves sun/moon
  y = 0.0009057*(x*x)-(0.6593*x)+150;
  x++;

  //changes sun to moon
  if (x >= 728 && status == 's') {
    x = 0;
    y = 150;
    status = 'm';
  }

  //changes moon to sun
  else if (x>=728 && status == 'm') {
    x = 0;
    y = 150;
    status = 's';
  }
}

//draws sky gradient
void colors() {

  //draws sky color depending on time of day
  if (status == 's') {
    r = (-0.0004793*(x*x))+(0.3489*x)+76.5;
    g = (-0.0006566*(x*x))+(0.4780*x)+102;
    b = (-0.0008566*(x*x))+(0.6236*x)+141.5;
  } else {
    r = (0.0004793*(x*x))-(0.3489*x)+76.5;
    g = (0.0006566*(x*x))-(0.478*x)+102;
    b = (0.0008566*(x*x))-(0.6236*x)+141.5;
  }

  fill (r, g, b);
}
