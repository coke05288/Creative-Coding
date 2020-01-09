
PImage img;

int x = 10;
int y = 10;

void setup() {
  fullScreen();
}

void draw() {
  background(255);

  rectMode(CENTER);
  fill(213, 22, 6);
  rect(mouseX, mouseY, x, y);
}