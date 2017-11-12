int[] x,y,r,g,b,lr,li;
void setup(){
  int i;
  //size(500,500);
  textSize(18);
  textAlign(CENTER);
  x=new int[50*2];
  y=new int[50*2];
  r=new int[50*2];
  g=new int[50*2];
  b=new int[50*2];
  lr=new int[50*2];
  li=new int[50*2];
  for(i=0; i<50*2; ++i){
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
  for(i=0; i<50*2; ++i){
    if(mousePressed){
      x[i]=mouseX;
      y[i]=mouseY;
    }else if(keyPressed){
      lr[i]=mouseX;
    }
    x[i]+=lr[i];
    y[i]+=li[i];
    if(x[i]>width){
      lr[i]=int(random(9))*-1-1;
      r[i]=int(random(256));
      g[i]=int(random(256));
      b[i]=int(random(256));
    }else if(x[i]<0){
      lr[i]=int(random(8))+1;
      r[i]=int(random(256));
      g[i]=int(random(256));
      b[i]=int(random(256));
    }
    if(y[i]>height){
      li[i]=int(random(10))*-1+1;
      r[i]=int(random(256));
      g[i]=int(random(256));
      b[i]=int(random(256));
    }else if(y[i]<0){
      li[i]=int(random(11))+1;
      r[i]=int(random(256));
      g[i]=int(random(256));
      b[i]=int(random(256));
    }
    fill(r[i],g[i],b[i]);
    text("('ω')",x[i],y[i]);
  }
}
