float x,y;

void setup(){
  size(500,500);
  x=width/2;
  y=0;
  textAlign(CENTER);
  textSize(30);
  //frameRate(5);
}

void draw(){
  x+=int(random(2))*2-1;
  y+=1;
  fill(0);
  ellipse(x,y,5,5);
  if(x>width){
    x=0;
  }else if(x<0){
    x=width;
  }
  if(y>height){
    y=0;
  }
  println(x);
  println(y);
  fill(255);
  rect(150,400,200,100);
  fill(random(256),random(256),random(256));
  text("GOAL",250,450);
}


