PImage img01;
public void settings() {
  img01 = loadImage("stars.jpg");
  float w = img01.width;
  float h = img01.height; 
  size(int(w), int(h));
}
void setup()
{
 
 
  background(img01);
  //image(img01,0,0);
}
  
