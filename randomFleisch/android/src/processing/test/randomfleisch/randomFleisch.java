package processing.test.randomfleisch;

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

public class randomFleisch extends PApplet {

int[] x,y,r,g,b,lr,li;
public void setup(){
  int i;
 
  imageMode(CENTER);
  x=new int[50];
  y=new int[50];
  r=new int[50];
  g=new int[50];
  b=new int[50];
  lr=new int[50];
  li=new int[50];
  for(i=0; i<50; ++i){
    x[i]=PApplet.parseInt(random(width));
    y[i]=PApplet.parseInt(random(height));
    r[i]=PApplet.parseInt(random(256));
    g[i]=PApplet.parseInt(random(256));
    b[i]=PApplet.parseInt(random(256));
    lr[i]=PApplet.parseInt(random(2))*2-1;
    li[i]=PApplet.parseInt(random(2))*2-1;
  }
}

public void draw(){
  int i;
  PImage bou = loadImage("fleisch.png");
  background(255);
  for(i=0; i<50; ++i){
    if(mousePressed){
      x[i]=mouseX;
      y[i]=mouseY;
    }else if(keyPressed){
      lr[i]=mouseX;
    }
    x[i]+=lr[i];
    y[i]+=li[i];
    if(x[i]>width){
      lr[i]=PApplet.parseInt(random(6))*-1-1;
      r[i]=PApplet.parseInt(random(256));
      g[i]=PApplet.parseInt(random(256));
      b[i]=PApplet.parseInt(random(256));
    }else if(x[i]<0){
      lr[i]=PApplet.parseInt(random(5))+1;
      r[i]=PApplet.parseInt(random(256));
      g[i]=PApplet.parseInt(random(256));
      b[i]=PApplet.parseInt(random(256));
    }
    if(y[i]>height){
      li[i]=PApplet.parseInt(random(4))*-1+1;
      r[i]=PApplet.parseInt(random(256));
      g[i]=PApplet.parseInt(random(256));
      b[i]=PApplet.parseInt(random(256));
    }else if(y[i]<0){
      li[i]=PApplet.parseInt(random(6))+1;
      r[i]=PApplet.parseInt(random(256));
      g[i]=PApplet.parseInt(random(256));
      b[i]=PApplet.parseInt(random(256));
    }
    fill(r[i],g[i],b[i]);
    image(bou,x[i],y[i]);
  }
}

  public int sketchWidth() { return 800; }
  public int sketchHeight() { return 800; }
}
