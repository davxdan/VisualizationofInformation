class Dataload {
  //add properties inside curlies
  float wt;
  String breed;
  String filename;
  String header;
  Table table;
  int recordCount;
    
  //add Constructors. Constructors initialize but do not return 
  Dataload() {
  }
  
  Dataload(float wt, String breed) {
    this.wt = wt;
    this.breed = breed;
  }
  
  Dataload(String filename, String header) {
    this.filename = filename;
    this.header = header;
    this.table = loadTable(filename, header);
    this.recordCount = table.getRowCount();
    println("The "+filename," file was loaded with "+recordCount+" rows");
  }
    
  //add methods
  void move() {
  }
  
  // setters and getters
  void setWt(float wt) {
    this.wt = wt;
  }

  float getWt() {
    return wt;
  }
}
