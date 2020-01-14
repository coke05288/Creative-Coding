Maxim maxim;
AudioPlayer player;

float[] spec;
int xPos;
float magnify = 30; 
float rotation = 0; 
float radius = 0;
int elements = 10; 

int posX = 0;
int posY = 0;

int switchValueX = 10;
int switchValueY = 3;


void setup() {

  fullScreen();
  rectMode(CENTER);
  frameRate(18);

  maxim = new Maxim(this);
  player = maxim.loadFile("mybeat.wav");
  player.setAnalysing(true);
}

void draw() {
  player.play(); 
  background(0);
  spec = player.getPowerSpectrum();

  strokeWeight(2);
  stroke(255);

  radius = map(posX, 0, width, 0, 10);
  rotation = map(posY, 0, height, 0, 10);

  float spacing = PI/2/elements;  
  translate(width*0.5, height*0.5);
  noFill();
  strokeWeight(1);
  if (spec != null) {
    for (int i = 0; i < spec.length; i++) {
      stroke(i*5, i*2, 50, 0+i*3);
      pushMatrix();
      rotate(spacing*i*rotation);
      translate(sin(spacing*radius*i)*magnify*spec[i]*30, 0);
      rect(0, 0, spec[i]*10, spec[i]*2);
      popMatrix();
    }
  }
  posX+=switchValueX;
  posY+=switchValueY;

  if (posX>1000 || posX <0) {
    switchValueX*=-1;
  }

  if (posY>600 || posY <0) {
    switchValueY*=-1;
  }

}