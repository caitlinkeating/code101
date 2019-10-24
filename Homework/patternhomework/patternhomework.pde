//colorful pattern 

int x = 0; 
int y = 0; 
float angle = 0; 

void setup(){
  size(600,600); 
  ellipseMode(CENTER); 
  noStroke(); 
}

void draw(){
  if (x>width){
    x = -150; 
    y += 100;
  }else{
    x+=2; 
  }
 
 x++; 
 
 pushMatrix();
 translate(x,y); 
 rotate(radians(frameCount)); 
 
 noStroke(); 
 fill(map(x, -35, width + 35, 0, 255), random(50,100), mouseY); 
 
 ellipse(0,0,mouseX,mouseY); 
 
 popMatrix(); 
  
  
  
}
