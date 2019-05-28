void setup(){
  size(1920, 1920);
  background(0,0,0);
  
  int ellipseCount = 4000;
  float radius = .9;
  float weight = .01;
 
  
  
  for(int i = 0; i < ellipseCount; i = i + 1) {
    weight = random(1,3);
    stroke(random(200,255),random(200,255),random(200,255));
    strokeWeight(weight);
    float dim = random(radius*2);
    ellipse(random(width),random(height),dim, dim);
  }
  
}
