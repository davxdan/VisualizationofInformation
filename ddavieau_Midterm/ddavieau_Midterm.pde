//From Shon Mohsin to Everyone:  07:46 PM //<>//
//Daniel you can log-transform the data to bring it to scale to help with outliers
//or create a small function to identify and drop extreme points
/////////////Look at ControlP5
int [] xAcousticSignal;
float [] yTimeToFailure;
float xSequentialCoordinate;
int recordCount;
int gridX;
int gridY;
float sketchWidth;
float sketchHeight;

int xAcousticSignalSum;
float yTimeToFailureSum;
int xAcousticSignalMean;
float yTimeToFailureMean;

Dataloader data; //declare a Dataloader object
Gridplotter gridlines; //declare a Gridplotter object

void setup() {
  size(3840, 2160);
  background(255);
  sketchWidth = width; //get the sketch width so scaling is possible
  sketchHeight = height; //get the sketch width so scaling is possible
  data = new Dataloader("plotlogx.csv", "header", xAcousticSignal, yTimeToFailure); //instantiate a Dataloader object with name acousticSignal
  recordCount = data.xdata.length;
  gridX=int(recordCount/sketchWidth);
  gridY=ceil(max(data.ydata)*100);
  
  beginShape(POINTS);
  for (int i=0; i<recordCount; i+=1,xSequentialCoordinate+=(sketchWidth/recordCount)) {
        
    stroke(53, 76, 161);
    strokeWeight(2);
    vertex(xSequentialCoordinate, (data.xdata[i])+sketchHeight/2);
    
    stroke(204,0,53);
    strokeWeight(2);
    //vertex(xSequentialCoordinate, (data.ydata[i]*=-20)+sketchHeight);
    vertex(xSequentialCoordinate, (data.ydata[i])+sketchHeight/2);
    //println(data.ydata[i]);
  }
  endShape();
 
  gridlines = new Gridplotter(sketchWidth, sketchHeight, gridX, gridY, color(110, 110, 120));
  
  for (int i=0; i<recordCount; i+=1) {
    xAcousticSignalSum+=data.xdata[i];
    yTimeToFailureSum+=data.ydata[i];
  }
  yTimeToFailureMean = yTimeToFailureSum/recordCount;
  
  //println(yTimeToFailureMean);
}
