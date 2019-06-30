int[] y; //<>//
float xSequentialCoordinate;
float[] newx;
int recordCount;

int gridX;
int gridY;

float sketchWidth;
float sketchHeight; 
Dataloader data; //declare a Dataloader object
Gridplotter gridlines; //declare a Gridplotter object

void setup() {
  size(1920, 1080);
  sketchWidth = width; //get the sketch width so scaling is possible
  sketchHeight = height; //get the sketch width so scaling is possible
  data = new Dataloader("sample100000.csv", "header", y, newx); //instantiate a Dataloader object with name acousticSignal
  recordCount = data.ydata.length;
  gridX=int(recordCount/sketchWidth);
  //gridY=int(max(data.ydata)/sketchHeight);

  beginShape(POINTS);
  
  for (int i=0; i<recordCount; i+=1,xSequentialCoordinate+=(sketchWidth/recordCount)) {
    stroke(161,76,53);
    strokeWeight(1);
    vertex(xSequentialCoordinate, (data.xdata[i]*16)+sketchHeight/2);    
    stroke(53, 76, 161);
    strokeWeight(4);
    vertex(xSequentialCoordinate, (data.ydata[i])+sketchHeight/2);    
  }
  endShape();
  gridlines = new Gridplotter(sketchWidth, sketchHeight, gridX, 40, color(110, 110, 120));
  //println(data.ydata);
  //ceil(data.ydata[1]);
  //int d = max(data.ydata);
  //println(d);
}
