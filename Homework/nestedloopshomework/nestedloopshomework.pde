boolean up, down;


void setup() {
  size(500, 500); 
  noStroke(); 
  rectMode(CENTER);
  
}

void draw() {
  background(0);
  text("press up arrow for dots, press down arrow to make them explode", 65, 250); 
  fill(0,2102,153); 
  for (int y = 0; y <= height; y+=30) {
    for (int x = 0; x<=width; x+=30) {
      pushMatrix();
      translate(x, y); 
      float a = map(y, 0, height, 0, TWO_PI); 
      float b = map(x, 0, width, 0, 120);

      fill(a, b, 200); 
      if (up) {
        rotate(radians(frameCount+a-b)); 
        ellipse(2, 2, 10, 10);
      } 
      if (down) {
        rotate(radians(frameCount*a*b)); 
        ellipse(10, 10, 600, 100);
      }
      popMatrix();
    }
  }
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      up = true;
    } else if (keyCode == DOWN) {
      down = true;
    }
  }
}
