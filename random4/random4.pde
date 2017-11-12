int[]x,y,r,g,b,p,q;
int i;

void setup(){
  int i;
  x=new int[100];
  y=new int[100];
  r=new int[100];
  g=new int[100];
  b=new int[100];
  p=new int[100];
  q=new int[100];
  size(500,500);
  noStroke();
  //frameRate(5);
}

void draw(){
  for(i=0; i<100; ++i){
    x[i]=int(random(500));
    y[i]=int(random(500));
    p[i]=int(random(500));
    q[i]=int(random(500));
    r[i]=int(random(256));
    g[i]=int(random(256));
    b[i]=int(random(256));
    background(255);
    fill(r[i],g[i],b[i]);
    ellipse(x[i],y[i],30,30);
    ellipse(y[i],x[i],20,20);
    ellipse(p[i],q[i],40,40);
  }
}
