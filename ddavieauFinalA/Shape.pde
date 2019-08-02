abstract class Shape {
  //fields
  PVector location;
  PVector velocity;
  float scale;

  //constructors
  Shape() {
  }

  Shape(PVector location, PVector velocity, float scale) {
    this.location = location;
    this.scale = scale;
    this.velocity = velocity;
  }
  
}
