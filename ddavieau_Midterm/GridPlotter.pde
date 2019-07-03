class Gridplotter {
  float gridWidth;
  float gridHeight;
  int cols;
  int rows;
  color strokeColor;
  color fillColor;
  int[][] vals2d;
  
  //default constructor
  Gridplotter() {
  }
  //full signature constructor
  Gridplotter(float gridWidth, float gridHeight,int cols, int rows,color strokeColor) {
    this.cols = cols;
    this.rows = rows;
    this.gridWidth = gridWidth;
    this.gridHeight = gridHeight;
    this.strokeColor = strokeColor;
    this.vals2d = new int[cols][rows];
    createGrid(vals2d);
  }
  void createGrid(int[][] vals2d) {
    float colSpan = gridWidth/cols;
    float rowSpan = gridHeight/rows;
    for(int i=0; i<this.vals2d.length;i++) {
      for(int j=0; j<this.vals2d.length;j++) {
        noFill();
        stroke(110,110,120);
        strokeWeight(1);
        rect(colSpan*i, rowSpan*j, colSpan, rowSpan);
      }
    }
  }
}
