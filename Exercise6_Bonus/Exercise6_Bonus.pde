void setup() {
  size(320, 620);
}


void draw() {
  noStroke();
  background(255);
  int i = 5;
  while (i < mouseX) {
    int j = 5;
    while (j < mouseY){
      fill(255,(i-5)*(j-5)%255,255);
      ellipse(i,j,10,10);
      j += 10;
    }
    i += 10;
  }
  
}