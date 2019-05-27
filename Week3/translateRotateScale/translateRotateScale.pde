//The rules to stay out of trouble are to follow order:
//  1. draw
//    2. translate
//    3. rotate
//    4. scale
void setup () {
  size(600,800);
  background(0);
  noFill();
  stroke(255,255,0);
  translate(width/2,height/2);//moves to where I want
  
  rect(-50,-50,100,100); //based on an internal table of values (the transformation matrix)
  pushMatrix();
  rotate(PI/360*50);
  rect(-50,-50,100,100); //the internal transformation matrix was updated last time so now it is cumulatively updated
  popMatrix(); //resets the internal transformation matrix of values
  pushMatrix();
  rotate(PI/360*50); //this rotate is based on the reset internal transformation matrix of values
  rect(-50,-50,100,100);
  pushMatrix();
}
