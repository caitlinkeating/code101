//catching game with score 
//ArrayList<Sunshines> sunshines; 

//float [] xPositions

PImage background; 
PImage player; 

float playerX; 
float playerY;  
float speed = 0; 
float fallSpeed = 1.5; 

//float left = 0; 
//float right = 0; 
float up = 0; 
float down = 0; 

float timer;
float endgameTime; 

int milliseconds = 0; 
int seconds = 0; 
int interval = 31; 

int horizontal = 0; 
int xPos = 250; 
int yPos = 305; 
int t = 0; 
int score = 0; 
int w; 
int playerSpeed; 
int delay; 


void setup() {
  size(500, 400); 
  colorMode(HSB); 

  //sunshines = new ArrayList<Sunshine>(); 
  score = 0; 
  w = (int) (width*4); 
  speed = (int)(height*(0.005)); 
  playerSpeed = (int)(width * (0.2)); 
  delay = (int)(height * (0.8)); 

  background = loadImage("skybg.png");

  
}

void draw() {
  background(background); 
  textSize(15); 
  fill(0); 
  text("Catch as many sunshines as you can in 20 seconds!", 45, 40);
  text("use the A and D keys to move", 55, 60); 
  xPos = xPos + horizontal; 

  player();

  /////sunshines////
  int posX;
  int posY; 

  for (int i = 0; i <20; i=i+1) {
    posX = int(random(width-100));
    posY = int(random(width-100)); 
  
  }
  

  
}



/////////DRAW PLAYER////////////////////////////////////////////////////////////
public void player() {

  player = loadImage("flowerplayer.png");
  image(player, xPos, yPos);
}

///////////SUNSHINES////////////////////////////////////////////////////////////




///////////TIMER////////////////////////////////////////////////////////////
void timer() {
  milliseconds = millis(); 

  textSize(15);
  text(int(seconds), width/2, height/2); 

  if (seconds >= 25) {
    //display score 
    //enter to reset
  }
}


///////////WASD////////////////////////////////////////////////////////////
double right = 0;
double left = 0; 

void keyPressed() {
  if (key == 'd') {
    horizontal = 1;
  }
  if (key == 'a') {
    horizontal = -1;
  }
}

void keyReleased() {
  if (key == 'd' && horizontal>0) {
    horizontal = 0;
  } else if 
    (keyCode == 'a' && horizontal<0) {
    horizontal = 0;
  }
}
//////////////////
