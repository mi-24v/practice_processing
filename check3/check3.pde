/**
 * Bounce. 
 * 
 * When the shape hits the edge of the window, it reverses its direction. 
 */
 
int rad = 8;        // Width of the shape
float xpos, ypos;    // Starting position of shape    

float xspeed = 5;  // Speed of the shape
float yspeed = 5;  // Speed of the shape

int xdirection = 5;  // Left or Right
int ydirection = 5;  // Top to Bottom


void setup() 
{
  size(550,400);
  noStroke();
  frameRate(30);
  ellipseMode(RADIUS);
  // Set the starting position of the shape
  xpos = width/5;
  ypos = height/5;
}

void draw() 
{
  //background(102,xpos,ypos);
  
  // Update the position of the shape
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  
  // Test to see if the shape exceeds the boundaries of the screen
  // If it does, reverse its direction by multiplying by -1
  if (xpos > width-rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
  }

  // Draw the shape
  fill(random(200),random(xpos),random(ypos));
  ellipse(xpos, ypos, rad, rad);
  //rect(random(width),random(height),rad,rad);
}
