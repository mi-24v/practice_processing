int[] x,y,r,g,b,lr,li;
void setup(){
  int i;
  size(500,500);
  textSize(18);
  textAlign(CENTER);
  x=new int[50];
  y=new int[50];
  r=new int[50];
  g=new int[50];
  b=new int[50];
  lr=new int[50];
  li=new int[50];
  for(i=0; i<50; ++i){
    x[i]=int(random(500));
    y[i]=int(random(500));
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
      x[i]=mouseX;
      y[i]=mouseY;
    }else if(keyPressed){
      lr[i]=mouseX;
    }
    x[i]+=lr[i];
    y[i]+=li[i];
    if(x[i]>width){
      lr[i]=int(random(6))*-1-1;
      r[i]=int(random(256));
      g[i]=int(random(256));
      b[i]=int(random(256));
    }else if(x[i]<0){
      lr[i]=int(random(5))+1;
      r[i]=int(random(256));
      g[i]=int(random(256));
      b[i]=int(random(256));
    }
    if(y[i]>height){
      li[i]=int(random(4))*-1+1;
      r[i]=int(random(256));
      g[i]=int(random(256));
      b[i]=int(random(256));
    }else if(y[i]<0){
      li[i]=int(random(6))+1;
      r[i]=int(random(256));
      g[i]=int(random(256));
      b[i]=int(random(256));
    }
    fill(r[i],g[i],b[i]);
    text("('ω')",x[i],y[i]);
  }
}
