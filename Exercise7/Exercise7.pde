
void setup() {
  size(320, 620);
  background(255, 255, 255);

}

void draw() {
  
  //circle
  strokeWeight(0);
  
  for (int i = 255; i > 0; --i){
      stroke(255,i-55,i);
      fill(255,i-55,255-i/13);
      ellipse(160,470,i,i);
  }
  
  stroke(0);
  //top gradient
  for (int i = 0; i < 16; i++) {
    for (int j = 0; j < 16; j++) {
      fill(j*20, j*20, j*20);
      ellipse(i*20+10, j*20+10, 20, 20);
    }
  }
  
  
}