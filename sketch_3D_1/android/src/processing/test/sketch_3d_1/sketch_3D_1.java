package processing.test.sketch_3d_1;

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

public class sketch_3D_1 extends PApplet {

public void setup(){
 
  //frameRate(5);//gamenn ga tikatika suru toki wa kotira 
}

public void draw(){
  //mouse wo osu to...
  if(mousePressed==true){
  fill(random(255),random(255),random(255),200);
  }else{
    fill(0,0,0);
  }
  background(255);
  noStroke();
  translate(width/2,height/2);
  rotateX(frameCount*PI/-60);
  rotateY(frameCount*PI/60);
  box(40,40,40);
  translate(100,100);
  box(50,50,50);
  translate(-200,-200);
  box(30,30,30);
  translate(200,0);
  box(35,35,35);
  translate(-200,200);
  box(45,45,45);
  translate(100,0);
  sphere(40);
  translate(100,-100);
  sphere(40);
  translate(-200,0);
  sphere(40);
  translate(100,-100);
  sphere(40);
}

  public int sketchWidth() { return 500; }
  public int sketchHeight() { return 500; }
  public String sketchRenderer() { return P3D; }
}
