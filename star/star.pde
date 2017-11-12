PImage p=loadImage("pantsu.jpg");
int[] a,b,lr,li;
void setup(){
  int i;
  noStroke();
  size(500,500,P3D);
  a=new int[50];
  b=new int[50];
  lr=new int[50];
  li=new int[50];
  for(i=0;i<50;++i){
    a[i]=int(random(500));
    b[i]=int(random(500));
    lr[i]=int(random(2))*2-1;
    li[i]=int(random(2))*2-1;
  }
}

void draw(){
  int i;
  background(0);
  for(i=0;i<50;++i){
    a[i]+=lr[i];
    b[i]+=li[i];
    if(a[i]>width){
      lr[i]=int(random(7))*-1-1;
    }else if(a[i]<0){
      lr[i]=int(random(5))+1;
    }
    if(b[i]>height){
      li[i]=int(random(4))*-1-+1;
    }else if(b[i]<0){
      li[i]=int(random(6))+1;
    }
    star(a[i],b[i]);
  }
}

void star(int x,int y){
  beginShape();
  texture(p);
  vertex(x,y-20,50,50);
  vertex(x-12,y+15,100,0);
  vertex(x+18,y-8,0,100);
  vertex(x-18,y-8,0,0);
  vertex(x+12,y+15,100,100);
  endShape(CLOSE);
}
