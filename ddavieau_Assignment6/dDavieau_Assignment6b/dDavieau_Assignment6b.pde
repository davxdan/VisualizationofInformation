//I have a capstone project (which requires local files in .csv format)
//I am demonstrating that I can get data from a live source using load data function but doing nothign with it.
//I proceed to to fulful the curves assingment requirements with data from my capstone project. 

JSONObject json;
Table table;
int[] ySignalCoordinates;
float xTime;

void settings() {
  size(3840,2160);
}

void setup() {
  json = loadCharityData();//set json = to the what is returned by loadData() function 
  //println(json);
  background(255);
  smooth();
  fill(0,81,162);
  noStroke();
  
  table = loadTable("seg_00a37e.csv", "header"); //Load data from my captsone project
  int recordCount = table.getRowCount();
  ySignalCoordinates = new int[recordCount];
  beginShape();
  for (int i=0;i<recordCount;i+=1) { //<>//
    ySignalCoordinates[i] = table.getInt(i,"acoustic_data");
    curveVertex(xTime,(ySignalCoordinates[i]*5)+height/2);
    //ellipse(int(xTime),(ySignalCoordinates[i]*5)+height/2,2,2);
    //point(int(xTime),(ySignalCoordinates[i]*5)+height/2);
    xTime+=.0256;
  }
  endShape();
  println(ySignalCoordinates);
}
