/**
 * <processing-graphics-7-animated-square>
 * by <Jonathan>
 * 
 * <Computer science assignment. This assignment will make an animated square.>
 * 
 */
int value = 0;
void setup() {
  size(700, 700);
  background(100, 10, 100);
}

void draw() {
rect (350,350,20,20);
}

void keyPressed() {
  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
}
