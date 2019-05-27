float x, y, radius;
float speedX, speedY;
float gravity = .83;
float damping = .75; //can simulate weight of objects via damping
float friction = .87;

void setup(){
  size(1000, 800);
  x = width/2;
  y = height/2;
  
  speedX = 1.2;
  speedY = 2.1;
  radius = 5;
}

void draw(){
  background(0);
  polygon(x, y, 5, 8, 2, color(255,0,0));
  x += speedX;
  speedY += gravity;
  y += speedY;
  checkCollisions();
}

void checkCollisions() {
  if (x > width - radius) {
    x = width - radius; // hack to ensure x doesnt fall through the floor
    speedX = speedX * -1;
  }
  
  if (x < radius) {
    x = radius;
    speedX = speedX * -1;
  }
  
  if (y > height - radius) {
    y = height - radius;
    speedY = speedY * -1;
    speedY *= damping;
    speedX *= friction;
  }
  
  if (y < radius) {
    y = radius;
    speedY = speedY * -1;
  }
    
  
  
  }
