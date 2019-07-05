class Observation
{
  private String indexNumber;
  private PVector coordinates;
  private boolean selected;

  public Observation(String indexNumber, PVector coordinates) {
    indexNumber = this.indexNumber;
    coordinates = this.coordinates;
    //stddev = this.stddev;
  }
  
  public String getIndexNumber()
  {
    return indexNumber;
  }
  
  public PVector getCoordinates()
  {
    return coordinates;
  }
}
