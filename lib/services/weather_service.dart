import 'dart:convert';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/services/api_helper.dart';
 

import 'package:http/http.dart' as http;

class WeatherService {
 Future<WeatherModel> getWeather(String city) async{
final response = await http.get(Uri.parse(
      'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=e360a57ee321acaf083d45218a5c39ce&units=metric'));
///'https://api.openweathermap.org/data/2.8/onecall?lat=6.5295355&lon=3.363529&appid=
///b3cebc728dffda05082b41c73b8e45ce&units=metrics'));
if(response.statusCode == 200){
var jsonData = jsonDecode(response.body);
print(WeatherModel.fromJson(jsonData).city);
return WeatherModel.fromJson(jsonData);

}else{
 throw Exception('Failed to load');
}


}
}