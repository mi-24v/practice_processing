int count = 0;
PImage icon;
void setup() {
  size(1000, 1000, P3D);
  icon = loadImage("icon.jpg");
  imageMode(CENTER);
  frameRate(90);
    /*camera(width/2,height/2,(height/2)/tan(PI*60.0/360.0)
    ,width/2,height/2,0
    ,0,1.0,0);*/
}

void draw() {
  background(0);
  camera(mouseX, mouseY, 200, width/2.0, height/2.0, 0, 0, 1, 0);
  translate(width/2, height/2);
  if(count == 0){
    rotateY(frameCount*PI/60);
  }else if(count == 1){
    rotate(frameCount*PI);
  }else if(count == 2){
    rotateX(frameCount*PI);
    rotateY(frameCount*PI/60);
  }else{
    count = 0;
  }
  //rect(0, 0, width/2, height/2);
  fill(128,128,255);
  image(icon, 0, 0,100,100);
}

void mouseReleased(){
  count += 1;
}
