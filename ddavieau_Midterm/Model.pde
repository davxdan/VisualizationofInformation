class Model //loads countries and airplane data
{
  private static final String BASE_API = "https://opensky-network.org/api/states/all?";
  private ArrayList<Plane> planes; //Stores airplane attributes including vector. Difference (ArrayList and HashMap) ArrayList only stores one object. HashMap stores two objects (key and value)
  private Controller controller; //Custom Class
  private float minAltitude;
  private float maxAltitude;
  private HashMap<String, Country> countries; //Key value pairs; HashMap cannot contain duplicate keys,allows null values and key,is unordered
  private HashMap<String, Observation> observations; //Key value pairs; HashMap cannot contain duplicate keys,allows null values and key,is unordered
  private ArrayList<Country> currentOrigins; //Custom Class
  private ArrayList<Observation> currentIndexNumber;
  private int minOrigin;
  private int maxOrigin;
  
  public Model(Controller _controller)
  {
    planes = new ArrayList<Plane>(); //from Custom Class
    converter = new Converter(width, height); //from Custom Class
    controller = _controller; //underscore means only this one. Alternative couldbe this.converter
    minAltitude = Float.MAX_VALUE;
    maxAltitude = Float.MIN_VALUE;
    minOrigin = Integer.MAX_VALUE;
    maxOrigin = Integer.MIN_VALUE;
    currentOrigins = new ArrayList<Country>();
    currentIndexNumber= new ArrayList<Observation>(); 
    countries = new HashMap<String, Country>(); //HashMap cannot contain duplicate keys,allows null values and key,is unordered
    observations = new HashMap<String, Observation>(); //HashMap cannot contain duplicate keys,allows null values and key,is unordered

    Table t = loadTable("countries.csv");
    for(int i = 1; i < t.getRowCount(); i++)
    {
      TableRow r = t.getRow(i);
      countries.put(r.getString(3), new Country(r.getString(0), r.getString(3), new PVector(r.getFloat(1), r.getFloat(2))));
    }
    println(countries.size() + " countries loaded.");
    
    Table u = loadTable("plotme.csv");
    for(int i = 1; i < u.getRowCount(); i++)
    {
      TableRow s = u.getRow(i);
      observations.put(s.getString(0), new Observation(s.getInt(0),s.getInt(1), s.getFloat(2), new PVector(s.getInt(1), s.getFloat(2))));
    }
    println(observations.size() + " observations loaded.");
  }
  
  public void updateCoordinates(float minLat, float minLon, float maxLat, float maxLon) //calls api and gets coords
  {
    println("Loading data");
    planes.clear();
    currentOrigins.clear();
    currentIndexNumber.clear();
    
    for(Map.Entry entry : countries.entrySet())
    {
      ((Country)entry.getValue()).resetOrigins();
    }
    
    for(Map.Entry entry : observations.entrySet())
    {
      ((Observation)entry.getValue()).resetIndexNumber();
    }
    
    String apiPos = "lamin=" + minLat + "&lomin=" + minLon + "&lamax=" + maxLat + "&lomax=" + maxLon;
    String uri = BASE_API + apiPos;
    JSONObject res = loadJSONObject(uri);
    if(!res.isNull("states"))
    {
      minAltitude = Float.MAX_VALUE;
      maxAltitude = Float.MIN_VALUE;
      JSONArray states = res.getJSONArray("states");
      for(int i = 0; i < states.size(); i++)
      {
        JSONArray data = states.getJSONArray(i);
        Plane p = new Plane(data);
        planes.add(p);
        if(minAltitude > p.getAltitude())
        {
          minAltitude = p.getAltitude();
        }
        if(maxAltitude < p.getAltitude())
        {
          maxAltitude = p.getAltitude();
        }
       
        
        String origin = p.getOrigin();
        Country originObject = countries.get(origin);
        if(originObject != null)
        {
          originObject.addOrigin();
          currentOrigins.add(originObject);
        }
           
      }
      minOrigin = Integer.MAX_VALUE;
      maxOrigin = Integer.MIN_VALUE;
      for(int i = 0; i < currentOrigins.size(); i++)
      {
        Country c = currentOrigins.get(i);
        if(minOrigin > c.getOrigins())
        {
          minOrigin = c.getOrigins();
        }
        if(maxOrigin < c.getOrigins())
        {
          maxOrigin = c.getOrigins();
        }
      }
    }
    else
    {
      println("Is null");
    }
    //controller.updatePlanes(planes);
    //println(planes.size() + "planes loaded");
  }
  
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
  
  public ArrayList<Country> getOrigins()
  {
    return currentOrigins;
  }
  
  public ArrayList<Observation> getIndexNumber()
  {
    return currentIndexNumber;
  }
}

//https://opensky-network.org/api/states/all?lamin=45.8389&lomin=5.9962&lamax=47.8229&lomax=10.5226
