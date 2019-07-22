Engine engine;
ShapeGenerator shapeGenerator;

void setup() {
  size(640, 480);
  shapeGenerator = new ShapeGenerator(new PVector(width/2, 200), 300, 1, new PVector(.01, -10.2), 1.25, true, 5 );
    engine = new Engine(shapeGenerator, 1.15, new PVector(.5, .5), new PVector(.002, -.7));
}

void draw() {
  fill(255);
  rect(-1, -1, width+1, height+1);
  engine.start();
}
