//how to incorporate collisions into arrays 

float [] x = new float [3];
float [] y = new float [3]; 
float [] dx = new float [3]; 
float [] dy = new float [3]; 

float separateX;
float separateY; 

float r = 40; 

void setup() {
  size(500, 500); 

  for (int i = 0; i < x.length; i++)
    //x.length can also be 3 
  {
    x[i] = width/2;
    y[i] = height/2;
    dx[i] = random(-5, 5);
    dy[i] = random(-5, 5);
  }
}

void draw() {
  background(255); 
  separateX = mouseX; 
  separateY = mouseY; 

  for (int i = 0; i < x.length; i++) {
    if (x[i] > width - r || x[i] < r) {
      dx[i] *= -1;
    }
    if (y[i] > height - r || y[i] < r) {
      dy[i] *= -1;
    }

    x[i] += dx[i];
    y[i] += dy[i]; 

    //collision code by measuring the distances between the radii 
    if (dist(separateX, separateY, x[i], y[i]) < r*2) {
      fill(0, 150, 255);
    } else
    { 
      fill(255);
    }

    for (int j = 0; j < x.length; j++) {
      if (i !=j) {
        if (dist(x[i], y[i], x[j], y[j]) < r * 2) {
          fill(255, 150, 0);
        }
      }
    }
    ellipse(x[i], y[i], r*2, r*2);
  }


  fill(255); 
  ellipse(separateX, separateY, r*2, r*2);
}
