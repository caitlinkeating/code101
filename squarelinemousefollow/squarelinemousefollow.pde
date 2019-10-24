void setup(){
  size(600,600); 
}

void draw(){
  background(255); 
  rectMode(CENTER); 
  //pushMatrix(); 
  //this means i have a stack of matrices 
  //all information before pushmatrix --> on top of stack
translate(width/2, height/2); 
rotate(mouseX * 0.01); 
rect(0,0,300,300); 

 rect(0,0,300,300); 
 
  //translate(width/2, height/2); 
  ////when we translate to this height and width, our coordinate system changes 
  ////now the middle of the canvas will be 0,0 
  //ellipse(0,0,300,300);
  //popMatrix(); 
  //when you pop, you take the top one off 
  //now, when we translate next time, it will not be affected 
  //keeps translations independent of each other 
   
  //pushMatrix(); 
  //translate(100,0);
  rect(0,0,200,200); 
  //popMatrix(); 
  //translations occur on top of each other 
  //if you continue to do translations, you have to keep them all tracked
  
  line(0,0,1000,0);
  line(0,0,1000,0); 
}
