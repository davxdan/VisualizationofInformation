class Model {
  private Controller controller; //Custom Class
  private HashMap<String, Observation> observations; //Key value pairs; HashMap cannot contain duplicate keys,allows null values and key,is unordered
  private ArrayList<Observation> currentIndexNumber;
  
  public Model(Controller _controller) {
    converter = new Converter(width, height); //from Custom Class
    controller = _controller; //underscore means only this one. Alternative couldbe this.converter
    currentIndexNumber= new ArrayList<Observation>(); 
    observations = new HashMap<String, Observation>(); //HashMap cannot contain duplicate keys,allows null values and key,is unordered
    
    Table u = loadTable("plotme.csv");
    
    for(int i = 1; i < u.getRowCount(); i++) {
      TableRow s = u.getRow(i);
      observations.put(s.getString(0), new Observation(s.getInt(0),s.getInt(1), s.getFloat(2), new PVector(s.getInt(1), s.getFloat(2))));
    }
    
    println(observations.size() + " observations loaded.");
    for(Map.Entry<String,Observation> val :observations.entrySet()){
     System.out.println(val.getKey() + ", " + val.getValue()); 
    }
}
  
  public void updateCoordinates(float minLat, float minLon, float maxLat, float maxLon) {
    println("Loading data");
    currentIndexNumber.clear();
    for(Map.Entry entry : observations.entrySet())
    {
      ((Observation)entry.getValue()).resetIndexNumber();
    }
  }
  
  public ArrayList<Observation> getIndexNumber() {
    return currentIndexNumber;
  }
}
