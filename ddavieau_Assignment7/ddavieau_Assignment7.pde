//void settings() {
//    size(1920, 1080);
    
//}

int[] y;
float x;
float sketchWidth;
 //<>//
Dataload acousticSignal; //<>//

void setup(){
//The settings() function is not needed in most sketches.
//It's only useful when it's absolutely necessary to define the parameters to size() with a variable.
//The settings() method runs before the sketch has been set up, so other Processing functions cannot be used at that point.
//For instance, do not use loadImage() inside settings(). 
//The settings() method runs "passively" to set a few variables, compared to the setup() command that call commands in the Processing API.
  
  size(3840, 2160);
  sketchWidth = width;
  acousticSignal = new Dataload("seg_00a37e.csv","header",y);
    
  beginShape();
    plotGrid(width, height,40, 40,color(110,110,120), color(255));//gridMaker: creates a grid along x and y axis.
  //Argmnts:(int gridWidth, int gridHeight,int cols, int rows,color strokeColor, color fillCol)
    for (int i=0;i<acousticSignal.ydata.length;i+=1,x+=(sketchWidth/acousticSignal.ydata.length)) {
      fill(53,76,161);
      noStroke();
      curveVertex(x,(acousticSignal.ydata[i]*8)+height/2);
      
    }
  endShape();
   
  }
