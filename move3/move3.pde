float X, Y;

void setup(){
   size(200,200);
   colorMode(HSB,100);
   background(99);
   frameRate(30);

   //位置の初期設定
   X = 0;
   Y = 200;
}


void draw(){
   //画面をリセットする関数を呼び出す
   fade();

   //物体の位置
   X = X + 1;
   Y = Y - 1;

   //描画
   fill(0);
   rectMode(CENTER);
   rect(X, Y, 10, 10);
   if(X>width){
     X=0;
     Y=height;
   }
}


//画面をリセットするオリジナルの関数
void fade(){
   fill(99,30);
   rectMode(CORNER);
   rect(0, 0, 200, 200);
}
