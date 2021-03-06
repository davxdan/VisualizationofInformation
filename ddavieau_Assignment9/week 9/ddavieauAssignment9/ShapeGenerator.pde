class ShapeGenerator {
  //give us ability to launch particles and control the emission
  //Best practice make classes concise
  //The physics in the world, spray, rate not the concern for
  PVector location;
  int shapeCount;
  float shapeBirthRate;
  PVector sprayVector;
  float sprayRadius;
  boolean isInfinite = false;
  Circle[] circles;
  Square[] squares;
  Triangle[] triangles;
  float currentShapeCount = 0;
  float shapeScale = 1;

  //constuctors

  ShapeGenerator() {
  }


  //constructor 

  ShapeGenerator (PVector location, int shapeCount, float shapeBirthRate, 
    PVector sprayVector, float sprayRadius, boolean isInfinite, float shapeScale) {
    this.location = location;
    this.shapeCount = shapeCount;
    this.shapeBirthRate = shapeBirthRate;
    this.sprayVector = sprayVector;
    this.sprayRadius = sprayRadius;
    this.isInfinite = isInfinite;
    this.shapeScale = shapeScale;
    circles = new Circle[shapeCount];
    squares = new Square[shapeCount];
    triangles = new Triangle[shapeCount];
    init();
  }

  //methods
  void init() {
    for (int i=0; i<circles.length; i++) {
      float scale = random(1, shapeScale);
      PVector vel  = new PVector(sprayVector.x + random(-sprayRadius, sprayRadius), sprayVector.y + random(-sprayRadius, sprayRadius));
      circles[i] = new Circle(new PVector(location.x, location.y), vel, scale);
      squares[i] = new Square(new PVector(location.x, location.y), vel, scale);
      triangles[i] = new Triangle(new PVector(location.x, location.y), vel, scale);
    }
  }

  void run (float gravity, PVector turbulance, PVector wind) {
    for (int i=0; i<currentShapeCount; i++) {
      
      circles[i].velocity.y += gravity;
      circles[i].velocity.add(new PVector(random(-turbulance.x, turbulance.x), random(-turbulance.y, turbulance.y)));
      circles[i].velocity.add(wind);
      circles[i].move();
      circles[i].display();
      //squares[i].velocity.y += gravity;
      //squares[i].velocity.add(new PVector(random(-turbulance.x, turbulance.x), random(-turbulance.y, turbulance.y)));
      //squares[i].velocity.add(wind);
      //squares[i].move();
      //squares[i].display();
      //triangles[i].velocity.y += gravity;
      //triangles[i].velocity.add(new PVector(random(-turbulance.x, turbulance.x), random(-turbulance.y, turbulance.y)));
      //triangles[i].velocity.add(wind);
      //triangles[i].move();
      //triangles[i].display();
    }
    if (currentShapeCount < shapeCount - shapeBirthRate) {
      currentShapeCount += shapeBirthRate;
    }
  }
}

//String[] words = { "apple", "bear", "cat", "dog" };
//int index = int(random(words.length));  // Same as int(random(4))
//println(words[index]);  // Prints one of the four words

//"circles","squares","triangles"
