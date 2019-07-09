class Window  //creates a window and returns it'scorners based on location 
{
  public static final int WINDOW_SIZE_PX = 100;
  private PVector windowPos; //A vector is a collection of values that describe relative position in space. Simplifies coding for animation
  public Window()
  {
    windowPos = new PVector(0, 0);
  }
  
  public void updatePos(int x, int y)
  {
    windowPos.x = x;
    windowPos.y = y;
  }
  
  public void drawWindow() {
    stroke(255, 0, 0);
    noFill();
    rectMode(CENTER);
    rect(windowPos.x, windowPos.y, WINDOW_SIZE_PX, WINDOW_SIZE_PX);
  }
  
  public void drawSelectedWindow() {
  }
  
  public PVector getWindowCorner() {
    int halfSize = (WINDOW_SIZE_PX/2);
    return new PVector(windowPos.x - halfSize, windowPos.y - halfSize);
  }
}
