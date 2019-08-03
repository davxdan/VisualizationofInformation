import processing.core.*;
PVector[] vecData = new PVector[1500];
int dimensions = 750;
Dataloader acousticSignal;
int[] y;
float x;

void setup() {
  size(1500, 1500, P3D);
  

  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  acousticSignal = new Dataloader(this, "seg_00a37e.csv", "header", y); //instantiate a Dataloader object with name acousticSignal
  
  for (int i=0; i<vecData.length; i++, x+=.5f) {
    vecData[i] = new PVector(x, acousticSignal.ydata[i]*10+dimensions/2, x);
  }
  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
}

void draw() {
  background(13,2,8);
  translate(width/2, height/2);
  scale(1, -1, 1); // so Y is up, which makes more sense in plotting
  rotateY(radians(frameCount));

  noFill();
  strokeWeight(1);

  
  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  translate(-dimensions/2, -dimensions/2, -dimensions/2);
  for (int i=0; i<vecData.length; i++) {
  vecData[i].z = noise(frameCount * 0.005f + i) * dimensions;
    PVector v = vecData[i];
    stroke(0, 255, 65,50);
    strokeWeight(2);
    line(v.x, 0, v.z, v.x, v.y, v.z);
    stroke(0, 255, 65);
    strokeWeight(2);
    point(v.x, v.y, v.z);
    //vertex(v.x, v.z, v.x, v.y, v.z);
  }
  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
}
