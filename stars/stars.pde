void setup() {
  size(600, 300);
  frameRate(3);//more slowly
}

void draw() {
  //画面のリセット
  fill(204,10);
  noStroke();
  rect(0, 0, width, height);
  //ランダムな位置・傾き・サイズで☆が描画されるように座標変換する
  translate(random(width), random(height));
  rotate(random(PI));
  scale(random(0.1, 0.5));
  //配列の定義
  int[] x = {50, 29, 83, 17, 71}; //点A,B,C,D,Eのx座標
  int[] y = {18, 82, 43, 43, 82}; //点A,B,C,D,Eのy座標
  // 5つの点A,B,C,D,Eを順に直線で結び☆を描く
  translate(-50, -50); //☆を原点の位置に座標変換する
  fill(254,255,23);
  stroke(0);
  beginShape();
  for (int i = 0; i < x.length; i++) {
    vertex(x[i] + random(-5, 5), y[i] + random(-5, 5));
  }
  endShape(CLOSE);
}
