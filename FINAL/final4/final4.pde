// this code draws an system where one ellipse rotates around another.
// replace this drawing code with a function that can be used to 
// draw the system repeatedly, like "drawSystem()". It should
// take arguments that allow parameters of the system to be customized,
// like the distance between each ellipse, the speed of rotation, and 
// the size of the ellipses.
// use your function to draw the system multiple times in the sketch
// as seen in the example gif.

void setup() {
  size(600, 600);
}

void draw() {
  background(0);
  drawSystem(); 
  drawSystem2(); 
}

void drawSystem(){
   pushMatrix();
  translate(width/1.5, height/1.5);
  rotate(frameCount * 0.05);
  ellipse(0, 0, 100, 100);

  pushMatrix();
  translate(150, 0);
  ellipse(0, 0, 50, 50);
  popMatrix();
  
  popMatrix();
}

void drawSystem2(){
   pushMatrix();
  translate(width/4, height/4);
  rotate(frameCount * 0.1);
  ellipse(0, 0, 100, 100);

  pushMatrix();
  translate(150, 0);
  ellipse(0, 0, 50, 50);
  popMatrix();
  
  popMatrix();
}

void mouseDragged(){
  drawSystem(); 
}
