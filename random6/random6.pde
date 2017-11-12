int[]x,y,lr,li;
int[]r,g,b;
void setup(){
  int i;
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
  size(500,500);
  noStroke();
}

void draw(){
  int i;
  background(255);
  for(i=0; i<50; ++i){
    x[i]+=lr[i];
    y[i]+=li[i];
    if(x[i]>500){
      lr[i]=-3;
    }else if(x[i]<0){
      lr[i]=3;
    }
    if(y[i]>500){
      li[i]=-3;
    }else if(y[i]<0){
      li[i]=3;
    }
    fill(r[i],g[i],b[i]);
    ellipse(x[i],y[i],30,30);
  }
}
