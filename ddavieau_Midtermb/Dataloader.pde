class Dataloader {
  //add properties inside curlies
  int[] indexNumber;
  float[] ydata;
  int[] xdata;
  String filename;
  String header;
  Table table;
  int recordCount;
   
  //Constructors initialize but do not return 
  public Dataloader(String filename, String header,int[]indexNumber,int[]xdata,float[]ydata) {
    this.filename = filename;
    this.header = header;
    this.table = loadTable(filename, header);
    this.recordCount = table.getRowCount();
    this.indexNumber = new int[recordCount];
    this.ydata = new float[recordCount];
    this.xdata = new int[recordCount];
    setIndexNumber(indexNumber);
    setX(xdata);
    setY(ydata);
    
    println("The "+filename," file was loaded with "+recordCount+" rows");
  }
    
  //add methods
  // setters and getters
  void setIndexNumber(int[] setIndexNumber) {
    for (int i=0;i<this.recordCount;i+=1) {
      this.indexNumber[i] = table.getInt(i,"index_number");
      //println(indexNumber[i]);
    }
  }
  
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
