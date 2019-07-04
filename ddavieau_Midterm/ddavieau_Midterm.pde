//Look at ControlP5 //<>//
PImage mybackground;
import java.util.Map; // kvp mapping https://www.geeksforgeeks.org/map-interface-java-examples/
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
int xAcousticSignalMean;
float yTimeToFailureMean;
Window window; //creates a window object and returns it's corners based on location
Dataloader data; //declare a Dataloader object
Gridplotter gridlines; //declare a Gridplotter object

void settings() { //runs before the sketch has been set up, so other Processing functions cannot be used at that point
  window = new Window(); //create a window object
  size(1920, 1080);
}

void setup() { //Note: Variables declared within setup() are not accessible within other functions, including draw().
  surface.setTitle("Main Plot");
  background(255);
  sketchWidth = width; //get the sketch width so scaling is possible
  sketchHeight = height; //get the sketch width so scaling is possible
  data = new Dataloader("plotme.csv", "header", xAcousticSignal, yTimeToFailure); //instantiate a Dataloader object with name acousticSignal
  recordCount = data.xdata.length;
  gridX=int(recordCount/sketchWidth);
  gridY=ceil(max(data.ydata)*100);
  mybackground = loadImage("mybackground.jpg");
  
  beginShape(POINTS);
  for (int i=0; i<recordCount; i+=1,xSequentialCoordinate+=(sketchWidth/recordCount)) {
    stroke(53, 76, 161);
    strokeWeight(2);
    vertex(xSequentialCoordinate, (data.xdata[i])+sketchHeight/2);
    stroke(204,0,53);
    strokeWeight(2);
    vertex(xSequentialCoordinate, (data.ydata[i])+sketchHeight/2);
  }
  endShape();
   
  gridlines = new Gridplotter(sketchWidth, sketchHeight, gridX, gridY, color(110, 110, 120)); //<>//
   //<>// //<>//
  for (int i=0; i<recordCount; i+=1) {
    xAcousticSignalSum+=data.xdata[i];
    yTimeToFailureSum+=data.ydata[i];
  }
  yTimeToFailureMean = yTimeToFailureSum/recordCount;
  println(yTimeToFailureMean);
}

void draw() {
  image(mybackground, 0, 0);
  window.drawWindow();
}
  
void mouseMoved() { //<>// //<>//
  window.updatePos(mouseX, mouseY); //<>//
  image(mybackground, 0, 0);
}
