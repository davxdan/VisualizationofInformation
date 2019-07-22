class Triangle extends Shape {
  //fields
  PShape t;
  //constructors
  Triangle() {
  }

  Triangle(PVector location, PVector velocity, float scale) {
    this.location = location;
    this.scale = scale;
    this.velocity = velocity;
    t = createShape(TRIANGLE, location.x, location.y,location.x-scale, location.y-scale,location.x+scale, location.y+scale);
    t.setFill(color(0,255,0));
    t.setStroke(true);
  }

  void move() {
    location.add(velocity);
  }

  void display() {
    pushMatrix();
    translate(location.x, location.y);
    shape(t);
    scale(scale);
    popMatrix();
  }
}
