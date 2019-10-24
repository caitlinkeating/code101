void setup() {
  for (int i =0; i <10; i++) {
    println(i);
  }
  for (int j = 0; j <10; j++) {
    println(j);
  }
  size(600, 600);
}

void draw() {
  //for (int i =0; i<height; i++) {
  //  float r = map(i, 0, height, 0, 255); 
  //  stroke(r, 150, 120); 
  ////  line(0, i, width, i);
  
  //for (int i = 0; i<=width; i+=30) {
  //  //  //i+= 30 incremenets by 30...60...90... etc.
  //  //  //must be <= instead of just < width or else it wont go all the way to width
  //  stroke(0);
  //  fill(255);
  //  ellipse(i, height/2, 20, 20 * i * 0.03); 
  //    //multiplying the last value will make them grow in size continually 

    

    translate(width/2, height/2); 
    rectMode(CENTER); 
    for (int j =100; j>0; j--) { 

      //rotate(map(j, 0, 10, 0, TWO_PI)); 
      float s = map(j, 0, 10, 250, 10); 
      rect(0, 0, s, s);
    }
  }
