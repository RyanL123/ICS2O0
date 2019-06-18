/*
================================================
Created by Ryan L
Press space bar to change to dark theme
Move mouse up and down to change color of N
================================================
*/

void setup() {
  size(2000, 700);
  background(255);
}

void draw() {
  //toggles dark mode
  if (nightMode && backgroundColor != 0) {
    backgroundColor-=5;
    background(backgroundColor);
  } else if (!nightMode && backgroundColor != 255) {
    backgroundColor+=5;
    background(backgroundColor);
  }

  if (aUp && aLeftSideY == 200) {
    aUp = !aUp;
  } else if (!aUp && aLeftSideY == 500) {
    aUp = !aUp;
  }

  r();
  y();
  a();
  n();
  dot();
  l();

  //draws the unit circle
  if (angleDir == 's') {
    angle-=10;
  } else if (angleDir == 'a') {
    angle+=10;
  }
}

//toggles dark mode
int backgroundColor = 255;
boolean nightMode = false;

void keyPressed() {
  if (key == ' ') {
    nightMode = !nightMode;
  }
}

int angle = 90;
char angleDir = 's';

void r() {
  int time = millis();
  strokeWeight(2);

  //left bar
  for (int i = 200; i <= 500; i+=10) {
    stroke(pow(radians(i), 3), pow(radians(i), 2), time%255);
    line(100, i, 150, i);
  }

  //vertical bar
  for (int i = 150; i <= 200; i+= 10) {
    stroke(pow(radians(i), 3), pow(radians(i), 5), time%255);
    line(i, 350, i, 200);
  }

  //UNIT CIRCLE
  if (angle == 0 && angleDir == 's') {
    angle = 360;
  } else if (angle == 360 && angleDir == 'a') {
    angle = 0;
  }

  if (angle == 270 && angleDir == 's') {
    angleDir = 'a';
  } else if (angle == 90 && angleDir == 'a') {
    angleDir = 's';
  }

  line(200, 275, cos(radians(angle))*75+200, sin(radians(angle))*75+275);

  //diagonal bar
  for (float i = 150; i <= 300; i+=10) {
    stroke(pow(radians(i), 2), pow(radians(i), 3), time%255);
    line(i/2+75, i+200, i/2+130, i+200);
  }
}

void y() {
  int yRightBranch = 380;
  int time = millis()/5;
  strokeWeight(3);
  stroke(0);

  stroke(time%127*random(1, 2), time%127*random(1, 3), time%127*random(1, 4));

  //left branch
  for (int i = 200; i <= 300; i+=10) {
    line(i+80, i, i+130, i);
  }

  //right branch
  for (int i = 300; i >= 200; i-=10) {
    line(yRightBranch, i, yRightBranch+50, i);
    yRightBranch +=10;
  }

  //middle pillar
  for (int i = 300; i<= 500; i+=10) {
    line(380, i, 430, i);
  }
}

int aLeftSideX = 500, aRightSideX = 700;
int aLeftSideY = 500, aRightSideY = 500;
boolean aUp = true;

void a() {
  int time = millis();
  if (nightMode) {
    stroke(255);
  } else {
    stroke(0);
  }

  stroke((aLeftSideY+time), (aLeftSideY+time)%60, (aLeftSideY+time)%255);
  line(aLeftSideX, aLeftSideY, aLeftSideX+50, aLeftSideY);
  line(aRightSideX, aRightSideY, aRightSideX+50, aRightSideY);

  if (aUp) {
    //left side
    aLeftSideY -=10;
    aLeftSideX += 3;

    //right side
    aRightSideY -=10;
    aRightSideX -= 3;
  } else {
    //left side
    aLeftSideY +=10;
    aLeftSideX -= 3;

    //right side
    aRightSideY +=10;
    aRightSideX += 3;
  }
}

void colorBelowMouse(int i) {
  if (i < mouseY && nightMode) {
    stroke(255);
  } else if (i < mouseY && !nightMode) {
    stroke(0);
  } else {
    stroke(i/1.9, i/2.3, i/4);
  }
}

void n() {
  float nSlantX = 800;
  stroke(0);
  for (int i = 200; i <= 500; i+=10) {
    colorBelowMouse(i);
    line(800, i, 850, i);
  }

  for (int i = 200; i <= 500; i+=10) {
    colorBelowMouse(i);
    line(nSlantX, i, nSlantX+50, i);
    nSlantX+=6.7;
  }

  for (int i = 200; i <= 500; i+=10) {
    colorBelowMouse(i);
    line(1000, i, 1050, i);
  }
}

int c = 0;
void dot() {
  colorMode(HSB);
  strokeWeight(1);
  fill (c, 255, 255);
  stroke(c, 255, 255);
  ellipse(1175, 500, 50, 50);
  if (c == 255) {
    c = 0;
  } else {
    c++;
  }
}

void l() {
  colorMode(RGB);
  int time = millis()/100;
  strokeWeight(3);
  stroke(0);
  for (int i = 200; i<= 500; i+=10) {
    stroke((i+time)%255, (i+time)%60, (i+time));
    if (i >= 450) {
      line(1300, i, 1450, i);
    } else {
      line(1300, i, 1350, i);
    }
  }
}
