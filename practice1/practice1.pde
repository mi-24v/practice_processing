int i;
int t;

void setup(){
  size(500,500);
}

void draw(){
  for(t=0;t<255;t+=3){
    fill(255-t,50-t,200+t);
  }
  for(i=0; i<=250; i+=10){
    rect(i,i,i,i);
  }
}
