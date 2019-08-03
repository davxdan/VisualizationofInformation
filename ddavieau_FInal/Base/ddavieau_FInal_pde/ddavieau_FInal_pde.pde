int[] y; //<>//
float x;
int yRecordCount;
float sketchWidth;
float sketchHeight; 
Dataloader acousticSignal;

void setup() {

  size(1920, 1080, P3D);
  sketchWidth = width; 
  sketchHeight = height;
  acousticSignal = new Dataloader("seg_00a37e.csv", "header", y); //instantiate a Dataloader object with name acousticSignal
  yRecordCount = acousticSignal.ydata.length;

  beginShape(POINTS);
  for (int i=0; i<yRecordCount; i+=1, x+=(sketchWidth/yRecordCount)) {
    fill(53, 76, 161);
    stroke(53, 76, 161);
    vertex(x, (acousticSignal.ydata[i])+height/2);
  }
  endShape();

  //beginShape();
  //for (int i=0; i<yRecordCount; i+=1, x+=(sketchWidth/yRecordCount)) {
  //  fill(53, 76, 161);
  //  noStroke();
  //  curveVertex(x, (acousticSignal.ydata[i]*8)+height/2);
  //}
  //endShape();
}
