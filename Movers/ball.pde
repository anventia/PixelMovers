class Mover {
  // Create Variables //
  float x,y;
  int direction = int(random(0,4));
  int lastDirection ;
  int speed = 10;
  int keepDirection;
  int hue;
  int sat;
  
  // Constructor //
  Mover() {
    resetPixel();
  }
  
  void resetPixel() {
    x = width/2;
    y = height/2;
     
    hue = int(random(0,100));
    sat = 37;
    //if(hue < 10) {sat = 0;} else {sat = 37;}  // Sometimes make a white pixel
  }
  
  // Movement //
  void act() { 
    // Pick direction and move //
    lastDirection = direction;
    keepDirection = int(random(0,20));
    if(keepDirection >0) {}  // Same direction as last frame
    else {direction = int(random(0,4));}  // Random direction
    switch(direction) {
      case 0: y -= speed; break;  // Up
      case 1: y += speed; break;  // Down
      case 2: x -= speed; break;  // Left
      case 3: x += speed; break;  // Right
    }
    
    // Reset to middle if hit edge //
    if(x < -speed/2 || x > width+speed/2 || y < -speed/2 || y > height+speed/2) {resetPixel();}
  }
  
  
  // Draw //
  void show() {
    colorMode(HSB, 100,50,100);
    fill(hue, sat, 100);
    //circle(x,y, speed);
    rectMode(CENTER);
    square(x,y, speed*0.8);
  }
}
