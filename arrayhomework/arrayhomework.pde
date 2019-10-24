
///////////////////////////////////////////////////////////////////////////////////////////
int numTotal = 3;

float [] xPositions = new float [numTotal];
float [] yPositions = new float [numTotal]; 
float [] xSpeeds = new float [numTotal]; 
float [] ySpeeds = new float [numTotal]; 

float [] radii = new float [numTotal]; 
float [] hues = new float [numTotal];

float Timer; 
float endGameTime; 

float left = 0; 
float right = 0; 
float up = 0; 
float down = 0; 

float speed = 0; 

float ellipse; 

int x = 0; 
int y = 0; 
int vertical = 0; 
int horizontal = 0; 
 
int milliseconds= 0; 
int seconds = 0; 
int interval = 31; 

///////////////////////////////////////////////////////////////////////////////////////////

void setup() {
  size(500, 500);
  frameRate(150); 

  for (int i = 0; i < numTotal; i++) {

    xPositions[i] = width/2; 
    yPositions[i] = height/2; 

    xSpeeds[i] = cos(map(i, 0, numTotal, 0, TWO_PI)) * random(1, 5); 
    ySpeeds[i] = sin(map(i, 0, numTotal, 0, TWO_PI)) * random(1, 5); 

    radii[i] = random(5, 30); 
    hues[i] = map(i, 0, numTotal, 0, 255);
  }
  noStroke(); 
  colorMode(HSB);
}

///////////////////////////////////////////////////////////////////////////////////////////

void draw() {
  background(255); 

  x = x + horizontal; 
  y = y + vertical; 

  player();
  timer(); 


  for (int i =0; i< numTotal; i++) {

    if (xPositions[i] < radii[i] || xPositions[i] > width - radii[i]) {
      xSpeeds[i] *= -1;
    }
    if (yPositions[i] < radii[i] || yPositions[i] > height - radii[i]) {
      ySpeeds[i] *= -1;
    }


    xPositions[i] += xSpeeds[i]; 
    yPositions[i] += ySpeeds[i];

    fill(hues[i], 200, 200); 
    ellipse(xPositions[i], yPositions[i], radii[i] * 2, radii[i] * 2);
  
}
}


///////////////////////////////////////////////////////////////////////////////////////////

void keyPressed() {

  if (key == 'd') {
    horizontal = 1;
  }
  if (key == 'a') {
    horizontal = -1;
  }
  if (key == 'w') {
    vertical = -1;
  }
  if (key == 's') {
    vertical = 1;
  }
}

///////////////////////////////////////////////////////////////////////////////////////////

void player() {
  ellipse(x, y, 32, 32);
}

///////////////////////////////////////////////////////////////////////////////////////////

void keyReleased() {
  if (key == 'd' && horizontal>0) {
    horizontal = 0;
  }

  if (key == 'a' && horizontal < 0) {
    horizontal = 0;
  }
  if (key == 'w' && vertical < 0) {
    vertical = 0;
  }
  if (key == 's' && vertical > 0) { 
    vertical = 0;
  }
}

///////////////////////////////////////////////////////////////////////////////////////////

void timer(){
  milliseconds = millis(); 
  
  textSize(12); 
  textAlign(CENTER); 
  
  text("avoid touching the other balls with WASD for 30 seconds to win!", width/2-30, height/2-30); 
  text(int(seconds), width/2, height/2); 
  
  if (seconds >= 30){
    background(255);
   text("You win!", width/2, height/2); 
   interval+= 10;
   noLoop(); 
    
    //win the game if you last 30 seconds 
  }else{
    seconds = milliseconds/1000; 
  }
    
 
}
