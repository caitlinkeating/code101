//catching game with score 
//ArrayList<Sunshine> sunshines; 

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
int x = 0; 
int y = 0; 
int t = 0; 
int score = 0; 
int w; 
int playerSpeed; 


void setup() {
  size(500, 400); 
  colorMode(HSB); 

  //sunshines = new ArrayList<Sunshine>(); 
  score = 0; 
  w = (int) (width*4); 
  speed = (int)(height*(0.005)); 
  playerSpeed = (int)(width * (0.2)); 


  background = loadImage("skybg.png");
}

void draw() {
  background(background); 

  x = x + horizontal; 

  player(); 

  w = constrain((int)(w+playerSpeed * (right-left)), 0, (int)(width*0.8)); 
  player = loadImage("flowerplayer.png");
  image(player, 215, 305);
}

/////////DRAW PLAYER////////////////////////////////////////////////////////////
public void player() {

  player = loadImage("flowerplayer.png");
  image(player, 215, 305);
}

///////////WASD////////////////////////////////////////////////////////////
double right = 0;
double left = 0; 

void keyPressed() {
  if (key == LEFT) {
    left = 1;
  }
  if (key == RIGHT) {
    right = -1;
  }
}


void keyReleased() {
  if (key == LEFT) {
    left = 0;
  } else if 
    (keyCode == RIGHT) {
      right = 0;
    }
  }
}
///////////SUNSHINES////////////////////////////////////////////////////////////
class sunshines {
  float x, y, d, s; 
  //float offset = random(-0.25, 0.25); 

  sunshines(int mx, int my, int diameter, int speed)
    x = mx;
  y = my; 
  d = diameter;
  s = speed;
}

void update() {
  y += s; 
  display();
}

void display() {
  nostroke();
  fill(255, 204, 0); 
  ellipse(x, y, d, d);
}


///////////XX////////////////////////////////////////////////////////////
