boolean buttonOn = true;
float x = 100; 
float y= 100;
float xspeed = 1; 
float yspeed = 3.3; 

void setup() {
  size(600, 600);
  colorMode(HSB, 360, 100, 100); 
  frameRate(36); 
  noStroke(); 
}

int value = 10; 
int colorCycle; 


void draw() {
  if (buttonOn) {
    background(color(colorCycle, 100, 100));
    colorCycle=frameCount%360;
    fill(color(colorCycle,100,100)); 
    text(colorCycle, 20, 20); 
    
    x = x + xspeed;
    y = y + yspeed;
    
  } else {
    background(150);
  }
  

stroke(0);  
ellipse(width/2, height/2, 100, 100);

}

void mousePressed() {
  float d = dist(width/2, height/2, mouseX, mouseY);
  if (d < 50) {
    buttonOn = !buttonOn;
  }
}
