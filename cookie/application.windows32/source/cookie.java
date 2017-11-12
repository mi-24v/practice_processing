import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import ddf.minim.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class cookie extends PApplet {


Minim minim;
AudioSnippet se;
String filename;

class Bomb{
  //set file
  //kore dato 'Minim error Couldn't load file' to deru
  //void setsound(){
    //minim = new Minim(this);
    //se = minim.loadSnippet("bomb.wav");
  //}
  
  //play sound
  public void playsound(){
    se.rewind();
    se.play();
  }
  
  public void stopsound(){
    se.close();
    minim.stop();
    //super.stop();
  }
}

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
  String filename;
  float score,plusscore;
  float x, y;//tyuuou
  int tate, yoko;
  
  //set constructor
  Niku(String _filename, float _x, float _y, int _yoko, int _tate){
    filename = _filename;
    x = _x;
    y = _y;
    tate = _tate;
    yoko = _yoko;
  }
  
  public void setimage(){
    PImage niku = loadImage(filename);
    imageMode(CENTER);
    image(niku, x, y, yoko, tate); 
  }
  
  public void setscore(){
    score = 0;
    plusscore = 0;
  }
  
  public void inscore(){
    plusscore = random(40, 80);
    score += plusscore;
    if(mouseX > x-100 && mouseX < x+100){
      if(mouseY > y-100 && mouseY < y+100){
      plusscore = random(100, 300);
      score += plusscore;
      fill(255, 0, 128);
      text("Great!", mouseX, mouseY);
      }
    }
    textSize(32);
    text("+" +str(plusscore), mouseX + 200, mouseY);
  }
  
  public void drawscore(){
    textSize(32);
    fill(255,0,128);
    text("SCORE:" + str(score), 0, 32);
  }
  
  public void Released(){
    yoko += 25;
    tate -= 20;
    frameRate(20);
    for(int i=0; i < 2; i++){
      x += random(-10, 10);
      y += random(-15, 15);
    }
  }
  
  public void effect(){
    if(score > 11451.4f){
      fill(PApplet.parseInt(random(255)),PApplet.parseInt(random(255)),PApplet.parseInt(random(255)));
      text("Foo!" ,random(width), random(height));
    }
  }
  
}


Bomb bomb;
Fleischklopfer bou;
Niku niku;

public void setup(){
  size(800, 800);
  filename = "bomb.wav";
  bomb = new Bomb();
  minim = new Minim(this);
  se = minim.loadSnippet(filename);
  bou = new Fleischklopfer(320, 280, 250, 250);
  niku = new Niku("cookie.png", width/3, height/2, 576, 1024);
  //bomb.setsound();
  niku.setscore();
}

public void pam(){
  if(mousePressed == true){
    bomb.playsound();
    textSize(64);
    fill(128,128,255);
    text("PAM!",random(width),random(height));
    niku.effect();
  }
}

public void draw(){
  background(255, 255, 255);
  bou = new Fleischklopfer(mouseX, mouseY, 250, 250);
  niku.setimage();
  bou.setimage();
  niku.drawscore();
  pam();
  
  if(keyPressed == true){
    save("shot.png");
  }
}

public void mouseReleased(){
  niku.Released();
  niku.inscore();
}

public void stop(){
  bomb.stopsound();
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "cookie" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
