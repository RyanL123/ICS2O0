// This is a comment.  Processing ignores everything after a double forward slash.

/* 
 This is a block comment.  Processing ignores everything from one
 forward slash-asterisk to the very next asterisk-forward slash. 
 */

void setup() {
  size(800, 600);  // width and height of the run screen
}

void draw() {
  //background color
  background(119, 176, 245);
  
  //sun
  fill(251,245,0);
  stroke(251,245,0);
  ellipse(200,300,100,100);
  
  strokeWeight(3);
  fill(251,245,0);
  line(118,295,280,295);
  line(152,280,121,269);
  line(160,267,133,247);
  line(171,257,150,229);
  line(184,251,173,218);
  line(198,250,198,214);
  line(213,251,224,217);
  line(226,257,246,229);
  line(237,266,264,246);
  line(245,279,275,268);
  
  stroke(0,0,0);
  strokeWeight(1);
  
  //grass
  fill(28, 233, 92);
  rect(0, 600, 800, -300);
  
  //house
  fill(238, 99, 124);
  rect(533, 350, 150, -100);
  
  //door
  fill(255, 251, 255);
  rect(588, 340, 40, -70);
  
  //doorhandle
  fill(0,0,0);
  ellipse(593,305,8,8);
  
  //roof
  fill(0,0,0);
  triangle(528,250,688,250,608,200);
  
    
}