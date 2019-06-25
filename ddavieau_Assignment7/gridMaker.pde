void gridMaker(int gridWidth, int gridHeight,int cols, int rows,color strokeColor, color fillColor) {
//local variables in this function hide the global ones because we are re-declaring them
float xCoordinate = width/4;
float yCoordinate = height/4;

translate(xCoordinate,yCoordinate);
fill(fillColor);
stroke(strokeColor);
int[][] vals2d = new int[cols][rows];
int colSpan = gridWidth/cols;
int rowSpan = gridHeight/rows;
for(int i=0; i<vals2d.length;i++) {
  for(int j=0; j<vals2d.length;j++)
  {
    rect(colSpan*i, rowSpan*j, colSpan, rowSpan);
  }
}
}
