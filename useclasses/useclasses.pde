Circle [] cc = new Circle[5]; 

void setup() {
  colorMode(HSB); 
  size(600, 600); 
  background(0); 

  for (int i = 0; i < cc.length; i++) {
    cc[i] = new Circle(i*width*300, height);
  }
}

void draw() {
  for (int i = 0; i < cc.length; i++) {
    cc[i].display();
  }
}

class Circle {
  float x; 
  float y; 
  float a;
  float b; 

  float xSpeed;
  float ySpeed;

  int colorCycle; 

  Circle(float _x, float _y) {
    x = _x;
    y = _y; 

  }

  void display() {

    rectMode(CENTER); 
    for (int i = 100; i > 0; i--) {

      translate(width/2, height/2);

      colorCycle = frameCount%360; 
      fill(color(colorCycle, 100, 100));

      rotate(map(i, 0, 10, 0, TWO_PI)); 
      float s = map (i, 0, 10, 250, 10); 

      stroke(255); 
      rect(0, 0, s, s);
    }
  }

}
