int cols = 20; //<>//
int rows = 20; //<>//
int[][] vals2d = new int[cols][rows]; //<>//
void setup() //<>//
{ //<>//
  size(400,400); //<>//
  background(0,200,200); //<>//
int colSpan = width/cols; //<>//
int rowSpan = height/rows; //<>//
  for(int i=0; i<vals2d.length;i++) //<>//
  { //<>//
    for(int j=0; j<vals2d.length;j++) //<>//
    { //<>//
      rect(colSpan*i, rowSpan*j, colSpan, rowSpan); //<>//
    } //<>//
  } //<>//
} //<>//
