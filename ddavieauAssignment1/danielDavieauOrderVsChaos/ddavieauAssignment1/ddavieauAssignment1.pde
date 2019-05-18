//Here I am replicating the Bahause Art by using Order (12... everywhere) and chaos (random)



void setup() {
  size(1200,1200);
  background(252,252,252);
   for(int i = 0; i<12;i++){
    fill(random(12,252),random(12,132),12); //had to make the colors at least a little pretty
    rect(random(1200),random(1200),random(12,120),random(12,120));
    circle(random(1200),random(1200),random(12,120));
    strokeWeight(random(0,12));
    stroke(random(120,240),random(60,120),0);
    line(0,0,random(12,1200),random(12,1200));
  }
}
