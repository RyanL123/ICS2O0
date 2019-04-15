void setup(){
  size(800,828);
}

void draw(){
  background(255,255,255);

  //yellow arc
  strokeWeight(24);
  stroke(217,249,58);
  noFill();
  arc(353,573,516,516,3.01942,6.10865);
  
  //red arc
  strokeWeight(28);
  stroke(218,74,84);
  noFill();
  arc(351,505,522,522,PI,6.31809);

  //green arc
  strokeWeight(18);
  stroke(54,245,122);
  noFill();
  arc(353,521,556,556,2.79253,6.45772);
  
  //blue arc
  strokeWeight(11);
  stroke(72,135,242);
  noFill();
  arc(353,537,482,482,3.19395,6.33555);
  
  
  strokeWeight(1);
  
  
  //yellow circle
  fill(218,250,51);
  stroke(218,250,51);
  ellipse(353,598,10,10);
  
  //blue circle
  fill(68,145,217);
  stroke(68,145,217);
  ellipse(353,560,10,10);
  
  //purple circle
  fill(164,76,197);
  stroke(164,76,197);
  ellipse(353,537,10,10);
  
  //red circle
  fill(254,32,76);
  stroke(254,32,76);
  ellipse(353,522,10,10);
  
  //green circle
  fill(54,245,122);
  stroke(54,245,122);
  ellipse(353,517,10,10);
  
  
}