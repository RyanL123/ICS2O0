PImage img;

int r = 0, g = 0, b = 0;

void setup() {
  size(728, 376);
  background(255);
  img = loadImage("Assignment2.jpeg");
  strokeWeight(0);
}

void draw() {
  
  sky();
  
  colors();
  

}

void sky(){
  //covers the sky
  image(img, 0, 0);
  beginShape();
  vertex(221, 0);
  vertex(230, 15);
  vertex(232, 87);
  vertex(194, 85);
  vertex(194, 100);
  vertex(162, 100);
  vertex(162, 109);
  vertex(164, 110);
  vertex(165, 115);
  vertex(169, 115);
  vertex(170, 135);
  vertex(166, 135);
  vertex(169, 159);
  vertex(174, 160);
  vertex(173, 140);
  vertex(204, 141);
  vertex(204, 159);
  vertex(225, 160);
  vertex(226, 171);
  vertex(257, 172);
  vertex(257, 166);
  vertex(252, 166);
  vertex(252, 161);
  vertex(257, 160);
  vertex(257, 156);
  vertex(255, 155);
  vertex(254, 145);
  vertex(260, 144);
  vertex(259, 139);
  vertex(277, 139);
  vertex(278, 147);
  vertex(280, 147);
  vertex(280, 144);
  vertex(283, 145);
  vertex(283, 143);
  vertex(286, 142);
  vertex(286, 140);
  vertex(302, 140);
  vertex(302, 142);
  vertex(306, 143);
  vertex(307, 148);
  vertex(312, 149);
  vertex(313, 159);
  vertex(311, 160);
  vertex(311, 170);
  vertex(485, 171);
  vertex(486, 154);
  vertex(483, 153);
  vertex(482, 142);
  vertex(486, 142);
  vertex(486, 128);
  vertex(475, 128);
  vertex(474, 125);
  vertex(463, 124);
  vertex(463, 98);
  vertex(469, 95);
  vertex(476, 95);
  vertex(476, 86);
  vertex(482, 82);
  vertex(496, 82);
  vertex(504, 78);
  vertex(518, 78);
  vertex(518, 82);
  vertex(521, 82);
  vertex(521, 88);
  vertex(525, 88);
  vertex(526, 92);
  vertex(529, 93);
  vertex(529, 96);
  vertex(532, 97);
  vertex(531, 122);
  vertex(547, 123);
  vertex(548, 108);
  vertex(561, 104);
  vertex(580, 104);
  vertex(593, 100);
  vertex(614, 100);
  vertex(614, 116);
  vertex(634, 117);
  vertex(634, 135);
  vertex(638, 136);
  vertex(637, 157);
  vertex(664, 158);
  vertex(663, 174);
  vertex(671, 175);
  vertex(671, 171);
  vertex(694, 171);
  vertex(697, 135);
  vertex(689, 135);
  vertex(688, 139);
  vertex(645, 141);
  vertex(646, 122);
  vertex(636, 122);
  vertex(638, 54);
  vertex(646, 52);
  vertex(647, 36);
  vertex(658, 32);
  vertex(660, 12);
  vertex(682, 0);
  vertex(221, 0);
  endShape();
}

void colors(){
  
  fill (r,g,b);
  
  if (r != 255){
    r++;
  }
  if (r == 255 && g != 255){
    g++;
  }
  if (g == 255 && b!= 255){
    b++;
  }
  
}
