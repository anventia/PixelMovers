// Brendan Chen
// 2021/09/27

// Variables //
int count;
Mover[] mover;


void setup() {
  frameRate(60);
  // Initialize window //
  background(255);
  size(1000,700);
  //fullScreen();  
  surface.setTitle("Template");
  surface.setResizable(true);
  
  // Variables //
  count = 5;
  
  
  // Movers //
  mover = new Mover[count];
  int i = 0;
  while(i < count) {mover[i] = new Mover(); i++;}
  
}


void draw() {
  colorMode(RGB);
  fill(255,255,255,10);
  noStroke();
  rectMode(CORNER);
  rect(0,0, width,height);
  
  int i = 0;
  while(i < count) {mover[i].show(); mover[i].act(); i++;}
}
