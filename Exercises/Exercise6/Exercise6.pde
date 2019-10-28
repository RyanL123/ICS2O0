void setup(){
  size(804,750);
}

void draw(){
  
  //left lines
  for(int i = 1; i < 16; i++){
    stroke((i-1)*30,(i-1)*30,(i-1)*30);
    strokeWeight(1);
    line(674,i*45-15,402,750);
  }
  
  //right lines
  for(int i = 1; i < 16; i++){
    stroke((i-1)*30,(i-1)*30,(i-1)*30);
    strokeWeight(1);
    line(130,i*45-15,402,750);
  }
  
  stroke(0,0,0);
  
  // left red pillar
  for(int i = 1; i < 8; i++){
    fill(i*30,0,0);  
    rect(40,i*90-60,90,90);
    
  }
  
  //right red pillar
  for(int i = 1; i < 8; i++){
    fill(i*30,0,0);
    rect(674,i*90-60,90,90);
  }
  
  
  
  //blue triangles
  for (int i = 1; i < 5; i++){
    fill(0,0,i*30);
    int x1 = i*120+80;
    int x2 = i*120+80+45;
    triangle(x1,120,(x1+x2)/2,30,x2,120);
  }
  
  //green circles
  for (int i = 1; i < 6; i++){
    fill(0,i*30+30,0);
    ellipse(i*50+252,210,50,50);
  }
  
  
}