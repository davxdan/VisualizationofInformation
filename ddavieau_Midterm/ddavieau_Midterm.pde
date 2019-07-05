//Look at ControlP5 //<>// //<>//
import java.util.Map; // kvp mapping https://www.geeksforgeeks.org/map-interface-java-examples/
Controller control;
PImage myBackground;
Window window; //creates a window object and returns it's corners based on location
Converter converter;
ArrayList<Country> origins; //Arraylist allows for dynamic size unlike simple int []. https://www.youtube.com/watch?v=VE0HeWFaAIQ
int[] minMaxOrigins;
Dataloader earthquakeData; //declare a Dataloader object
Gridplotter gridlines; //declare a Gridplotter object
ArrayList<Observation> stats;
int [] xAcousticSignal; //<>// //<>//
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
  size(1920, 1080);
  converter = new Converter(width, height);
  earthquakeData = new Dataloader("plotme.csv", "header", xAcousticSignal, yTimeToFailure); //instantiate a Dataloader object with name acousticSignal
  origins = new ArrayList<Country>(); 
}

void setup() { //Note: Variables declared within setup() are not accessible within other functions, including draw().
  surface.setTitle("Main Plot");
  background(255);
  sketchWidth = width; //get the sketch width so scaling is possible
  sketchHeight = height; //get the sketch width so scaling is possible
  recordCount = earthquakeData.xdata.length;
  gridX=int(recordCount/sketchWidth);
  gridY=ceil(max(earthquakeData.ydata)*100);
  control = new Controller(this);
   
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
  
  gridlines = new Gridplotter(sketchWidth, sketchHeight, gridX, gridY, color(110, 110, 120)); //<>// //<>//
  myBackground = get(); //<<<Snapshot the pixels into the myBackground variable for re-use in draw.
                        //It took me a whole day to figure this out... out my neck hurts.
 //<>// //<>//
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
  for(int i = 0; i < origins.size(); i++) {
    Country c = origins.get(i); //get the country data from origins into the Country c arraylist
    PVector latlon = c.getPosition(); //get the plane;s position
    PVector xy = converter.convert2Pixels(latlon.x, latlon.y);
    fill(255);
    String selOrigin = control.getSelectedOrigin();
    strokeWeight(1);
    if(selOrigin != null && selOrigin.equals(c.getName())) {
      fill(255, 0, 0);
      strokeWeight(3);
    }
    stroke(0);
    float radius = map(c.getOrigins(), minMaxOrigins[0], minMaxOrigins[1], 20, 40);
    ellipse(xy.x, xy.y, radius, radius);
    fill(0);
    textAlign(CENTER, CENTER);
    text(c.getOrigins(), xy.x, xy.y);
  }
}
 
void mouseMoved() { //<>// //<>//
window.updatePos(mouseX, mouseY); //<>// //<>//
}

void mouseClicked()
{
  PVector windowCorner = window.getWindowCorner();
  cutImage(windowCorner);
  origins = control.getOrigins();
  minMaxOrigins = control.getMinMaxOrigins();
}

void cutImage(PVector windowCorner) {
  if(windowCorner.x >= 0 && windowCorner.y >= 0) {
    PImage zoomImage = createImage(Window.WINDOW_SIZE_PX, Window.WINDOW_SIZE_PX, RGB);
    zoomImage.loadPixels();
    int zoomPxIndex= 0;
    for(int j = 0; j < myBackground.height; j++) {
      for(int i = 0; i < myBackground.width; i++) {
        int pixelIndex = i + (j * myBackground.width);
        if(i >= windowCorner.x
        && i < (windowCorner.x + Window.WINDOW_SIZE_PX)
        && j >= windowCorner.y
        && j < (windowCorner.y +Window.WINDOW_SIZE_PX))
        {
          zoomImage.pixels[zoomPxIndex] = myBackground.pixels[pixelIndex];
          zoomPxIndex++;
        }
      }
    }
    zoomImage.updatePixels();
    control.updateZoomView(zoomImage, windowCorner);
    PVector min = converter.convert2latlon(windowCorner.x, windowCorner.y + Window.WINDOW_SIZE_PX);
    PVector max = converter.convert2latlon(windowCorner.x + Window.WINDOW_SIZE_PX, windowCorner.y);
    control.updateCoordinates(min.x, min.y, max.x, max.y);
  }
}
