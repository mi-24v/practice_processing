float x;
void setup(){
  size(1000,1000,P3D);
  x=0;
}

void draw(){
  x+=10;
  if(x>width){
    x=-50;
  }
  if(keyPressed==true){
    fill(random(255),random(255),random(255),200);
  }else{
    fill(0);
  }
  background(255);
  noStroke();
  translate(x,500);
  lights();
  sphere(150);
}
