package processing.test.random2_;

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

public class random2_ extends PApplet {

public void setup() {
  //size(500,500);
  textSize(50);
}

public void draw(){
  background(0);
  fill(random(200),random(200),random(200));
  ellipse(random(width),random(height),100,100);
  rect(random(width),random(height),100,100);
  stroke(random(150),random(150),random(150));
  line(random(width),random(height),random(width),random(height));
  text("\u30af\u30bd\u30cd\u30df",random(width),random(height));
}

}
