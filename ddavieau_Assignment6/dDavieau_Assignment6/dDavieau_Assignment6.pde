//App name
//DanielDataman's App
//Key
//ffc6e8b43a5b7e41899b6dcb65086dbc
//Add this as a user_key parameter to your API calls to authenticate.
//kaggle competitions download -c LANL-Earthquake-Prediction
//http://data.orghunter.com/v1/charityfinancial?user_key=ffc6e8b43a5b7e41899b6dcb65086dbc&ein=911663695
JSONObject json;

void settings() {
  size(1920,1080);

}

void setup()
{
  json = loadData();
  println(json);
}


  
