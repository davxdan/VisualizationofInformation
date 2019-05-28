import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class sketch_190518a extends PApplet {

public void setup(){
  
  background(0,0,0);
  
  int ellipseCount = 4000;
  float radius = .9f;
  float weight = .01f;
 
  
  
  for(int i = 0; i < ellipseCount; i = i + 1) {
    weight = random(1,3);
    stroke(random(200,255),random(200,255),random(200,255));
    strokeWeight(weight);
    float dim = random(radius*2);
    ellipse(random(width),random(height),dim, dim);
  }
  
}
  public void settings() {  size(1920, 1920); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "sketch_190518a" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
