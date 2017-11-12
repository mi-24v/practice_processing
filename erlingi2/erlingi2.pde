import ddf.minim.*;
Minim minim;
AudioSnippet se,se2,se3;
//String filename;


class Fleischklopfer{
  //set attribute
  float x,y;//hidariue
  int yoko,tate;
  PImage bou;
  
  //set constructor
  Fleischklopfer(float _x, float _y, int _yoko, int _tate){
    x = _x;
    y = _y;
    yoko = _yoko;
    tate = _tate;
    bou = loadImage("fleisch.png");
  }
  
  //set image
  void setimage(){
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
  String filename1,filename2;
  float score,plusscore;
  float x, y;//tyuuou
  int tate, yoko;
  int yoko_moto, tate_moto;
  PImage niku,niku2,back,back2;
  
  //set constructor
  Niku(String _filename1, String _filename2, float _x, float _y, int _yoko, int _tate){
    x = _x;
    y = _y;
    tate = _tate;
    yoko = _yoko;
    yoko_moto = _yoko;
    tate_moto = _tate;
    filename1 = _filename1;
    filename2 = _filename2;
    niku = loadImage(filename1);
    niku2 = loadImage(filename2);
    back = loadImage("back.jpg");
    back2 = loadImage("back2.png");
  }
  
  void setimage(){
    imageMode(CENTER);
    if(score < 114514){
      image(niku, x, y, yoko, tate);
    }else{
      image(niku2, x, y, yoko, tate);
    }
   
   //debug
   println(yoko,tate, x, y); 
  }
  
  void playsound(){
   if(score >= 114514){
     se3.rewind();
     se3.play();
   }else if(score >= 36436.4 && score < 114514){
     se2.rewind();
     se2.play();
   }else{
     se.rewind();
     se.play();
   }
  }
  
  void stopsound(){
    se.close();
    minim.stop();
    //super.stop();
  }
  
  void setscore(){
    score = 0;
    plusscore = 0;
  }
  
  void inscore(){
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
  
  void drawscore(){
    textSize(32);
    fill(255,0,128);
    text("SCORE:" + str(score), 0, 32);
  }
  
  void Released(){
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
  
  void effect_active(){
    if(score > 11451.4){
      fill(int(random(255)),int(random(255)),int(random(255)));
      text("Foo!" ,random(width), random(height));
    }
  }
  
  void effect_passive(){
    if(score < 115000 && score >= 114514){
      image(back2, 0, 0, width, height);
      yoko = yoko_moto;
      tate = tate_moto;
      x = width/2;
      y = height/2;
    }else if(score >= 114514){
      image(back2, 0, 0, width, height);
    }else if(score < 37000 && score > 36436.7){
      image(back, 0, 0, width, height);
      yoko = yoko_moto;
      tate = tate_moto;
    }else if(score > 36436.4 && score < 114514){
      image(back, 0, 0, width, height);
    }else if(score <= 36436.4){
      background(255, 255, 255);
    }
  }
  
}


Fleischklopfer bou;
Niku niku;

void setup(){
  size(800, 800);
  minim = new Minim(this);
  se = minim.loadSnippet("bomb.wav");
  se2 = minim.loadSnippet("bomb2.wav");
  se3 = minim.loadSnippet("bomb3.wav");
  bou = new Fleischklopfer(320, 280, 250, 250);
  niku = new Niku("old_fle.png", "elingi2.png", width/3, height/2, 200, 200);
  niku.setscore();
}

void pam(){
   if(mousePressed == true){
    niku.playsound();
    textSize(64);
    fill(128,128,255);
    text("PAM!",random(width),random(height));
    niku.effect_active();
  }
}

void draw(){
  //background(255, 255, 255);
  niku.effect_passive();
  bou = new Fleischklopfer(mouseX, mouseY, 250, 250);
  niku.setimage();
  bou.setimage();
  niku.drawscore();
  pam();
  
  if(keyPressed == true){
    save("shot.png");
  }
}

void mouseReleased(){
  niku.Released();
  niku.inscore();
}

void stop(){
  niku.stopsound();
}
