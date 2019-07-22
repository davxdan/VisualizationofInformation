class Circle extends Shape {
  //fields
  PShape e;
  //constructors
  Circle() {
  }

  Circle(PVector location, PVector velocity, float scale) {
    this.location = location;
    this.scale = scale;
    this.velocity = velocity;
    e = createShape(ELLIPSE, location.x, location.y, scale, scale);
    e.setFill(color(0,0,255));
    e.setStroke(true);
  }

  void move() {
    location.add(velocity);
  }

  void display() {
    pushMatrix();
    translate(location.x, location.y);
    shape(e);
    scale(scale); //<>//
    popMatrix(); //<>//
  }
}
