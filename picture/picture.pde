int x;
PImage t;
PImage u;
void setup(){
  size(500,500);
  t=loadImage("gh2000.jpg");
  u=loadImage("gh1000.jpg");
  x=0;
  imageMode(CENTER);
}

void draw(){
  background(0);
  x-=3;
  if(x<-100){
    x=width+100;
  }
  if(keyPressed){
    if(key=='u'){
      image(u,random(500),random(500),100,100);
    }
  }
  image(t,x,height/2,200,200);
}
