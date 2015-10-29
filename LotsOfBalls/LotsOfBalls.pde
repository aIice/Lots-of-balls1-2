int count = 2;

float[] x = new float[count];
float[] y = new float[count];
float[] velX = new float[count];
float[] velY = new float[count];
float[] diam = {30, 80};


void setup() {
  size(800, 600);

  x[0] = width/2;
  x[1] = width/4;
  y[0] = height/2;
  y[1] = height*.8;

  velX[0] = random(-5, 5);
  velX[1] = random(-1, 1);
  
  velY[0] = random(-5, 5);
  velY[1] = random(-10, 10);
}

void draw() {
  background(0);
  
  ellipse(x[0], y[0], diam[0], diam[0]);
  ellipse(x[1], y[1], diam[1], diam[1]);

  x[0] += velX[0];
  x[1] += velX[1];
  
  y[0] += velY[0];
  y[1]+= velY[1];

  if (x[0] + diam[0]/2 >= width) {
    velX[0] = -abs(velX[0]);
  } else if (x[0] - diam[0]/2 <= 0) {
    velX[0] = abs(velX[0]);
  }
  if (x[1] + diam[1]/2 >= width) {
    velX[1] = -abs(velX[1]);
  } else if (x[1] - diam[1]/2 <= 0) {
    velX[1] = abs(velX[1]);
  }
  if (y[0] + diam[0]/2 >= height) {
    velY[0] = -abs(velY[0]);
  } else if (y[0] - diam[0]/2 <= 0) {
    velY[0] = abs(velY[0]);
  }
  if (y[1] + diam[1]/2 >= height) {
    velY[1] = -abs(velY[1]);
  } else if (y[1] - diam[1]/2 <= 0) {
    velY[1] = abs(velY[1]);
  }
}