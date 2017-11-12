int count = 0;
void setup() {
  size(500, 500, P3D);
  PFont tuiyatu = createFont("original_font",24);
  textFont(tuiyatu);
  textSize(36);
  rectMode(CENTER);
  textMode(CENTER);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  if(count == 0){
    rotateY(frameCount*PI/60);
  }else if(count == 1){
    rotateX(frameCount*PI/60);
  }else if(count == 2){
    rotateX(frameCount*PI/60);
    rotateY(frameCount*PI/60);
  }else{
    count = 0;
  }
  //rect(0, 0, width/2, height/2);
  fill(128,128,255);
  text("(๑╹ڡ╹๑)",0,0);
}

void mouseReleased(){
  count += 1;
}
