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
    e.setFill(color(32, 72, 41));
    e.setStroke(255);

  }

  void move() {
    location.add(velocity);
  }

  void display() {
    pushMatrix();
    translate(location.x+width/3, location.y);
    shape(e);
    scale(scale); //<>//
    popMatrix(); //<>//
  }
}
