float x = 100;
float y = 100;
float speedX = 10;
void setup(){
 size(1920,1080);
 
 }
 
 void draw() {
   background(255);
   rect(x,y,30,30);
   x = x + speedX;
   //y = y + 10;
   
   if (x > width){
     println("fuck");
     speedX = speedX*-1;
   }
   if (x < 0) {
     speedX = speedX*-1;
   }
 }
