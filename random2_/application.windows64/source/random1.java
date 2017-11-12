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

public class random1 extends PApplet {

public void setup() {
  size(500,500);
}

public void draw(){
  background(0);
  fill(random(200),random(200),random(200));
  ellipse(random(width),random(height),50,50);
  rect(random(width),random(height),25,25);
  stroke(random(150),random(150),random(150));
  line(random(width),random(height),random(width),random(height));
  text("\u30e9\u30f3\u30c0\u30e0",random(width),random(height));
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--stop-color=#cccccc", "random1" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
