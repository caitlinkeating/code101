// This program is a slightly more complicated bouncing ball. 
// Turn the "beam" into a class and use an ArrayList to store
// instances of them. Create new beams every frame based on
// a input method of your choice (key press, mouse click, etc). 

Beam [] bm = new Beam[15];
Beam vel; 


color col;

void setup() {
  size(600, 600);
  col = color(random(255), random(255), random(255));
  for (int i = 0; i < bm.length; i++) {
    bm[i] = new Beam(width/2, height/2);
  }

  //float speed = random(1, 10);
  //float angle = random(TWO_PI);
  //vel = new PVector(cos(angle) * speed, sin(angle) * speed);

  //pos[0].add(vel);
}

void draw() {
  background(255);
  for (int i = bm.length - 1; i > 0; i--) {
    bm[i].update();
    //bm[i].display(); 
    //bm[i] = b,[i - 1].copy();
  }

 

  if (bm[0].y > height || bm[0].y < 0) {
    bm.y *= -1;
  }

  //bm[0].add(p);


  noFill();
  stroke(col);
  strokeWeight(5);
  beginShape();
  for (Beam bm : bm) {
    vertex(bm.x, bm.y);
  }
  endShape();
}

class Beam{
  float x;
  float y; 
  float speed;
  float angle; 
  float vel; 
  
  PVector p; 
  
  Beam(float _x, float _y){
    x = _x; 
    y = _y; 
    speed = random(1,10); 
    angle = random(TWO_PI); 
    p = new PVector(cos(angle) * speed, sin(angle) * speed); 
  }
  
  void update(){
    if (bm[0].x > width || bm[0].x < 0) {
    p.x *= -1;
  }
  
  
  
}

}
