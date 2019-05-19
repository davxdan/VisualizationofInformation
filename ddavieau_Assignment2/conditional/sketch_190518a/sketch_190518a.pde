void setup(){
 size(1000,600);
 background(255,255,0);
 
 int shapeCount = 500;
 noFill();
 
  int currentCount = 0;
  int myCounter = 0;
  while(currentCount < shapeCount){
    float radius = random(10,20);
    if (currentCount % 2 == 0){
    rect(random(width),random(height), radius, radius);
    myCounter = myCounter +1;
    }
    else {
    ellipse(random(width),random(height),radius,radius);
    myCounter = myCounter +1;
  }
    currentCount = currentCount + 1;
  }
  println(myCounter);

}
