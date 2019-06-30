int[] y;
float x;
int yRecordCount;
float sketchWidth;
float sketchHeight; 
Dataloader acousticSignal; //declare a Dataloader object //<>//
Gridplotter gridlines; //declare a Gridplotter object

void setup(){
  size(3840, 2160);
  sketchWidth = width; //get the sketch width so scaling is possible
  sketchHeight = height; //get the sketch width so scaling is possible
  acousticSignal = new Dataloader("2nd100000000.csv","header",y); //instantiate a Dataloader object with name acousticSignal
  yRecordCount = acousticSignal.ydata.length;
  
  beginShape();
  gridlines = new Gridplotter(sketchWidth, sketchHeight,40, 40,color(110,110,120), color(255)); //instantiate a Gridplotter called gridlines
//Argmnts:(int gridWidth, int gridHeight,int cols, int rows,color strokeColor, color fillCol)
//for (int i=1000;i<5000;i+=1,x+=(sketchWidth/5000)) {
for (int i=0;i<yRecordCount;i+=1,x+=(sketchWidth/yRecordCount)) {
  fill(53,76,161);
  noStroke();
  curveVertex(x,(acousticSignal.ydata[i]*8)+height/2);
}
endShape();
}
