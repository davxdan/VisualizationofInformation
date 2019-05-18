void setup () {
  size(800,800);
  background(255);
  
  ellipse(width/2, height/2, 5, 5);
  createArcs();
  
  testArgs(3);
}
void createArcs(){
  //x,y,w,h,start, stop
  arc(width/2, height/2, 100, 100, 0, PI/2);
}

void testArgs(int val1){}


//void arc (float x, float y, float w, float h, float start, float stop){}


//  background(50,25,5);
//    ellipse (50,50,100,100);
//    rect(200,200,100,100);
    
//    println(getArea(100,100));
//    int a = getArea(100,100);
//}
////doesnt return a value  
//void rect(float x, float y, float w, float h){
//  ellipse(x,y,w,h);
//}

////must retun an int
//int getArea(int w, int h){
//  return w*h;
//}
