Engine engine;
ShapeGenerator shapeGenerator;
Axis myAxis = new Axis();
float sketchWidth;
float sketchHeight;
void setup() {
  background(20, 10, 60);
  size(3840, 2160, P3D);
  //Signature: PVector location, int shapeCount, float shapeBirthRate, PVector sprayVector, float sprayRadius, boolean isInfinite, float shapeScale
  shapeGenerator = new ShapeGenerator(new PVector(0, 0, 0), 300, 150, new PVector(1.09, .2, -.2), 50, true, 20);
  //Signature: ShapeGenerator shapeGenerator, float gravity, PVector turbulance, PVector wind
  engine = new Engine(shapeGenerator, .50, new PVector(0, 0,0), new PVector(0, 0,0));
}

void draw() {
  fill(78, 48, 132);
  camera(1000,0,1000,0,0,0,0,1,0);
  //myAxis.drawAxis();
  lights();
  
  //rect(-1, -1, width+1, height+1);
  engine.start();
  pushMatrix();
  translate(100.0,0);
  popMatrix();
}
