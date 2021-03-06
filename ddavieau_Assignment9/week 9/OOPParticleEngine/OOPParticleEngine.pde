Engine engine;

void setup() {
  size(800,600);
  Emitter emitter = new Emitter(new PVector(width/2, 200), 300, 1, new PVector(.01, -10.2), 1.25,
    true, "particlesprite.png", .05 );
  engine = new Engine(emitter, 1.15, new PVector(.5, .5), new PVector(.002, -.7));
}

void draw() {
  fill(0,175);
  rect(-1,-1,width+1,height+1);
  
  engine.start();
}
