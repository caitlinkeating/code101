// this program draws a rectangle to the center of the screen.
// as shown in the gif, use map() and other means to use the mouse
// position to change attributes of the rectangle. 

// when mouseY is at height, the rectangle should be the width 
// and height of the screen.

// when mouseX is at 0, the rect should be red. when mouseX
// is at width, it should be blue.

// moving the mouse from the left to the right side of the screen
// should result in the rectangle doing one full rotation (360 degrees).

color c; 

void setup() {
  size(600, 600);
  rectMode(CENTER);
}

void draw() {
  background(255);
  noStroke(); 
  
  pushMatrix();
  translate(width/2, height/2);
  float mapRot = map(mouseX, 0, 100, 250, 100); 
  rotate(radians(mapRot)); 
  // add a mapped rotation here
  
  float s = map(mouseY, 0, 100, 250, 100); 
  
  // map the color here (hint try using either lerpColor or HSB color mode)
  //color c = map(0, -100, width + 100, 0, 255), random(100,200), mouseY); 
  
  fill(map(mapRot, -100, width + 100, 0, 255), (color(0, 99, 125)), mouseX);
  rect(0, 0, s, s);
  popMatrix();
}
