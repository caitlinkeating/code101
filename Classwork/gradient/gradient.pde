//makes a gradient 

void setup(){
  for (int i =0; i <10; i++){
    println(i); 
    
  }
  size(600,600);
}

void draw(){
  for(int i =0; i<height; i++){
float r = map(i, 0, height, 0, 255); 
stroke(r, 150, 120); 
    line(0,i,width,i); 
  }
}
