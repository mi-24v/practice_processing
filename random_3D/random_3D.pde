int[]x,y,z,lr,li,lu;
int[]r,g,b,a;
void setup(){
  int i;
  size(600,600,P3D);
  noStroke();
  x=new int[50];
  y=new int[50];
  z=new int[50];
  lr=new int[50];
  li=new int[50];
  lu=new int[50];
  r=new int[50];
  g=new int[50];
  b=new int[50];
  a=new int[50];
  for(i=0; i<50; ++i){
    x[i]=int(random(600));
    y[i]=int(random(600));
    z[i]=int(random(-1000));
    r[i]=int(random(256));
    g[i]=int(random(256));
    b[i]=int(random(256));
    a[i]=int(random(256))+50;
    lr[i]=int(random(2))*2-1;
    li[i]=int(random(2))*2-1;
    lu[i]=int(random(2))*2-1;
  }
}

void draw(){
  int i;
  background(255);
  for(i=0; i<50; ++i){
    x[i]+=lr[i];
    y[i]+=li[i];
    z[i]-=lu[i];
    if(x[i]>600){
      lr[i]=int(random(7))*-1-1;
      r[i]=int(random(256));
      g[i]=int(random(256));
      b[i]=int(random(256));
      a[i]=int(random(256))+50;
    }else if(x[i]<0){
      lr[i]=int(random(5))+1;
      r[i]=int(random(256));
      g[i]=int(random(256));
      b[i]=int(random(256));
      a[i]=int(random(256))+50;
    }
    if(y[i]>600){
      li[i]=int(random(6))*-1+1;
      r[i]=int(random(256));
      g[i]=int(random(256));
      b[i]=int(random(256));
      a[i]=int(random(256))+50;
    }else if(y[i]<0){
      li[i]=int(random(4))+1;
      r[i]=int(random(256));
      g[i]=int(random(256));
      b[i]=int(random(256));
      a[i]=int(random(256))+50;
    }
    if(z[i]<-600){
      lu[i]=int(random(5,400))*-1+1;
      r[i]=int(random(256));
      g[i]=int(random(256));
      b[i]=int(random(256));
      a[i]=int(random(256))+50;
    }else if(z[i]>0){
      lu[i]=int(random(6))*-1-1;
      r[i]=int(random(256));
      g[i]=int(random(256));
      b[i]=int(random(256));
      a[i]=int(random(256))+50;
    }
    fill(r[i],g[i],b[i],a[i]);
    translate(x[i],y[i],z[i]);
    sphere(30);
    println(z[i]);
    println(x[i]);
    println(y[i]);
  }
  //background(255);
  //translate(x,y,z);
  //fill(0,70);
  //sphere(30);
  //println(z);
}

