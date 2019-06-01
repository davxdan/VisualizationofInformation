float birthRate = 10;
float particleCountCurrent = 0;
int particleCount = 100;
float[] x = new float[particleCount];
float[] y = new float[particleCount];
float[] radius = new float[particleCount];
float[] speedX = new float[particleCount];
float[] speedY = new float[particleCount];
int[] sideCount = new int[particleCount];
float[] gravity = new float[particleCount];
float[] damping = new float[particleCount]; //can simulate weight of objects via damping
float[] friction = new float[particleCount];

void setup()
{
  size(3840, 2160);
  for( int i = 0; i < particleCount; i += 1)
  {
    x[i] = width/2;
    y[i] = 250;
    speedX[i] = random(-1.2,1.2);
    sideCount[i] = int(random(3,10));//because random creates a float by default we cast it as an int
    speedY[i] = random(-2,-5);
    radius[i] = random(1,4);
    gravity[i] = .03;
    damping[i] = .77;
    friction[i] = .77; 
   }
}

void draw()
{
  noStroke();
  fill(13,2,8, 20);
  rect(-1,-1,width+1, height+1);
  
  for( int i = 0; i < particleCountCurrent; i += 1)
  {
    polygon(x[i], y[i], radius[i], sideCount[i], 2, color(0,255,65,random(20,80)));
    x[i] += speedX[i]+random(-1,1);
    speedY[i] += (gravity[i]+random(-.1,.1));
    y[i] += speedY[i];
    checkCollisions(i);
  }
  
  if(particleCountCurrent < particleCount - birthRate)
  {
    particleCountCurrent += birthRate;
  }
}

void checkCollisions(int i)
{
  
  if (x[i] > width - radius[i])
  {
    x[i] = width - radius[i]; // hack to ensure x doesnt fall through the floor
    speedX[i] = speedX[i] * -1;
  }
  
  if (x[i] < radius[i])
  {
    x[i] = radius[i];
    speedX[i] = speedX[i] * -1;
  }
  
  if (y[i] > height - radius[i])
  {
    y[i] = height - radius[i];
    speedY[i] = speedY[i] * -1;
    speedY[i] *= damping[i];
    speedX[i] *= friction[i];
  }
  
  if (y[i] < radius[i])
  {
    y[i] = radius[i];
    speedY[i] = speedY[i] * -1;
  }
}
