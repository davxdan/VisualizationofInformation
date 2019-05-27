
float earthVel = 0;
float moonVel = 0;

float mercVel = 0;
float venusVel = 0;
float marsVel = 0;

void setup()
{
  size(1920, 1080); 
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
  mercVel += TWO_PI /200;
  venusVel += TWO_PI /1100;
  translate(width/2, height/2);
  pushMatrix();
    rotate(earthVel);
    translate(250, 0);
    drawEarth();
    pushMatrix();
      rotate(moonVel);
      translate(50, 0);
      fill(200);
      ellipse(0,0, 20, 20);
    popMatrix();
  popMatrix();
  
    rotate(mercVel);
    translate(75, 0);
    drawMerc();
    
    rotate(venusVel);
    translate(95, 0);
    drawVenus();
    
    rotate(marsVel);
    translate(105, 0);
    drawMars();
}

void drawSun()
{
  fill(255, 255, 0);
  stroke(0);
  ellipseMode(CENTER);
  ellipse(width/2, height/2, 75, 75);
  
}

void drawEarth()
{
  fill(0, 90, 128);
  stroke(0);
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
  fill(45, 139, 87);
  stroke(0);
  ellipseMode(CENTER);
  ellipse(0, 0, 25, 25);
  noFill();
}

void drawMars()
{
  fill(193,68,14);
  stroke(0);
  ellipseMode(CENTER);
  ellipse(0, 0, 25, 25);
  noFill();
}
