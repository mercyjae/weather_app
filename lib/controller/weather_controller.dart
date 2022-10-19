
import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class WeatherController with ChangeNotifier{

final TextEditingController  searchInput = TextEditingController(text: "London");
   WeatherService weatherService = WeatherService();
  WeatherModel model = WeatherModel();
   Future<void> getData() async {
    model = await weatherService.getWeather(searchInput.text);
  }

bool initial = true;
  void searchCity(){
      initial = false;

   notifyListeners();
  }
}