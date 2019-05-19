float x,y;
float speedX=15, speedY=15.75;
float radius = 30;
void setup(){
  size(800,600);
  x = width/2;
  y = height/2;
}

void draw() {
  background(255);
  //polygon(float radius,int sides,float strokeWt, color fillCol)
  polygon(24,5,3,color(245,128,0));
  polygon(5,3,2,color(245,128,0));
  //speedX = speedX+1;
  x = x + speedX;
  y = y + speedY;
  checkCollisions();
  //println(frameRate);
  }
  
  void checkCollisions() {
      if(x > width - radius) {
    speedX = speedX * -1;
      }
  if(x < radius) {
    speedX = speedX * -1;
      }
      
  if(y > height - radius) {
    speedY = speedY * -1;
  }
  if(y < radius) {
    speedY = speedY * -1;
  }
    
  }
  
