class Controller
{
  private Model model; //Creates a model object
  private PApplet mainView; //A Processing window is a special type of Java program called a PApplet
  private ZoomView zoomView; //Creates a ZoomView  object
  private int selectedIndex;
  
  public Controller(PApplet _mainView) {
    mainView = _mainView; //sets mainview
    zoomView = new ZoomView(this); 
    model = new Model(this);
    PApplet.runSketch(new String[]{"Zoom View 1"}, zoomView);
  }
  
  public void updateZoomView(PImage image, PVector corner) {
    zoomView.setZoomImage(image, corner);
  }
  
  public void updateCoordinates(float minLat, float minLon, float maxLat, float maxLon)  {
    model.updateCoordinates(minLat, minLon, maxLat, maxLon);
  }
  
  public void updateObservations(ArrayList<Observation> observations)
  {
    zoomView.updateObservations(observations);
  }
  
    
  
    public void setSelectedIndex(int index) //setter
  {
    selectedIndex = index;
  }
  
  public int getSelectedIndex() //getter
  {
    return selectedIndex;
  }
}
