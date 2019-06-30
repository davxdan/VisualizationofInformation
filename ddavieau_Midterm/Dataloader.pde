class Dataloader {
  //add properties inside curlies
  int[] ydata;
  float[] xdata;
  String filename;
  String header;
  Table table;
  int recordCount;
    
  //Constructors initialize but do not return 
 
  Dataloader(String filename, String header,int[] ydata,float[] xdata) {
    this.filename = filename;
    this.header = header;
    this.table = loadTable(filename, header);
    this.recordCount = table.getRowCount();
    this.ydata = new int[recordCount];
    this.xdata = new float[recordCount];
    setY(ydata);
    setX(xdata);
    println("The "+filename," file was loaded with "+recordCount+" rows");
  }
    
  //add methods
  // setters and getters
  void setY(int[] ydata) {
    for (int i=0;i<this.recordCount;i+=1) {
      this.ydata[i] = table.getInt(i,"acoustic_data");
    }
  }
  
  void setX(float[] xdata) {
    for (int i=0;i<this.recordCount;i+=1) {
      this.xdata[i] = table.getFloat(i,"time_to_failure");
    }
  }
}
