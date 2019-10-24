void circle(float x, float y, float r) {
  fill (255); 
  ellipse (x, y, r * 2, r * 2); 
}

void circle(float x, float y, float r, float g) {
  fill(g); 
  ellipse(x, y, r * 2, r * 2); 
}

boolean circle() {
  return true;
}

void setup() {
  size (600,600);
  background(255); 
}

void draw() {
  background(255); 
  circle(mouseX, mouseY, 50); 
  //makes circle on mouse
  circle(width/2, height/2, 100, 150); 
  
  fill(255); //greyscale -0255
  fill(255, 100); //gray, alpha 
  fill(100, 150, 200); //rgb
  fill(255, 100, 50, 100); //rgba(alpha)
  rect(100, 100, 200, 200); 
}
