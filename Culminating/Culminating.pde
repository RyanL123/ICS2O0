int angle = 90;
char angleDir = 's';
int backgroundColor = 255;
boolean nightMode = false;

void setup() {
  size(2000, 700);
  background(255);
}
void keyPressed() {
  if (key == ' ') {
    nightMode = !nightMode;
  }
}

void draw() {
  if (nightMode && backgroundColor != 0) {
    backgroundColor-=5;
    background(backgroundColor);
  } else if (!nightMode && backgroundColor != 255) {
    backgroundColor+=5;
    background(backgroundColor);
  }

  r();
  y();
  a();


  //draws the unit circle
  if (angleDir == 's') {
    angle-=10;
  } else if (angleDir == 'a') {
    angle+=10;
  }
}

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
  int yRightBranch = 400;
  int time = millis()/5;
  strokeWeight(3);
  stroke(0);


  stroke(time%127*random(1, 2), time%127*random(1, 3), time%127*random(1, 4));


  //left branch
  for (int i = 200; i <= 300; i+=10) {
    line(i+100, i, i+150, i);
  }

  //right branch
  for (int i = 300; i >= 200; i-=10) {
    line(yRightBranch, i, yRightBranch+50, i);
    yRightBranch +=10;
  }

  //middle pillar
  for (int i = 300; i<= 500; i+=10) {
    line(400, i, 450, i);
  }
}

void a() {
  stroke(0);
  int aLeftSide = 550;
  int aRightSide = 660;
  
  //left side
  for (int i = 500; i >= 200; i-=10) {
    line(aLeftSide, i, aLeftSide+50, i);
    aLeftSide += 3;
  }
  
  //right side
  for (int i = 200; i <= 500; i+=10) {
    line(aRightSide, i, aRightSide+50, i);
    aRightSide += 3;
  }
}

void n(){
  
}