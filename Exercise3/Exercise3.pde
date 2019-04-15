void setup() {
  size(300, 620);
}

void draw() {

  int time = millis();
  float x1 = 150;
  float y1 = 650;
  float sizeW = 100;

  //white pillar
  ellipse(x1+time/30, y1-time/2, sizeW-time/17, sizeW-time/17);

  float x2 = -10;
  float y2 = -10;
  float sizeB = 20;

  //black pillar
  ellipse(x2+time/30, y2+time/24, sizeB+time/100, sizeB+time/100);
}