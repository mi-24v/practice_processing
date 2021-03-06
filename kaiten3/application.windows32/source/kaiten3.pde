int count = 0;
int angle = 0;
static final int SPEED = 5;
PImage icon;
void setup() {
  size(700, 700, P3D);
  icon = loadImage("C1P0QE5VQAAzsoE.jpg");
  imageMode(CENTER);
  //frameRate(90);
    /*camera(width/2,height/2,(height/2)/tan(PI*60.0/360.0)
    ,width/2,height/2,0
    ,0,1.0,0);*/
}

void draw() {
  background(0);
  //camera(mouseX, mouseY, 200, width/2.0, height/2.0, 0, 0, 1, 0);
  translate(width/2, height/2);
  if(count == 0){
    rotateY(radians(angle));
  }else if(count == 1){
    rotate(radians(angle));
  }else if(count == 2){
    rotateX(radians(angle));
    rotateY(radians(angle));
  }else{
    count = 0;
  }
  //rect(0, 0, width/2, height/2);
  fill(128,128,255);
  image(icon, 0, 0,100*4,148*4);
  translate(-width/2,-height/2);
}

void mouseReleased(){
  count += 1;
}

void keyPressed(){
  translate(width/2, height/2);
  if(key == 'a' || key == 's'){
    angle -= SPEED;
  }else if(key == 'd' || key =='w'){
    angle += SPEED;
  }
}
