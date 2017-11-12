int[] x,y,r,g,b,lr,li;
void setup(){
  int i;
  size(600,600);
  rectMode(CENTER);
  x=new int[50];
  y=new int[50];
  r=new int[50];
  g=new int[50];
  b=new int[50];
  lr=new int[50];
  li=new int[50];
  for(i=0; i<50; ++i){
    x[i]=int(random(width));
    y[i]=int(random(height));
    r[i]=int(random(256));
    g[i]=int(random(256));
    b[i]=int(random(256));
    lr[i]=int(random(2))*2-1;
    li[i]=int(random(2))*2-1;
  }
}

void draw(){
  int i;
  background(255);
  for(i=0; i<50; ++i){
    if(mousePressed){
      background(random(256),random(256),random(256));
    }else if(keyPressed){
      background(0);
    }
    x[i]+=lr[i];
    y[i]+=li[i];
    if(x[i]>width){
      lr[i]=int(random(6))*-1-1;
      r[i]=int(random(256));
      g[i]=int(random(256));
      b[i]=int(random(256));
    }else if(x[i]<0){
      lr[i]=int(random(7))+1;
      r[i]=int(random(256));
      g[i]=int(random(256));
      b[i]=int(random(256));
    }
    if(y[i]>height){
      li[i]=int(random(8))*-1-1;
      r[i]=int(random(256));
      g[i]=int(random(256));
      b[i]=int(random(256));
    }else if(y[i]<0){
      li[i]=int(random(9))+1;
      r[i]=int(random(256));
      g[i]=int(random(256));
      b[i]=int(random(256));
    }
    fill(r[i],g[i],b[i]);
    rect(x[i],y[i],50,50);
    fill(r[i],b[i],b[i],100);
    rect(x[i]-25,y[i]-25,25,25);
    fill(r[i],g[i],g[i],100);
    rect(x[i]-25,y[i]+25,25,25);
    fill(g[i],b[i],r[i],100);
    rect(x[i]+25,y[i]-25,25,25);
    fill(b[i],r[i],g[i],100);
    rect(x[i]+25,y[i]+25,25,25);
  }
}
