  void polygon(float x, float y, float radius,int sides,float strokeWt, color fillCol) {
     //local variables in this function hide the global ones because we are re-declaring them
     float theta  = 0;
     float rotAmount = TWO_PI/sides;
     //fill(fillCol);
     beginShape();
     float x2=0, y2=0;
     for(int i = 0; i < sides; i += 1 ) { 
       x2 = x + cos(theta)*radius*2;
       y2 = y + sin(theta)*radius*2;
       vertex(x2,y2);
       theta += rotAmount;
     }
     endShape(CLOSE);
  }
