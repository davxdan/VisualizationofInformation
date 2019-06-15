//Look for "Softbody" related to curveTightness to create pulsating effect
//Look at lerp, map and constrain functions
size (400,400);
background(200);
////noFill();
//translate(0, height/2);
//beginShape();
//for(int i=0; i<width;i++) {
//  vertex(i,cos(i*PI/180)*height/2);
//  //point(i,cos(i*PI/180)*height/2);
//}
//endShape();

int x1 = 15;
int y1 = 10;
int x2 = 380;
int y2 = 390;
line(x1, y1, x2, y2);
for (int i = 0; i <= 10; i++) {
  float x = lerp(x1, x2, i/1.0) + 50;
  float y = lerp(y1, y2, i/1.0);
  point(x, y);
}
