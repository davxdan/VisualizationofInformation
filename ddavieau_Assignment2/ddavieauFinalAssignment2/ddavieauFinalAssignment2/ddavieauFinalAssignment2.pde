//changing a size or position variable updates the entire portrait

int p0x = 5.0;
int p0y = 5.0;
int p0x = 5.0;
int p0y = 5.0;
int p0x = 5.0;
int p0y = 5.0;
int p0x = 5.0;
int p0y = 5.0;






void setup() {
 size (100,100); 
 background(255);

 //for house base
 //float houseWidth = width * .8;
 //float houseHeight = height * .6;
 
 float curveScaleWidth = width *.5;
 float curveScaleHeight = height *.5;
 //float deltaWidth = width - houseWidth;
 //float deltaHeight = height - houseHeight;
 
 ////for triangle
 //float x0 = deltaWidth/2, y0 = deltaHeight; //coordinates of left point
 //float x1 = width/2, y1 = 0; 
 //float x2 = deltaWidth/2 + houseWidth, y2 = deltaHeight;
 
 
 ////for door
 //float doorWidth = houseWidth *.1;
 //float doorHeight = houseHeight * .4;
 
 //ellipse(x0,y0,10,10);
 //ellipse(x1,y1,10,10);
 //ellipse(x2,y2,10,10);
 
 //strokeWeight(5);
 //noStroke();
 //fill(100,50,20);
 //rect(deltaWidth/2, deltaHeight, houseWidth, houseHeight);
 
 //fill(40,10,40);
 //triangle(x0,y0,x1,y1,x2,y2);
 
 //fill(200,5 ,7);
 //rect(width / 2 - doorWidth / 2, height - doorHeight, doorWidth, doorHeight);

}

void draw() { 
beginShape();
fill(0,0,0);
curveVertex(5.0,4.0);
curveVertex(20.0,10.0);
curveVertex(19.0,38.0);
curveVertex(32.0,46.0);
curveVertex(32.0,46.0);//double the last line
endShape(CLOSE);
beginShape();
endShape();
}
