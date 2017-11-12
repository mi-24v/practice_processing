void setup(){
  size(300,600);
}

void draw(){
  PImage p=loadImage("0802.jpg");
  PImage q=loadImage("1239.jpg");
  image(p,0,0,width,height/2);
  image(q,0,height/2,width,height/2);
}
