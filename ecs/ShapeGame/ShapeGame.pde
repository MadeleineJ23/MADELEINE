//Madeleine Johnson | April 12, 2023 | ShapeGame
int x, y, score, tarX, tarY;
float d;
void setup () {
  size(500, 500);
  x = 50;
  y = 50;
  score =  0;
  tarX = int(random(width));
  tarX = int(random(height));
  d = 0;
}

void draw () {
  background(128);
  d = dist(x, y, tarX, tarY);
  target();
  score();
  // loop user controlled shape
  ellipse(x, y, 20, 20);
  rectMode(CENTER);
  fill(0);
  rect(tarX, tarY, 20, 20);
  if (keyPressed) {
    if ( key == 'w' || key == 'W') {
      y = y - 10;
    } else if ( key == 's' || key == 'S') {
      y = y +10;
    } else if ( key == 'a' || key == 'A') {
      x = x - 10;
    } else if ( key == 'd' || key == 'D') {
      x = x + 10;
    }
  }
  if (x>width) {
    x = 0;
  } else if (x<0) {
    x= width;
  } else if (y<0) {
    y= height;
  } else if (y>height) {
    y = 0;
  }
}
void keyPressed () {
  if (key == CODED) {
    if (keyCode  == UP) {
      y = y - 1;
    } else if (keyCode == DOWN) {
      y = y + 1;
    } else if (keyCode == RIGHT) {
      x = x + 1;
    } else if (keyCode == LEFT) {
      x = x - 1;
    }
  }
}

void score() {
  rectMode(CORNER);
  fill(255, 0, 0, 128);
  rect(0, 0, width, 30);
  fill(0);
  text("Score:" + score, 10, 25);
  text("Dist:" + d, width-100, 25);
}

void target() {
  println(d);
  if (d<20) {
    score = score + 100;
    tarX = int(random(width));
    tarX = int(random(height));
  }
}
