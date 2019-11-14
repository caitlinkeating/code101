PImage img; 

void setup(){
  size(1000,1000); 
  img = loadImage("dude.png"); 
}

void draw(){
  background(0); 
  image(img, height/2, width/2); 
  
  for (int  i = 0; i < img.height; i+=10){
    //rotate(5); 
    noFill();
    beginShape(); 
    for (int j = 0; j < img.width; j+=2){
      color c = img.get(j,i); 
      float b = brightness(c); 
      float x = j*width/img.height; 
      float y = i*height/img.height; 
      
      stroke(255); 
      strokeWeight(2); 
     
     vertex(x,y + map(c, b, 0, 255, 0)); 
    }
    endShape(); 
 
  }
}
