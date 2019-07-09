class Model {
  private Controller controller; //Custom Class
  private HashMap<String, Observation> observations; //Key value pairs; HashMap cannot contain duplicate keys,allows null values and key,is unordered
  private ArrayList<Observation> currentObservations; //int _indexNumber,int _acousticSignal, float _timeToFailure, PVector _coordinates
  
  public Model(Controller _controller) {
    converter = new Converter(width, height);
    controller = _controller; //underscore means only this one. Alternative could be this.converter
    currentObservations= new ArrayList<Observation>();
    observations = new HashMap<String, Observation>(); //HashMap cannot contain duplicate keys,allows null values and key,is unordered
    
    Table t = earthquakeData.getTable();    
    for(int i = 1; i < t.getRowCount(); i++) {
      TableRow r = t.getRow(i);
      observations.put(r.getString(0), new Observation(r.getInt(0),r.getInt(1), r.getFloat(2), new PVector(r.getInt(1), r.getFloat(2))));
    }
    
    //println(observations.size() + " observations loaded.");
    //for(Map.Entry<String,Observation> val :observations.entrySet()) {
    //  System.out.println(val.getKey() + ", " + val.getValue());
    //}
  }
  
  public void updateCoordinates(float minLat, float minLon, float maxLat, float maxLon) {
    println("Loading data");
    currentObservations.clear();
    
    for(Map.Entry entry : observations.entrySet()) {
      ((Observation)entry.getValue()).resetIndexNumber();
      
    Table t = earthquakeData.getTable();    
    
    for(int i = 1; i < t.getRowCount(); i++) {
      TableRow r = t.getRow(i);
      observations.put(r.getString(0), new Observation(r.getInt(0),r.getInt(1), r.getFloat(2), new PVector(r.getInt(1), r.getFloat(2))));
    }
   
      int origin = t.getInt(0,"index_number");
        Observation observationObject = observations.get(origin);
        if(observationObject != null) {
          observationObject.addIndexNumber();
          currentObservations.add(observationObject);
        }
      }
      controller.updateObservations(currentObservations);
      println(currentObservations.size() + " indexNumbers loaded");
    }
    public ArrayList<Observation> getIndexNumber() {
      return currentObservations;
    }
}
