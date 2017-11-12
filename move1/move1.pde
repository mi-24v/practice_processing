// Example 05-21 from "Getting Started with Processing" 
// by Reas & Fry. O'Reilly / Make 2010

int x = 0;
int y = 0;

void setup() {
  size(600,600);
  rectMode(CENTER);
  x=width/2;
  y=height/2;
  if(x>int(random(500,600)) && y>int(random(500,600))){
    fill(random(256),random(256),random(256),random(50,256));
  }
}

void draw() {
  background(255,20);
  if (keyPressed && (key == CODED)) { // If it's a coded key
    if (keyCode == LEFT) {            // If it's the left arrow
      x-=5;
    } 
    else if (keyCode == RIGHT) {      // If it's the right arrow
      x+=5;
    }
    else if(keyCode == UP)     {
      y-=5;
    }
    else if(keyCode == DOWN)   {
      y+=5;
    }
  }
  if(x>width+100){
    x=-100;
  }else if(x<0-100){
    x=width+100;
  }
  if(y>height+100){
    y=-100;
  }else if(y<0-100){
    y=height+100;
  }
  if(x==width/2 && y==height/2){
    fill(random(256),random(256),random(256));
  }else{
    fill(0);
  }
  ellipse(x, y, 50, 50);
  println(x);
  println(y);
}

