class Dataloader {
  //add properties inside curlies
  float[] ydata;
  int[] xdata;
  String filename;
  String header;
  Table table;
  int recordCount;
   
  //Constructors initialize but do not return 
  public Dataloader(String filename, String header,int[] xdata,float[] ydata) {
    this.filename = filename;
    this.header = header;
    this.table = loadTable(filename, header);
    this.recordCount = table.getRowCount();
    this.ydata = new float[recordCount];
    this.xdata = new int[recordCount];
    setX(xdata);
    setY(ydata);
    println("The "+filename," file was loaded with "+recordCount+" rows");
  }
    
  //add methods
  // setters and getters
  void setX(int[] xdata) {
    for (int i=0;i<this.recordCount;i+=1) {
      this.xdata[i] = table.getInt(i,"acoustic_data");
    }
  }
    
  void setY(float[] ydata) {
    for (int i=0;i<this.recordCount;i+=1) {
      this.ydata[i] = table.getFloat(i,"time_to_failure");
    }
  }
}
