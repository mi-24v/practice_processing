void setup() {
  size(250,150);
  textSize(50);
  textAlign(CENTER);
  frameRate(1);
}

void draw() {
  background(0);
  int h = hour();
  int m = minute();
  int s = second();
  String t = h + ":" + nf(m, 2) + ":" + nf(s, 2);
  //println(t);
  text (t,width/2,height/2);
}
