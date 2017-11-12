float x;//ボールのx座標
float y;//ボールのy座標
int a;//ボールのx軸移動判定
int b;//ボールのy軸移動判定
int point;//得点
int count;//何回落ちたかカウント,ゲームオーバー
float speedx;//x方向の速さ
float speedy;//y方向の速さ重力の関係で少し早目
void setup(){
  size(400,600);
  a=0;//初期ではx軸右側に
  b=0;//初期ではy軸下側
  x=300;//初期のボールx座標
  y=300;//初期のボールのｙ座標
  point=0;
  count=0;
  frameRate(100);
  speedx=1.0;
  speedy=5.0;
  rectMode(CENTER);//長方形の基準を真ん中
}

void draw(){
  background(122,45,222);//適当な色づけ
  text(point,50,20);//得点の表示左上
  //壁とのあたり判定
  if(a==0)x+=speedx;//aが0なら右へ
  if(x>=width-5){
    a=1;
    speedx=random(3);
  }//ｘ座標が壁ギリギリになったら左へ5は半径（スピード変速システム搭載）
  if(a==1)x-=speedx;//aが0なら左へ
  if(x<=5){
    a=0;
    speedx=random(3);
  }//ｘ座標が壁ギリギリになったら右へ(スピード変速システム搭載)
  
  if(b==0)y+=speedy;//bが0なら下へ
  if(y>=height){//ボールが下に落ちた時
    y=0;//上に戻ってくる
    count++;//GameOverカウント追加
  }
  if(b==1)y-=speedy;//bが1の時上へ
  if(y<=5){
    b=0;
    speedy=random(3,5);
  }//ボールが天井なら下へ(スピード変速システム搭載)
  
  ellipse(x,y,10,10);//円の作成
  fill(0);
 rect(mouseX,580,50,10);//動かす長方形
 fill(255,0,0);
 //長方形とのあたり判定とポイントの加算
 if(x>=mouseX-30 && y>=565 && y<=575 && x<=mouseX+30){
   b=1;
   if(count<=10){
   point+=100;
   speedx=random(3);
   speedy=random(3,5);
   }
 }
 if(x>=mouseX-30 && y>=565 && y<=585 && x<mouseX-10)a=1;
 if(x>mouseX+10 && y>=565 && y<=585 && x<=mouseX+30)a=0;
 if(y>=575 && x==mouseX-30 && y<=585){
   a=0;
   b=1;
   if(count<=10){
   point+=100;
   }
 }
 if(y>=575 && x==mouseX+30 && y<=585){
   a=1;
   b=1;
   if(count<=10){
   point+=100;
   }
 }
 if(count>10){//10回以上落ちたらゲームオーバー
   textAlign(CENTER);
   textSize(28);
   text("GAME OVER",width/2,height/2);
  
  }
  
}

