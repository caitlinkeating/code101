//animated mondrian art 

float x = 100; 
float y = 100; 
float xspeed = 1; 
float yspeed = 3.3; 


void setup() {
  size(400, 580);
  colorMode(HSB, 360, 100, 100);
  frameRate(36); 
  noStroke();
  
  
}

int value = 10;
int colorCycle;

void draw() {
  background(300);
  colorCycle = frameCount%360;
  fill(color(colorCycle, 100, 100)); 
  rect(200, 200, 100, 100); 
  text (colorCycle, 20, 20);
  
  x = x + xspeed;
  y = y + yspeed;
  
  if ((x > width) || (x < 0)){
    xspeed = xspeed * -1; 
  }
  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1; 
  }
  
  stroke (0); 
 fill (color(colorCycle, 100, 100)); 
 rect (x,y, 100, 100); 
 text (colorCycle, 20, 20); 
  
  
  //fill(300);
  //rect(0, 0, 100, 100);
  //strokeWeight(10);
  
  //fill(255,204,0);
  //rect(100,0,300,400);
  
  //fill(300);
  //rect(0,100,100,300);
  
  //colorMode(HSB);
  //fill(255,204,100);
  //rect(0, 400, 100, 178);
  
  //fill(300);
  //rect(100, 400, 220, 178);
  
  //colorMode(RGB);
  //fill(300);
  //rect(320, 400, 80, 90);
  
  //fill(255, 204, 0);
  //rect(320, 490, 80, 90);
  
}
  
