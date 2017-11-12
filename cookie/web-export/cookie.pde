import ddf.minim.*;
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
  void playsound(){
    se.rewind();
    se.play();
  }
  
  void stopsound(){
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
  void setimage(){
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
  
  void setimage(){
    PImage niku = loadImage("cookie.png");
    imageMode(CENTER);
    image(niku, x, y, yoko, tate); 
  }
  
  void keyReleased(){
    float xtmp = x;
    float ytmp = y;
    yoko += 25;
    tate -= 20;
    frameRate(20);
    for(int i=0; i < 2; i++){
      x += random(-10, 10);
      y += random(-15, 15);
    }
    //delay(200);
    //frameRate(60);
    //x = xtmp;
    //y = ytmp;
  }
}

Bomb bomb;
Fleischklopfer bou;
Niku niku;

void setup(){
  size(600, 600);
  filename = "bomb.wav";
  bomb = new Bomb();
  minim = new Minim(this);
  se = minim.loadSnippet(filename);
  bou = new Fleischklopfer(320, 280, 250, 250);
  niku = new Niku(width/3, height/2, 576, 1024);
  //bomb.setsound();
  textSize(64);
}

void pam(){
  if(mousePressed == true){
    bomb.playsound();
    fill(128,128,255);
    text("PAM!",random(width),random(height));
  }
}

void draw(){
  background(255, 255, 255);
  bou = new Fleischklopfer(mouseX, mouseY, 250, 250);
  niku.setimage();
  bou.setimage();
  pam();
}

void mouseReleased(){
  niku.keyReleased();
}

void stop(){
  bomb.stopsound();
}

