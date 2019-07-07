class Plane //Instances of this will store airplane attributes 
{
  private String icao24;
  private String callsign;
  private String origin_country;
  private int time_position;
  private int last_contact;
  private float longitude;
  private float latitude;
  private float geo_altitude;
  private boolean on_ground;
  private float velocity;  
  private float true_track;
  private float vertical_rate;
  private int[] sensors;
  private float baro_altitude;
  private String squawk;
  private boolean spi;
  private int position_source;
  
  PVector position; //A vector is a collection of values that describe relative position in space. Simplifies coding for animation
  private boolean selected;
  
  public Plane(JSONArray data)
  {
    icao24= data.getString(0);

    origin_country= data.getString(2);

    longitude= data.isNull(5) ? -999 : data.getFloat(5);
    latitude= data.isNull(6) ? -999 : data.getFloat(6);
    geo_altitude= data.isNull(7) ? -1 : data.getFloat(7);

    velocity= data.isNull(9) ? -1 : data.getFloat(9);  

    if(latitude != -999 && longitude != -999)
    {
      position = new PVector(latitude, longitude);
    }
  }
  
  public String getIcao24()
  {
    return icao24;
  }
  
  public PVector getPosition()
  {
    return position;
  }
  
  public float getAltitude()
  {
    return geo_altitude;
  }
  
  public String getOrigin()
  {
    return origin_country;
  }
  
  public void setSelected(boolean b)
  {
    selected = b;
  }
  
  public boolean isSelected()
  {
    return selected;
  }
}
