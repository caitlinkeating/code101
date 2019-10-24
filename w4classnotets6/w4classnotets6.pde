float x;
float y; 

float xSpeed;
float ySpeed; 

void setup() {
  size(800,800); 
  background(255); 
  x = width/2;
  y = height/2; 
  
  xSpeed = 5;
  ySpeed = 3; 
  background(255); 
  
}



void draw(){
  background(255);
  
  //add a conditional to avoid the ball leaving screen
  
  if (x>width || x < 0){
    xSpeed += -xSpeed; 
  }
  if (y>width || y < 0){
    ySpeed += -ySpeed;  
  } 
  
  x+= xSpeed;
  y+= ySpeed; 
  
  noFill(); 
  stroke(map(x,0,width,0,255), map(y,0,height,0,255), 150); 
  ellipse(x, y, frameCount + 0.1, mouseY); 
}
