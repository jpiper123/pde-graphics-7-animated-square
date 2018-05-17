/**
 * <processing-graphics-7-animated-square>
 * by <Jonathan>
 * 
 * <Computer science assignment. This assignment will make an animated square.>
 * 
 */
int value = 0;
int x = 350;
int y = 350;
void setup() {
  size(700, 700);
}

void draw() {
  background(100, 10, 100);
  fill(value);
  rect (x,y,20,20);
}

void keyPressed() {
if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
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
