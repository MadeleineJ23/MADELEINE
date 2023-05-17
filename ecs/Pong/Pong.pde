// Madeleine Johnson | Apr 26, 2023 | Pong
boolean play;


void setup () {
  size(500, 800);
  play = false;
  
}


void draw() {
  if (play == false) {
    startScreen();
  } else {
    background (0);
    drawBackground (0);
    infoPanel();
    pong.display();
    if (y > height) {
      gameOver();
    }
  }
}
void drawBackground() {
  fill (0, 0, 200);
  rect (0, 400, width, 100);
  //image(bg, 0, 0);
}

void keyPressed () {
  if (key == 'w' ||key =="w") {
    pong.move('up');
  }
  else if (key =='s') {
    pong.move('down');
  
    play = true;
  }
}

  void startScreen () {
    background(0);
    fill (255);
    text("Welcome to Pong!", width/ 2, 400);
    text("By Madeleine Johnson", width/ 2, 400);
    text("Press space bar to start the game", width/ 2, 400);
  }

  void gameOver
    background(0);
    fill(0);
    textSize(40);
    textAlign(CENTER);
    text("Game Over", width/2, 400);
    text("Score", width/2, 400);
    text("Level", width/2, 400);
    noLoop();
  }
  
  void infoPanel() {
    fill(128, 128);
    rect(0, 0, width, 80);
    fill(0);
  }
