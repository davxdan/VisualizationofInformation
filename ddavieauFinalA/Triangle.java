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
    t = createShape(TRIANGLE, location.x, location.y,location.x+scale, location.y+scale,location.x+(scale*2), location.y-(scale*2));
    t.setFill(color(146, 229, 161));
    t.setStroke(255);
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
