import java.util.Map; //represents a mapping between a key and a value. https://www.geeksforgeeks.org/map-interface-java-examples/
Controller control; //Custom Class containing a model, mainView zoomView and selectedOrigin objects.
PImage worldMap;
Window window; //creates a window object and returns it's corners based on location 
Converter converter; //Custom Class reads in imageWidth and imageHeight (1200*600 which is same size as the worldMap) returns PVector(x, y) and PVector(lat, lon)
ArrayList<Country> origins; //Arraylist allows for dynamic size unlike simple int []. https://www.youtube.com/watch?v=VE0HeWFaAIQ
int[] minMaxOrigins;

void settings()
{
  worldMap = loadImage("world_map.jpg");
  window = new Window(); //create a window object
  size(worldMap.width, worldMap.height);
  converter = new Converter(worldMap.width, worldMap.height);
  origins = new ArrayList<Country>(); 
}

void setup()
{
  surface.setTitle("Main View"); //sets window title
  control = new Controller(this);
}

void draw()
{
  image(worldMap, 0, 0); //set background image
  window.drawWindow(); //display the (zoom?) window
  for(int i = 0; i < origins.size(); i++) //for every country in the origins ArrayList (the .size is the length of populated countries)
  {
    Country c = origins.get(i); //get the country data from origins into the Country c arraylist
    PVector latlon = c.getPosition(); //get the plane;s position
    PVector xy = converter.convert2Pixels(latlon.x, latlon.y);
    fill(255);
    String selOrigin = control.getSelectedOrigin();
    strokeWeight(1);
    if(selOrigin != null && selOrigin.equals(c.getName()))
    {
      fill(255, 0, 0);
      strokeWeight(3);
    }
    
    stroke(0);
    float radius = map(c.getOrigins(), minMaxOrigins[0], minMaxOrigins[1], 20, 40);
    ellipse(xy.x, xy.y, radius, radius);
    fill(0);
    textAlign(CENTER, CENTER);
    text(c.getOrigins(), xy.x, xy.y);
  }
}

void mouseMoved()
{
  window.updatePos(mouseX, mouseY);
  //float minLat   = map(mouseY, worldMap.height, 0, -90, 90); 
  //float minLon  = map(mouseX, 0, worldMap.width, -180, 180);
  //println(minLat + " " + minLon);
}

void mouseClicked()
{
  PVector windowCorner = window.getWindowCorner();
  cutImage(windowCorner);
  origins = control.getOrigins();
  minMaxOrigins = control.getMinMaxOrigins();
}

void cutImage(PVector windowCorner)
{
  if(windowCorner.x >= 0 && windowCorner.y >= 0)
  {
    PImage zoomImage = createImage(Window.WINDOW_SIZE_PX, Window.WINDOW_SIZE_PX, RGB);
    zoomImage.loadPixels();
    int zoomPxIndex= 0;
    for(int j = 0; j < worldMap.height; j++)
    {
      for(int i = 0; i < worldMap.width; i++)
      {
        int pixelIndex = i + (j * worldMap.width);
        if(i >= windowCorner.x 
            && i < (windowCorner.x + Window.WINDOW_SIZE_PX)
            && j >= windowCorner.y
            && j < (windowCorner.y +Window.WINDOW_SIZE_PX))
            {
              zoomImage.pixels[zoomPxIndex] = worldMap.pixels[pixelIndex];
              zoomPxIndex++;
            }
      }
    }
    zoomImage.updatePixels();
    control.updateZoomView(zoomImage, windowCorner);
    PVector min = converter.convert2latlon(windowCorner.x, windowCorner.y + Window.WINDOW_SIZE_PX);
    PVector max = converter.convert2latlon(windowCorner.x + Window.WINDOW_SIZE_PX, windowCorner.y);
    control.updateCoordinates(min.x, min.y, max.x, max.y);
  }

} //<>//
