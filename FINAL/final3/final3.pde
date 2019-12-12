// fix the code so that the drawn ellipse oscillates as 
// in the example gif. it should reset its position to 
// the left side of the screen after reaching the right.
// the wave's amplitude should grow larger as the xPos 
// increases (use map() or other means).

int size = 50; 
float xPos = 0;
float yPos = 0;
float theta; 
float ampl; 
float offset; 
 

void setup() {
  size(600, 600);
  offset = height/2; 
}
void draw() {
  background(0); 

  theta += .05; 

  //create boundaries for your xPos 
  xPos += 1; 
  if (xPos > width){
    xPos = 0; 
  }

  //use the map function for ampl 
  
  ampl = map(xPos, 0, height+100, 250, 100); 

  //fix yPos 
  yPos = offset + sin(ampl + height) * theta; 
  
 
  

  fill(255); 
  ellipse(xPos, yPos, size, size);
}
