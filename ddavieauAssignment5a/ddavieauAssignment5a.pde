//look here https://processing.org/tutorials/pixels/
//loadPixels(); and updatePixels(); are used to update red, blue, green and alpha
//newColour=makeColor(255-r,255-g,255-b)

PImage img;
public void settings() {
  img = loadImage("stars.jpg");
  float w = img.width;
  float h = img.height; 
  size(int(w), int(h));
}

void setup(){
  img = loadImage("stars.jpg");
  image(img,0,0);
  img.loadPixels();
   loadPixels();
  for (int i=0;i<pixels.length; i++) 
 {
   float r = red(pixels[i]);
   float g = green(pixels[i]);
   float b = blue(pixels[i]);
   
   r = 255-r;
   g = 255-g;
   b = 255-b;
   pixels[i] = color(r,g,b);
 }
 updatePixels();
 }

//int columns = 640/10;
//int rows = 480/10;
//int mycolors = (640/10)*(480/10);
//int[][][] my2dArray = new int[columns][rows][mycolors];
//void setup()
//{
//  size(1920,1080);
//  background(255);
//int colSpan = width/columns;
//int rowSpan = height/rows;
//  for (int k=0; k<my2dArray.length;k++)
//  {
//    for(int i=0; i<my2dArray.length;i++)
//    {
//      for(int j=0; j<my2dArray.length;j++)
//      {
//        fill(0,0,random(100,255));
//        rect(colSpan*i, rowSpan*j, colSpan, rowSpan);
//      }
//    }
//  }
//}