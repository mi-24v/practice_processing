void setup() {
  //size(1000,1000);
  frameRate(1);
  //smooth();
}

void draw() {
  background(random(200),random(200),random(200));
  noStroke();
  fill(0,0,0,200);
  ellipse (width/2, height/2, 800, 800);
  int h = hour();
  int m = minute();
  int s = second();
  stroke(15,224,250,200);
  //時針
  strokeWeight(11);
  pushMatrix();
  translate(width/2, height/2);
  rotate((h%12+m/60.0)*TWO_PI/12);
  line(0, 0, 0, -230);
  popMatrix();
  //分針
  strokeWeight(7);
  pushMatrix();
  translate(width/2, height/2);
  rotate((m+s/60.0)*TWO_PI/60);
  line(0, 0, 0, -300);
  popMatrix();
  //秒針
  strokeWeight(3);
  pushMatrix();
  translate(width/2, height/2);
  rotate(s*TWO_PI/60);
  line(0, 0, 0, -350);
  popMatrix();
}
