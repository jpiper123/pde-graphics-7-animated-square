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
  rect (x,y,20,20);
  
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
