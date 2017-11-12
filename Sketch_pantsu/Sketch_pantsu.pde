int[]x,y,lr,li;
void setup(){
  PImage p=loadImage("pantsu.jpg");
  PImage q=loadImage("tank.jpg");
  int i;
  x=new int[100];
  y=new int[100];
  lr=new int[100];
  li=new int[100];
  for(i=0; i<100; ++i){
    x[i]=int(random(width));
    y[i]=int(random(height));
    lr[i]=int(random(2))*2-1;
    li[i]=int(random(2))*2-1;
  }
  //size(700,500);
  noStroke();
  imageMode(CENTER);
}

void draw(){
  int i;
  PImage p=loadImage("pantsu.jpg");
  PImage q=loadImage("mi24.jpg");
  image(q,width/2,height/2,width,height);
  for(i=0; i<100; ++i){
    x[i]+=lr[i];
    y[i]+=li[i];
    if(x[i]>width){
      lr[i]=int(random(7))*-1-1;
    }else if(x[i]<0){
      lr[i]=int(random(5))+1;
    }
    if(y[i]>height){
      li[i]=int(random(6))*-1+1;
    }else if(y[i]<0){
      li[i]=int(random(5))+1;
    }
    image(p,x[i],y[i],60,60);
    if(keyPressed){
      x[i]=pmouseX;
      y[i]=pmouseY;
    }
  }
}
