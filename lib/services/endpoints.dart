class EndPoints{
  static String apiKeys ='b3cebc728dffda05082b41c73b8e45ce';
  static String weatherApi({String? lat, String? lon, String? appID})=>
'https://api.openweathermap.org/data/2.8/onecall?lat=$lat&lon=$lon&appid=$appID&units=metrics';
}

