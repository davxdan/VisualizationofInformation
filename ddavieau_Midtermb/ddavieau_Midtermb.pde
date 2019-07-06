//Look at ControlP5  //<>//
import java.util.Map; // kvp mapping https://www.geeksforgeeks.org/map-interface-java-examples/
PImage myBackground;
ArrayList<Observation> indexNumbers;//////////////////Modeling Country Only for Index Number
Window window;
Converter converter;
Dataloader earthquakeData; //declare a Dataloader object
Gridplotter gridlines; //declare a Gridplotter object
int [] zIndexNumber;
int [] xAcousticSignal; //<>//
float [] yTimeToFailure;
float xSequentialCoordinate;
int recordCount;
int gridX;
int gridY;
float sketchWidth;
float sketchHeight;
int xAcousticSignalSum;
float yTimeToFailureSum;
float xAcousticSignalMean;
float yTimeToFailureMean;

void settings() { //runs before the sketch has been set up, so other Processing functions cannot be used at that point
  window = new Window(); //create a window object
  converter = new Converter(width, height);
  size(1920, 1080);
  earthquakeData = new Dataloader("plotme.csv", "header", zIndexNumber, xAcousticSignal, yTimeToFailure); //instantiate a Dataloader object with name acousticSignal
  indexNumbers = new ArrayList<Observation>();
}

void setup() { //Note: Variables declared within setup() are not accessible within other functions, including draw().
  surface.setTitle("Main Plot");
  background(255);
  sketchWidth = width; //get the sketch width so scaling is possible
  sketchHeight = height; //get the sketch width so scaling is possible
  recordCount = earthquakeData.xdata.length;
  gridX=int(recordCount/sketchWidth);
  gridY=ceil(max(earthquakeData.ydata)*100);
     
  beginShape(POINTS);
  for (int i=0; i<recordCount; i+=1,xSequentialCoordinate+=(sketchWidth/recordCount)) {
    stroke(53, 76, 161);
    strokeWeight(2);
    vertex(xSequentialCoordinate, (earthquakeData.xdata[i])+sketchHeight/2);
    stroke(204,0,53);
    strokeWeight(2);
    vertex(xSequentialCoordinate, (earthquakeData.ydata[i])+sketchHeight/2);
  }
  endShape();
  
  gridlines = new Gridplotter(sketchWidth, sketchHeight, gridX, gridY, color(110, 110, 120)); //<>// //<>// //<>// //<>//
  myBackground = get(); //<<<Snapshot the pixels into the myBackground variable for re-use in draw.
                        //It took me a whole day to figure this out... out my neck hurts.
 //<>//
    for (int i=0; i<recordCount; i+=1) {//get sum of x and y for mean and other calcs
    xAcousticSignalSum+=earthquakeData.xdata[i];
    yTimeToFailureSum+=earthquakeData.ydata[i];
  }
  
  yTimeToFailureMean = yTimeToFailureSum/recordCount;
  xAcousticSignalMean = xAcousticSignalSum/recordCount;

  println("The mean Time To Failure is "+yTimeToFailureMean+".");
  println("The mean Acoustic Signal is "+xAcousticSignalMean+".");
}

void draw() {
  image(myBackground, 0, 0);
  window.drawWindow();
    
  //IndexNumbers/////////////////////////////////////////
  //  for(int i = 0; i < indexNumbers.size(); i++) {
  //  Observation ix = indexNumbers.get(i); 
  //  fill(255);
  //  int selectedIndexNumber = control.getSelectedIndex();
  //  strokeWeight(1);
  //  if(selectedIndexNumber != null && selectedIndexNumber.equals(ix.getName())) {
  //    fill(255, 0, 0);
  //    strokeWeight(3);
  //  }
  //  stroke(0);
  //  float radius = map(ix.getIndexNumber());
  //  ellipse(xy.x, xy.y, radius, radius);
  //  fill(0);
  //  textAlign(CENTER, CENTER);
  //  text(ix.getIndexNumber(), xy.x, xy.y);
  //}
}

void mouseMoved() {
window.updatePos(mouseX, mouseY);
}

void mouseClicked()
{
  
} //<>// //<>//
