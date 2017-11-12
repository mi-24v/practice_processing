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
    x[i]=int(random(600));
    y[i]=int(random(600));
    r[i]=int(random(256));
    g[i]=int(random(256));
    b[i]=int(random(256));
    a[i]=int(random(256))+50;
    lr[i]=int(random(2))*2-1;
    li[i]=int(random(2))*2-1;
  }
  size(600,600);
  noFill();
}

void draw(){
  int i;
  background(255);
  for(i=0; i<100; ++i){
    x[i]+=lr[i];
    y[i]+=li[i];
    if(x[i]>width-15){
      lr[i]=int(random(7))*-1-1;
      r[i]=int(random(256));
      g[i]=int(random(256));
      b[i]=int(random(256));
      a[i]=int(random(256))+50;
    }else if(x[i]<0+15){
      lr[i]=int(random(4))+1;
      r[i]=int(random(256));
      g[i]=int(random(256));
      b[i]=int(random(256));
      a[i]=int(random(256))+50;
    }
    if(y[i]>height-15){
      li[i]=int(random(6))*-1+1;
    }else if(y[i]<0+15){
      li[i]=int(random(5))+1;
    }
    stroke(r[i],g[i],b[i],a[i]);
    ellipse(x[i],y[i],20,20);
    if(mousePressed){
      x[i]=pmouseX;
      y[i]=pmouseY;
    }
  }
}
