void setup() {
  size(400, 400);
  textAlign(CENTER);
  textSize(25);
}

void draw() {
  background(0);
  fill(random(256),random(256),random(256));
  translate(width/2, height/2);
  rotate(frameCount*PI/60);
  text("(๑˘ω˘๑)",0,0);
  translate(-width/4,-height/4);
  rotate(frameCount*PI/60);
  text("╚(˘ω˘)╝",0,0);
}
