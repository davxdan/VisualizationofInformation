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
    e = createShape(SPHERE, scale);
    e.setFill(color(random(0, 150),random(0, 150), random(225, 255)));
    e.setStroke(255);

  }

  void move() {
    location.add(velocity);
  }

  void display() {
    pushMatrix();
    translate(location.x+width/8, location.y);
    shape(e);
    scale(scale); //<>//
    popMatrix(); //<>//
  }
}
