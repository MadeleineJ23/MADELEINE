// Madeleine Johnson | 17 April | EtchASketch
int x, y;
PImage pic;

void setup() {

  size(800, 658);
  x = width/2;
  y=  height/2;
  pic = loadImage ("Etch.png");
}

void draw() {
  image(pic, 0, 0);
  strokeWeight(int(random(2, 5)));
  fill(int(random(50, 200)));
  background(255);
  if (keyPressed) {
    if ( key == 'w' || key == 'W') {
      y = y - 10;
    } else if ( key == 's' || key == 'S') {
      y = y +10;
    } else if ( key == 'a' || key == 'A') {
      x = x - 10;
    } else if ( key == 'd' || key == 'D') {
      moveRight(10);
      x = x + 10;
    }
  }
}

void mousePressed() { //saving the image with saveFrame
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      moveUp (20);
    } else if (keyCode == DOWN) {
      movedown(10);
    } else if (keyCode == RIGHT) {
      moveRight(10);
    } else if (keyCode == LEFT) {
      moveLeft(10);
    }
  }
}
void moveRight(int rep) {
  for (int i=0; i<rep; i=i+1) {
    point(x+i, y);
  }
  x = x + rep;
}

void  moveLeft (int rep) {
  for (int i=0; i<rep; i=i+1) {
    point(x-i, y);
  }
  x = y + rep;
}


void moveUp (int rep) {
  for (int i=0; i<rep; i=i+1) {
    point(x-i, y-i);
  }
  x = x + rep;
}
void movedown (int rep) {
  for (int i=0; i<rep; i=i+5) {
    point(x+i, y=i);
  }
  x = x + rep;
}
