class Particle{
  
  //fields
  PVector location;
  PVector velocity;
  float scale;
  PImage p;
  
  //constructors

  Particle() {
  }
  
  Particle(PVector location, PVector velocity, float scale, String particleSpriteURL) {
    this.location = location;
    this.scale = scale;
    this.velocity = velocity;
    p = loadImage(particleSpriteURL); //preload before draw. Very inefficient to do thi sduring draw.
  }
  
  void move(){
    location.add(velocity);
  }
  
  void display() {
    pushMatrix();
    translate(location.x, location.y);
    scale(scale);
    if (p != null) {
      image(p, -p.width/2, -p.height/2);
      popMatrix();
    }
    else {
      ellipse(0,0,1,1);
    }
  }
}
