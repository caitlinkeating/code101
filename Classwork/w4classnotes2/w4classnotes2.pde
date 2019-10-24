void setup(){
  size(800,800);
  rectMode(CENTER);
}

void draw(){
  background(20); 
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(mouseX * 0.01); 
  fill(255, 255, 0); 
  rect(0,0,200,200); 
  
  pushMatrix();
  translate(300, 0);
  rotate(mouseY * 0.01); 
  //translate to the right 
  fill(0,255,100); 
  rect(0,0,50,50); 
 //little green rectangle under the other translation so we can push/pop again 
 
 pushMatrix();
 translate(100,0); 
 fill(150); 
 rect(0, 0, 20, 20); 
 
  popMatrix(); 
  
  popMatrix(); 
  
  popMatrix();
  
  
  
}
