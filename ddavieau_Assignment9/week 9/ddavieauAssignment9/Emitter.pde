class Emitter {
  //give us ability to launch particles and control the emission
  //Best practice make classes concis e
  //The physics in the world, spray, rate not the concern for
  PVector location;
  int particleCount;
  float particleBirthRate;
  PVector sprayVector;
  float sprayRadius;
  boolean isInfinite = false;
  Particle[] particles;
  float currentParticleCount = 0;
  String particleSpriteURL;
  float particleScale = 1;
  
  //constuctors
  //default
  Emitter() {
  }
  //another constructor 
  Emitter (PVector location, int particleCount, float particleBirthRate,
    PVector sprayVector, float sprayRadius, boolean isInfinite) {
      this.location = location;
      this.particleCount = particleCount;
      this.particleBirthRate = particleBirthRate;
      this.sprayVector = sprayVector;
      this.sprayRadius = sprayRadius;
      this.isInfinite = isInfinite;
      particles = new Particle[particleCount];
    }

    //yet another constructor 
    Emitter (PVector location, int particleCount, float particleBirthRate,
    PVector sprayVector, float sprayRadius, boolean isInfinite,
    String particleSpriteURL, float particleScale) {
      this.location = location;
      this.particleCount = particleCount;
      this.particleBirthRate = particleBirthRate;
      this.sprayVector = sprayVector;
      this.sprayRadius = sprayRadius;
      this.isInfinite = isInfinite;
      this.particleSpriteURL = particleSpriteURL;
      this.particleScale = particleScale;
      particles = new Particle[particleCount];
      init();
    }
    
    //methods
    void init() {
      for (int i=0; i<particles.length; i++) {
        float scale = random(1, particleScale);
        PVector vel  = new PVector(sprayVector.x + random(-sprayRadius, sprayRadius),
          sprayVector.y + random(-sprayRadius, sprayRadius));
        //PVector location, PVector velocity, float scale, String particleSpriteURL
        particles[i] = new Particle(new PVector(location.x, location.y), vel, scale, particleSpriteURL);
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
  
