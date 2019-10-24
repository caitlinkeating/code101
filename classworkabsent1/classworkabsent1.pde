int num =1000;

float[] xspeed = new float[num];
float[] yspeed= new float[num];
float[] xpos= new float[num];
float[] ypos= new float[num];

float radius = 15;

void setup() {
  
  size(600, 600);
  
  
  for (int i = 0; i < num; i++) {
    xpos[i] = width/2;
    ypos[i] = height/2;
    xspeed[i] = random(-5,5); 
    yspeed[i] = random(-5,5); 
  }
}

void draw() {
  background(150);
  for (int i = 0; i < num; i++) {
    
    if (xpos[i] > width - radius || xpos[i] < radius){ 
      xspeed[i] *= -1;
    }
    
    if (ypos[i] > height - radius || ypos[i] <radius){ 
      yspeed[i] *= -1;
    }
    
    xpos[i] += xspeed[i];
    ypos[i] += yspeed[i];
    
    ellipse( xpos[i], ypos[i], radius * 2, radius * 2);
  }
}
