PImage img;
void setup() {
  size(512, 319);
  background(255, 255, 255);
  img = loadImage("QQPenguin.jpg");
}


//recursively draws a gradient
int gradient(int x, int y, int s, int r, int g, int b, int i, int increment, int stop){
  
  stroke(r+i*increment, g+i*increment, b+i*increment);
  fill(r+i*increment, g+i*increment, b+i*increment);
  ellipse(x, y, s+2-i, s-i);
  
  if (i != stop){
    return gradient(x,y,s,r,g,b,i+1,increment,stop);
  }
  else{
    return 0;
  }
}


void draw() {
  //image(img, 0, 0);

  //left feet
  fill(251, 171, 10);
  strokeWeight(1);
  stroke(166, 73, 14);

  ellipse(198, 257, 70, 40);

  //right feet
  ellipse(294, 257, 70, 40);



  strokeWeight(1);
  stroke(32, 29, 36);
  fill(32, 29, 36);

  //body
  ellipse(246, 182, 170, 170);

  //stomach
  stroke(255, 255, 255);
  fill(255, 255, 255);
  ellipse(246, 194, 142, 140);

  //draw stomach gradient recursively;
  
  gradient(246,194,140,210,220,230,0,2,90);

  //head
  stroke(32, 29, 36);
  fill(32, 29, 36);
  ellipse(248, 119, 150, 150);

  //left eye
  fill(255, 255, 255);
  stroke(255, 255, 255);
  ellipse(226, 100, 26, 40);

  //left eyeball
  fill(0, 0, 0);
  stroke(0, 0, 0);
  ellipse(233, 100, 10, 16);

  fill(255, 255, 255);
  stroke(255, 255, 255);
  ellipse(233, 98, 2, 4);
  ellipse(230, 103, 1, 1);

  //right eye
  fill(255, 255, 255);
  stroke(255, 255, 255);
  ellipse(267, 100, 26, 40);


  //right wink
  fill(0, 0, 0, 0);
  stroke(0, 0, 0);
  strokeWeight(3);
  arc(265, 101, 10, 12, 3.14159, 6.45772);

  //beak
  strokeWeight(1);
  fill(251, 171, 10);
  stroke(251, 171, 10);

  beginShape();
  vertex(198, 140);
  bezierVertex(198, 140, 249, 104, 300, 140);
  bezierVertex(300, 140, 249, 175, 198, 140);
  endShape();

  stroke(32, 29, 36);
  strokeWeight(3);
  noFill();
  arc(249, 108, 100, 100, 0.785398, 2.35619);

  //left arm
  strokeWeight(1);
  fill(32, 29, 36);
  stroke(32, 29, 36);

  beginShape();
  vertex(164, 156);
  bezierVertex(164, 156, 130, 176, 143, 226);
  bezierVertex(143, 226, 157, 223, 165, 208);
  endShape();

  //right arm
  strokeWeight(1);
  fill(32, 29, 36);
  stroke(32, 29, 36);

  beginShape();
  vertex(329, 156);
  bezierVertex(329, 156, 364, 176, 351, 226);
  bezierVertex(351, 226, 337, 223, 329, 208);
  endShape();

  //scarf tongue
  fill(0, 0, 0, 0);
  strokeWeight(1);
  stroke(0, 0, 0);
  fill(253, 41, 3);

  beginShape();
  vertex(192, 181);
  vertex(224, 191);
  vertex(222, 222);
  bezierVertex(222, 222, 201, 227, 189, 216);
  bezierVertex(189, 216, 184, 204, 192, 181);
  endShape();

  //scarf
  fill(253, 41, 3);
  strokeWeight(1);
  stroke(0);

  beginShape();
  vertex(173, 126);
  bezierVertex(173, 126, 246, 218, 323, 126);
  bezierVertex(323, 126, 337, 133, 332, 153);
  bezierVertex(332, 153, 246, 247, 162, 153);
  bezierVertex(162, 153, 159, 138, 166, 137);
  bezierVertex(166, 137, 164, 126, 173, 126);
  endShape();
}