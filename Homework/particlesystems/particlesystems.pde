ArrayList<System> systems = new ArrayList<System>();

void setup() {
  size(600, 600); 
  background(0); 
  colorMode(HSB, 255);
}

void draw() {
  for (int i = 0; i < systems.size(); i++) { 
    System temp = systems.get(i);
    temp.update();
  }
  for (int i = 0; i < systems.size(); i++) {
    System temp = systems.get(i);
    if (temp.num > 200) {
      systems.remove(i);
    }

    //if (systems.size() == 0) {
    //  background(0);
    //  fill(255); 
    //  textSize(32);
    //  text("click for particles", width/2, height/2);
    }
  }


void mousePressed() {
  systems.add(new System(mouseX, mouseY));
}

class System {
  ArrayList<Particle> b = new ArrayList<Particle>(); 
float x; 
float y; 
int num; 
int particleLife= 100;

System(float _x, float _y){
  x = _x; 
  y = _y; 
  num = 0; 
}

  void update() {
    if (num>150){
      b.add(new Particle(x, y, particleLife)); 
    }
    num++; 
    
    for (int i = b.size() - 1; i >= 0; i--){
      Particle temp = b.get(i);
      temp.update();
      temp.display(); 
      
      if(temp.life<0){
        b.remove(i); 
      }
    }
    
  }
}


//////////////////////////////////////////////////////////////////////////////////////////

class Particle {
  float x; 
  float y; 

  float dx;
  float dy; 

  float xPos;
  float yPos; 

  float accel; 
  float vel;

  float life;

  float r; 

  Particle(float _x, float _y, float _life) {
    x = _x; 
    y = _y; 

    dx = random(-1, 1); 
    dy = random(-1, 1); 

    life = _life; 

    r = 255;
  }

  void update() {
    life -= 2; 
    if (x > width - r || x < r) {
      dx *= -1;
    }
    if (y > height - r || y < r) {
      dy *= -1;
    }

    x += dx;
    y += dy;
  }
  void display() {
    float r = map(life, 100, 0, 40, 0);
    ellipse(x, y, r * 2, r * 2);
  }
}
