PImage img;
PImage moon;
PImage sun;
PImage clouds;

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
  water();
  sun();
  tint(255, 150);
  image(clouds, 0, -100);
  tint(255);
  image(img, 0, 0);
}

/* functions for drawing each object
 *==============================================================================================
 */


//sun and moon position
float x = 0, y = 150;
//sun and moon reflection position
float rx = 0, ry = 300;
//time of day
char status = 's';

//draws sun and moon
void sun() {

  //toggles between sun and moon
  if (status == 's') {
    tint(255);
    image(sun, x, y);
    tint(255, 150);
    image(sun, rx, ry);
  } else if (status == 'm') {
    tint(255);
    image(moon, x, y);
    tint(255, 150);
    image(moon, rx, ry);
  }

  //moves sun/moon
  y = 0.0009057*(x*x)-(0.6593*x)+150;
  x++;
  ry = -(0.0009057*(x*x)-(0.6593*x)-125);
  rx++;

  //changes sun to moon
  if (x >= 728 && status == 's') {
    x = 0;
    rx = 0;
    y = 150;
    ry = 300;
    status = 'm';
  }

  //changes moon to sun
  else if (x>=728 && status == 'm') {
    x = 0;
    rx = 0;
    y = 150;
    ry = 300;
    status = 's';
  }
}

//==============================================================================================

//sky color
float r, g, b;

//draws sky color
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

//==============================================================================================

//lighter
//84, 209, 255   51,88,99
//darker  
//48, 55, 255    0,0,21

float lighterR, lighterG, lighterB;
float darkerR, darkerG, darkerB;
void water() {
  //for (float i = 0; i < 206; i++) {
  //  fill((-0.17475728)*i+84, (-0.74757281)*i+209, 255);
  //  rect(0, i+170, 728, i+170);
  //}
  //lighter color of gradient
  if (status == 's') {
    lighterR = -0.0001245*(x*x)+(0.09066*x)+67.50;
    lighterG = -0.0004566*(x*x)+(+0.3324*x)+148.5;
    lighterB = -0.0005887*(x*x)+(0.4286*x)+177.0;
  } else {
    lighterR = 0.0001245*(x*x)-(0.09066*x)+67.50;
    lighterG = 0.0004566*(x*x)-(0.3324*x)+148.5;
    lighterB = 0.0005887*(x*x)-(0.4286*x)+177.0;
  }
  //darker color of gradient
  if (status == 's') {
    darkerR = -0.0001811*(x*x)+(0.1319*x)+24.00;
    darkerG = -0.0002076*(x*x)+(0.1511*x)+27.50;
    darkerB = -0.0008830*(x*x)+(0.6429*x)+138.0;
  } else {
    darkerR = 0.0001811*(x*x)-(0.1319*x)+24.00;
    darkerG = 0.0002076*(x*x)-(0.1511*x)+27.50;
    darkerB = 0.0008830*(x*x)-(0.6429*x)+138.0;
  }
  fill(lighterR, lighterG, lighterB);
  rect(0, 170, 728, 376);
  //for (float i = 0; i < 206; i++){
  //  rect(0,i+170, 728, i+170);
  //}
}