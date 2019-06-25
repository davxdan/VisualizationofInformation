class Dataloader {
  //add properties inside curlies
  int[] ydata;
  String filename;
  String header;
  Table table;
  int recordCount;
    
  //add Constructors. Constructors initialize but do not return 
  Dataloader() {
  }
  
  Dataloader(String filename, String header,int[] ydata) {
    this.filename = filename;
    this.header = header;
    this.table = loadTable(filename, header);
    this.recordCount = table.getRowCount();
    this.ydata = new int[recordCount];
    setY(ydata);
    println("The "+filename," file was loaded with "+recordCount+" rows");
  }
    
  //add methods
  // setters and getters
  void setY(int[] ydata) {
    for (int i=0;i<this.recordCount;i+=1) {
      this.ydata[i] = table.getInt(i,"acoustic_data");
    }
  }
}
