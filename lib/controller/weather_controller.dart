
import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class WeatherController with ChangeNotifier{
final TextEditingController  searchInput = TextEditingController();
 final TextEditingController input = TextEditingController();
   WeatherService weatherService = WeatherService();
  WeatherModel model = WeatherModel();
   Future<void> getData() async {
    model = await weatherService.getWeather('$_input');
  }

  String get _input  => input.text = 'London';
bool initial = true;
//input.text = 'London';
  void searchCity(){
      initial = false;
      input.text = searchInput.text;
   notifyListeners();
  }
}