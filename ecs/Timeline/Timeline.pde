// Madeleine Johnson | April 5, 2023 | Timeline

void setup() {
  size (950, 400);
}

void draw() {
  background(#5B8B5C);
  drawRef();
  histEvent(120, 200, "1968", true, "Chris McCandless is born.");
  histEvent(300, 300, "1990", false, "Graduates from Emory University, Georgia.");
  histEvent(350, 200, "1991", true, "McCandless leaves the Sierra Nevadas and hitchhikes to South Dakota. ");
  histEvent(400, 300, "1992", false, "McCandless begins his journey traveling across North America as a hitchhiker, \n reaching Alaska in April. " );
  histEvent(500, 200, "Apr 1992", true, "McCandless is last seen alive on the Stampede trailhead in Alaska.");
  histEvent(600, 300, "Sep 1992", false, "McCandless body is discovered in an abandoned bus numbered 142." );
  histEvent(700, 200, "Jan 1993", true, "John Krakauer published an article about McCandeless's story in Outside magazine. \n Later publishing the narrative 'Into the Wild'.");
  histEvent(850, 300, "2007", false, "A film directed by Sean Penn was created. Sparking inspiration for another 2007 documentary 'Call of the Wild'.");
}

void drawRef() {
  textAlign(CENTER);
  textSize(30);
  fill(4);
  text ("Chris McCandless Timeline", width/2, 50);
  textSize(18);
  text ("By Madeleine Johnson", width/2, 70);
  strokeWeight(3);
  stroke(50);
  line(50, 250, 900, 250);
  strokeWeight(2);
  line(50, 245, 50, 255);
  line(900, 245, 900, 255);
  text("1960", 50, 270);
  text("2010", 900, 270);
}

void histEvent(int x, int y, String title, boolean top, String detail) {
  if (top == true) {
    line(x, y, x-10, y+50);
  } else {
 line(x, y, x-10, y-50);
  }
  fill(222);
  rectMode(CENTER);
  rect(x, y, 100, 30, 7);
  fill(0);
  text(title, x, y+5);
  if (mouseX>x-50 && mouseX <x+50 && mouseY>y-15 && mouseY<y+15){
  text(detail,width/2, 150);
  }
}
