void setup(){
  size(600,600); 
}

void draw(){
  for (int i = 0; i<6; i++){
    float x = map(i, 0, 5, 100, 500); 
    
 
      fill(0,255,0); 
    
    
    if(dist(mouseX,mouseY,x,height/2)<35){
      //< > will inverse the colors, use as u wish 
      if(mousePressed){
    fill(255,0,0); }
    }
    ellipse(x, height/2, 70,70); 
    }
  }
  
  //how to make a button ellipse where it changes on mouseover 
 
  //if (dist(mouseX, mouseY, 100, 100)<100){
  //  fill(255,0,0); 
  //}else{
  //  fill(0,250,0); 
  //}
  //ellipse(100,100,200,200); 
