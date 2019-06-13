//matrixBlack = (13,2,8)
//matrixDarkGreen = (0, 59, 0)
//matrixMedGreen = (0, 143, 17)
//matrixBrightGreen = (0, 255, 65)
//matrixBlack = (13,2,8)
//matrixDarkGreen = (0, 59, 0)
//matrixMedGreen = (0, 143, 17)
//matrixBrightGreen = (0, 255, 65)

PImage matrixIt(PImage x) {
  for (int i=0;i<pixels.length; i++) {
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
    if ((grayScale < 96) )
    {
      r = 13;
      g = 2;
      b = 8;
    } 
  
    else if ((grayScale < 149) && (grayScale > 95)) {
      r = 0;
      g = 143;
      b = 17;
    }
    
    else if ((grayScale < 255) && (grayScale > 150)) {
      r = 0;
      g = 255;
      b = 65;
    }
    pixels[i] = color(r,g,b);
  }
    return x;
}
