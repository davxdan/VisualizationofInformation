class Engine {
  //fields
  ShapeGenerator shapeGenerator;
  float gravity;
  PVector turbulance;
  PVector wind;

  //default constructor
  Engine() {
  }

  //main constructor
  Engine(ShapeGenerator shapeGenerator, float gravity, PVector turbulance, PVector wind) {
    this.shapeGenerator = shapeGenerator;
    this.gravity = gravity;
    this.turbulance = turbulance;
    this.wind = wind;
  }

  void start() {
    shapeGenerator.run(gravity, turbulance, wind);
  }

  void stop () {
  }
}
