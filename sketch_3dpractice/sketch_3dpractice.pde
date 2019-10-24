void setup(){
  size(600,600,P3D);
   spotLight(255,0,0,width/2, height/2, 400, 0, 0, -1, PI/4, 2); 
}

void draw(){
  background(255); 
  noStroke(); 
  translate(300,300);
  rotateY(radians(frameCount));
  rotateX(radians(frameCount));
  
  for (int i=0;i<=10;i++){
    for(int j=0;j<=10;j++){
      for(int k = 0;k<=10;k++){
        pushMatrix();
        float x = map(i,0,10,-150,150);
        float y = map(j,0,10,-150,150); 
        float z = map(k,0,10,-150,150); 
        translate(x,y,z);
        float angleX, angleY, angleZ; 
        angleX = map(i,0,10,0,TWO_PI); 
        angleY = map(j,0,10,0,TWO_PI);
        angleZ = map(k,0,10,0,TWO_PI); 
        rotateX(angleX);
        rotateY(angleY);
        rotateZ(angleZ); 
        
        float r, g, b; 
        r = map(i,0,10,0,255);
        g = map(j,0,10,0,255);
        b = map(k,0,10,10,255);
        fill(r,g,b); 
        
        box(15);
        popMatrix(); 
      }
    }  
  }
}
