PImage img;

void setup()
{
 
 size(600,800); 
 img = loadImage("20170729_183036.jpg");
 image(img,0,0);
 loadPixels();
 
 for (int i=0;i<pixels.length; i++) 
 {
   float r = red(pixels[i]);
   float g = green(pixels[i]);
   float b = blue(pixels[i]);
   //r *= .85;
   g *= 1.5; //add more green
   pixels[i] = color(r,g,b);
   
 }
 updatePixels();
}
