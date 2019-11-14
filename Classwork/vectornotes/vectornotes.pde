PVector pos; 
PVector vel; 

void setup(){
  size(600,600);
  pos = new PVector(0,0); 
  vel = new PVector(3,3); 
 
}

void draw(){
  //pos.x = mouseX; 
  //pos.y = mouseY; 
  
  pos.add(vel); 
  
  background(255); 
  fill(0);
  ellipse(pos.x, pos.y, 100, 100); 
}

class Ball{
  PVector pos;
}
