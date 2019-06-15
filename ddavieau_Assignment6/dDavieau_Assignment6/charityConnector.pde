import java.net.*;
  /**
   * This method was created due that the endpoint does not allow requests directly
   * with loadStrings or loadJSONObject
   */
  public JSONObject loadData()
  {
    String request = "http://data.orghunter.com/v1/charitysearch?user_key=ffc6e8b43a5b7e41899b6dcb65086dbc&ein=911663695";
    JSONObject jsonObject = null;
    try
    {
      URL url= new URL(request);
      URLConnection connection = url.openConnection();
      //connection.setRequestProperty("user_key", "ffc6e8b43a5b7e41899b6dcb65086dbc&ein" );
      //connection.setRequestProperty("ein", "911663695" );
      
      String[] results = loadStrings(connection.getInputStream());  
      jsonObject = parseJSONObject(results[0]);
    } catch(Exception e)
    {
      e.printStackTrace();
    }
    return jsonObject;
  }
