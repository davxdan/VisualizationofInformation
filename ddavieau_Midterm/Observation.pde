class Observation
{
  private int acousticSignal;
  private float timeToFailure;
  private boolean selected;

  public Observation(JSONArray stats) {
    acousticSignal = this.acousticSignal;
    timeToFailure = this.timeToFailure;
    //stddev = this.stddev;
  }
  

  
  public int getAcousticSignal()
  {
    return acousticSignal;
  }
  
  public float getTimeToFailure()
  {
    return timeToFailure;
  }
  
}
