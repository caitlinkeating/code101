void setup(){
  size(600,600);
}

void draw(){
  background (64, 229, 242); 
  drawBird(mouseX, mouseY); 
  rect(-10, 500, 650, 200); 
  
}

void drawBird(float x, float y){
  drawHead(x,y);
  drawBody(x,y); 
  drawEye(x,y); 
  drawBeak(x,y); 
  drawLegs(x,y); 
  
}

void drawHead(float x, float y) {
  strokeWeight(1); 
  fill(230); 
  ellipse(x, y, 25, 25); 
}

void drawBody(float x, float y){
  strokeWeight(1); 
  fill(230); 
  ellipse(x + 20, y + 32, 50, 50); 
}

void drawEye(float x,float y){
  strokeWeight(1);
  fill(50);
  ellipse(x -3, y - 1, 5, 5); 
}

void drawBeak(float x, float y){
  strokeWeight(1);
  fill(230); 
  triangle(x - 10, y - 1, x - 30, y - 3, x - 10, y - 7); 
}

void drawLegs(float x, float y){
  strokeWeight(1); 
  line(x - 5, y + 40 , 200, 500); 
  line(x + 25, y + 40 , 230, 500); 
}
