class Square extends Shape {
  //fields
  PShape r;
  //constructors
  Square() {
  }

  Square(PVector location, PVector velocity, float scale) {
    this.location = location;
    this.scale = scale;
    this.velocity = velocity;
    r = createShape(RECT, location.x, location.y, 100, 100);
    r.setFill(color(255,0,0));
    r.setStroke(true);
  }

  void move() {
    location.add(velocity);
  }

  void display() {
    pushMatrix();
    translate(location.x, location.y);
    scale(scale);
    shape(r);
    popMatrix();
  }
}
