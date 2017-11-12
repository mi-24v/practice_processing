int y;
int x,lr,li;
void setup(){
  //size(500,500);
  x=0;
  lr=0;
  li=0;
  y=0;
  noStroke();
}

void draw(){
  //if(keyPressed){
     //if(key=='a'){
        //fill(random(255),mouseX,mouseY,100);
      //}
  if(mousePressed){
    fill(random(255),random(255),random(255),100);
    }else{
    fill(255);
  }
  background(0);
  x+=li;
  y+=lr;
  ellipse(x+50,y+50,100,100);
  if(x==width-100){
    lr=5;
    li=0;
    }else if(y==0 && x==0){
      lr=0;
      li=5;
    } 
    if(y==height-100 && x==width-100){
      li=-5;
      lr=0;
    }//else 
    if(x==0 && y==height-100){
      li=0;
      lr=-5;
    }
    if(x==0 && y==0){
      lr=0;
      li=5;
    }
    
}
