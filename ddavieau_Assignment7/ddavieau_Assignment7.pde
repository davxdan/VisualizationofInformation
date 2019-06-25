Table table;
int[] ySignalCoordinates;
float xTime;
Dataload c1, acousticSignal;

void setup(){
//The settings() function is not needed in most sketches.
//It's only useful when it's absolutely necessary to define the parameters to size() with a variable.
//The settings() method runs before the sketch has been set up, so other Processing functions cannot be used at that point.
//For instance, do not use loadImage() inside settings(). 
//The settings() method runs "passively" to set a few variables, compared to the setup() command that call commands in the Processing API.
  
  size(1920, 1080);
  
  c1= new Dataload(27,"derperher");
  println(c1.wt);

  acousticSignal= new Dataload("seg_00a37e.csv","header");
  table = loadTable("seg_00a37e.csv", "header"); //Load data from my captsone project
  int recordCount = table.getRowCount();
  
  ySignalCoordinates = new int[recordCount];

  beginShape();
  plotGrid(width, height,40, 40,color(110,110,120), color(255));
  //gridMaker: creates a grid along x and y axis. It auto centers in the sketch.
  //Arguments:(int gridWidth, int gridHeight,int cols, int rows,color strokeColor, color fillCol)
  for (int i=0;i<recordCount;i+=1,xTime+=.0128) {
    ySignalCoordinates[i] = table.getInt(i,"acoustic_data");
    fill(53,76,161);
    noStroke();
    curveVertex(xTime,(ySignalCoordinates[i]*8)+height/2);
  }
  endShape();
   
  }
