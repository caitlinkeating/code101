import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*; 

Minim minim; 
AudioPlayer ap; 

PImage background;
PImage player;

float playerTime; 
float timeToReset = 3000; 

float endGameTime; 
float timeToEndGame = 25000; 

int score = 0; 

//starting position of player 
//int xPos = 250;
//int yPos = 305; 

float xPos; 
float yPos; 

//direction of player movement 
int horizontal = 0;

boolean isReset; 
int state;

int gameScreen = 0; 

float [] x = new float [100];
float [] y = new float [100]; 
float [] dx = new float[100]; 
float [] dy = new float [100]; 

float radius = 5; 
float playerRadius = 2; 
float separateX;
float separateY; 


void setup() {
  size(500, 400); 
  background = loadImage("skybg.png");
  
minim = new Minim(this); 
ap = minim.loadFile("file.mp3"); 

  for (int i = 0; i <x.length; i++) {
    x[i] = width/2;
    y[i] = height/2; 
    dx[i] = random(-5, 5); 
    dy[i] = random(-5, 5);
  }

  resetGameTimer();
}

void draw() {
  xPos = xPos + horizontal;
  
  xPos = mouseX; 
  yPos = mouseY; 

  if (gameScreen == 0) {
    screen1();
  } else if 
    (gameScreen == 1) {
    gameScreen();
  } else if  
    (gameScreen==2) {
    gameOverScreen();
  }
}

////////////////////////////////////////DISPLAY////////////////////////////////////////
void screen1() {
  background(0); 
  textSize(15); 
  text("Click to play!", 100, 50);
}

void gameScreen() {
  background(background); 
  ellipseArray(); 
  player(); 
  drawUI();
}

void gameOverScreen() {
  background(255); 
  text("you collected this many sunshines, click mouse to try again:  "+ score, 10, 200);
  gameScreen = 2;
}

public void player() {
  
  //draw the player in the screen 
  player = loadImage("flowerplayer.png");
  image(player, xPos, yPos);
  playerRadius = 2; 
  
}

public void drawUI() {
  textSize(15); 
  fill(0);
  text("Catch as many sunshines as you can in 20 seconds!", 45, 40);
  text("use the mouse to move", 55, 60); 

  text("sunshines collected:" + score, 100, 120); 
  text("hurry! " + ((timeToEndGame - millis())/1000), 80, 90);

  if (millis()>timeToEndGame) {
    gameOverScreen();
  }
}

public void ellipseArray() {
  for (int i = 0; i < x.length; i++) {
    if (x[i] > width - radius || x[i] < radius) {
      dx[i] *= -1;
    }
    if (y[i] > height - radius || y[i] < playerRadius) {
      dy[i] *= -1;
    }

    x[i] += dx[i];
    y[i] += dy[i];
   
    
    
    if (dist(xPos, yPos, x[i], y[i]) < radius*2) {
      ap.play(); 
      fill(0, 150, 255);
      x[i] = -10000; 
      y[i] = -10000; 
      score++; 
    } else
    { 
      fill(255, 255, 0); 
    }

    for (int j = 0; j < x.length; j++) {
      if (i !=j) {
        if (dist(x[i], y[i], x[j], y[j]) < radius * 2) {
          //fill(255, 150, 0);
          
          
        }
      }
    }
    noStroke(); 
  //fill(255, 255, 0); 
    ellipse(x[i], y[i], radius*2, radius*2);
  }
  noFill();
  noStroke(); 
  ellipse(xPos, yPos, radius*2, radius*2); 
}


public void resetGameTimer() {
  endGameTime = millis() + timeToEndGame;
}

void startGame() {
  gameScreen = 1;
}

////////////////////////////////////////CONTROLS////////////////////////////////////////

void mousePressed() {
  if (gameScreen == 0) {
    startGame();
  }
  if (gameScreen == 2) {
    screen1();
  }
}

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
  } else if (keyCode =='a' && horizontal<0) {
    horizontal = 0;
  }
}
