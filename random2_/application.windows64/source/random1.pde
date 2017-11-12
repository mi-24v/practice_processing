void setup() {
  size(500,500);
}

void draw(){
  background(0);
  fill(random(200),random(200),random(200));
  ellipse(random(width),random(height),50,50);
  rect(random(width),random(height),25,25);
  stroke(random(150),random(150),random(150));
  line(random(width),random(height),random(width),random(height));
  text("ランダム",random(width),random(height));
}
