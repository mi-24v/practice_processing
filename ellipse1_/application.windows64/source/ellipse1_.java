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

public class ellipse1_ extends PApplet {

public void setup() {
  size(500,500);
}

public void draw(){
  //background(0);
  fill(180,mouseX,mouseY);
  ellipse(mouseX,mouseY,50,50);
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "ellipse1_" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
