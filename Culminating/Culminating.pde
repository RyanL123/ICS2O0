void setup() {
  size(2000, 700);
  background(255);
}

void draw() {
  r();
}

void r() {
  //left bar
  for (int i = 200; i <= 500; i+=10) {
    line(100, i, 150, i);
  }
  
  //horizontal bar
  for (int i = 150; i <= 200; i+= 5) {
    line(i, 350, i, 200);
  }
  
  //circle
  int angle = 90;
  while (angle != 270) {
    if (angle == 0) {
      angle = 360;
    }
    line(200, 275, cos(radians(angle))*75+200, sin(radians(angle))*75+275);
    angle-=10;
  }
  for (float i = 150; i <= 300; i+=10){
    line(i, i+200, i+50, i+200);
  }
}