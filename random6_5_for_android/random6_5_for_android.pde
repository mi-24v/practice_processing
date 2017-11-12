int[]x,y,lr,li;
int[]r,g,b,a;
void setup(){
  int i;
  x=new int[100];
  y=new int[100];
  r=new int[100];
  g=new int[100];
  b=new int[100];
  a=new int[100];
  lr=new int[100];
  li=new int[100];
  for(i=0; i<100; ++i){
    x[i]=int(random(width));
    y[i]=int(random(height));
    r[i]=int(random(256));
    g[i]=int(random(256));
    b[i]=int(random(256));
    a[i]=int(random(256))+50;
    lr[i]=int(random(2))*2-1;
    li[i]=int(random(2))*2-1;
  }
  //size(600,600);
  noStroke();
}

void draw(){
  int i;
  background(255);
  for(i=0; i<100; ++i){
    x[i]+=lr[i];
    y[i]+=li[i];
    if(x[i]>width){
      lr[i]=int(random(7))*-1-1;
      r[i]=int(random(256));
      g[i]=int(random(256));
      b[i]=int(random(256));
      a[i]=int(random(256))+50;
    }else if(x[i]<0){
      lr[i]=int(random(4))+1;
      r[i]=int(random(256));
      g[i]=int(random(256));
      b[i]=int(random(256));
      a[i]=int(random(256))+50;
    }
    if(y[i]>height){
      li[i]=int(random(6))*-1+1;
    }else if(y[i]<0){
      li[i]=int(random(5))+1;
    }
    fill(r[i],g[i],b[i],a[i]);
    ellipse(x[i],y[i],30,30);
    if(mousePressed){
      x[i]=pmouseX;
      y[i]=pmouseY;
    }
  }
}
