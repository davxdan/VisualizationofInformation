//I have a capstone project (which requires local files in .csv format)
//I am demonstrating that I can get data from a live source using load data function but doing nothign with it.
//I proceed to to fulful the curves assingment requirements with data from my capstone project. 

JSONObject json;
Table table;
float xtime;
int ysignal;

void settings() {
  size(1920,1080);
  
}

void setup() {
  json = loadCharityData();//set json = to the what is returned by loadData() function 
  println(json);
  background(255);
  table = loadTable("seg_00a37e.csv", "header"); //Load data from my captsone project
  //println(table.getRowCount() + " total rows in table"); 
   


  for (TableRow row : table.rows()) { //<>//
    
    ysignal = row.getInt("acoustic_data");
    //curveVertex(xtime,(ysignal*5)+height/2);
    //point(xtime,(ysignal*5)+height/2);
    ellipse(xtime,(ysignal*5)+height/2,4,4);
    xtime+=1;
    
    //vertex(signal*10,cos((signal*10)*PI/180)*height/2);
    //println("The acoustic signal is " + ysignal);
  }

  
 
}
