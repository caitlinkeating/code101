ArrayList<System> systems = new ArrayList<System>(); 

void setup(){
  size(600, 800); 
  noStroke(); 
  colorMode(HSB); 
}

void draw(){
  background(0); 
  
}

class System{
  
}

class Particle {
  float x;
  float y;  
  float dy; 
  float life; 
  float r; 
  
  Particle(float _x, float _y, float _life){
    x = _x; 
    y = _y; 
    
    dy = random(0,-0.05); 
    life = _life; 
    r = 30; 
  }
  
  void update(){
    life -= 2; 
 
    
  }
  void display(){
    float r = map(life, 100, 0, 40, 0); 
    ellipse(x, y, r*2, r*2); 
  }
  
}
