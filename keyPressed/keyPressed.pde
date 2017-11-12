void setup(){
   size(400,400);
   colorMode(HSB,100);
   background(99);
   frameRate(15);

   //フォント設定
   PFont font = createFont("Naiv-Fat", 42);
   textFont(font, 24);
}


void draw(){
   if(keyPressed){
     //キーボードが押されたときの処理
     if(key == 'd'){
        //dが押されたときの処理
        background(99);
     } else {
     //それ以外のキーを押したときの処理
        textAlign(CENTER);
        fill(random(100),random(100),random(100),100);
        text(key, random(width), random(height));
     }
   }
}
