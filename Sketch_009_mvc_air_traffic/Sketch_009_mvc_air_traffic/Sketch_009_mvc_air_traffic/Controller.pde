class Controller //looks liek this is not a do-er but calls other methods/classes 
{
  private Model model; //Creates a model object
  private PApplet mainView; //A Processing window is a special type of Java program called a PApplet
  private ZoomView zoomView; //Creates a ZoomView  object
  private String selectedOrigin;  //will hold origin
  
  public Controller(PApplet _mainView) {
    mainView = _mainView; //take input mainview
    zoomView = new ZoomView(this); //initialize  
    model = new Model(this); //initialize 
    PApplet.runSketch(new String[]{"Zoom View 1"}, zoomView);//launch the zoomView with nothing ?
  }
  
  public void updateZoomView(PImage image, PVector corner)
  {
    zoomView.setZoomImage(image, corner); //Update the zoom view; calling setZoomImage() from ZoomView object
  }
  
  public void updateCoordinates(float minLat, float minLon, float maxLat, float maxLon)
  {
    model.updateCoordinates(minLat, minLon, maxLat, maxLon); //Update coords within the small window?
  }
  
  public void updatePlanes(ArrayList<Plane> planes)
  {
    zoomView.updatePlanes(planes, model.getMinAltitude(), model.getMaxAltitude()); //update the planes?
  }
  
  public ArrayList<Plane> getPlanes()
  {
    return model.getPlanes(); //get planes?
  }
  
  public ArrayList<Country> getOrigins()
  {
    return model.getOrigins(); //get Origins from the model. getOrigins is in thje Country class 
  }
  
  public int[] getMinMaxOrigins()
  {
    return new int[]{model.getMinOrigins(), model.getMaxOrigins()};
  }
  
  public void setSelectedOrigin(String origin)
  {
    selectedOrigin = origin;
  }
  
  public String getSelectedOrigin()
  {
    return selectedOrigin;
  }
}
