//mousePressed bool vs mousePressed() event
//why use one vs the other? 

int mouseEventCounter = 0; 
int mousePressedBooleanCounter = 0;

void setup(){
  size(300,300);
}

void draw(){
  if(mousePressed){
    mousePressedBooleanCounter++;
    println("mousePressedBooleanCounter:" + mousePressedBooleanCounter);
    //mousePressed = lets you know if the mouse is pressed
    //mousePressed event = lets us run some code when the mouse button is pressed 
  }
}

void mousePressed() {
  mouseEventCounter++; //mouseEventCounter = mouseEventCounter + 1 or mouseEventCounter += 1;
  
  
  println("mousepressed() event" + mouseEventCounter);

}
