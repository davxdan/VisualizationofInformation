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
  matrixIt(matrixThis);
  updatePixels(); 
}


void draw() { 
  image(matrixThis,0,0);
  loadPixels();
  matrixIt(matrixThis);
  updatePixels();
  PImage convolutedImage = createImage(matrixThis.width, matrixThis.height, RGB);
  convolutedImage.updatePixels();
  for (int y = 1; y < matrixThis.height-1; y++) {   // Skip top and bottom edges
    for (int x = 1; x < matrixThis.width-1; x++) {  // Skip left and right edges
      float red = 0; 
      float green = 0;
      float blue = 0;
        for (int ky = -1; ky <= 1; ky++) {
          for (int kx = -1; kx <= 1; kx++) {
            int pos = (y + ky)*matrixThis.width + (x + kx);
            float valR = red(matrixThis.pixels[pos]);
            float valG = green(matrixThis.pixels[pos]);
            float valB = blue(matrixThis.pixels[pos]);
            red += convolutionKernel[ky+1][kx+1] * valR;
            green += convolutionKernel[ky+1][kx+1] * valG;
            blue += convolutionKernel[ky+1][kx+1] * valB;
          }
        }
      convolutedImage.pixels[y*matrixThis.width + x] = color(red, green, blue);
    }
  }
  convolutedImage.updatePixels();
  image(convolutedImage, 0, 0);
}
