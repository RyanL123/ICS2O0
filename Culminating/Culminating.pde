int angle = 90;
char angleDir = 's';

void setup() {
  size(2000, 700);
  background(255);
}

void draw() {
  r();
  y();
  
  //draws the unit circle
  if (angleDir == 's'){
    angle-=10;
  }
  else if (angleDir == 'a'){
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

  //horizontal bar
  for (int i = 150; i <= 200; i+= 10) {
    stroke(pow(radians(i), 3), pow(radians(i), 5), time%255);
    line(i, 350, i, 200);
  }

  //UNIT CIRCLE

  if (angle == 0 && angleDir == 's'){
    angle = 360;
  }
  else if (angle == 360 && angleDir == 'a'){
    angle = 0;
  }
  
  if (angle == 270 && angleDir == 's'){
    angleDir = 'a';
  }
  else if (angle == 90 && angleDir == 'a'){
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
  strokeWeight(3);
  stroke(0);
  //leaf
  fill(67, 188, 11);
  ellipse(475, 225, 300, 250);

  //branches

  fill(122, 62, 23);
  beginShape();
  vertex(500, 500);
  vertex(450, 500);
  bezierVertex(450, 500, 450, 250, 350, 200);
  bezierVertex(350, 200, 475, 250, 475, 350);
  bezierVertex(475, 350, 475, 250, 600, 200);
  bezierVertex(600, 200, 500, 250, 500, 500);
  endShape();
}