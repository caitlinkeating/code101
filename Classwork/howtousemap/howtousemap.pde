//loops notes

//while looping 
//if (ishungry)

//eatDinner();
//doHomework();



// while (before10PM){
  // haveCodeClass(); } 
  
  //as long as "before10PM" is false, "haveCodeClass" will continue to loop 
  
  //int iter = 0; 
  //while (iter<10){
  //  iter++; 
  //}
  
  //"FOR" loops, the variable to track is "iter"
  //some condition related to the varialbe --> iter < 10
  //variable change --> iter++
  
  //for(int i=0; i<10; i++) (no semicolon) {
    // } 
  
  //
  
  
  
  void setup(){
    size(600,600);
    
    int i = 0; 
     background(255);
    while(i<20){
      println("i have asked you for help" + i + "times!!!"); 
      i++;
    }
  }
  
  void draw(){
   int i = 0; 
   while(i<100){
     stroke(map(i, 0, 100, 0, 255)); 
     float x = map(i, 0, 100, 100, width-100); 
     ellipse(x, mouseY, 40, 40); 
     line(x, 0, x, height); 
     i++; 
   }
   
  }
