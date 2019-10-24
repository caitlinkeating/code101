//loops preview

void setup(){
  size(400,400);
}

void draw(){
  int counter = 2;
  int limit = 20; 
  while(counter<=limit){
    counter++;
    fill(random(255), random(255), random(255));
    ellipse(random(width), random(height), random(width/2), random(height/2));
    if (mousePressed && mouseButton == LEFT);
    
    for (int i=0; i<20; i++) {
      fill(10*i);
      ellipse(i* (width/20), i * (height/20), width/20, height/20); 
  }
}
} 
