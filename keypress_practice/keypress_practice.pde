char a = 'a'; 
boolean up, right, left, down; 

float x, y; 

void setup() {
  size(600, 600);
  x = width/2;
  y = height/2;
}

void draw() {

  ellipse(x, y, 50, 50); 
  if (up) {
    y-=10;
  }
  if (down) {
    y+=10;
  }
  if (right) {
    x+=10;
  }
  if (left) {
    x-=10;
  }


  if (keyPressed) {
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      up = true;
    } else if (keyCode == RIGHT) {
      right = true;
    } else if (keyCode == LEFT) {
      left = true;
    } else if (keyCode == DOWN) {
      down = true;
    }
  }
}

void keyReleased() {
  if (key == CODED) {
    if (keyCode == UP) {
      up = false;
    } else if (keyCode == RIGHT) {
      right = false;
    } else if (keyCode == LEFT) {
      left = true;
    } else if (keyCode == DOWN) {
      down = true;
    }
  }
}
