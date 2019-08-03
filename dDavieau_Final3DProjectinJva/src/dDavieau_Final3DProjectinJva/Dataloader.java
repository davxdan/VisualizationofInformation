package dDavieau_Final3DProjectinJva;
import processing.core.*;
import processing.data.*;

class Dataloader {
  PApplet p;
  int[] ydata;
  String filename;
  String header;
  Table table;
  int recordCount;

  Dataloader(PApplet p, String filename, String header, int[] ydata) {
    this.p = p;
    this.filename = filename;
    this.header = header;
    this.table = this.p.loadTable(filename, header);
    this.recordCount = table.getRowCount();
    this.ydata = new int[recordCount];
    setY(ydata);
//    this.p.println("The "+filename, " file was loaded with "+recordCount+" rows");
  }

  void setY(int[] ydata) {
    for (int i=0; i<this.recordCount; i+=1) {
      this.ydata[i] = table.getInt(i, "acoustic_data");
    }
  }
}
