void setup() {
  size(240, 240);
  frameRate(1);
  smooth();
}

void draw() {
  background(204);
  noStroke();
  ellipse (width/2, height/2, 200, 200);
  int h = hour();
  int m = minute();
  int s = second();
  stroke(0);
  //時針
  strokeWeight(4);
  pushMatrix();
  translate(width/2, height/2);
  rotate((h%12+m/60.0)*TWO_PI/12);
  line(0, 0, 0, -60);
  popMatrix();
  //分針
  strokeWeight(2);
  pushMatrix();
  translate(width/2, height/2);
  rotate((m+s/60.0)*TWO_PI/60);
  line(0, 0, 0, -80);
  popMatrix();
  //秒針
  strokeWeight(1);
  pushMatrix();
  translate(width/2, height/2);
  rotate(s*TWO_PI/60);
  line(0, 0, 0, -90);
  popMatrix();
}
