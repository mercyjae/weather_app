import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_app/services/weather_service.dart';

final GetIt locator  = GetIt.I;

Future locateSetup() async{
  WidgetsFlutterBinding.ensureInitialized();
  locator.registerLazySingleton(() => WeatherService());
}


