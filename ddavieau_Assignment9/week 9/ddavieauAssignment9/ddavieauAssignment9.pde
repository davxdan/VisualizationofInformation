Engine engine;
ShapeGenerator shapeGenerator;
float sketchWidth;
float sketchHeight;
void setup() {
  size(640, 480);
  //Signature: PVector location, int shapeCount, float shapeBirthRate, PVector sprayVector, float sprayRadius, boolean isInfinite, float shapeScale
  shapeGenerator = new ShapeGenerator(new PVector(width/4, height/4), 3000, 1, new PVector(.01, -10.2), 1.25, true, 20);
  engine = new Engine(shapeGenerator, 1.15, new PVector(.5, .5), new PVector(.002, -.7));
}

void draw() {
  fill(255);
  rect(-1, -1, width+1, height+1);
  engine.start();
}
