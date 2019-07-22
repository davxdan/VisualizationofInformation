class Engine {
  //fields
  Emitter emitter;
  //ShapeGenerator shapeGenerator;
  //Emitter[] emitters;
  float gravity;
  PVector turbulance;
  PVector wind;
  
  //default constructor
  Engine() {
  }
  
  //important constructor
  Engine(Emitter emitter, float gravity, PVector turbulance, PVector wind) {
    this.emitter = emitter;
    this.gravity = gravity;
    this.turbulance = turbulance;
    this.wind = wind;
  }
  
  //Engine(ShapeGenerator shapeGenerator, float gravity, PVector turbulance, PVector wind) {
  //  this.shapeGenerator = shapeGenerator;
  //  this.gravity = gravity;
  //  this.turbulance = turbulance;
  //  this.wind = wind;
  //}
  
  //not used yet
  //Engine(Emitter[] emitters) {
  //  this.emitters = emitters;
  //}
  
  void start() {
    emitter.run(gravity, turbulance, wind);
    //shapeGenerator.run(gravity, turbulance, wind);
  }
  
  void stop () {
  }
  
}
