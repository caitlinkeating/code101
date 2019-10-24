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
 ellipse(250, 0, 20,20);
 ellipse(0, 250, 20, 20); 
 ellipse(-250, 0, 20, 20); 
 ellipse(0, -250, 20, 20); 
 popMatrix();
 
 
 pushMatrix(); 
 float rads = map(second(), 0, 60, 0, TWO_PI); 
 rotate(rads); 
 stroke(255,125,125); 
 fill(235,64,52); 
 ellipse(5,5,55,55); 
 ellipse(10,10,50,50);
 ellipse(20,20,45,45);
 ellipse(30,30,40,40);
 ellipse(40,40,35,35);
 ellipse(50,50,30,30);
 ellipse(60,60,25,25);
 ellipse(70,70,20,20);
 ellipse(80,80,15,15);
 ellipse(90,90,10,10);
 popMatrix(); 
 
 println(second()); 
 
 pushMatrix();
 rotate(map(minute(),0,60,0,TWO_PI)); 
 stroke(232, 235, 52); 
 fill(235,189,52); 
 ellipse(5,5,55,55); 
 ellipse(10,10,50,50);
 ellipse(20,20,45,45);
 ellipse(30,30,40,40);
 ellipse(40,40,35,35);
 ellipse(50,50,30,30);
 ellipse(60,60,25,25);
 ellipse(70,70,20,20);
 ellipse(80,80,15,15);
 ellipse(90,90,10,10);
 ellipse(100, 100, 5,5); 

 popMatrix(); 
 
 pushMatrix();
 int hour = hour();
 if (hour > 12){
   hour -= 12; 
 }
 rotate(map(hour(), 0,12, 0, TWO_PI)); 
stroke(199, 255, 186); 
 fill(52, 235, 146); 
 ellipse(5,5,55,55); 
 ellipse(15,15,50,50);
 ellipse(35,35,45,45);
 ellipse(45,45,40,40);
 ellipse(55,55,35,35);
 ellipse(65,65,30,30);
 ellipse(75,75,25,25);
 ellipse(85,85,20,20);
 ellipse(95,95,15,15);
 ellipse(105,105,10,10);
 ellipse(115, 115, 5,5); 
 ellipse(125, 125, 4, 4); 
 ellipse(135, 135, 3, 3); 
 ellipse(145, 145, 2, 2);
 ellipse(155, 155, 1, 1); 

 popMatrix(); 
 

 
}

//void mousePressed(){
//  time = millis() + 3000; 
