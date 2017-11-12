int[][] map;

// 現在の位置と前フレームの位置のみを保持
float x, y;
float prev_x, prev_y;

for(; ; ) {

  // 速度は前フレームの位置を利用して求める
  float vx = x - prev_x;
  float vy = y - prev_y;

  // このフレームでの加速度を計算する
  float ax = -K * vx; // 空気抵抗
  float ay = -K * vy + G; // 空気抵抗+重力
  if(左キーが押された) { ax -= A; } // キー入力による加速
  if(右キーが押された) { ax += A; }
  if(ジャンプ中である) { ay -= B; } // ジャンプ

  // 速度に加速度を加算
  vx += ax;
  vy += ay;
  // 移動前の座標を記憶
  prev_x = x;
  prev_y = y;
  // 速度だけ移動
  x += vx;
  y += vy;

  // 上方向の当たり判定
  if(vy < 0) {
    // 自分の頭のセル単位の位置を計算
    int ix = (int)((x + CHARACTER_SIZE / 2) / CHARACTER_SIZE);
    int iy = (int)((y - 1) / CHARACTER_SIZE);
    // 天井に衝突していた場合
    if(map[ix][iy] == WALL) {
      // 天井にめり込まないように移動
      y = (iy + 1) * CHARACTER_SIZE;
    }
  }

}

