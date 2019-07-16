class Model {
  private Controller controller; //Custom Class
  private ArrayList<Observation> observations; //int _indexNumber,int _acousticSignal, float _timeToFailure, PVector _coordinates
    
  public Model(Controller _controller) {
    converter = new Converter(width, height);
    controller = _controller; //underscore means only this one. Alternative could be this.converter
    observations = new ArrayList<Observation>();
        
    Table t = earthquakeData.getTable();    
    for(int i = 1; i < t.getRowCount(); i++) {
      TableRow r = t.getRow(i);
      Observation o = new Observation(r.getInt(0),r.getInt(1), r.getFloat(2), new PVector(r.getInt(1), r.getFloat(2)));
      observations.add(o);
    }
    println(observations.size() + " observations loaded.");
  }

  
  public void updateCoordinates(float minLat, float minLon, float maxLat, float maxLon) {
    println("Loading data");
    observations.clear();
            
    Table t = earthquakeData.getTable();    
    
    for(int i = 1; i < t.getRowCount(); i++) {
      TableRow r = t.getRow(i);
      Observation o = new Observation(r.getInt(0),r.getInt(1), r.getFloat(2), new PVector(r.getInt(1), r.getFloat(2)));
      observations.add(o);
    }
    controller.updateObservations(observations);
    println(observations.size() + "Observations Loaded");
  }
  public ArrayList<Observation> getObservations() {
    return observations;
  }
}
