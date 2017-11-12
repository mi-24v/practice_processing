package processing.test.cookie_android;

import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import apwidgets.*; 

import apwidgets.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class cookie_android extends PApplet {


APMediaPlayer player;
String filename;

class Fleischklopfer{
  //set attribute
  PImage bou;
  float x,y;//hidariue
  int yoko,tate;
  
  //set constructor
  Fleischklopfer(PImage _bou, float _x, float _y, int _yoko, int _tate){
    bou = _bou;
    x = _x;
    y = _y;
    yoko = _yoko;
    tate = _tate;
  }
  
  //set image
  public void setimage(){
    //PImage bou = loadImage("fleisch.png");
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
  PImage niku;
  float score,plusscore;
  float x, y;//tyuuou
  int tate, yoko;
  
  //set constructor
  Niku(PImage _niku, float _x, float _y, int _yoko, int _tate){
    niku = _niku;
    x = _x;
    y = _y;
    tate = _tate;
    yoko = _yoko;
  }
  
  public void setimage(){
    //PImage niku = loadImage("cookie.png");
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
      textSize(64);
      text("Great!", mouseX, mouseY);
      }
    }
    textSize(32);
    fill(128,128,255);
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

Fleischklopfer bou;
Niku niku;

public void setup(){
 
  filename = "bomb.wav";
  player = new APMediaPlayer(this);
  player.setMediaFile(filename);
  player.setVolume(1.0f, 1.0f);
  bou = new Fleischklopfer(loadImage("fleisch.png"), 320, 280, 250, 250);
  niku = new Niku(loadImage("cookie.png"), width/3, height/2, 576, 1024);
  niku.setscore();
}

public void playsound(){
  player.start();
  player.seekTo(0);
  //player.setLooping(true);
}
  
public void pam(){
  if(mousePressed == true){
    playsound();
    fill(128,128,255);
    textSize(64);
    text("PAM!",random(width),random(height));
    niku.effect();
  }
}

public void draw(){
  background(255, 255, 255);
  bou = new Fleischklopfer(loadImage("fleisch.png"), mouseX, mouseY, 250, 250);
  niku.setimage();
  bou.setimage();
  pam();
  niku.drawscore();
}

public void mouseReleased(){
  niku.Released();
  niku.inscore();
}

public void onDestroy() {
  super.onDestroy();
  if(player!=null) {
    player.release();
  }
}  


  public int sketchWidth() { return displayWidth; }
  public int sketchHeight() { return displayHeight; }
}
