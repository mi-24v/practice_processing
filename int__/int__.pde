 int[] x,y,lr;
 void setup()
 {
   frameRate(30);
   int i;
   x = new int[10];
   y = new int[10];
   lr = new int[10];
   size(1000,400);
   for(i = 0; i<10; ++i){
    y[i]  = 40*i;
    lr[i] = 10;
   }
   x[0] = 30; x[1] = 60; x[2] = 40; x[4] = 300; x[5] = 150;
   x[6] = 350; x[7] = 100; x[8] = 200; x[9] = 180;
   noStroke();
 }
 void draw() 
 { 
   int i;
   background(0);
   for(i = 0; i < 10; ++i){
      x[i] += lr[i];
     if (x[i] > 985) { lr[i] = -70;}
     else if (x[i] < 14) { lr[i] = 5;}
     fill(x[i],y[i],random(255),100);
     ellipse(x[i],y[i],30,30);
     rect(y[i],y[i],75,75);
   }
 }
