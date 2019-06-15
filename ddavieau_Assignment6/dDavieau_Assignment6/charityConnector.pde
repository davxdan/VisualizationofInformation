import java.net.*; //importa the java.net library

  public JSONObject loadData() //declares the function
  {
    String request = "http://data.orghunter.com/v1/charitysearch?user_key=ffc6e8b43a5b7e41899b6dcb65086dbc&ein=911663695"; //sets the request variable = to a string
    JSONObject jsonObject = null; //declares an empty JSON object
    try //in case of error this will skip to the catch statement
    {
      URL url= new URL(request); //declares url variable as a URL and sets it = to the request variable.
      URLConnection connection = url.openConnection(); //declares connection as a URLConnection and opens it.
      //connection.setRequestProperty("user_key", "ffc6e8b43a5b7e41899b6dcb65086dbc&ein" );
      //connection.setRequestProperty("ein", "911663695" );
      
      String[] results = loadStrings(connection.getInputStream()); //loads the input from the connection into results as an array  
      jsonObject = parseJSONObject(results[0]); //converts the results array into a JSON formatted object
    } catch(Exception e)
    {
      e.printStackTrace();
    }
    return jsonObject;
  }
