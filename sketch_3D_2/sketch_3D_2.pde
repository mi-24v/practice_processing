void setup(){
  size(500,500,P3D);
  //frameRate(5);//gamenn ga tikatika suru toki wa kotira 
}

void draw(){
  //mouse wo osu to...
  if(mousePressed==true){
    fill(0,0,0,230);
    background(random(255),random(255),random(255));
  }else{
    fill(0);
  }
  noStroke();
  translate(width/2,height/2);
  rotateX(frameCount*PI/-60);
  rotateY(frameCount*PI/60);
  box(40,40,40);
  translate(100,100);
  box(50,50,50);
  translate(-200,-200);
  box(30,30,30);
  translate(200,0);
  box(35,35,35);
  translate(-200,200);
  box(45,45,45);
  translate(100,0);
  sphere(40);
  translate(100,-100);
  sphere(40);
  translate(-200,0);
  sphere(40);
  translate(100,-100);
  sphere(40);
}
