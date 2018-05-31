/**
 * <processing-graphics-7-animated-square>
 * by <Jonathan>
 * 
 * <Computer science assignment. This assignment will make a controllable square.>
 * 
 */
int x = 350;
int y = 350;
int delta = +5;
int lasttimecheck;
int timeinterval;
void setup() {
  size(700, 700);
  lasttimecheck = millis();
  timeinterval = 5000;
}

void draw() {
  background(0, 0, 0);
  fill(0,255,255); //Square
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
   text("Warning: Wormhole detected ahead.Approach with caution.", 100, 150); //Warning text
 }
}

void keyPressed() {
{
  if (key == CODED) {
    if (keyCode == UP) {
      y = y -delta;
    } else if (keyCode == DOWN) {
      y = y +delta;
    } 
    if (keyCode == LEFT) {
      x = x -delta;
    } else if (keyCode == RIGHT) {
      x = x +delta;
    }
  }
  if (key == 'p') {
    delta = 10;
  }
 }
}
