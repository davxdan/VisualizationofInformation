class ShapeGenerator {
  //give us ability to launch particles and control the emission
  //Best practice make classes concis e
  //The physics in the world, spray, rate not the concern for
  PVector location;
  int shapeCount;
  float shapeBirthRate;
  PVector sprayVector;
  float sprayRadius;
  boolean isInfinite = false;
  Shape[] shapes;
  float currentShapeCount = 0;
  float shapeScale = 1;
  
  //constuctors
  //default
  ShapeGenerator() {
  }
  //another constructor 
  ShapeGenerator (PVector location, int shapeCount, float shapeBirthRate,
    PVector sprayVector, float sprayRadius, boolean isInfinite, float shapeScale) {
      this.location = location;
      this.shapeCount = shapeCount;
      this.shapeBirthRate = shapeBirthRate;
      this.sprayVector = sprayVector;
      this.sprayRadius = sprayRadius;
      this.isInfinite = isInfinite;
      this.shapeScale = shapeScale;
      shapes = new Shape[shapeCount];
    }
       
    //methods
    void init() {
      for (int i=0; i<shapes.length; i++) {
        float scale = random(1, shapeScale);
        PVector vel  = new PVector(sprayVector.x + random(-sprayRadius, sprayRadius),
          sprayVector.y + random(-sprayRadius, sprayRadius));
        
        shapes[i] = new Shape(new PVector(location.x, location.y), vel, scale);
      }
    }
    
    void run (float gravity, PVector turbulence, PVector wind) {
      for (int i=0; i<currentParticleCount; i++) {
        particles[i].velocity.y += gravity;
        particles[i].velocity.add(new PVector(random(-turbulance.x, turbulance.x), random(-turbulance.y, turbulance.y)));
        particles[i].velocity.add(wind);
        particles[i].move();
        particles[i].display();
        
        //reset particles
        if (isInfinite) {
          if (particles[i].location.y>height || particles[i].location.x>width || particles[i].location.x<0) {
            particles[i].location = new PVector(location.x, location.y);
            particles[i].velocity = new PVector(sprayVector.x + random(-sprayRadius, sprayRadius),
              sprayVector.y + random(-sprayRadius, sprayRadius));
          }
        }
      }
      if (currentParticleCount < particleCount - particleBirthRate) {
        currentParticleCount += particleBirthRate;
      }
    }
  }
  
