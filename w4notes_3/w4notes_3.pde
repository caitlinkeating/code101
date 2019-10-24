//how to make a clock 

int time = 3000; 

void setup(){
  size(600,600); 
  strokeWeight(4); 
}

void draw(){
 background(255);
 translate(width/2, height/2); 
 
 pushMatrix(); 
 float rads = map(second(), 0, 60, 0, TWO_PI); 
 rotate(rads);
 line(0,0,200,0); 
 popMatrix(); 
 
 println(second()); 
 
 pushMatrix();
 rotate(map(minute(),0,60,0,TWO_PI)); 
 line(0,0,0,-200); 
 popMatrix(); 
 
 pushMatrix();
 int hour = hour();
 if (hour > 12){
   hour -= 12; 
 }
 rotate(map(hour(), 0,12, 0, TWO_PI)); 
 line(0,0,0,-200);
 popMatrix(); 
 

 
}

//void mousePressed(){
//  time = millis() + 3000; 
