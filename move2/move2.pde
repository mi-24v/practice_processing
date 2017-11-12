int y;
int x,lr,li;
int a;
void setup(){
  size(500,500);
  x=0;
  lr=0;
  li=0;
  y=0;
  noStroke();
}

void draw(){
  if(keyPressed){
     if(key=='a'){
        fill(random(255),mouseX,mouseY,100);
      }
    }else{
    fill(255);
  }
  background(0);
  x+=li;
  y+=lr;
  a=50;
  ellipse(x+a/2,y+a/2,a,a);
  if(x==width-a){
    lr=5;
    li=0;
    }else if(y==0 && x==0){
      lr=0;
      li=5;
    } 
    if(y==height-a && x==width-a){
      li=-5;
      lr=0;
    }
    if(x==0 && y==height-a){
      li=0;
      lr=-5;
    }
    if(x==0 && y==0){
      lr=0;
      li=5;
    }
    
}
