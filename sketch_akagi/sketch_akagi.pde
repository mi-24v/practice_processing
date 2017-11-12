void setup(){
  size(500,500,P3D);
  noStroke();
}

void draw(){
  PImage p=loadImage("20.00.47.jpg");
  background(0,50);
  image(p,0,0);
  pushMatrix();
  rotateY(frameCount*PI/90);
  //rotateZ(frameCount*PI/90);
  translate(width/2,height/2,59);
  fill(8,118,250,70);
  sphere(50);
  popMatrix();
  rotateX(frameCount*PI/120);
  fill(250,60,8);
  sphere(39);
}
