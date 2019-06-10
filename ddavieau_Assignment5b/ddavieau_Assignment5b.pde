int[][] convolutionKernel ={{0,  1, 0},{1, -4, 1},{0,  1, 0},};
PImage matrixThis;
int loadedPixelsPerLoop = 1;

public void settings() {
  matrixThis = loadImage("capitol.jpg");
  float w = matrixThis.width;
  float h = matrixThis.height; 
  size(int(w), int(h));
}

void setup(){
  image(matrixThis,0,0);
  loadPixels();
  matrixThis.loadPixels();
  matrixIt(matrixThis);
  matrixThis.updatePixels();
  image(matrixThis,0,0);
  updatePixels();
}
/////////////////////////////////////////
//void draw() {
//  image(matrixThis,0,0);
    
//  matrixThis.loadPixels();
//  int loadedPixels = 0;
//  PImage convolutedImage = createImage(matrixThis.width, matrixThis.height, RGB);
  
//  for (int y = 1; y < matrixThis.height-1; y++) {   // Skip top and bottom edges
//    for (int x = 1; x < matrixThis.width-1; x++) {  // Skip left and right edges

//      loadedPixels++;
//      float red = 0; // Kernel sum for this pixel
//      float green = 0; // Kernel sum for this pixel
//      float blue = 0; // Kernel sum for this pixel
      
//      if(loadedPixels < loadedPixelsPerLoop)
//      {
//        for (int ky = -1; ky <= 1; ky++) {
//          for (int kx = -1; kx <= 1; kx++) {
//            int pos = (y + ky)*matrixThis.width + (x + kx);
//            float valR = red(matrixThis.pixels[pos]);
//            float valG = green(matrixThis.pixels[pos]);
//            float valB = blue(matrixThis.pixels[pos]);
//            red += convolutionKernel[ky+1][kx+1] * valR;
//            green += convolutionKernel[ky+1][kx+1] * valG;
//            blue += convolutionKernel[ky+1][kx+1] * valB;
//          }
//        }
//      }
//      else
//      {
//        red = red(matrixThis.pixels[y*matrixThis.width + x]);
//        green = green(matrixThis.pixels[y*matrixThis.width + x]);
//        blue = blue(matrixThis.pixels[y*matrixThis.width + x]);
//      }
//       //For this pixel in the new image, set the gray value
//       //based on the sum from the kernel
//      convolutedImage.pixels[y*matrixThis.width + x] = color(red, green, blue);
//    }
//  }
//  convolutedImage.updatePixels();
//  image(convolutedImage, 0, 0); // Draw the new image
  
//  loadedPixelsPerLoop += 50000;
//  if(loadedPixelsPerLoop > matrixThis.width * matrixThis.height)
//  {
//    noLoop();
//  }
//}
