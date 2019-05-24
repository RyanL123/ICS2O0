/*Recreation of a interactive Minecraft World with processing

  Front image of beach, trees and island are not drawn but part of Assignment2.png
  Water, sky, sun/moon, reflections are drawn
  =====================================================
  INSTRUCTIONS
  Press C to toggle clouds
  Press S to toggle stars (only works at night)
  To listen to ambient background Minecraft music for a more immersive experience, follow the instruction below
  Otherwise, comment out the Sound code
  1. Click sketch on the top left of processing
  2. Click import library
  3. Click add library
  4. In the search bar, search for "Sound"
  5. Install the Sound library provided by the official Processing Foundation
  =====================================================
  
*/

PImage img;
PImage moon;
PImage sun;
PImage clouds;  

//comment out if you don't need music
import processing.sound.*;
SoundFile sweden;

void setup() {
  size(728, 376);
  background(255);
  img = loadImage("Assignment2.png");
  moon = loadImage("Moon.png");
  sun = loadImage("Sun.png");
  clouds = loadImage("Clouds.png");
  strokeWeight(0);

  //comment out if you don't need music
  sweden = new SoundFile(this, "sweden.mp3");
  sweden.play();
}

boolean showClouds = true;
ArrayList<Integer> starX = new ArrayList<Integer>(), starY = new ArrayList<Integer>(), starSize = new ArrayList<Integer>();

void draw() {
  tint(255);
  sky();
  stars();
  water();
  sun();
  if (showClouds) {  
    tint(255, 150);
    image(clouds, 0, -100);
  }
  tint(255);
  image(img, 0, 0);
}

// functions for drawing each object

//==============================================================================================
//Toggles clouds/stars
//==============================================================================================

void keyReleased() {
  if (key == 'c') {
    showClouds = !showClouds;
  } else if (key == 's') {
    showStar = !showStar;
  }
}

//==============================================================================================
//Sun and moon
//==============================================================================================

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
  ry = -(0.0008057*(x*x)-(0.6593*x)-125);
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
//Sky
//==============================================================================================

//sky color
float r, g, b;

//draws sky color
void sky() {

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
  rect(0, 0, 728, 376);
}

//==============================================================================================
//Water
//==============================================================================================

//lighter
//84, 209, 255   51,88,99
//darker  
//48, 55, 255    0,0,21

float lighterR, lighterG, lighterB;
float darkerR, darkerG, darkerB;
void water() {
  //gradient for daytime
  if (status == 's') {
    lighterR = -0.0001245*(x*x)+(0.09066*x)+67.50;
    lighterG = -0.0004566*(x*x)+(+0.3324*x)+148.5;
    lighterB = -0.0005887*(x*x)+(0.4286*x)+177.0;
  } 
  //gradient for nighttime
  else {
    lighterR = 0.0001245*(x*x)-(0.09066*x)+67.50;
    lighterG = 0.0004566*(x*x)-(0.3324*x)+148.5;
    lighterB = 0.0005887*(x*x)-(0.4286*x)+177.0;
  }

  for (float i = 0; i < 206; i++) {
    fill(lighterR-i, lighterG-i, lighterB-i);
    rect(0, i+170, 728, i+170);
  }
}

//==============================================================================================
//Stars
//==============================================================================================

int count = 0;
float starAlpha;
boolean showStar = true;

void stars() {
  starAlpha = -0.001925*(x*x)+1.401*x;
  if (status != 'm' && x != 0) {
    starX.clear();
    starY.clear();
  }

  //Draws 50 stars with random positions
  while (status != 'm' && count != 50) {
    starX.add(int(random(0, 728)));
    starY.add(int(random(0, 376)));
    starSize.add(int(random(2, 5)));
    count++;
  }
  if (status == 'm') {
    for (int i = 0; i < starX.size(); i++) {
      fill (255, 255, 255, starAlpha);
      noStroke();
      if (showStar) {
        rect(starX.get(i), starY.get(i), starSize.get(i), starSize.get(i));
      }
    }
  }
  count = 0;
}