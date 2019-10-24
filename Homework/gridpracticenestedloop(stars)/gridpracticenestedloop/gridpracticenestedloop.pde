void setup() {
  size(500, 500);
  
}


void draw() {
  background(0); 
  for (int x = 0; x < width; x+=10) {
    for (int y = 0; y <= height; y+=15) {
      for (int b = 0; b <= width/2; b+=40){
        
      
      float a = map(x, 0, height, 0, 255); 

      noStroke();
      rotate(radians(x-y*a-b)); 
      fill(radians(frameCount*x-y*a));
      ellipse(x, y, 5, 5);
     
  
      }
    }
  }
}

//mouseX, x, mouseY, y)

//(x, 0, 50, 0, PI))
