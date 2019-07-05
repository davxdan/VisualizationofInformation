class Model //loads countries and airplane data
{
  private static final String BASE_API = "https://opensky-network.org/api/states/all?";
  ////////////////////////////////////////////
  private HashMap<String, Observation> observations; //Key value pairs; HashMap cannot contain duplicate keys,allows null values and key,is unordered
  private ArrayList<Observation> stats;
  private int indexNumber;
  
  private ArrayList<Plane> planes; //Difference (ArrayList and HashMap) ArrayList only stores one object. HashMap stores two objects (key and value)
  private Controller controller; //Custom Class
  private float minAltitude;
  private float maxAltitude;
  private HashMap<String, Country> countries; //Key value pairs; HashMap cannot contain duplicate keys,allows null values and key,is unordered
  private ArrayList<Country> currentOrigins; //Custom Class
  private int minOrigin;
  private int maxOrigin;
  
  public Model(Controller _controller) {
    ////////////////////////////////////////////
    stats = new ArrayList<Observation>();
    observations = new HashMap<String, Observation>(); //HashMap cannot contain duplicate keys,allows null values and key,is unordered
    
    planes = new ArrayList<Plane>(); //from Custom Class
    converter = new Converter(width, height); //from Custom Class
    controller = _controller; //underscore means only this one. Alternative couldbe this.converter
    minAltitude = Float.MAX_VALUE;
    maxAltitude = Float.MIN_VALUE;
    minOrigin = Integer.MAX_VALUE;
    maxOrigin = Integer.MIN_VALUE;
    currentOrigins = new ArrayList<Country>();
    countries = new HashMap<String, Country>(); //HashMap cannot contain duplicate keys,allows null values and key,is unordered
    
    ////////////////////////////////////////////
    Table o = loadTable("plotme.csv");
    for(int i = 1; i < o.getRowCount(); i++)
    {
      TableRow r = o.getRow(i);
      observations.put(r.getString(0), new Observation(r.getString(0), new PVector (r.getFloat(1), r.getFloat(2))));
    }
    println(observations.size() + " observations loaded.");
    
    Table t = loadTable("countries.csv");
    for(int i = 1; i < t.getRowCount(); i++)
    {
      TableRow r = t.getRow(i);
      countries.put(r.getString(3), new Country(r.getString(0), r.getString(3), new PVector(r.getFloat(1), r.getFloat(2))));
    }
    println(countries.size() + " countries loaded.");
  }
  
  public void updateCoordinates(float minLat, float minLon, float maxLat, float maxLon) {
    println("Loading data");
    planes.clear(); 
    observations.clear();
    currentOrigins.clear();
    stats.clear();
    for(Map.Entry entry : observations.entrySet()) {
      ((Observation)entry.getValue()).getCoordinates();
    }
    
    for(Map.Entry entry : countries.entrySet()) {
      ((Country)entry.getValue()).resetOrigins();
    }
    
    String apiPos = "lamin=" + minLat + "&lomin=" + minLon + "&lamax=" + maxLat + "&lomax=" + maxLon;
    String uri = BASE_API + apiPos;
    JSONObject res = loadJSONObject(uri);
    if(!res.isNull("states")) {
      minAltitude = Float.MAX_VALUE;
      maxAltitude = Float.MIN_VALUE;
      JSONArray states = res.getJSONArray("states");
      for(int i = 0; i < states.size(); i++) {
        JSONArray data = states.getJSONArray(i);
        Plane p = new Plane(data);
        planes.add(p);
        if(minAltitude > p.getAltitude()) {
          minAltitude = p.getAltitude();
        }
        
        if(maxAltitude < p.getAltitude()) {
          maxAltitude = p.getAltitude();
        }
        
        String origin = p.getOrigin();
        Country originObject = countries.get(origin);
        if(originObject != null) { 
          originObject.addOrigin();
          currentOrigins.add(originObject);
        }
      }
      
      minOrigin = Integer.MAX_VALUE;
      maxOrigin = Integer.MIN_VALUE;
      for(int i = 0; i < currentOrigins.size(); i++) { 
        Country c = currentOrigins.get(i);
        if(minOrigin > c.getOrigins()) {
          minOrigin = c.getOrigins();
        }
        if(maxOrigin < c.getOrigins()) {
          maxOrigin = c.getOrigins();
        }
      }
    }
    
    else {
      println("Is null");
    }
    
    controller.updatePlanes(planes);
    println(planes.size() + "planes loaded");
  }
  
  
  //Getters and Setters
  public ArrayList<Plane> getPlanes()
  {
    return planes;
  }
  
  public float getMinAltitude()
  {
    return minAltitude;
  }
  public float getMaxAltitude()
  {
    return maxAltitude;
  }
  
  public int getMinOrigins()
  {
    return minOrigin;
  }
  public int getMaxOrigins()
  {
    return maxOrigin;
  }
  
  //////////////////////////////////////
  public ArrayList<Observation> getStats() {
    return stats;
  }
  
  public ArrayList<Country> getOrigins()
  {
    return currentOrigins;
  }

}
