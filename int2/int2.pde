 int[][] s=new int[25][25];
 int[][] s2=new int[25][25];
 int[] x = {8,9,10,11,12,13,14,15,15,15,15,15,14,13,12,11};
 int[] y = {8,9,10,11,12,13,14,15,14,13,12,11,15,15,15,15};
 int edge,n;
   
 void setup(){
  size(126,126);
  frameRate(20);
  edge=5;
  n=16;
  for(int i=0; i<25; ++i){
    for(int j=0;j<25;++j){
      s[i][j] = 0;
   }}
  for(int i=0; i<n; ++i){ 
    s[x[i]][y[i]] = 1;
   }
  }
    
 void draw(){
   for(int i=0; i<25; ++i){
     s2[i][0] = s[i][24];
     for(int j=1;j<25;++j){
       s2[i][j] = s[i][j-1];
    }}
   for(int i=0; i<25; ++i){
     for(int j=0;j<25;++j){
       s[i][j] = s2[i][j];
    }}
   
   stroke(0);
   fill(255);
   for(int i=0; i<25; ++i){
     for(int j=0;j<25;++j){
       if(s[i][j] == 0){
         fill(255);}
       else{
         fill(0,0,255);}
       rect(i*edge,j*edge,edge,edge);
    }}
 }
