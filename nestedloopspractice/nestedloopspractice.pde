void setup() {
  size(600, 600);
  noStroke(); 
  rectMode(CENTER); 
}


void draw() {
  background(0); 
  for (int y = 0; y <= height; y+=30) {
    for (int x = 0; x <= width; x+=30) {
      pushMatrix(); 
      translate(x,y); 
      float r = map(x, 0, width, 0, 255); 
      float g = map(y, 0, height, 0, 255); 
      fill(r,g,150);
      float a = map(y,0,height,0,TWO_PI);
      
      float t = map(x,0,width,0,120); 
      
      rotate(radians(frameCount+t+a)); 
      
      ellipse(5,5,mouseX,mouseY);
      
      popMatrix();  
    }
  }
}

//we do the Y loop but the X loop is within the Y loop 
//so it is nested 
//this makes x = 0, y = 0
//next loop, x = 1, y = 0
//a loop looping within a loop 
