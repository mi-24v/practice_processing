package processing.test.kaiten;

import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class kaiten extends PApplet {

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
    decleration = new PVector(0,0.020f*isize);
    position = new PVector(x,y);
    velocitiy = new PVector(0,0.01f);
    gravity = new PVector(0,9.8f/frameRate);
  }
  
  public void update(){
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
public void setup() {
 
  font = createFont("original.ttf",48);
  snow = loadImage("yuki.png");
  textFont(font);
  imageMode(CENTER);
  thesnow = new Snow[width/5];
  for(int i=0;i<thesnow.length;i++){
    thesnow[i] = new Snow(random(0,width),random(0,height));
  }
}

public void draw() {
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
  text("\u3042\u308a\u304c\u3068\u3046", 0, 0);
}

public void mouseReleased(){
  count += 1;
}

  public int sketchWidth() { return displayWidth; }
  public int sketchHeight() { return displayHeight; }
  public String sketchRenderer() { return P3D; }
}
