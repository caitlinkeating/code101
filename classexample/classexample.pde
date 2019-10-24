Square [] sq = new Square[30]; 

void setup() {
  size(500, 500); 
  for (int i = 0; i < sq.length; i++) {
    sq[i] = new Square(i*width/30, height);
  }
}

void draw() {
  background(255);
  noStroke(); 
  for (int i = 0; i < sq.length; i++) {
    sq[i].update(); 
    sq[i].display();
    sq[i].colorsq();
  }
}


class Square {

  float x;
  float y; 
  float dy; 
  float maxY; 
  float w; 

  Square(float _x, float _y) {
    x = _x; 
    y = _y;
    dy = random(3, 5); 
    w = width/30; 
    maxY = random(200, height);
  }

  void update() {
    if (y >= height || y <= 0) {
      dy *= -1;
    }
    y += dy;
  }

  void colorsq() {  
    float c = map(y, 0, height, 0, 255); 
    fill(c, 0, 255);
  }


  void display() {
    rectMode(CENTER); 
    rect(x, y, w, w);
  }
}
