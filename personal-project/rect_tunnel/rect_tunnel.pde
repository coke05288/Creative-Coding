int xPos =0;
int n = 50;
int [] arrX;
int [] arrY;

void setup() {
  size(500, 500);
  arrX = new int[n];
  arrY = new int[n];
}

void draw() {
  background(0);

  for (int i=0; i<n-1; i++) { // boucle for qui s'exécute pour les 63 premiers rangs de la liste (ici, de 0 à 62)
    arrX[i]=arrX[i+1];
    arrY[i] = arrY[i+1];// décale chaque élément de la liste d'un rang vers la gauche, le dernier devient avant dernier, etc.
  }
  arrX[n-1]=mouseX; // attribue une valeur au dernier élément de la liste (ici, le rang 63)
  arrY[n-1]=mouseY;
  rectMode(CENTER);
  for (int i = 1; i<n; i+=2) {
    pushMatrix();
    noFill();
    stroke(255, 255, i*2, 20 + i*2);
    rect(arrX[i], arrY[i], i*10, i*10);
    popMatrix();
  }

  xPos += 2;
}