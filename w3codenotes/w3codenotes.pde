float getDistance(float x1, float y1, float x2, float y2) { 
float xd = x1 - x2; 
float yd = y1- y2; 
xd = sq(xd); 
yd = sq(yd); 
float result = sqrt(xd + yd); 
return result; 

//float x difference
}

int backgroundColor = 255; 


void setup() {
  size (600, 600); 
}

void draw() {
  
  if (buttonOn) {
    background(255); 
  }
  else {
    background(150); 
  }
  
  
  background (backgroundColor); 
  
  ellipse(width/2, height/2, 100, 100); 
  line(width/2, height/2, mouseX, mouseY); 
  
}
  
 void mousePressed() {
  
  float d = getDistance(width/2, height/2, mouseX, mouseY); 
  //float d = dist(width/2/ height/2, mouseX, mouseY); 
  //these do the same thing 
 
  
  if (d<50);
  //does background color equal 255? if so, resolve to true 
  
  {
if (backgroundColor == 255) {
  backgroundColor = 100; 
}

else { //does the background color not equal 255?
  backgroundColor = 255;
} 
  }
  
  //this makes it change color upon clicking 
  //makes a line grow to *follow your mouse*! 
}
