package processing.test.elingi2_android;

import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import android.content.Intent; 
import android.net.Uri; 
import android.os.Environment; 
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

public class elingi2_android extends PApplet {





Intent intent = new Intent(Intent.ACTION_CAMERA_BUTTON,
   Uri.parse("file://" + Environment.getExternalStorageDirectory()));


APMediaPlayer[] player = new APMediaPlayer[3];

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
  PImage niku,niku2,back,back2;
  float score,plusscore;
  float x, y;//tyuuou
  int tate, yoko;
  int yoko_moto, tate_moto;
  
  //set constructor
  Niku(PImage _niku, PImage _niku2, float _x, float _y, int _yoko, int _tate){
    niku = _niku;
    niku2 = _niku2;
    x = _x;
    y = _y;
    tate = _tate;
    yoko = _yoko;
    yoko_moto = _yoko;
    tate_moto = _tate;
    back = loadImage("back.jpg");
    back2 = loadImage("back2.png");
  }
  
  public void setimage(){
    imageMode(CENTER);
    if(score < 114514){
      image(niku, x, y, yoko, tate);
    }else{
      image(niku2, x, y, yoko, tate);
    } 
  }
  
  public void setscore(){
    score = 0;
    plusscore = 0;
  }
  
  public void playsound(){
    if(score >= 114514){
      player[2].start();
      player[2].seekTo(0);
     //player.setLooping(true);
    }else if(score >= 36436.4f && score < 114514){
      player[1].start();
      player[1].seekTo(0);
    }else{
      player[0].start();
      player[0].seekTo(0);
    }
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
    if(x < 0 || x > width){
      x = width/2;
    }else if(y < 0 || y > height){
      y = height/2;
    }
  }
  
  public void effect_active(){
    if(score > 11451.4f){
      fill(PApplet.parseInt(random(255)),PApplet.parseInt(random(255)),PApplet.parseInt(random(255)));
      text("Foo!" ,random(width), random(height));
    }
  }
  
  public void effect_passive(){
    if(score < 115000 && score >= 114514){
      image(back2, 0, 0, width, height);
      yoko = yoko_moto;
      tate = tate_moto;
      x = width/2;
      y = height/2;
    }else if(score >= 114514){
      image(back2, 0, 0, width, height);
    }else if(score < 37000 && score > 36436.7f){
      image(back, 0, 0, width, height);
      yoko = yoko_moto;
      tate = tate_moto;
    }else if(score > 36436.4f && score < 114514){
      image(back, 0, 0, width, height);
    }else if(score <= 36436.4f){
      background(255, 255, 255);
    }
  }
  
}

Fleischklopfer bou;
Niku niku;

public void setup(){
 
  for(int i = 0; i <= 2; i++){
   player[i] = new APMediaPlayer(this);
   if(i == 0){player[i].setMediaFile("bomb.wav");}
   else if(i == 1){player[i].setMediaFile("bomb2.wav");}
   else if(i == 2){player[i].setMediaFile("bomb3.wav");}
   player[i].setVolume(1.0f, 1.0f);
 }
  bou = new Fleischklopfer(loadImage("fleisch.png"), 320, 280, 250, 250);
  niku = new Niku(loadImage("old_fle.png"), loadImage("elingi2.png"), width/3, height/2, 200, 200);
  niku.setscore();
}

  
public void pam(){
  if(mousePressed == true){
    niku.playsound();
    fill(128,128,255);
    textSize(64);
    text("PAM!",random(width),random(height));
    niku.effect_active();
  }
}

public void draw(){
  //background(255, 255, 255);
  niku.effect_passive();
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

public void keyReleased(){
  //save screenshot to external storage
  save("//sdcard/Pictures/processing/shot_" + 

          year() + "_" +month() + "_" + day() 
               
                  + "_" + hour() + "_" + minute() + ".png");

  sendBroadcast(intent);
}

public void onDestroy() {
  super.onDestroy();
  for(int i = 0; i <= 2; i++){
    if(player[i]!=null) {
      player[i].release();
    }
  }
}  


  public int sketchWidth() { return displayWidth; }
  public int sketchHeight() { return displayHeight; }
}
