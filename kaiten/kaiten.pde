int count = 0;
PFont font;
PImage snow;
class Snow{
  private PVector position
  ,velocitiy
  ,gravity
  ,decleration;
  private final float isize;
  
  Snow(float x,float y){
    isize = random(5,40);
    decleration = new PVector(0,0.020*isize);
    position = new PVector(x,y);
    velocitiy = new PVector(0,0.01);
    gravity = new PVector(0,9.8/frameRate);
  }
  
  void update(){
    velocitiy.add(gravity);
    velocitiy.mult(decleration.y);
    position.add(velocitiy);
    
    image(snow,position.x,position.y,isize,isize);
    
    if(position.y > height){
      position.y = -isize*2;
      velocitiy.y = 0;
    }
  }
  
}

Snow[] thesnow;
void setup() {
  size(displayWidth, displayHeight, P3D);
  font = createFont("original.ttf",48);
  snow = loadImage("yuki.png");
  textFont(font);
  imageMode(CENTER);
  thesnow = new Snow[width/5];
  for(int i=0;i<thesnow.length;i++){
    thesnow[i] = new Snow(random(0,width),random(0,height));
  }
}

void draw() {
  background(0);
  for(Snow s : thesnow){
    s.update();
  }
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
  fill(243,185,39);
  text("ありがとう", 0, 0);
}

void mouseReleased(){
  count += 1;
}
