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
    r = createShape(RECT, location.x, location.y, scale, scale);
    r.setFill(color(34, 180, 85));
    r.setStroke(255);
  }

  void move() {
    location.add(velocity);
  }

  void display() {
    pushMatrix();
    translate(location.x-width/3, location.y);
    shape(r);
    scale(scale);
    popMatrix();
  }
}
