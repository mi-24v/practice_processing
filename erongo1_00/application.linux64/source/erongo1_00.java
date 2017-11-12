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

public class erongo1_00 extends PApplet {

class Fleischklopfer{
  //set attribute
  float x,y;//hidariue
  int yoko,tate;
  
  //set constructor
  Fleischklopfer(float _x, float _y, int _yoko, int _tate){
    x = _x;
    y = _y;
    yoko = _yoko;
    tate = _tate;
  }
  
  //set image
  public void setimage(){
    PImage bou = loadImage("fleisch.png");
    imageMode(CORNER);
    pushMatrix();
    translate(x + yoko/2, y);
    if(mousePressed == true){
      rotate(-radians(90));
    }
    image(bou, -yoko/2, -tate, yoko, tate);
    popMatrix();
  }
}

class Niku{
  //set attribute
  float x, y;//tyuuou
  int tate, yoko;
  
  //set constructor
  Niku(float _x, float _y, int _yoko, int _tate){
    x = _x;
    y = _y;
    tate = _tate;
    yoko = _yoko;
  }
  
  public void setimage(){
    PImage niku = loadImage("fle.png");
    imageMode(CENTER);
    image(niku, x, y, yoko, tate); 
  }
  
  public void keyReleased(){
    float xtmp = x;
    float ytmp = y;
    yoko += 25;
    tate -= 20;
    frameRate(20);
    for(int i=0; i < 2; i++){
      x += random(-10, 10);
      y += random(-15, 20);
    }
    //delay(200);
    //frameRate(60);
    //x = xtmp;
    //y = ytmp;
  }
}

Fleischklopfer bou;
Niku niku;

public void setup(){
  size(600, 600);
  bou = new Fleischklopfer(320, 280, 250, 250);
  niku = new Niku(width/3, height/2, 300, 275);
}

public void draw(){
  background(255, 255, 255);
  bou = new Fleischklopfer(mouseX, mouseY, 250, 250);
  niku.setimage();
  bou.setimage();
}

public void mouseReleased(){
  niku.keyReleased();
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "erongo1_00" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
