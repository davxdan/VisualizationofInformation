//I have a capstone project (which requires local files in .csv format)
//I am demonstrating that I can get data from a live source using load data function but doing nothign with it.
//I proceed to to fulful the curves assingment requirements with data from my capstone project. 

JSONObject json;
Table table;

void settings() {
  size(1920,1080);
}
int[] coords = {
  40, 40, 80, 60, 100, 100, 60, 120, 50, 150
};

void setup() {
  //size(200, 200);
  background(255);
  smooth();

  noFill();
  stroke(0);
  beginShape();
  curveVertex(40, 40); // the first control point
  curveVertex(40, 40); // is also the start point of curve
  curveVertex(80, 60);
  curveVertex(100, 100);
  curveVertex(60, 120);
  curveVertex(50, 150); // the last point of curve
  curveVertex(50, 150); // is also the last control point
  endShape();

  // Use the array to keep the code shorter;
  // you already know how to draw ellipses!
  fill(255, 0, 0);
  noStroke();
  for (int i = 0; i < coords.length; i += 2) {
    ellipse(coords[i], coords[i + 1], 3, 3);
  }
}
//void setup() {
//  //show connection
//  json = loadData();//set json = to the what is retuned by loadData() function 
//  println(json);//Print it
  
//  //Load data from my captsone project
//  table = loadTable("seg_00a37e.csv", "header");
//  println(table.getRowCount() + " total rows in table"); 
  
//  for (TableRow row : table.rows()) { //<>//
//    int signal = row.getInt("acoustic_data");
    
//    //println("The acoustic signal is " + signal);
//  }
//}
