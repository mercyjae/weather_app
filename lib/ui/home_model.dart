import 'package:flutter/cupertino.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';
import 'package:weather_app/utils/locator_setup.dart';

class HomeProvider extends ChangeNotifier{
  final weatherService = locator<WeatherService>();

  String lat ='6.5295355';
  String lon = '3.363529';
  WeatherModel? weatherModel;


//   Future<void> init() async{
// await weatherService.getWeather(lat: lat,lon: lon).then((value) {
//   weatherModel = value;
// });
//   }
// }

 
