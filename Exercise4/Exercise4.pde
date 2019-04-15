void setup() {
  size(300, 620);
  
}

float bx = 0;
float by = 0;
float size = 10;

//black pillars
void black() {
  stroke(255, 255, 255);
  fill(0, 0, 0);

  ellipse(bx, by, size, size);
  bx+=2;  
  by+=2.8;
  size+= 0.3;
}

float wPosition = -50;
float wOffset = -50;
float wx = -50;
float wy = 620;
float wSize = 70;

//white pillars
void white() {

  stroke(0, 0, 0);
  fill(255, 255, 255);
  ellipse(wx, wy, wSize, wSize);
  wx+=2;
  wy-=12;
  wSize-=1.3;
}


void draw() {
  strokeWeight(1);
  
  
  //black pillars
  if (bx < 300 && by < 310) {
    black();
  } 
  else {
    bx = random(-200, 270);
    by = random(-50, 0);
    size = 10;
  }


  //white pillars
  if (wx < 300 && wy >= 308) {
    white();
  } 
  else {
    if (wPosition >= 300){
      wOffset += 5;
      wPosition = wOffset;
    }
    else {
      wPosition += 25;
    }
    
    wx = wPosition;
    wy = 620;
    wSize = 70;
  }


  //green line
  stroke(76, 191, 147);
  strokeWeight(5);
  line(0, 310, 300, 310);
}