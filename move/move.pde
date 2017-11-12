float x,z,a,b,c,d,e;
float y;
//float z;
void setup(){
  size(500,500);
  //frameRate(15);
  x=0;
  y=0;
  z=height/2;
  a=50;
  b=100;
  c=150;
  d=300;
  e=400;
}

void draw(){
  x+=5;
  y+=5;
  if(x>width){
  x=-50;
  z=random(width-10);
  a=random(width-190);  
  c=random(width-12); 
  e=random(width-100);
}
  if(y>height){
  y=-10;
  b=random(width-15);
  d=random(width-20);
}
  background(0,0,0);
  //background(0,255,255);
  fill(200,mouseY,mouseX,200);
  //fill(random(255),random(255),random(255);
  noStroke();
  rect(pmouseX,x,width/10,height/10);
  rect(x,pmouseY,width/10,height/10);
  stroke(255,pmouseX,pmouseY);
  rect(x,y,50,50);
  rect(y,x,50,50);
  //rect(x,x,25,25);
  //rect(y,y,25,25);
  ellipse(pmouseX,pmouseY,10,10);
  textSize(20);
  text("wwwwwwwwwwwwww",x,z);
  text("wwwwwwwwwwwww",x,a);
  text("wwwww",y,b);
  text("wwwwwwwwwwwww",x,c);
  text("wwwwwwwwwwwwww",y,d);
  text("wwwwwwwwwww",x,e);
}

void fadeToWhite(){
  noStroke();
  fill(0);
  rectMode(CORNER);
  rect(0,0,width,height);
}
