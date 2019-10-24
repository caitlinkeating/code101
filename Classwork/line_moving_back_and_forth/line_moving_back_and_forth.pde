float rate = 0; 

void setup(){
  size(800, 400); 
}

void draw(){
  rate += 0.05; 
  if (rate> TWO_PI){
    rate = 0;
  }
  float s = sin(rate);
  
  float pos = map(s, -1,1,0,width); 
  
 background(map( s, -1, 1, 0, 255));
 stroke(map(s, -1, 1, 255, 0)); 
line(pos, 0, pos, height); 
  
}
