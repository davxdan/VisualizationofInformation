PImage img;
void setup()
{
 size(3840,2160); 
 img = loadImage("20170729_183036.jpg");
 image(img,0,0);
 img.loadPixels();
 
 for(int i=0;i<500000;i++)
 {
   img.pixels[int(random(img.pixels.length))] = color(0);
 }
 
 img.updatePixels();
 image(img,width/2,0);
 loadPixels();
 
 for(int i=0;i<500000;i++)
 {
   pixels[int(random(pixels.length))] = color(0);
 }
 updatePixels();
}
