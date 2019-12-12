/**
 
 Based on code by Sumit Pandey  NID, Gandhinagar
 
 */

void setup() {
  size(600, 600);
  smooth();
  background(255);
  // noFill();

}

float count = 0;
float xNew, yNew;
float a = 13;
float b = 10;
float n = a/b;
boolean toggle = false;
boolean lines = false;

int aCounter;

void draw() {
  int strokeWt = 1;
  int scale = 5;
  
  epicycloid(a, b, width/2, height/2, count, 2, 2, strokeWt, count, scale);
  count = count + 0.6;
  if (count > 360) { 
    save("Epicycliod_a="+str(a)+" b="+str(b)+".png");
    noLoop();
  }
}

void epicycloid(float a, float b, int translateX, int translateY, float h, float s, float br, float strokeWt, float count, int scale) {
  float count2 = count;

  pushMatrix();
  translate(translateX, translateY);


    xNew = (a+b)*cos(radians(count))+b*cos(((a+b)*count));
    yNew = (a+b)*sin(radians(count))-b*sin(((a+b)*count)); 

    xNew = xNew * scale;
    yNew = yNew * scale;

    stroke(0, 0, 0);
    strokeWeight(strokeWt);
    ellipse(xNew, yNew, 30, 30);
  
  popMatrix();
}
