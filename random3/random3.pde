float x;
float y;
void setup(){
  size(500,500);
  //strokeWeight(10);
  x=0;
  y=height/2;
}

//void mousePressed(){
  //fill(random(200),random(200),random(200));
  //ellipse(mouseX,mouseY,50,50);
//}

void draw() {
  //if (mousePressed == true);
  //mousePressed();{
  //fill(random(200),random(200),random(200));
  //ellipse(mouseX,mouseY,50,50);

  //background(200,200,x);
  x=random(height-1);
  y=random(width-1);
  //if (x>width)x=-25;
  //y=random(width-5);
  fill(random(150,255),x,y);
  //noStroke();
  rect(x,y,50,50);
  rect(y,x,50,50);
}
