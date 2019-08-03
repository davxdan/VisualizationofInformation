float lightX = -50;
float lightY = -20;
float speedX = 5.2;

void setup() {
  size (1000, 1000, P3D);
  noStroke();
  fill(125);

}

void draw() {
  background(0);
  //lights();
  pointLight(255,255,255,lightX,lightY,420);
  pointLight(255,255,255,-100,-200,0);
  translate(width/2, height/2, 200);
  rotateY(frameCount *PI /180);
  sphere(100);
  lightX += speedX;
}
