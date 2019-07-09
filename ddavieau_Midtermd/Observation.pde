class Observation  //holds data
{
  private int indexNumber;
  private int acousticSignal;
  private float timeToFailure;
  private PVector coordinates;
  private boolean selected;
  
  public Observation(int _indexNumber,int _acousticSignal, float _timeToFailure, PVector _coordinates) {
    indexNumber = _indexNumber;
    acousticSignal = _acousticSignal;
    timeToFailure = _timeToFailure;
    coordinates = _coordinates;
  }
  
  public PVector getCoordinates()
  {
    return coordinates;
  }
  
  public int getIndexNumber()
  {
    return indexNumber;
  }
  
  public void resetIndexNumber()
  {
    indexNumber = 0;
  }
  
  public void setSelected(boolean b)
  {
    selected = b;
  }
  
  public boolean isSelected()
  {
    return selected;
  }
  public void addIndexNumber()
  {
    indexNumber++;
  }
  
  @Override
  public String toString(){
    return "{"+indexNumber +", "+ acousticSignal + ", " +timeToFailure+ "}";
  }
  
  
}
