void setup(){
  size(500,500,P3D);
  rectMode(CENTER);
}

void draw(){
  background(0);
  translate(width/2, height/2);
  rotateX(frameCount*PI/60);
  rotateY(frameCount*PI/60);
  fill(mouseX,mouseY,255);
  rect(0, 0, width/3, height/3);
}
