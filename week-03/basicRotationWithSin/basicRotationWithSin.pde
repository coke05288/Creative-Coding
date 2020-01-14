//The MIT License (MIT) - See Licence.txt for details

//Copyright (c) 2013 Mick Grierson, Matthew Yee-King, Marco Gillies


float magnify = 150; // This is how big we want the rose to be.
float rotation = 0; // rotation : this is basically how far round the circle we are going to go
float radius = 0; // radius : this is basically how far from the origin we are.
int elements = 20;// This is the number of points and lines we will calculate at once. 1000 is alot actually. 

int posX = 0;
int posY = 0;

int switchValueX = 20;
int switchValueY = 5;

void setup() {
  //iPad portrait. Swap the numbers for landscape. 
  size(500, 500);
  rectMode(CENTER);
  colorMode(HSB);
  frameRate(20);
}

void draw() {
  background(0);
  radius = map(posX, 0, width, 0, 10);
  rotation = map(posY, 0, height, 0, 10);
  //radius = map(mouseX, 0, width, 0, 10);
  //rotation = map(mouseY, 0, height, 0, 10);
  float spacing = PI/2/elements; // this is how far apart each 'node' will be - study it. 
  translate(width*0.5, height*0.5);// we translate the whole sketch to the centre of the screen, so 0,0 is in the middle.
  noFill();
  strokeWeight(1);

  for (int i = 0; i < elements; i++) {
    stroke(i*2, 255, 255);
    pushMatrix();
    rotate(spacing*i*rotation);
    translate(sin(spacing*i*radius)*magnify, 0);
    ellipse(0, 0, 20, 20);
    popMatrix();
  }
  
  posX+=switchValueX;
  posY+=switchValueY;
  
  if(posX>10000 || posX <0){
    switchValueX*=-1;
  }
  
  if(posY>5000 || posY <0){
    switchValueY*=-1;
  }
 
}