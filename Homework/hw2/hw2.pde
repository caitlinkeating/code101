int face = 255;
int face2 = 50; 

void setup()  {
  size(600, 600);
}

void draw() {
  background(face);
  background(face2); 
  
  ellipse(width/2, height/2, 100, 100);
  ellipse(50, 50, 50, 50); 

}

//void draw(){
//  background(face2); 
  
//  ellipse(50, 50, 50, 50); 


void mousePressed() {
  float d = dist(width/2, height/2, mouseX, mouseY);
  if (d < 50) {
    if (face == 255) {
      face = 150;
    } else {
      face = 255;
    }
  float c = dist(width/2, height/2, mouseX, mouseY); 
  if (c > 100) {
    if (face2 == 50) {
      face2 = 100;
    } else{ 
        face2 = 50;
    }
  }
  }
  
  
  //void mousePressed(){
  //  float d = dist(width/2, height/2, mouseX, mouseY); 
  //  if (d < 100) {
  //    if (face2 = 50); {
  //      face2 = 100; 
  //    }else {
  //      face2 = 50; 
        
  }
