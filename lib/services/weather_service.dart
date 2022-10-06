import 'dart:convert';

import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/services/api_helper.dart';
import 'package:weather_app/services/endpoints.dart';

import 'package:http/http.dart' as http;

class WeatherService{
  WeatherModel? weatherModel;

Future<WeatherModel> getWeather(String? lat, String? lon, ) async{
var response = await http.get(Uri.parse(EndPoints.weatherApi(lat: lat,lon: lon, appID: EndPoints.apiKeys),),
headers: APIHelper().requestHeaders);

var jsonData = jsonDecode(response.body);
print(jsonData.toString());
weatherModel = WeatherModel.fromJson(jsonData);

return weatherModel!;

}


}