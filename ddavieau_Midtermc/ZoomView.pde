class ZoomView extends PApplet  //Creates a ZoomView object, sets the backgroundimage, size, plane data,
  
{
  private static final int VIEW_WIDTH = 500;
  private static final int VIEW_HEIGHT = 500;
  private PImage zoomImage;
  private ArrayList<Observation> observations;
  private PVector corner;
  private int minColor;
  private int maxColor;

  public ZoomView(Controller _control)
  {
    control = _control;
    observations = new ArrayList<Observation>();
    minColor = color(255,237,160);
    maxColor = color(240,59,32);
  }
  
  public void settings() {
    this.size(VIEW_WIDTH, VIEW_HEIGHT);
  }
  
  public void draw() {
    this.background(0);
    if(zoomImage != null) {
      try {
        this.image(zoomImage, 0, 0);
        if(!observations.isEmpty()) {
          Observation selectedObservation = null;
          PVector selectedXY = null;
          int selectedColor = 0;
          for(Observation o : observations) {
            PVector pos = o.getCoordinates(); //<<Work on this
            PVector global = converter.convert2Pixels(pos.x, pos.y);
            float x = map(global.x, corner.x, corner.x + Window.WINDOW_SIZE_PX, 0, VIEW_WIDTH);  
            float y = map(global.y, corner.y, corner.y + Window.WINDOW_SIZE_PX, 0, VIEW_HEIGHT);
            int altColor = lerpColor(minColor, maxColor, 5000 / (500));  
            float diameter = 10;
            if(o.isSelected()) {
              selectedObservation = o;
              selectedXY = new PVector(x, y);
              selectedColor = altColor;
            }
            fill(altColor);
            ellipse(x, y, diameter, diameter);
          }
          if(selectedObservation != null && selectedXY != null) {
            control.setSelectedIndex(selectedObservation.getIndexNumber());
            float diameter = 10 * 1.5;
            int widthPopup = 150;
            int heightPopup = 50;
            float x = selectedXY.x;
            float y = selectedXY.y;
            float posPopupX = x - (x > (VIEW_WIDTH - widthPopup) ? widthPopup : -10);
            float posPopupY = y - (y > (VIEW_HEIGHT - heightPopup) ? heightPopup : -10);
            pushMatrix();
            translate(posPopupX, posPopupY);
            stroke(0);
            fill(255);
            rect(0, 0, widthPopup, heightPopup);
            fill(0);
            text("Observation ID: " + selectedObservation.getIndexNumber(), 5, 15);
            popMatrix();
            fill(selectedColor);
            ellipse(x, y, diameter, diameter);
          }
        }
        drawLegend();
      }
      catch(Exception e) {
      }
    }
  }
  
  public void drawLegend() {
    fill(200);
    rect(10, 10, 80, 20);
    fill(0);
    text("Quickstats", 15, 25);
    pushMatrix();
    translate(0, 30);
    
    for(int i = 0; i < 5; i++) {
      stroke(0);
      fill(255);
      pushMatrix();
      translate(10, i * 20);
      rect(0, 0, 80, 20);
      fill(0);
      popMatrix();
    }
    popMatrix();
  }
  
  public void setZoomImage(PImage _zoomImage, PVector _corner) {
    corner = _corner;
    zoomImage = _zoomImage;
    zoomImage.resize(VIEW_WIDTH, VIEW_HEIGHT);
  }
  
  public void updateObservations(ArrayList<Observation> _observations) {
    observations = _observations;
  }
  
  public void mouseMoved() {
    if(!observations.isEmpty()) {
      control.setSelectedIndex(0);
      for(Observation o : observations) {
        o.setSelected(false);
      }
      for(Observation o : observations) {
        PVector pos = o.getCoordinates();
        PVector global = converter.convert2Pixels(pos.x, pos.y);
        float x = map(global.x, corner.x, corner.x + Window.WINDOW_SIZE_PX, 0, VIEW_WIDTH);  
        float y = map(global.y, corner.y, corner.y + Window.WINDOW_SIZE_PX, 0, VIEW_HEIGHT);
        float distance = dist(mouseX, mouseY, x, y);
        if(distance <= 10) {
          o.setSelected(true);
        }
      }
    }
  }
}
