/**
 * <processing-graphics-7-animated-square>
 * by <Jonathan>
 * 
 * <Computer science assignment. This assignment will make a controllable square.>
 * 
 */
int x = 350;
int y = 350;
void setup() {
  size(700, 700);
}

void draw() {
  background(100, 10, 100);
  fill(255,255,255); //Square
  rect (x,y,20,20);
  fill(255,0,0);
  rect (0,0,700,40); //Red rectangle
  
 if (x<0) { //Makes square wrap around the sides
   x = width;
 }
 if (x > width) {
   x = 0;
 }
 
 if (y<0) { //Makes square wrap around the top/bottom
   y = height;
 }
 if (y > height) {
   y = 0;
 }
 
 if (y < 40) {
   textSize(20);
   text("Warning: Wormhole detected ahead.Approach with caution.", 100, 150);
 }
}

void keyPressed() {
{
  if (key == CODED) {
    if (keyCode == UP) {
      y = y -5;
    } else if (keyCode == DOWN) {
      y = y +5;
    } 
  }
}
  
  if (key ==CODED) {
    if (keyCode == LEFT) {
      x = x -5;
    } else if (keyCode == RIGHT) {
      x = x +5;
    }
  }
}
