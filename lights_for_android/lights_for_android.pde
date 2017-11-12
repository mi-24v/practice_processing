void setup() {
  size(1000, 1000, P3D);
}

void draw() {
   if(mousePressed==true){
  fill(random(255),random(255),random(255),200);
  }else{
    fill(255,0,0);
  }
  background(0);
  lights();
  translate(width/2, height/2);
  //rotateX(frameCount*PI/120);
  rotateY(frameCount*PI/120);
  translate(50, 0);
  noStroke();
  //fill(255,0,0);
  sphere(300); //半径30pxの球
  translate(350,350);
  sphere(50);
}
