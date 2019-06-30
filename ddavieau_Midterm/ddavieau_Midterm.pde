int[] xAcousticSignal; //<>//
float[] yTimeToFailure;
float xSequentialCoordinate;
int recordCount;
int gridX;
int gridY;
float sketchWidth;
float sketchHeight; 

Dataloader data; //declare a Dataloader object
Gridplotter gridlines; //declare a Gridplotter object

void setup() {
  size(1920, 1080);
  background(255);
  sketchWidth = width; //get the sketch width so scaling is possible
  sketchHeight = height; //get the sketch width so scaling is possible
  data = new Dataloader("sample100000.csv", "header", xAcousticSignal, yTimeToFailure); //instantiate a Dataloader object with name acousticSignal
  recordCount = data.xdata.length;
  gridX=int(recordCount/sketchWidth);
  gridY=ceil(max(data.ydata));
  
  beginShape(POINTS);
  for (int i=0; i<recordCount; i+=1,xSequentialCoordinate+=(sketchWidth/recordCount)) {
        
    stroke(53, 76, 161);
    strokeWeight(2);
    vertex(xSequentialCoordinate, (data.xdata[i])+sketchHeight/2);
    
    stroke(204,0,53);
    strokeWeight(2);
    vertex(xSequentialCoordinate, (data.ydata[i]*=-20)+sketchHeight);
  }
  endShape();
  
  gridlines = new Gridplotter(sketchWidth, sketchHeight, gridX, gridY, color(110, 110, 120));
  println(gridY);
}
