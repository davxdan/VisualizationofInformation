class Observation //holds data
{
  private int indexNumber;
    
  public Observation(int _indexNumber)
  {
    indexNumber = _indexNumber;
  }
  
  public int getIndexNumber()
  {
    return indexNumber;
  }
  public void resetIndexNumber()
  {
    indexNumber = 0;
  }
  public void addIndexNumber()
  {
    indexNumber++;
  }
}
