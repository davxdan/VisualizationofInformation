
float earthVel = 0;
float moonVel = 0;

float mercVel = 0;
float venusVel = 0;
float marsVel = 0;
float jupiterVel = 0;
float titanVel = 0;
float alphaVel = 0;
float bravoVel = 0;
float charlieVel = 0;

void setup()
{
  size(1920, 1920); 
  strokeWeight(12);
}

void draw()
{
  background(0);
  noFill();
  stroke(0);
  //ellipseMode(CENTER);
  drawSun();
  
  earthVel += TWO_PI / 600;
  moonVel += TWO_PI /600;
  mercVel += TWO_PI /100;
  venusVel += TWO_PI /500;
  marsVel += TWO_PI /400;
  jupiterVel += TWO_PI / 1100;
  titanVel += TWO_PI / 150;
  alphaVel += TWO_PI / 160;
  bravoVel += TWO_PI / 145;
  charlieVel += TWO_PI / 200;
  
  translate(width/2, height/2);
  pushMatrix();
    rotate(earthVel);
    translate(250, 0);
    drawEarth();
    pushMatrix();
      rotate(moonVel);
      translate(50, 0);
      drawMoon();
    popMatrix();
  popMatrix();
  
  pushMatrix();
    rotate(mercVel);
    translate(75, 0);
    drawMerc();
  popMatrix();
  
  pushMatrix();
    rotate(venusVel);
    translate(115, 0);
    drawVenus();
  popMatrix();
  
  pushMatrix();
    rotate(marsVel);
    translate(400, 0);
    drawMars();
  popMatrix();
  
  pushMatrix();
    rotate(jupiterVel);
    translate(600, 0);
    drawJupiter();
    
    pushMatrix();
      rotate(titanVel);
      translate(50, 0);
      drawTitan();
    popMatrix();
    
    pushMatrix();
      rotate(alphaVel);
      translate(50, 0);
      drawAlpha();
    popMatrix();
    
    pushMatrix();  
      rotate(bravoVel);
      translate(65, 0);
      drawBravo();
    popMatrix();
    
    pushMatrix();  
      rotate(charlieVel);
      translate(100, 0);
      drawCharlie();
    popMatrix();
  popMatrix();
}

void drawSun()
{
  fill(255,167,0);
  stroke(255,0,0,100);
  ellipseMode(CENTER);
  ellipse(width/2, height/2, 75, 75);
  
}

void drawEarth()
{
  fill(159,193,100);
  stroke(107,147,214,100);
  ellipseMode(CENTER);
  ellipse(0, 0, 50, 50);
  noFill();
}

void drawMerc()
{
  fill(174,106,106);
  stroke(0);
  ellipseMode(CENTER);
  ellipse(0, 0, 25, 25);
  noFill();
}

void drawVenus()
{
  fill(110,146,32);
  stroke(98,174,40,100);
  ellipseMode(CENTER);
  ellipse(0, 0, 25, 25);
  noFill();
}

void drawMars()
{
  fill(198, 123, 92);
  stroke(198, 123, 92,100);
  ellipseMode(CENTER);
  ellipse(0, 0, 35, 35);
  noFill();
}

void drawJupiter()
{
  fill(221,188,166);
  stroke(148,105,86,100);
  ellipseMode(CENTER);
  ellipse(0, 0, 60, 60);
  noFill();
}
void drawTitan()
{
  fill(156,156,156);
  stroke(50,86,86,100);
  ellipseMode(CENTER);
  ellipse(0, 0, 10, 10);
  noFill();
}

void drawAlpha()
{
  fill(255,255,255);
  stroke(0);
  ellipseMode(CENTER);
  ellipse(0, 0, 8, 8);
  noFill();
}

void drawBravo()
{
  fill(255,255,255);
  stroke(0);
  ellipseMode(CENTER);
  ellipse(0, 0, 12, 12);
  noFill();
}

void drawCharlie()
{
  fill(255,255,255);
  stroke(0);
  ellipseMode(CENTER);
  ellipse(0, 0, 15, 15);
  noFill();
}

void drawMoon()
{
  fill(233,239,249);
  stroke(233,239,249,100);
  ellipseMode(CENTER);
  ellipse(0, 0, 15, 15);
  noFill();
}
