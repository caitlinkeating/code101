//colorful moving square 

int x = 0; 
int y = 0; 

void setup(){
  size(700,700);
  rectMode(CENTER); 
 
}

void draw(){
 if (x > width) {
   x = -100;
   y += 70; 
 }else{
   x+=3; 
 }
  
  
  x++; 
  
  pushMatrix();
  translate(x,y); 
  rotate(radians(frameCount)); 
  noStroke();
  fill(map(x, -100, width + 100, 0, 255), random(100, 130), mouseY); 
  rect(0,0, mouseX, mouseY); 
  popMatrix();
}
