//changing a size or position variable updates the entire portrait




void setup() {
 size (1000,1000); 
 background(255);
  
}




void draw() { 
int canvasWidth = width;
int canvasHeight = height;

float p0x = canvasWidth*.05;
float p0y = canvasHeight*.04;
float p1x = canvasWidth*.2;
float p1y = canvasHeight*.10;
float p2x = canvasWidth*.19;
float p2y = canvasHeight*.38;
float p3x = canvasWidth*.32;
float p3y = canvasHeight*.46;
  
  
  
beginShape();
fill(0,0,0);
curveVertex(p0x,p0y);
curveVertex(p1x,p1y);
curveVertex(p2x,p2y);
curveVertex(p3x,p3y);
curveVertex(p3x,p3y);
endShape(CLOSE);
beginShape();
endShape();
}
