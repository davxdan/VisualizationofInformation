Engine engine;
ShapeGenerator shapeGenerator;
float sketchWidth;
float sketchHeight;
void setup() {
  background(2, 2, 4);
  size(1920, 1080);
  //Signature: PVector location, int shapeCount, float shapeBirthRate, PVector sprayVector, float sprayRadius, boolean isInfinite, float shapeScale
  shapeGenerator = new ShapeGenerator(new PVector(width/4, height/4), 3000, 12.05, new PVector(1.09, .2), 1.25, true, 80);
  //Signature: ShapeGenerator shapeGenerator, float gravity, PVector turbulance, PVector wind
  engine = new Engine(shapeGenerator, .50, new PVector(5, 5), new PVector(.009, .1));
}

void draw() {
  fill(255);
  //rect(-1, -1, width+1, height+1);
  engine.start();
}
