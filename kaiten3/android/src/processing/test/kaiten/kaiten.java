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
public void setup() {
 
  PFont tuiyatu = createFont("original_font",24);
  textFont(tuiyatu);
  textSize(36);
  rectMode(CENTER);
  textMode(CENTER);
}

public void draw() {
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
  text("(\u0e51\u2579\u06a1\u2579\u0e51)",0,0);
}

public void mouseReleased(){
  count += 1;
}

  public int sketchWidth() { return displayWidth; }
  public int sketchHeight() { return displayHeight; }
  public String sketchRenderer() { return P3D; }
}
