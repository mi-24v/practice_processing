 int scene;
 int x;
 float theta;
 void setup(){
  scene = 0;
  theta = 3.1;
  size(600,300);
 }
 void draw(){
  theta += 0.01;
  if(scene==0){
    background(100,100,200);
    noStroke();
    fill(250,250,250);
    ellipse(300*cos(theta)+300,300*sin(theta)+400,100,100);
    if(theta > 6.3){scene=1; theta=3.1;}
  }
  else {
    background(0);
    noStroke();
   fill(250,250,50);
   ellipse(300*cos(theta)+300,300*sin(theta)+400,100,100);
   if(theta > 6.3){scene=0; theta=3.1;}
 }
 }
