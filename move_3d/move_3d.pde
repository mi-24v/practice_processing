float x;
void setup(){
  size(500,500,P3D);
  x=0;
}

void draw(){
  x+=1;
  if(x>width+100){
    x=-50;
  }
  if(keyPressed==true){
    fill(random(255),random(255),random(255),200);
  }else{
    fill(0);
  }
  background(255);
  noStroke();
  translate(x,height/2);
  //lights();
  sphere(50);
}
