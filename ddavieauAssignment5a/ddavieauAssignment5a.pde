//look here https://processing.org/tutorials/pixels/
//loadPixels(); and updatePixels(); are used to update red, blue, green and alpha
//newColour=makeColor(255-r,255-g,255-b)
//matrixBlack = (13,2,8)
//matrixDarkGreen = (0, 59, 0)
//matrixMedGreen = (0, 143, 17)
//matrixBrightGreen = (0, 255, 65)
PImage img;
public void settings() {
  img = loadImage("capitol.jpg");
  float w = img.width;
  float h = img.height; 
  size(int(w), int(h));
}

void setup(){
  noStroke();
  image(img,0,0);
  noStroke();
  img.loadPixels();
  loadPixels();
  for (int i=0;i<pixels.length; i++)
  {
    float r = red(pixels[i]);
    float g = green(pixels[i]);
    float b = blue(pixels[i]);
    float grayScale;
    //convert to negative
    r = 255-r;
    g = 255-g;
    b = 255-b;
    //convert to greyscale
    grayScale = (r + g + b) / 3;
    if ((grayScale < 64) ) {
      r = 13;
      g = 2;
      b = 8;
    } 
    
    else if ((grayScale < 128) && (grayScale > 63)) {
      r = 0;
      g = 59;
      b = 0;
    }
    
    else if ((grayScale < 196) && (grayScale > 127)) {
      r = 0;
      g = 143;
      b = 17;
    }
    
    else if ((grayScale < 255) && (grayScale > 195)) {
      r = 0;
      g = 255;
      b = 65;
    }

    
    pixels[i] = color(r,g,b);
    //pixels[i] = color(grayScale,grayScale,grayScale);
  }
  updatePixels();
}


  //for (int i = 5; i <= 95; i += 5) {
  //if ((i > 35) && (i < 60)) {
  //  stroke(0);  // Set color to black
  //} else {
  //  stroke(255);  // Set color to white
  //}
  //line(30, i, 80, i);
//}
           
           
           
           
//red += convolutionKernel[ky+1][kx+1] * valR;
//green += convolutionKernel[ky+1][kx+1] * valG;
//blue += convolutionKernel[ky+1][kx+1] * valB;















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
