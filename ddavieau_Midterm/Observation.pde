class Observation  //holds data
{
  private int indexNumber;
  private PVector coordinates; 
  
  public Observation(int _indexNumber, PVector _coordinates) {
    indexNumber = _indexNumber;
    coordinates = _coordinates;
  }
  
  public PVector getCoordinates()
  {
    return coordinates;
  }
}
