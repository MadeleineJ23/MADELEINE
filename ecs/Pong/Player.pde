class Player {
  int x, y, health;
  PImage p1;

  Player () {
    x = 0;
    y = 0;
    health = 100;
    p1 = loadImage ("player1.png");
  }

  void display () {
    ellipse(x,y, 20, 20);
    fill (0);
  }

  void move (char dir) {
    if (dir == 'u') {
      y = y - 10;
    } else if (dir == 'd') {
      y = y + 10;
    } else if (dir == 'l') {
      x = x - 10;
    } else if (dir == 'r') {
      x = x + 10;
    }
  }
}
