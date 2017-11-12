float z;
void setup(){
  size(600,600,P3D);
  //noStroke();
  z=0;
  camera(70.0,35.0,50.0,
  50.0,50.0,0.0,
  0.0,1.0,0.0);
}

void draw(){
  z-=1;
  background(255,70);
  translate(10,100,z);
  rotateX(-PI/6);
  rotateY(PI/9);
  fill(0,255,200);
  box(10);
}
