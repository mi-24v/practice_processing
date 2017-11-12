int flex=250;
int fley=250;
int fx=300;
int fy=275;
int x=320;
int y=280;
void setup(){
  size(600,600);
  //sizing images
}

void draw(){
  int n=1;
  PImage fleisch=loadImage("fleisch.png");
  PImage fle=loadImage("fle.png");
  background(255,255,255);
  imageMode(CENTER);
  image(fle,width/3,height/2,fx,fy);
  imageMode(CORNER);
  pushMatrix();
  translate(x+flex/2,y);
  if(keyPressed == true){
    rotate(-radians(90));
  } 
  image(fleisch,-flex/2,-fley,flex,fley);
  popMatrix();
}

void keyPressed(){
  fx+=25;
  fy-=20;
  if(fy<0){
    fy=1;
  }  
}
