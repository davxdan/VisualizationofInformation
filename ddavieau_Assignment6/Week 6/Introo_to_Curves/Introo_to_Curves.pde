//Look for "Softbody" related to curveTightness to create pulsating effect
//Look at lerp, map and constrain functions
size (1200,1200);
background(255);
//noFill();
translate(0, height/2);
beginShape();
for(int i=0; i<width;i++) {
  vertex(i,cos(i*PI/180)*height/2);
  //point(i,cos(i*PI/180)*height/2);
}
endShape();
