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
    if(keyPressed == true){
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
    PImage niku = loadImage("fle.png");
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

void setup(){
  size(600, 600);
  bou = new Fleischklopfer(320, 280, 250, 250);
  niku = new Niku(width/3, height/2, 300, 275);
}

void draw(){
  background(255, 255, 255);
  niku.setimage();
  bou.setimage();
}

void keyReleased(){
  niku.keyReleased();
}

