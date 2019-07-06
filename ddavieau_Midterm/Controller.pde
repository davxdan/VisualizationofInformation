class Controller
{
  private Model model; //Creates a model object
  private PApplet mainView; //A Processing window is a special type of Java program called a PApplet
  private ZoomView zoomView; //Creates a ZoomView  object
  private String selectedOrigin;
  private int selectedIndex;
  public Controller(PApplet _mainView)
  {
    mainView = _mainView; //sets mainview
    zoomView = new ZoomView(this); 
    model = new Model(this);
    
    PApplet.runSketch(new String[]{"Zoom View 1"}, zoomView);
  }
  
  public void updateZoomView(PImage image, PVector corner)
  {
    zoomView.setZoomImage(image, corner);
  }
  
  public void updateCoordinates(float minLat, float minLon, float maxLat, float maxLon)  {
    model.updateCoordinates(minLat, minLon, maxLat, maxLon);
  }
  
  public void updatePlanes(ArrayList<Plane> planes)
  {
    zoomView.updatePlanes(planes, model.getMinAltitude(), model.getMaxAltitude());
  }
  
  public ArrayList<Plane> getPlanes()
  {
    return model.getPlanes();
  }
  
  public ArrayList<Country> getOrigins() //getter
  {
    return model.getOrigins();
  }
  

  
  public int[] getMinMaxOrigins() //getter
  {
    return new int[]{model.getMinOrigins(), model.getMaxOrigins()};
  }
  
  public void setSelectedOrigin(String origin) //setter
  {
    selectedOrigin = origin;
  }
  
  public String getSelectedOrigin() //getter
  {
    return selectedOrigin;
  }
  
    public ArrayList<Observation> getIndexNumber() {
    return model.getIndexNumber();
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
