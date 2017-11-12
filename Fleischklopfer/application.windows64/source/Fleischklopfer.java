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

public class Fleischklopfer extends PApplet {

int flex=250;
int fley=250;
int fx=300;
int fy=275;
int x=320;
int y=280;
public void setup(){
  size(600,600);
  //sizing images
}

public void draw(){
  int n=1;
  PImage fleisch=loadImage("fleisch.png");
  PImage fle=loadImage("fle.png");
  background(255,255,255);
  imageMode(CENTER);
  image(fle,width/3,height/2,fx,fy);
  imageMode(CORNER);
  pushMatrix();
  translate(x+flex/2,y);
  if(keyPressed == true){
    rotate(-radians(90));
  } 
  image(fleisch,-flex/2,-fley,flex,fley);
  popMatrix();
}

public void keyPressed(){
  fx+=25;
  fy-=20;
  if(fy<0){
    fy=1;
  }  
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Fleischklopfer" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
