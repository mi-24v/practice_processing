void setup() {
  //size(500,500);
  textSize(50);
}

void draw(){
  background(0);
  fill(random(200),random(200),random(200));
  ellipse(random(width),random(height),100,100);
  rect(random(width),random(height),100,100);
  stroke(random(150),random(150),random(150));
  line(random(width),random(height),random(width),random(height));
  text("クソネミ",random(width),random(height));
}
